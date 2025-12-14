/*
 * Copyright (c) 2015 Samsung Electronics. All Rights Reserved
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
function getBodyInnerText() {
    return document.body.innerText.trim();
}

function getDescription() {
    try {
        var metaDesc = null;
        var metaElements =[];
        metaElements = document.getElementsByTagName('meta');
        var ml = metaElements.length;
        for (var i = 0; i < ml; i++) {
            if (metaElements[i]) {
                if (metaElements[i].getAttribute('property')) {
                    if (metaElements[i].getAttribute('property')
                            .toLowerCase().indexOf('description') !== -1) {
                        metaDesc = metaElements[i].getAttribute('content');
                        if (metaDesc)
                            return metaDesc.trim();
                    }
                }
                if (metaElements[i].name
                        .toLowerCase().indexOf('description') !== -1) {
                    metaDesc = metaElements[i].getAttribute('content');
                    if (metaDesc)
                        return metaDesc.trim();
                }
            }
        }
    } catch (e) {
        return getBodyInnerText();
    }
    return getBodyInnerText();
}

getDescription();

