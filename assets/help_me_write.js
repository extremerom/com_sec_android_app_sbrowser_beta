/*
 * Copyright (c) 2024 Samsung Electronics. All Rights Reserved
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

const DEBUG = false;

const REASON_NONE = 0;
const REASON_PAYWALL = 1;
const REASON_UNSUPPORTED_INPUT_FIELD = 2;
const REASON_EXTRACTION_FAILED = 3;

let SI_HELP_ME_WRITE_SUPPORT_RULES = {
    // Social - Start
    'www.instagram.com': {
        'paths': [{
            'path_regex': '/.*',
            'content_selector': '',
            'content_pos': 0
        }],
        'exceptional_case': true
    },
    'www.facebook.com': {
        'paths': [{
            'path_regex': '/.*',
            'content_selector': '',
            'content_pos': 0
        }],
        'exceptional_case': true
    },
    'm.facebook.com': {
        'paths': [{
            'path_regex': '/.*',
            'content_selector': '',
            'content_pos': 0
        }],
        'exceptional_case': true
    },
    'www.linkedin.com': {
        'paths': [{
            'path_regex': '/feed/.*',
            'content_selector': 'p[data-feed-control="commentary_text"]',
            'content_pos': 0
        }],
        'exceptional_case': false
    },
    'twitter.com': {
        'paths': [{
            'path_regex': '/.*',
            'content_selector': 'div[data-testid=tweetText]',
            'content_pos': 0
        }],
        'exceptional_case': false
    },
    'www.tumblr.com': {
        'paths': [{
            'path_regex': '/.*',
            'content_selector': '',
            'content_pos': 0
        }],
        'exceptional_case': true
    },
    'www.threads.net': {
        'paths': [{
            'path_regex': '/.*',
            'content_selector': '',
            'content_pos': 0
        }],
        'exceptional_case': true
    },
    'band.us': {
        'paths': [{
            'path_regex': '/.*',
            'content_selector': 'div[class="postText _postTxt"]',
            'content_pos': 0
        }],
        'exceptional_case': false
    },
    'm.blog.naver.com': {
        'paths': [{
            'path_regex': '/.*',
            'content_selector': 'div[id="naverComment_wai_u_cbox_content_wrap_tabpanel"]',
            'content_pos': 0
        }],
        'exceptional_case': false
    },
    'section.blog.naver.com': {
        'paths': [{
            'path_regex': '/.*',
            'content_selector': 'div[id="naverComment_wai_u_cbox_content_wrap_tabpanel"]',
            'content_pos': 0
        }],
        'exceptional_case': false
    },
    // Social - End
    // Community - Start
    'www.amazon.com': {
        'paths': [{
            'path_regex': '/review/.*',
            'content_selector': 'span[data-hook="ryp-progressive-product-info-section-title"]',
            'content_pos': 0
        }],
        'exceptional_case': false
    },
    'www.reddit.com': {
        'paths': [{
            'path_regex': '/r/.*',
            'content_selector': 'div[slot=text-body]',
            'content_pos': 0
        }],
        'exceptional_case': false
    },
    'www.temu.com': {
        'paths': [{
            'path_regex': '/.*',
            'content_selector': 'div[class^="goodsName"]',
            'content_pos': 0
        }],
        'exceptional_case': false
    },
    'm.cafe.naver.com': {
        'paths': [{
            'path_regex': '/.*',
            'content_selector': 'h2[class="tit"]',
            'content_pos': 0
        }],
        'exceptional_case': false
    },
    'm.cafe.daum.net': {
        'paths': [{
            'path_regex': '/.*',
            'content_selector': 'h3[class="tit_subject"]',
            'content_pos': 0
        }],
        'exceptional_case': false
    },
    'www.11st.co.kr': {
        'paths': [{
            'path_regex': '/.*',
            'content_selector': 'h2[class="c-card__title"]',
            'content_pos': 0
        }],
        'exceptional_case': false
    },
    'm.11st.co.kr': {
        'paths': [{
            'path_regex': '/.*',
            'content_selector': 'h2[class="c-card__title"]',
            'content_pos': 0
        }],
        'exceptional_case': false
    },
    'www.gmarket.co.kr': {
        'paths': [{
            'path_regex': '/.*',
            'content_selector': '',
            'content_pos': 0
        }],
        'exceptional_case': false
    },
    'www.clien.net': {
        'paths': [{
            'path_regex': '/.*',
            'content_selector': 'article',
            'content_pos': 0
        }],
        'exceptional_case': false
    },
    'm.clien.net': {
        'paths': [{
            'path_regex': '/.*',
            'content_selector': 'article',
            'content_pos': 0
        }],
        'exceptional_case': false
    },
    'm.shopping.naver.com': {
        'paths': [{
            'path_regex': '/popup/reviews/.*',
            'content_selector': 'h2',
            'content_pos': 0
        }],
        'exceptional_case': false
    },
    'stackoverflow.com': {
        'paths': [{
            'path_regex': '/questions/.*',
            'content_selector': 'div[class="s-prose js-post-body"]',
            'content_pos': 0
        }],
        'exceptional_case': false
    },
    'meeco.kr': {
        'paths': [{
            'path_regex': '/.*',
            'content_selector': '',
            'content_pos': 0
        }],
        'exceptional_case': false
    },
    'nextdoor.com': {
        'paths': [{
            'path_regex': '/.*',
            'content_selector': '',
            'content_pos': 0
        }],
        'exceptional_case': false
    },
    'www.doordash.com': {
        'paths': [{
            'path_regex': '/.*',
            'content_selector': '',
            'content_pos': 0
        }],
        'exceptional_case': false
    },
    'www.yelp.com': {
        'paths': [{
            'path_regex': '/.*',
            'content_selector': 'h1',
            'content_pos': 0
        }],
        'exceptional_case': false
    },
    'www.goodreads.com': {
        'paths': [{
            'path_regex': '/.*',
            'content_selector': 'h1',
            'content_pos': 0
        }],
        'exceptional_case': false
    },
    'www.etsy.com': {
        'paths': [{
            'path_regex': '/.*',
            'content_selector': '',
            'content_pos': 0
        }],
        'exceptional_case': false
    },
    // Community - End
    // News - Start
    'm.news.naver.com': {
        'paths': [{
            'path_regex': '/mnews/article/.*',
            'content_selector': 'h2[class=media_end_head_headline]',
            'content_pos': 0
        }],
        'exceptional_case': false
    },
    'm.news.nate.com': {
        'paths': [{
            'path_regex': '/view/.*',
            'content_selector': 'h1',
            'content_pos': 0
        }],
        'exceptional_case': false
    },
    'www.yahoo.com': {
        'paths': [{
            'path_regex': '/.*',
            'content_selector': 'article[role=article]',
            'content_pos': 0
        }],
        'exceptional_case': false
    }
    // News - End
}

function SiTextIsPayWallPage() {
    // schema.org paywall
    const jsonldObj = document.querySelector('script[type="application/ld+json"]');
    if (jsonldObj && jsonldObj.innerText) {
        try {
            const jsonldList = JSON.parse(jsonldObj.innerText.trim());
            if (jsonldList && Array.isArray(jsonldList) && jsonldList.length > 0) {
                for (let i = 0; i < jsonldList.length; ++i) {
                    const jsonld = jsonldList[i];
                    if (jsonld.isAccessibleForFree !== undefined) {
                        return !jsonld.isAccessibleForFree;
                    }
                }
            } else if (jsonldList && typeof jsonldList === 'object') {
                for (const key in jsonldList) {
                    if (key === 'isAccessibleForFree') {
                        const value = jsonldList[key];
                        if (typeof value === 'boolean' || typeof value === 'number') {
                            return !value;
                        }
                        if (typeof value === 'string') {
                            const valueWithUpperCase = value.trim().toUpperCase();
                            return valueWithUpperCase === 'FALSE';
                        }

                        // Unknown value
                        return false;
                    }
                }
            }
        } catch (error) {
            console.log(error);
        }
    }

    // naver.com paywall
    const viewer_paywall = document.querySelectorAll('.viewer_paywall');
    if (viewer_paywall && viewer_paywall.length > 0) {
        return true;
    }

    const paywallElement = document.querySelectorAll('.paywall');
    return paywallElement && paywallElement.length > 0;
}

let SIHelpMeWriteParser = function() {
    this.isActiveElementTextArea = function(doc) {
        if (doc && doc.activeElement
                && doc.activeElement.tagName === "TEXTAREA") {
            console.log('HelpMeWrite::isActiveElementTextArea(), TEXTAREA');
            return true;
        } else if (doc && doc.activeElement
                && doc.activeElement.shadowRoot
                && doc.activeElement.shadowRoot.activeElement
                && doc.activeElement.shadowRoot.activeElement.tagName === "TEXTAREA") {
            console.log('HelpMeWrite::isActiveElementTextArea(), TEXTAREA - shadow root');
            return true;
        } else if (doc && doc.activeElement
                && doc.activeElement.hasAttribute('contenteditable')) {
            console.log('HelpMeWrite::isActiveElementTextArea(), contenteditable');
            return true;
        } else if (doc && doc.activeElement
                && doc.activeElement.shadowRoot
                && doc.activeElement.shadowRoot.activeElement
                && doc.activeElement.shadowRoot.activeElement.hasAttribute('contenteditable')) {
            console.log('HelpMeWrite::isActiveElementTextArea(), contenteditable - shadow root');
            return true;
        } else if (doc && doc.activeElement
                && doc.activeElement.tagName === "INPUT") {
            console.log('HelpMeWrite::isActiveElementTextArea(), input');
            return true;
        } else if (doc && doc.activeElement
                && doc.activeElement.shadowRoot
                && doc.activeElement.shadowRoot.activeElement
                && doc.activeElement.shadowRoot.activeElement.tagName === "INPUT") {
            console.log('HelpMeWrite::isActiveElementTextArea(), input');
            return true;
        }
        return false;
    }

    this.findContentNodeWithExceptionalLogic = function(doc) {
        console.log('HelpMeWrite::findContentWidthExceptionalLogic()');
        if (location.hostname === "www.instagram.com") {
            var nodes = doc.querySelectorAll('div');
            for (node of nodes) {
                if (node.style.display === 'inline') {
                    return node.innerText.trim();
                }
            }
            return "";
        } else if (location.hostname === "www.facebook.com"
                || location.hostname === "m.facebook.com") {
            if (location.pathname.match("/^story.php")) {
                return doc.querySelectorAll('div[role="button"]')[0].innerText.trim();
            } else {
                return doc.querySelectorAll('div[data-type="transactional"]')[0].innerText.trim();
            }
            return null;
        } else if (location.hostname === "www.tumblr.com") {
            var activeEl = doc.activeElement;
            var node = null;
            while (activeEl) {
                if (activeEl.tagName === 'ARTICLE') {
                    node = activeEl;
                    break;
                }
                activeEl = activeEl.parentElement;
            }
            var textContent = "";
            if (node) {
                var pEls = node.querySelectorAll('p');
                for (pEl of pEls) {
                    textContent += pEl.innerText + "\n";
                }
            }
            return textContent;
        } else if (location.hostname === "www.threads.net") {
            var dialog = doc.querySelector('div[role="dialog"]');
            var spans = dialog.querySelectorAll('span');

            var textContent = "";
            for (span of spans) {
                if (textContent.length < span.innerText.length) {
                    textContent = span.innerText;
                }
            }
            return textContent;
        }
        return null;
    }

    this.findContentNode = function(doc) {
        let content_selectors = [];
        let content_pos = 0;
        let found = false;

        if (location.hostname in SI_HELP_ME_WRITE_SUPPORT_RULES) {
            let pathname = location.pathname;
            for (path of SI_HELP_ME_WRITE_SUPPORT_RULES[location.hostname]['paths']) {
                if (pathname.match(path['path_regex'])) {
                    if (path['content_selector']) {
                        content_selectors = [path['content_selector']];
                    } else if (path['content_selectors']) {
                        content_selectors = path['content_selectors'];
                    } else {
                        continue;
                    }

                    content_pos = path['content_pos'];
                    found = true;
                    break;
                }
            }
        }

        if (found) {
            for (let content_selector of content_selectors) {
                console.log('HelpMeWrite::findContentNode(), found content selector -> ' + content_selector);
                let content_nodes = doc.querySelectorAll(content_selector);
                if (content_nodes && content_nodes.length > content_pos) {
                    console.log('HelpMeWrite::findContentNode(), success');
                    return content_nodes[content_pos];
                } else {
                    console.log('HelpMeWrite::findContentNode(), failed');
                }
            }
        } else {
            console.log('HelpMeWrite::findContentNode(), No rules');
        }

        return null;
    }

    this.parse = function() {
        console.log('HelpMeWrite::parse(), start');

        let isPaywall = SiTextIsPayWallPage();
        if (isPaywall) {
            console.log('HelpMeWrite::parse(), paywall page');
            return {
                'poi': '',
                'result': [{
                    'success': false,
                    'reason': REASON_PAYWALL
                }]
            };
        }

        let doc = document;
        if (!this.isActiveElementTextArea(doc)) {
            console.log('HelpMeWrite::parse(), unsupported textarea');
            return {
                'poi': '',
                'result': [{
                    'success': false,
                    'reason': REASON_UNSUPPORTED_INPUT_FIELD
                }]
            };
        }

        let contents = '';
        if (location.hostname in SI_HELP_ME_WRITE_SUPPORT_RULES
                && SI_HELP_ME_WRITE_SUPPORT_RULES[location.hostname]['exceptional_case'] === true) {
            contents = this.findContentNodeWithExceptionalLogic(doc);
        } else {
            let content_node = this.findContentNode(doc);
            if (content_node) {
                contents = content_node.textContent.trim();
                if (!contents || contents === "") {
                    contents = content_node.innerText.trim();
                }
            }
        }
        if (DEBUG) console.log("HelpMeWrite::parse(), contents = " + contents);

        let reason = contents === ''
                ? REASON_EXTRACTION_FAILED
                : REASON_NONE;
        let success = reason === REASON_NONE;

        console.log('HelpMeWrite::parse(), success = ' + success + ', reason = ' + reason);
        return {
            'poi': contents,
            'result': [{
                'success': success,
                'reason': reason
            }]
        };
    }
}

function SiGetHelpMeWriteContent() {
    let parser = new SIHelpMeWriteParser();
    return parser.parse();
}

} catch(e) {}