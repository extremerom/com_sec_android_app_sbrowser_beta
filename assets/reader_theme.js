/*
 * Copyright (c) 2018 Samsung Electronics. All Rights Reserved
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
function setBodyColor(backgroundColor, color) {
    var bodyEl = document.getElementsByTagName('body')[0];
    bodyEl.style.background = backgroundColor;
    bodyEl.style.color = color;
}

function setReaderSectionColor(backgroundColor) {
    var section = document.getElementsByClassName('reader_section')[0];
    section.style.backgroundColor = backgroundColor;
}

function setReaderLinkColor(color) {
    var links = document.getElementsByTagName('a');
    for (var i = 0; i < links.length; i++) {
        var link = links[i];
        link.style.color = color;
    }
}

function setTableFontColor(color) {
    var tables = document.getElementsByTagName('table');
    for (var i = 0; i < tables.length; i++) {
        var table = tables[i];
        var table_headers = table.getElementsByTagName('th');
        for (var j = 0; j < table_headers.length; j++) {
            var table_header = table_headers[j];
            table_header.style.color = color;
        }
        var table_rows = table.getElementsByTagName('td');
        for (var k = 0; k < table_rows.length; k++) {
            var table_row = table_rows[k];
            table_row.style.color = color;
        }
    }
}

function applyBlackTheme() {
    setBodyColor("#080808", "#fafafab3");
    setReaderSectionColor("#080808");
    setReaderLinkColor("#9da3fb");
    setTableFontColor("#fafafab3");
}

function applySepiaTheme() {
    setBodyColor("#f2ebe2", "#37220a");
    setReaderSectionColor("#f2ebe2");
    setReaderLinkColor("#0000ff");
    setTableFontColor("#37220a");
}

function applyWhiteTheme() {
    setBodyColor("#ffffff", "#252525");
    setReaderSectionColor("#ffffff");
    setReaderLinkColor("#0000ff");
    setTableFontColor("#252525");
}

function applyMargin(marginPercent) {
    var content = document.getElementById('reader_section');
    if (window.matchMedia(
        'screen and (orientation:landscape) and (min-width:640px)').matches) {
        content.style.marginLeft = marginPercent + "%";
        content.style.marginRight = marginPercent + "%";
    } else {
        content.style.marginLeft = "0%";
        content.style.marginRight = "0%";
    }
}