var overlappingSelectionClass = [];
var currentRange = [];

function MultiSelection () {}

MultiSelection.prototype = {
    _isMultiSelectionApplied: function() {
        var selection = window.getSelection();
        var ranges = this._getSelectionRanges(selection);
        var range = null;
        for (var j=0; j<ranges.length; j++) {
            range = ranges[j];
            if(!this._isMultiSelectionAppliedToRange(range))
                return false;
        }
        return true;
    },

    /**
    @param {Selection} selection
    */
    _getSelectionRanges: function(selection) {
        this.ranges = [];
        for (var i = 0; i < selection.rangeCount; i++)
            this.ranges[i] = selection.getRangeAt(i);
        return this.ranges;
    },

    /**
    @param {Range} range
    */
    _isMultiSelectionAppliedToRange: function(range) {
        if (range) {
            var rangeNodes = this._getRangeSelectedNodes(range);
            for (var i=0; i<rangeNodes.length; i++) {
                if ((rangeNodes[i].parentNode.id.match(/selection-element-/))
                        != null) {
                    if (overlappingSelectionClass.indexOf(
                            rangeNodes[i].parentNode.className) == -1) {
                        overlappingSelectionClass.push(
                                rangeNodes[i].parentNode.className);
                    }
                }
            }
            if (overlappingSelectionClass.length > 0)
                return true;
            else
                return false;
        }
        return false;
    },

    _clearOverlappingSelection: function(isLastTouch) {
        var isOverlapping = false;
        if (this._isMultiSelectionApplied()
                || this._isContainerOverlapping()) {
            isOverlapping = true;
        } else {
            isOverlapping = false;
        }
        if (isOverlapping) {
            for (var i=0; i<overlappingSelectionClass.length; i++) {
                var highlightedNodes =
                    document.getElementsByClassName(
                        overlappingSelectionClass[i]);
                var k = highlightedNodes.length;
                while(k--) {
                    var elem = highlightedNodes[k];
                    var copyhighlightedNode = elem.childNodes[0];
                    if (copyhighlightedNode != null) {
                        if (elem.id.indexOf("_startContainer") > -1) {
                            if (elem.previousSibling != null
                                    && elem.previousSibling.nodeName
                                        == "#text") {
                                elem.insertBefore(
                                    elem.previousSibling, copyhighlightedNode);
                                elem.normalize();
                                copyhighlightedNode = elem.childNodes[0];
                            }
                        }
                        else if (elem.id.indexOf("_endContainer") > -1) {
                            if (elem.nextSibling != null
                                    && elem.nextSibling.nodeName == "#text") {
                                elem.appendChild(elem.nextSibling);
                                elem.normalize();
                                copyhighlightedNode = elem.childNodes[0];
                            }
                        }
                    }

                    if (copyhighlightedNode != null)
                        elem.parentNode.insertBefore(
                            copyhighlightedNode, elem);
                    elem.parentNode.removeChild(elem);
                }
                var id = this._extractId(overlappingSelectionClass[i]);
                multiSelectionObj.removeFromSelectionList(id-1);
            }
            overlappingSelectionClass = [];
            multiSelectionObj.performCurrentSelection(1, getCount());
        }
    },

    _extractId: function(elementId) {
        var idStr = elementId.split('-')[1];
            return parseInt(idStr);
    },

    _applyMultiSelection: function() {
        count();
        SetMultiSelectionSubElementCountToZero();
        var ranges = currentRange[0];
        currentRange = [];
        for (var i = 0; i < ranges.length; ++i) {
            this.startContainer = ranges[i].startContainer;
            this.endContainer = ranges[i].endContainer;
            this._applyMultiSelectionToRange(ranges[i]);
        }
    },

    _isContainerOverlapping: function() {
        if (currentRange.length > 0) {
            var prevRange = currentRange[0];
            var currRange = this._getSelectionRanges(window.getSelection());
            if (prevRange[0].startContainer == currRange[0].endContainer
                    || prevRange[0].endContainer
                            == currRange[0].startContainer) {
                return true;
            } else {
                return false;
            }
        } else {
            return false;
        }
    },

    _isRangeOverlapping: function() {
        if (currentRange.length > 0) {
            var prevRange = currentRange[0];
            var currRange = this._getSelectionRanges(window.getSelection());
            if ((prevRange[0].compareBoundaryPoints(
                Range.END_TO_START, currRange[0]) == -1
                && prevRange[0].compareBoundaryPoints(
                    Range.START_TO_END, currRange[0]) == -1)
                || (prevRange[0].compareBoundaryPoints(
                    Range.END_TO_START, currRange[0]) == 1
                && prevRange[0].compareBoundaryPoints(
                    Range.START_TO_END, currRange[0]) == 1)) {
                return false;
            } else {
                return true;
            }
        } else {
            return true;
        }
    },

    /**
    @param {Range} range
    */
    _applyMultiSelectionToRange: function(range) {
        var modifiedContainers =  this._splitBoundaries(range);
        var rangeNodes = this._getRangeSelectedNodes(range);
        this.savedRange = range;
        if (range.startContainer != range.endContainer) {
            this._multiSelectAllNodes(rangeNodes, rangeNodes.length);
        } else {
            if (modifiedContainers[0])
                this._multiSelect(modifiedContainers[0]);
            else {
                var selectionNodes = [];
                var nodes_array = [];
                nodes_array.push(range.endContainer);
                this._recursivelyPush(nodes_array, selectionNodes, range);
                this._multiSelectAllNodes(
                    selectionNodes, selectionNodes.length);
            }
        }
    },

    _recursivelyPush: function(nodes, selectionNodes, range) {
        for (var i = 0; i < nodes.length; ++i) {
            if (nodes[i] && (nodes[i].nodeName == "#text"
                    && nodes[i].nodeValue && /\S/.test(nodes[i].nodeValue))
                    || nodes[i].nodeName =="IMG")
            {
                var ranges = document.createRange();
                ranges.selectNodeContents(nodes[i]);
                if (ranges.compareBoundaryPoints(Range.END_TO_START, range) < 1
                            && ranges.compareBoundaryPoints(
                                    Range.START_TO_END, range) > -1) {
                    selectionNodes.push(nodes[i]);
                }
            }
            else
                this._recursivelyPush(
                    nodes[i].childNodes, selectionNodes, range);
        }
    },

    _getRangeSelectedNodes: function(range) {
        var rangeNodes = [];
        var node = range.startContainer;
        var endnode = range.endContainer;
        for (;node;node = this._nextNode(node, endnode)) {
            if (node) {
                var ranges = document.createRange();
                ranges.selectNodeContents(node);
                if (ranges.compareBoundaryPoints(range.END_TO_START, range) < 1
                            && ranges.compareBoundaryPoints(
                                range.START_TO_END, range) > -1) {
                    if (node && (node.nodeName == "#text"
                            && node.nodeValue && /\S/.test(node.nodeValue))
                            || node.nodeName =="IMG") {
                        rangeNodes.push(node);
                    }
                }
            }
            if (node == endnode) {
                var nodes_array = [];
                nodes_array.push(node);
                this._recursivelyPush(nodes_array, rangeNodes, range);
                break;
            }
        }
        return rangeNodes;
    },

    _nextNode: function(node, endnode) {
        if(node.hasChildNodes()) {
            return node.firstChild;
        }
        else {
            while(node) {
                if(node.nextSibling) {
                    return node.nextSibling;
                }
                node = node.parentNode;
            }
        }
    },

    /**
    @param {Range} range
    */
    _splitBoundaries: function(range) {
        var selectedTextInEndContainer = null;
        var selectedTextInStartContainer = null;
        if ((range.endContainer.nodeType !== 1) && (range.endOffset > 0))
            selectedTextInEndContainer =
                this._splitSelectedText(
                    range.endContainer, range.endOffset, true);
        if (range.startContainer.nodeType !== 1 && range.startOffset > 0)
            selectedTextInStartContainer =
                this._splitSelectedText(
                    range.startContainer, range.startOffset, false);
        return [selectedTextInEndContainer, selectedTextInStartContainer];
    },

    /**
    @param {Range.Container} container
    @param {number} offset
    @param {boolean} isSelectedTextWithinContainer
    */
    _splitSelectedText:function(
            container, offset, isSelectedTextWithinContainer) {
        var clonedNode = container.cloneNode(false);
        if (isSelectedTextWithinContainer) {
            clonedNode.deleteData(0, offset);
            container.deleteData(offset, container.length - offset);
        } else {
            clonedNode.deleteData(offset, container.length - offset);
            container.deleteData(0, offset);
        }

        var next_sibling = container.nextSibling;
        var parentNode = container.parentNode;

            if (!isSelectedTextWithinContainer) {
                parentNode.insertBefore(clonedNode, container);
                return container;
            }
        if (next_sibling)
            parentNode.insertBefore(clonedNode, next_sibling);
        else
            parentNode.appendChild(clonedNode);
        return container;
    },

    _getMultiSelectionNodes: function(rangeNodes) {
        var selectionNodes = [];
        for (var i = 0; i < rangeNodes.length; ++i) {
        if (rangeNodes[i] && (rangeNodes[i].nodeName == "#text"
                    && rangeNodes[i].nodeValue
                    && /\S/.test(rangeNodes[i].nodeValue))
                    || rangeNodes[i].nodeName =="IMG")
            {
                selectionNodes.push(rangeNodes[i]);
            }
        }
        return selectionNodes;
    },

    /**
    @param {Array.<node>} nodesToMultiSelect
    @param {number} length
    */
    _multiSelectAllNodes: function (nodesToMultiSelect, length) {
        var i = 0;
        for ( ; i < length; ++i) {
            this._multiSelect(nodesToMultiSelect[i]);
            if (nodesToMultiSelect[i] == this.endContainer) {
                return;
            }
        }
    },

    _multiSelect: function(node) {
        var spanElement = multiSelectionElement.getElement();
        if (this.savedRange.endContainer.isSameNode(node)) {
            spanElement.id = spanElement.id + "_endContainer";
        } else if (this.savedRange.startContainer.isSameNode(node)) {
            spanElement.id = spanElement.id + "_startContainer";
        }
        node.parentNode.insertBefore(spanElement, node);
        spanElement.appendChild(node);
    },

    _clearSelection: function() {
        var highlightedNodes = document.getElementsByTagName("multisel-span");
        var k = highlightedNodes.length;
        if (k == 0)
            return false;

        while(k--) {
            var elem = highlightedNodes[k];
            var copyhighlightedNode = elem.childNodes[0];
            if (copyhighlightedNode != null) {
                if (elem.id.indexOf("_startContainer") > -1) {
                    if (elem.previousSibling != null
                            && elem.previousSibling.nodeName == "#text") {
                        elem.insertBefore(
                            elem.previousSibling, copyhighlightedNode);
                        elem.normalize();
                        copyhighlightedNode = elem.childNodes[0];
                    }
                }
                else if (elem.id.indexOf("_endContainer") > -1) {
                    if (elem.nextSibling != null
                            && elem.nextSibling.nodeName == "#text") {
                        elem.appendChild(elem.nextSibling);
                        elem.normalize();
                        copyhighlightedNode = elem.childNodes[0];
                    }
                }
            }

            if (copyhighlightedNode != null)
                elem.parentNode.insertBefore(copyhighlightedNode, elem);
            elem.parentNode.removeChild(elem);
        }
        return true;
    }
}

