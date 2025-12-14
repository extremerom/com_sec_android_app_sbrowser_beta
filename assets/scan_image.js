/*
 * Copyright (c) 2019 Samsung Electronics. All Rights Reserved
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
    const MIN_HEIGHT = 10;
    const MIN_WIDTH = 10;

    function init() {
        var allImages = document.getElementsByTagName("img");
        var img = null;
        var image_list = [];

        var length = allImages.length;
        for (var i = 0; i < length; i++) {
            img = allImages[i];
            if (img.currentSrc && img.currentSrc !== null) {
                var imgSrc = img.currentSrc;

                var height = Math.max(img.height, img.clientHeight);
                var width = Math.max(img.width, img.clientWidth);
                var style = img.getAttribute("style")

                if (imgSrc.startsWith(".svg", imgSrc.lastIndexOf('.'))) {
                        continue;
                }

                if (!(imgSrc === ''
                        || imgSrc.startsWith("data:image")
                        || imgSrc === "blank.png"
                        || imgSrc === "blank.gif")
                        && (style === null || (!style.includes("display:none") && !style.includes("display: none")))
                        && (width > 10 && height > 10)) {
                    image_list.push(imgSrc);
                }
            }
        }

        return image_list;
    }

    init();

} catch(e) {
}