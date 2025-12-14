/*
 * Copyright (c) 2023 Samsung Electronics. All Rights Reserved
 *
 * PROPRIETARY/CONFIDENTIAL
 *
 * This software is the confidential and proprietary information of
 * SAMSUNG ELECTRONICS ("Confidential Information").
 * You shall not disclose such Confidential Information and shall
 * use it only in accordance with the terms of the license agreement
 * you entered into with SAMSUNG ELECTRONICS. SAMSUNG make no
 * representations or warranties about the suitability
 * of the software, either express or implied, including but not
 * limited to the implied warranties of merchantability, fitness for a
 * particular purpose, or non-infringement. SAMSUNG shall not be liable
 * for any damages suffered by licensee as a result of using, modifying
 * or distributing this software or its derivatives.
 */
try {

let DEBUG = false;

const SI_READ_ALOUD_TEXT_EXTRACT_REGEXPS = {
    // TODO: add "nbd_btnz" into to unlikelyCandidates to remove "news.naver.com" image caption temporarily
    unlikelyCandidates: /-ad-|ad-txt|img_desc|caption|ai2html|breadcrumbs|combx|footer|comment|community|cover-wrap|disqus|extra|gdpr|legends|menu|remark|replies|rss|shoutbox|sidebar|skyscraper|social|sponsor|supplemental|ad-break|agegate|pagination|pager|yom-remote|wrap_next_news|nbd_btnz|video__docker|video__docker|video-resource|ad-feedback|button|btn|tit_emotion|txt_copy|reply|article_footer/i,
    okMaybeItsACandidate: /and|article|body|header|title|time|column|content|main|shadow|layout--sidebar/i
};
const SI_READ_ALOUD_TEXT_EXTRACT_BODY_REGEXPS = {
    // TODO: add "nbd_btnz" into to unlikelyCandidates to remove "news.naver.com" image caption temporarily
    unlikelyCandidates: /-ad-|ad-txt|img_desc|caption|ai2html|breadcrumbs|combx|comment|community|cover-wrap|disqus|extra|gdpr|legends|menu|remark|replies|rss|shoutbox|skyscraper|social|sponsor|supplemental|ad-break|agegate|pagination|popup|yom-remote|wrap_next_news|nbd_btnz|video__docker|video__docker|video-resource|ad-feedback|button|btn|tit_emotion|txt_copy|reply|article_footer|nav|logos/i,
    okMaybeItsACandidate: /and|article|body|header|title|time|column|content|main|shadow|layout--sidebar/i
};

// Same as Text selection highlight color and apply alpha value
let SI_READ_ALOUD_HIGHLIGHT_LIGHT_BG_COLOR = '#9ecbfa99';
let SI_READ_ALOUD_HIGHLIGHT_DARK_BG_COLOR = '#3b75b099';
let SI_READ_ALOUD_HIGHLIGHT_WORD_BG_COLOR = '#ffff05';
let SI_READ_ALOUD_HIGHLIGHT_WORD_TEXT_COLOR = '#010102';

let ARTICLE_SELECTOR_RULES = [
    '*[itemprop="articleBody"]',
    'div.content',
    'div.article-content',
    'div.article',
    'div.content-inner',
    'div.entry-content',
    'div.post-content',
    'div[id=content]',
    'div.news-content',
    'article[id=article-view-content-div]',
    'div.detail-content',
    '.article-body',
    'div.story-detail',
    'div[id=article]',
    'div[itemprop=articleBody]',
    'div.post-body',
    'div[id=story-detail]',
    'div.post-text',
    'div.main-content',
    'div.story-content',
    'div.text-formatted',
    'div.no-need-show',
    'div[id=article-content]',
    'div.article-desc',
    'div.cntn-wrp',
    'section.body-article',
    'div.td-post-content',
    'div.text-story-m_gap-16__5BPKQ',
    'div.story_content',
    'div.main',
    'div.art_content',
    'div[id=bodyContent]',
    'div[id=js_content]',
    'div.se-main-container',
    'div[id=root]',
    'div.MBVQb',
    'div.article__text',
    '.div.no-need-show',
    'div[id=articleContent]',
    'div.flow-text',
    'div.main-article',
    'div.article_content',
    'div[id=body-content]',
    'div.art-content',
    'div[id=detail_content]',
    'div.article-wrap',
    'div.tripContent',
    'div[id=content_views]',
    'div.art-bd',
    'div.p_main',
    'div.title_content',
    'div[id=readtrinity0]',
    'article[id=article]',
    'div.article__content',
    'div.elementor-widget-theme-post-content',
    'div.news-blocks',
    'div.news_content',
    'div.story',
    'div.body_container',
    'div.story-element',
    'div.pcl-container',
    'div.amp-wp-content',
    'div.story-body',
    'div.maincontent',
    'div[id=article_content]',
    'div.c-article__body',
    'div.visible-content',
    'main[id=main]',
    'div.post-page-content',
    'div.articleBody',
    'div.des-txt',
    'div.article_body',
    'div.css-l5c1s3',
    'div.article_view',
    'div.FeaturedContent-articleBody',
    'div.ArticleBody-articleBody',
    'div[class^="content_"]',
    'div.ie-storybox',
    'div[class^="detail-text"]',
    'div[class="heroCard"]',
    'div[class^="e-magazine"]',
    'div[class^="Art-exp"]',
    'div[class="sp-ttl"]',
    'section[id=main-algo]',
    'div.header-content',
    'p.description',
    'div.pageContentWrapper'
];

let FALSE_ARTICLE_TAG_DOMAINS = [
    'dantri',
    'cnnindonesia',
    'koreatimes',
    'ndtv',
    'vnexpress'
];

let FALSE_SIZE_PROPERTY_DOMAINS = [
    'chinatimes.com'
];

let FALSE_HEIGHT_PROPERTY_DOMAINS = [
    'news.ltn.com'
];

let NEED_GROUP_BY_HREF_DOMAINS = [
    'https://www.bbc.com/'
];

let TAG_FILTER_MAP_BY_DOMAIN = {
    "ndtv.com": ["footer"]
};

let ARTICLE_MAX_LENGTH_CJK = 50;
let ARTICLE_MAX_LENGTH = 200;

// Global variables
let si_read_aloud = null;
let mutationObserverList = [];
let si_read_aloud_page_state = null;

if (!String.format) {
    String.prototype.format = function() {
        var formatted = this;
        for (var arg in arguments) {
            formatted = formatted.replace("{" + arg + "}", arguments[arg]);
        }
        return formatted;
    };
}

clearChildMutationObservers = function() {
    for (observer of mutationObserverList) {
        observer.disconnect();
    }
    mutationObserverList = [];
}

function SIReadAloudTextSummarizeParser(check_body) {

    this.check_body = check_body;

    this.getTopDomain = function (hostname) {
        return hostname.split('.').slice(1).join('.');
    }

    this.removeDuplicatedNodes = function (nodes) {
        // 1. Remove duplicated node
        for (let first = 0; first < nodes.length; ++first) {
            while (first < nodes.length && nodes[first].innerText.length <= 0) {
                nodes.splice(first, 1);
            }

            if (first - 1 >= nodes.length) {
                break;
            }

            for (let second = first + 1; second < nodes.length; ++second) {
                if (nodes[first].contains(nodes[second])) {
                    nodes.splice(second, 1);
                    second -= 1;
                } else {
                    break;
                }
            }
        }

        return nodes;
    };

    this.removeUnnessaryHighlight = function (nodes) {
        let last_text_pos = 0;
        for (let pos = nodes.length - 1; pos >= 0; pos--) {
            if (!['h1', 'h2', 'h3', 'h4'].includes(nodes[pos].tagName.toLowerCase())) {
                last_text_pos = pos + 1;
                break;
            }
        }

        return nodes.slice(0, last_text_pos);
    }

    this.getArticlesBySelector = function(selector) {
        let selected = Array.from(document.querySelectorAll(selector));
        selected = this.removeUnnessaryHighlight(this.removeDuplicatedNodes(selected));

        return selected;
    };

    this.getArticles = function() {
        let selected = this.getArticlesBySelector('article');
        if (selected.length > 0) {
            let selectors = this.getArticlesBySelector(['h1', 'h2', 'h3', 'h4', 'article']);
            for (let domain of FALSE_ARTICLE_TAG_DOMAINS) {
                if (document.location.hostname.includes(domain)) {
                    selectors = selectors.concat(this.getArticlesBySelector(ARTICLE_SELECTOR_RULES));
                    break;
                }
            }
            return selectors;
        }

        // alternative
        selected = this.getArticlesBySelector(ARTICLE_SELECTOR_RULES);
        if (DEBUG) {
            console.log('selected length : ' + selected.length)
            console.log(selected);
        }
        if (selected.length > 0) {
            let selector_rules = ARTICLE_SELECTOR_RULES;
            selector_rules.unshift('h4');
            selector_rules.unshift('h3');
            selector_rules.unshift('h2');
            selector_rules.unshift('h1');
            return this.getArticlesBySelector(selector_rules);
        }

        return [];
    };

    this.parse = function() {
        window.isFromBody = false;
        let article_nodes = this.check_body ? [document.body] : this.getArticles();
        clearChildMutationObservers();
        SIReadAloudTextAreaClear();

        if (article_nodes.length <= 0) {
            console.log('parse(): No article');
            return [];
        }

        if (this.check_body) {
            window.isFromBody = true;
        }

        let parsedDomTree = [];
        let groupIndex = 0;

        for (article_node of article_nodes) {
            if (isHiddenBottomToTop(article_node) || notEnoughBoundary(article_node)) {
                continue;
            }
            let reachedEndOfTree = false;
            let blockDeps = [];
            let elementBoundary = false;
            let preformatted = {flag: false, index: null};
            let walker = document.createTreeWalker(article_node, NodeFilter.SHOW_ALL, {acceptNode: nodeFilter}, false);
            let node = walker.root;

            while (!reachedEndOfTree) {
                node = walker.nextNode();

                if (!node) {
                    reachedEndOfTree = true;
                }

                let textGroup = {group: [], preformatted: false};
                while (node) {
                    let nodeDepth = getNodeTreeDepth(node);

                    if (!preformatted.flag && isPreformattedElement(node)) {
                        preformatted.flag = true;
                        preformatted.index = nodeDepth;
                    } else if (preformatted.flag && nodeDepth <= preformatted.index) {
                        preformatted.flag = false;
                        preformatted.index = null;
                    }
                    if (isElementNode(node)) {
                        if (nodeDepth <= blockDeps[blockDeps.length - 1]) {
                            while (nodeDepth <= blockDeps[blockDeps.length - 1]) {
                                blockDeps.pop();
                            }

                            if (!isInlineElement(node)) {
                                blockDeps.push(nodeDepth);
                            }

                            elementBoundary = true;
                            break;
                        } else {
                            if (!isInlineElement(node)) {
                                blockDeps.push(nodeDepth);
                                elementBoundary = true;
                                break;
                            }
                        }
                    } else if (isTextNode(node) && !isOutOfScreenElement(node)) {
                        if (nodeDepth <= blockDeps[blockDeps.length - 1]) {
                            while (nodeDepth <= blockDeps[blockDeps.length - 1]) {
                                blockDeps.pop();
                            }

                            walker.previousNode();
                            elementBoundary = true;
                            break;
                        }

                        if (!preformatted.flag && isNodeTextValueWhitespaceOnly(node) && node.nodeValue.length !== 1) {
                            node = walker.nextNode();
                            continue;
                        } else if (node.nodeValue.length === 1 && node.nodeValue.charCodeAt(0) === 10) {
                            node = walker.nextNode();
                            continue;
                        }

                        let originalText = node.nodeValue;
                        let nodeText = formatTextNodeValue(node, preformatted.flag, elementBoundary);

                        if (nodeText.length === 0) {
                            node = walker.nextNode();
                            continue;
                        }

                        if (DEBUG) {
                            node.parentNode.style.cssText = 'border:1px solid red';
                        }
                        if (document.location.hostname.includes("baidu.com")){
                            makeChildMutationObserver(node.parentNode.parentNode);
                        }

                        let textNodeInformation = {
                            groupIndex: groupIndex,
                            text: nodeText,
                            originalText: originalText,
                            node: node,
                            x: node.parentNode.getBoundingClientRect().x,
                            y: node.parentNode.getBoundingClientRect().y,
                            href: getFirstHref(node)
                        };

                        textGroup.group.push(textNodeInformation);
                        textGroup.preformatted = preformatted.flag;
                    }

                    node = walker.nextNode();
                    elementBoundary = false;
                    if (!node) {
                        reachedEndOfTree = true;
                    }
                }

                if (textGroup.group.length === 0) {
                    continue;
                }

                parsedDomTree[groupIndex++] = textGroup;
            }
        }

        if (!this.isArticle(parsedDomTree)) {
            return [];
        }

        // Sort by position
        parsedDomTree.sort(function(a, b) {
            let x_diff = a['group'][0]['x'] - b['group'][0]['x'];
            let y_diff = a['group'][0]['y'] - b['group'][0]['y'];
            // 15 is error margin
            if (Math.abs(y_diff) < 20) {
                if (Math.abs(x_diff) < 20){
                    return 0;
                } else {
                    return x_diff;
                }
            }
            return y_diff;
        });

        for (let domain of NEED_GROUP_BY_HREF_DOMAINS) {
            if (document.location.href === domain) {
                parsedDomTree = sortHrefGroupMap(getGroupByHref(parsedDomTree));
                break;
            }
        }

        return parsedDomTree;
    };

    function getFirstHref(node) {
        let parent = node.parentNode;
        while (parent) {
            if (parent.href !== undefined) {
                return parent;
            }
            parent = parent.parentNode;
        }
    }

    function getGroupByHref(parsedTree) {
        let _map = new Map();
        for (let item of parsedTree) {
            let g = item['group'];
            for (let _g of g) {
                if (_g.href) {
                    if (_map.has(_g.href)) {
                        _map.get(_g.href).push(item);
                    } else {
                        _map.set(_g.href, [item]);
                    }

                }
            }
        }

        return _map;
    }

    function sortHrefGroupMap(_map) {
        function sortByY(value, key, map) {
            value.sort(function(a, b) {
                let y_diff = a['group'][0]['y'] - b['group'][0]['y'];
                // 15 is error margin
                if (y_diff <= 0 && y_diff > -15) {
                    return a['group'][0]['x'] - b['group'][0]['x'];
                }
                return y_diff;
            });
        }
        _map.forEach(sortByY);

        let keys = [];
        for (let [k,v] of _map) {
            keys.push(k);
        }

        keys.sort((key1, key2) => _map.get(key1)[0]['group'].y - _map.get(key2)[0]['group'].y);

        let sortedTree = [];
        for (k of keys) {
            Array.prototype.push.apply(sortedTree,_map.get(k));
        }

        return sortedTree;
    }

    this.isArticle = function(parsedDomTree) {
        if (!window.isFromBody &&
                location.pathname == '/' && !location.hash) {
            return false;
        }

        let total_length = 0;
        let is_baidu = document.location.href.includes("baidu")
        let max_length = is_baidu ? ARTICLE_MAX_LENGTH_CJK : ARTICLE_MAX_LENGTH;

        if (window.isFromBody) {
            max_length = 1;
        }
        for (let parsedDom of parsedDomTree) {
            let mergedText = "";
            for (let j = 0; j < parsedDom['group'].length; j++) {
                mergedText += parsedDom['group'][j]['text'];
            }
            let textContentLength = mergedText.trim().length;
            total_length += textContentLength;
            if (total_length > max_length) {
                return true;
            }
        }

        console.log('[read_aloud.js] not enough length : ' + total_length);
        console.log("[read_aloud.js] isBaidu : " + is_baidu);
        console.log("[read_aloud.js] max_length : " + max_length);
        return false;
    }

    function nodeFilter(node) {
        if (isElementNode(node)) {
            if (document.location.hostname.includes("cctv.com")
                && node.className.toLowerCase().startsWith("info")) {
                return NodeFilter.FILTER_REJECT;
            }

            let domain_exception_tags = [];
            for (let key of Object.keys(TAG_FILTER_MAP_BY_DOMAIN)) {
                if (document.location.href.indexOf(key)) {
                    domain_exception_tags = TAG_FILTER_MAP_BY_DOMAIN[key];
                    break;
                }
            }

            let exception_list = [];
            let allPageExceptions = [/*'figcaption', 'figure', */'header'/*, 'h1', 'h2', 'h3'*/];
            switch (node.tagName.toLowerCase()) {
                case 'script':
                case 'noscript':
                case 'style':
                case 'textarea':
                case 'math':
                case 'button':
                case 'figure':
                case 'svg':
                case 'figcaption':
                case 'select':
                    if (!exception_list.includes(node.tagName.toLowerCase())
                        && !(window.isFromBody
                            && allPageExceptions.includes(node.tagName.toLowerCase()))) {
                        return NodeFilter.FILTER_REJECT;
                    }
                default:
                    if (domain_exception_tags.includes(node.tagName.toLowerCase())) {
                        return NodeFilter.FILTER_REJECT;
                    }
                    if (window.isFromBody) {
                        return isHiddenTopDown(node) || isSkippedClassOrId(node, true)
                                || notEnoughBoundary(node) || isHiddenByTransform(node)
                                ? NodeFilter.FILTER_REJECT
                                : NodeFilter.FILTER_ACCEPT;
                    }
                    return isSkippedClassOrId(node, false) || isHiddenTopDown(node)
                            || isAbsoluteElement(node) || notEnoughBoundary(node)
                            || isCustomFilteredElement(node) || isHiddenByTransform(node)
                            ? NodeFilter.FILTER_REJECT
                            : NodeFilter.FILTER_ACCEPT;
            }
        }

        if (isTextNode(node) && isVisibleText(node)) {
            return NodeFilter.FILTER_ACCEPT;
        }

        return NodeFilter.FILTER_REJECT;
    }

    function makeChildMutationObserver(node) {
        if (node == null) {
            return;
        }

        var config = { attributes: true, childList: true, subtree: true };

        // Callback function to execute when mutations are observed
        var callback = (mutationList, observer) => {
            for (const mutation of mutationList) {
                if (mutation.type === "childList") {
                    ra_node = null;
                    remove_list = [];
                    for (c of node.childNodes) {
                        if (c.nodeType !== Node.ELEMENT_NODE) {
                            remove_list.push(c);
                        } else {
                            if (c.getAttribute('style') == 'all: unset;') {
                                ra_node = c;
                            } else {
                                remove_list.push(c);
                            }
                        }
                    }
                    if (ra_node) {
                        for (c of remove_list) {
                            if (c.textContent == ra_node.textContent) {
                                node.removeChild(c);
                            }
                        }
                    }
                }
            }
        };

        var observer = new MutationObserver(callback);
        observer.observe(node, config);

        mutationObserverList.push(observer);
    }

    function formatTextNodeValue(node, preformatted, elementBoundary) {
        if (isElementNode(node)) {
            return;
        }

        let nodeText = node.nodeValue;
        if (preformatted) {
            return nodeText;
        }

        // blank character : Non-breaking Space -> \u00a0, Narrow No-Break Space -> \u202f
        // empty character : Zero width space -> \u200b
        let text = nodeText
                .replace(/[\t\n\r ]+/g, ' ')
                .replace('\u00a0', ' ').replace('\u202f', ' ')
                .replace('\u200b', '').replace('\u200c', '');
        if (elementBoundary) {
            text = text.replace(/^[\t\n\r ]+/g, '');
        }

        return text.trim();
    }

    function isPreformattedElement(node) {
        if (!isElementNode(node)) {
            return undefined;
        }

        if (node.tagName.toLowerCase() === 'pre' || node.style.whiteSpace.toLowerCase() === 'pre') {
            return true;
        }

        let computedStyle = window.getComputedStyle(node);
        if (computedStyle.getPropertyValue('whitespace').toLowerCase() === 'pre') {
            return true;
        }

        return false;
    }

    function isOutOfScreenElement(node) {
        if (!window.isFromBody) {
            return false;
        }

        let parent_node = node.parentNode;
        if (!parent_node || !isElementNode(parent_node)) {
            return false;
        }

        // Swipe
        try {
            let rect = parent_node.getBoundingClientRect();
            if (rect.x < 0 || rect.x > window.innerWidth) {
                return true;
            }
        } catch { }

        return false;
    }

    function isHiddenTopDown(node) {
        return isHiddenElement(node);
    }

    function isHiddenBottomToTop(node) {
        let start_node = node;
        while(start_node && start_node !== document.body) {
            if (isHiddenElement(start_node)) {
                return true;
            }
            if (isHiddenByTransform(start_node)) {
                return true;
            }
            start_node = start_node.parentNode;
        }
        return false;
    }

    function isHiddenByTransform(node) {
        if (!isElementNode(node)) {
            return undefined;
        }
        let computedStyle = window.getComputedStyle(node);
        let matrix = new WebKitCSSMatrix(computedStyle.transform);
        let translateX = matrix.m41;
        let translateY = matrix.m42;
        return translateX < 0 || translateY < 0;
    }

    function isHiddenElement(node) {
        if (!isElementNode(node)) {
            return undefined;
        }

        let computedStyle = window.getComputedStyle(node);
        if (computedStyle.getPropertyValue('display').toLowerCase().includes('none')
                || computedStyle.getPropertyValue('display').toLowerCase().includes('hidden')) {
            return true;
        }

        if (computedStyle.getPropertyValue('visibility').toLowerCase().includes('hidden')
                || computedStyle.getPropertyValue('visibility')
                        .toLowerCase().includes('collapse')) {
            return true;
        }

        if (computedStyle.getPropertyValue('opacity') === '0') {
            return true;
        }

        // Naver main
        if (computedStyle.getPropertyValue('clip')
                && computedStyle.getPropertyValue('clip') === 'rect(0px, 0px, 0px, 0px)') {
            return true;
        }

        return false;
    }

    function isNumeric(n) {
        return !isNaN(parseFloat(n)) && isFinite(n);
    }

    function getSizeByProperty(node, key) {
        let value = window.getComputedStyle(node).getPropertyValue(key)
        if (!value) {
            return 9999;
        }
        if (!value.includes('px')) {
            return 9999;
        }
        value = value.replace('px','');
        if (!isNumeric(value)) {
            return 9999;
        }
        return parseInt(value);
    }

    function notEnoughBoundary(node) {
        let falseSize = false;
        for (let domain of FALSE_SIZE_PROPERTY_DOMAINS) {
            if (document.location.href.indexOf(domain)) {
                falseSize = true;
                break;
            }
        }

        let falseHeight = false;
        for (let domain of FALSE_HEIGHT_PROPERTY_DOMAINS) {
            if (document.location.href.indexOf(domain)) {
                falseHeight = true;
                break;
            }
        }

        if (isElementNode(node)) {
            if (node.firstChild && node.firstChild.nodeType !== Node.TEXT_NODE) {
                return false;
            }
            if (getSizeByProperty(node, 'top') < 0) {
                return true
            }
            if (!falseSize && getSizeByProperty(node, 'line-height') <= 1) {
                return true;
            }
            if (!falseSize && getSizeByProperty(node, 'font-size') <= 1) {
                return true;
            }
            if (getSizeByProperty(node, 'width') <= 1) {
                return true;
            }
            if (!falseHeight && getSizeByProperty(node, 'height') <= 1) {
                return true;
            }
            return false;
        }
        return node.clientWidth <= 1;
    }

    function isCustomFilteredElement(node) {
        // For BBC
        if (!node.hasAttribute('data-component')) {
            return false;
        }
        var val = node.getAttribute('data-component');
        return val === 'tag' || val === 'links-block';
    }

    function isAbsoluteElement(node) {
        if (!isElementNode(node)) {
            return undefined;
        }
        // chosun date
        if (node.className && /date/i.test(node.className) && /flex/i.test(node.className)) {
            return false;
        }
        if (node.style.position.toLowerCase() == 'absolute') {
            return true;
        }
        return window.getComputedStyle(node).getPropertyValue('position').toLowerCase() == 'absolute';
    }

    function isElementNode(node) {
        return node.nodeType === Node.ELEMENT_NODE;
    }

    function isVisibleText(node) {
        if (!node.parentNode) {
            return true;
        }

        let color = window.getComputedStyle(node.parentNode).getPropertyValue('color');
        if (!color) {
            return true;
        }
        let divided_color = color.match(/[\d.]+/g);
        if (divided_color.length < 4) {
            return true;
        }

        return divided_color[3] > 0;
    }

    function isTextNode(node) {
        return node.nodeType === Node.TEXT_NODE;
    }

    function isInlineElement(element) {
        if (!isElementNode(element)) {
            return false;
        }

        let elementTagName = element.tagName.toLowerCase();
        if (elementTagName === 'br') {
            return false;
        }

        if (window.getComputedStyle(element).display === 'inline') {
            return true;
        }

        return false;
    }

    function isNodeTextValueWhitespaceOnly(node) {
        return !(/[^\t\n\r ]/.test(node.nodeValue));
    }

    function getNodeTreeDepth(node) {
        let depth = -1;

        while (node != null) {
            depth++;
            node = node.parentNode;
        }

        return depth;
    }

    function isSkippedClassOrId(node, isBody) {
        let matchString = node.className + " " + node.id;
        if (node.role) {
            matchString += " " + node.role;
        }
        let unlikelyCandidates = isBody ? SI_READ_ALOUD_TEXT_EXTRACT_BODY_REGEXPS.unlikelyCandidates
                : SI_READ_ALOUD_TEXT_EXTRACT_REGEXPS.unlikelyCandidates;
        let okMaybeItsACandidate = isBody ? SI_READ_ALOUD_TEXT_EXTRACT_BODY_REGEXPS.okMaybeItsACandidate
                : SI_READ_ALOUD_TEXT_EXTRACT_REGEXPS.okMaybeItsACandidate;
        if (unlikelyCandidates.test(matchString) &&
                !okMaybeItsACandidate.test(matchString)) {
            return true;
        }
        return false;
    }
}

let SIReadAloudTextHighlighter = function(domtree) {
    this.domtree = domtree;
    this.hl_map = new WeakMap();

    this.partial_contains = function(source, target, check_from_start) {
        if (source == null || source == undefined || source.length < 1) {
            return -1;
        }
        let source_start_pos = -1;
        let target_pos = 0;
        for (let source_pos = 0; source_pos < source.length; source_pos++) {
            if (target_pos == target.length) {
                return {
                    source_start_pos: source_start_pos,
                    target_pos: target.length
                };
            }

            if (check_from_start && source_pos == 0 && (source[source_pos] != target[target_pos])) {
                return {
                    source_start_pos: -1,
                    target_pos: -1
                };
            }

            if (source[source_pos] == target[target_pos]) {
                if (source_start_pos < 0) {
                    source_start_pos = source_pos;
                }
                target_pos++;
            } else if (target_pos != 0) {
                source_start_pos = -1;
                target_pos = 0;
            }
        }

        return {
            source_start_pos: source_start_pos,
            target_pos: target_pos,
        };
    };

    let origin_key = -1;

    this.searchByPos = function(find_key, start, end, dark_theme) {
        if (origin_key != find_key) {
            this.clear();
            origin_key = find_key;
        }
        if (find_key >= this.domtree.length) {
            console.log('ReadAloud: cannot find key : ' + findKey);
            return;
        }
        let find_group = this.domtree[find_key];
        let first_node = null;
        let start_pos = 0;

        for (let j = 0; j < find_group['group'].length; j++) {
            let node_info = find_group['group'][j];
            if (j == 0) {
                first_node = node_info.node.parentNode;
            }
            let read_text = node_info.text;
            let original_text = node_info.originalText;
            let length = read_text.length;
            let original_length = original_text.length;
            let read_position = original_text.indexOf(read_text);

            if (DEBUG) {
                console.log("ReadAloud: highlight " + find_key + ':' + j
                        + " -> range(" + start + ', ' + end + ")"
                        + " in range(" + start_pos + ', ' + (start_pos + length) + ")");
            }

            if (start < 0 || end < 0 || start_pos + length < start || start_pos > end) {
                let prev_blank = original_text.substring(0, read_position);
                let next_blank = original_text.substring(read_position + length, original_length);
                if (DEBUG) {
                    console.log("ReadAloud: highlight " + find_key + ':' + j
                            + ' -> orgn: \"' + original_text + '\"');
                    console.log("ReadAloud: highlight " + find_key + ':' + j
                            + ' -> read: \"' + read_text + '\"');
                }

                let sentence_element = document.createElement('samsung_tag_' + find_key);
                sentence_element.className = 'si-text-highlight';
                sentence_element.style.width = 'auto';
                sentence_element.style.height = 'auto';
                sentence_element.style.backgroundColor = dark_theme ?
                        SI_READ_ALOUD_HIGHLIGHT_DARK_BG_COLOR :
                        SI_READ_ALOUD_HIGHLIGHT_LIGHT_BG_COLOR;
                sentence_element.textContent = (read_position >= 0 ? prev_blank : '')
                       + read_text
                       + (read_position >= 0 ? next_blank : '');
                if (this.hl_map.has(node_info.node)) {
                    this.hl_map.get(node_info.node).parentNode.replaceChild(sentence_element, this.hl_map.get(node_info.node));
                    this.hl_map.delete(node_info.node);
                } else {
                    node_info.node.parentNode.replaceChild(sentence_element, node_info.node);
                }
                this.hl_map.set(node_info.node, sentence_element);
            } else {
                let prev_blank = original_text.substring(0, read_position);
                let prev_text = read_text.substring(0, start - start_pos);
                let highlighted_text = read_text.substring(start - start_pos, end - start_pos);
                let next_text = read_text.substring(end - start_pos, length);
                let next_blank = original_text.substring(read_position + length, original_length);
                if (DEBUG) {
                    let highlighted_text_for_log =
                            highlighted_text.length !== 0
                                    ? '[' + highlighted_text + ']'
                                    : highlighted_text;
                    console.log("ReadAloud: highlight " + find_key + ':' + j
                            + ' -> orgn: \"' + original_text + '\"');
                    console.log("ReadAloud: highlight " + find_key + ':' + j
                            + ' -> read: \"' + prev_text + highlighted_text_for_log + next_text + '\"');
                }

                let sentence_element = document.createElement('samsung_tag_activated_' + find_key);
                sentence_element.className = 'si-text-highlight';
                sentence_element.style.width = 'auto';
                sentence_element.style.height = 'auto';
                sentence_element.style.backgroundColor = dark_theme ?
                        SI_READ_ALOUD_HIGHLIGHT_DARK_BG_COLOR :
                        SI_READ_ALOUD_HIGHLIGHT_LIGHT_BG_COLOR;
                sentence_element.appendChild(document.createTextNode(
                    (read_position >= 0 ? prev_blank : '') + prev_text));

                let highlight_sentence_element = document.createElement('samsung_tag_reading');
                highlight_sentence_element.className = 'si-text-highlight-word';
                highlight_sentence_element.style.width = 'auto';
                highlight_sentence_element.style.height = 'auto';
                if (dark_theme) {
                        highlight_sentence_element.style.color =
                            SI_READ_ALOUD_HIGHLIGHT_WORD_TEXT_COLOR;
                }
                highlight_sentence_element.style.backgroundColor =
                        SI_READ_ALOUD_HIGHLIGHT_WORD_BG_COLOR;
                highlight_sentence_element.textContent = highlighted_text;
                sentence_element.appendChild(highlight_sentence_element);

                sentence_element.appendChild(document.createTextNode(
                    next_text + (read_position >= 0 ? next_blank : '')));

                if (this.hl_map.has(node_info.node)) {
                    this.hl_map.get(node_info.node).parentNode.replaceChild(sentence_element, this.hl_map.get(node_info.node));
                    this.hl_map.delete(node_info.node);
                } else {
                    node_info.node.parentNode.replaceChild(sentence_element, node_info.node);
                }
                this.hl_map.set(node_info.node, sentence_element);
            }
            start_pos += length;
        }
        return first_node;
    };

    this.clear = function() {
        for (let info of this.domtree) {
            for (let group of info.group){
                if (this.hl_map.has(group.node)
                && this.hl_map.get(group.node).parentNode) {
                    this.hl_map.get(group.node).parentNode.replaceChild(group.node, this.hl_map.get(group.node));
                    this.hl_map.delete(group.node);
                }
            }
        }
    }
}

function SiReadAloudTextGetSentences() {
    let parser = new SIReadAloudTextSummarizeParser(false);
    let parsed_data = parser.parse();
    if (Object.keys(parsed_data).length <= 0) {
        parser = new SIReadAloudTextSummarizeParser(true);
        parsed_data = parser.parse();
        if (parsed_data.length <= 0) {
            return {
                'is_article': false,
                'sentences': {}
            };
        }
    }
    if (si_read_aloud == null) {
        si_read_aloud = new SIReadAloudTextHighlighter(parsed_data);
    }

    let sentences = [];
    for (let item of parsed_data) {
        let mergedText = "";
        for (let j = 0; j < item['group'].length; j++) {
            mergedText += item['group'][j]['text'];
        }
        sentences.push(mergedText);
    }

    return {
        'is_article': sentences.length > 0 && !window.isFromBody,
        'sentences': Object.assign({}, sentences)
    };
}

function SIReadAloudPageState(is_touch, has_user_action) {
    this.is_touch = is_touch;
    this.has_user_action = has_user_action;
    let _self = this;

    this.isTouching = function() {
        return this.is_touch;
    }

    this.setUserAction = function(value) {
        _self.has_user_action = value;
    }

    this.hasUserAction = function() {
        return this.has_user_action;
    }

    this.initMouseAndTouchListener = function() {
        document.addEventListener('touchstart', this.handleTouchStart);
        document.addEventListener('touchmove', this.handleTouchMove);
        document.addEventListener('touchend', this.handleTouchEnd);
        document.addEventListener('mousedown', this.handleTouchStart);
        document.addEventListener('mouseup', this.handleTouchEnd);
    }

    this.handleTouchStart = function(e) {
        _self.is_touch = true;
        _self.has_user_action = true;
    }

    this.handleTouchMove = function(e) {
        _self.is_touch = true;
    }

    this.handleTouchEnd = function(e) {
        _self.is_touch = false;
    }

    this.clear = function(e) {
        document.removeEventListener('touchstart', this.handleTouchStart);
        document.removeEventListener('touchmove', this.handleTouchMove);
        document.removeEventListener('touchend', this.handleTouchEnd);
        document.removeEventListener('mousedown', this.handleTouchStart);
        document.removeEventListener('mouseup', this.handleTouchEnd);
    }
}

function isElementVisible(e, t, i) {
    return !(t.top < 0 || t.left < 0 || t.bottom > document.defaultView.innerHeight - 200
        || t.right > document.defaultView.innerWidth
        || i && document.elementFromPoint((t.left + t.right) / 2, (t.top + t.bottom) / 2) !== e)
}

function SiReadAloudTextHighlight(key, start, end, dark_theme, shouldFocus, debug) {
    if (si_read_aloud_page_state == null) {
        si_read_aloud_page_state = new SIReadAloudPageState(false, false);
        si_read_aloud_page_state.initMouseAndTouchListener();
    }

    DEBUG = debug;

    let node = si_read_aloud.searchByPos(key, start, end, dark_theme);
    if (!node) return;

    if (si_read_aloud_page_state.isTouching()) {
        return;
    }

    if (shouldFocus) {
        si_read_aloud_page_state.setUserAction(false);
    }

    if (isElementVisible(node, node.getBoundingClientRect(), false)
            && si_read_aloud_page_state.hasUserAction()) {
        si_read_aloud_page_state.setUserAction(false);
    }

    focusedNode = document.getElementsByTagName("samsung_tag_reading")[0].parentNode;
    scrollCenterNode = findLineClampNode(focusedNode);
    scrollCenterNode.scrollIntoView({ block: "center"});

}

function findLineClampNode(node) {
    let limit = 3;
    let parentNode = node;
    let found = false;
    for (let pos = 0; pos < limit ; ++pos) {
        if (!parentNode.parentElement) {
            break;
        }
        if (window.getComputedStyle(parentNode).getPropertyValue(
                                    '-webkit-line-clamp') !== 'none') {
            found = true;
            break;
        }
        parentNode = parentNode.parentElement;
    }

    if (!parentNode) {
        return node;
    }
    return found ? parentNode : node;
}

function SiReadAloudTextUnHighlight() {
    if (si_read_aloud == null) {
        return;
    }
    si_read_aloud.clear();
}

function SIReadAloudTextAreaClear() {
    const textAreaNodeList = document.querySelectorAll(".si-read-aloud-text-area");
    for (var i = 0; i < textAreaNodeList.length; i++) {
        var element = textAreaNodeList[i];
        element.classList.remove("si-read-aloud-text-area");
    }
}

function SiReadAloudClear() {
    if (si_read_aloud != null) {
        si_read_aloud.clear();
        delete si_read_aloud;
        si_read_aloud = null
    }
    if (si_read_aloud_page_state != null) {
        si_read_aloud_page_state.clear();
        delete si_read_aloud_page_state;
        si_read_aloud_page_state = null;
    }

    mutationObserverList = [];

    SIReadAloudTextAreaClear();
}

function SiReadAloudGetOgImage() {
    let ogImageElement = document.querySelector('meta[property="og:image"]');
    if (ogImageElement !== null) {
        return ogImageElement.getAttribute("content");
    }
    let readerElement = document.getElementById('reader_content_div');
    if (readerElement !== null) {
        const images = readerElement.getElementsByTagName('img');
        if (images !== null) {
            for (var im = 0, imlen = images.length; im < imlen; im++) {
                if (images[im].getAttribute("src") !== null) {
                    return images[im].getAttribute("src");
                }
            }
        }
    }
    return "";
}
} catch(e) {
    console.log(e);
}