function MultiSelectionElement() {}

MultiSelectionElement.prototype = {
            getElement: function() {
                var element = document.createElement('multisel-span');
                element.id = "selection-element-"+ getCount()
                                + subElementCount();
                element.style.backgroundColor = "#c5e0fc";
                element.style.color = "#000000";
                element.className = "selection-"+getCount();
                return element;
            },
    }

function count() {
    if (this.counter == undefined ) {
        this.counter = 0;
    }
    var c = ++this.counter;
    return c;
}

function getCount() {
    if (this.counter == undefined ) {
        this.counter = 0;
    }
    var c = this.counter;
    return c;
}

function subElementCount() {
    if (this.subElementCounter == undefined ) {
        this.subElementCounter = 0;
    }
    var subC = ++this.subElementCounter;
    return subC;
}

function SetMultiSelectionSubElementCountToZero() {
    this.subElementCounter = 0;
}

function clearSelection() {
    var result = multiSelect._clearSelection();
    this.counter = 0;
    currentRange = [];
    multiSelectionObj.onClearSelectionCompleted(result);
}

function clearOverlappingSelection(isLastTouch) {
    multiSelect._clearOverlappingSelection(isLastTouch);
    if (isLastTouch == 1) {
        multiSelectionObj.performCurrentSelection(0, getCount());
    }
}

function applyMultiSelection() {
    if (currentRange.length > 0) {
        multiSelect._applyMultiSelection();
    }
}

function initMultiSelection() {
    currentRange = [];
    var selection = window.getSelection();
    if (selection.toString().length > 0) {
        currentRange.push(multiSelect._getSelectionRanges(selection));
    } else {
        clearSelection();
    }
}

var multiSelect = new MultiSelection();
var multiSelectionElement = new MultiSelectionElement();
