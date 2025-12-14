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
    let __DEBUG__ = false;
    let THIS_SCRIPT_VERSION = 20241226;
    let SI_TEXT_TLD_EXTRACT_RULES = {}

    let SI_TEXT_EXTRACT_RULES = {
        'www.cnbc.com': {
            'paths': [{
                'path_regex': '/.*',
                'article_selector': 'div[id=RegularArticle-ArticleBody-6], div[class^="ArticleBody"], div[data-module=featuredContent]',
                'article_pos': 0
            }]
        },
        'www.bbc.com': {
            'paths': [{
                'path_regex': '/.*',
                'ignore_element_class': 'sp-c-fixture',
                'article_pos_ignore': 1,
                'article_selector': 'article, div.bbc-1cvxiy9, main.app',
                'article_pos': 0
            }]
        },
        'www.bbc.co.uk': {
            'paths': [{
                'path_regex': '/.*',
                'article_selector': 'article, div.programmes-page',
                'article_pos': 0
            }]
        },
        'www.newsweek.com': {
            'paths': [{
                'path_regex': '/.*',
                'article_selector': 'article',
                'article_pos': 1
            }]
        },
        'apnews.com': {
            'paths': [{
                'path_regex': '/.*',
                'article_selector': 'div.RichTextStoryBody',
                'article_pos': 0
            }]
        },
        'www.cbsnews.com': {
            'paths': [{
                'path_regex': '/.*',
                'article_selector': 'section.content__body',
                'article_pos': 0
            }],
        },
        'abcnews.go.com': {
            'paths': [{
                'path_regex': '/.*',
                'article_selector': 'div.Article',
                'article_pos': 0
            }]
        },
        'news.sky.com': {
            'paths': [{
                'path_regex': '/.*',
                'article_selector': 'div.sdc-article-body',
                'article_pos': 0
            }]
        },
        'www.news18.com': {
            'paths': [{
                'path_regex': '/.*',
                'article_selector': 'div.story-container, div.article_main',
                'article_pos': 0
            }]
        },
        'www.aajtak.in': {
            'paths': [{
                'path_regex': '/.*',
                'article_selector': 'div.text-formatted',
                'article_pos': 0
            }]
        },
        'www.livehindustan.com': {
            'paths': [{
                'path_regex': '/.*',
                'article_selector': 'div.maincontent',
                'article_pos': 0
            }]
        },
        'www.indiatimes.com': {
            'paths': [{
                'path_regex': '/.*',
                'article_selector': 'div[id=article-description-0]',
                'article_pos': 0
            }]
        },
        'www.abplive.com': {
            'paths': [{
                'path_regex': '/.*',
                'article_selector': 'div.article-text, div.article-body, div[id=full-content]',
                'article_pos': 0
            }]
        },
        'www.india.com': {
            'paths': [{
                'path_regex': '/.*',
                'article_selector': '.article-details',
                'article_pos': 0
            }]
        },
        'www.hindustantimes.com': {
            'paths': [{
                'path_regex': '/.*',
                'article_selector': 'div.detail',
                'article_pos': 0
            }]
        },
        'www.news.com.au': {
            'paths': [{
                'path_regex': '/.*',
                'article_selector': 'div[id=story-body]',
                'article_pos': 0
            }]
        },
        'www.cbc.ca': {
            'paths': [{
                'path_regex': '/.*',
                'article_selector': 'div.story',
                'article_pos': 0
            }]
        },
        'www.t-online.de': {
            'paths': [{
                'path_regex': '/.*',
                'article_selector': 'div[data-article-body]',
                'article_pos': 0
            }]
        },
        'www.n-tv.de': {
            'paths': [{
                'path_regex': '/.*',
                'article_selector': '.article__text',
                'article_pos': 0
            }]
        },
        'www.welt.de': {
            'paths': [{
                'path_regex': '/.*',
                'article_selector': 'div.carousel__content',
                'article_pos': 0
            }]
        },
        'm.focus.de': {
            'paths': [{
                'path_regex': '/.*',
                'article_selector': 'article[id=article]',
                'article_pos': 0
            }]
        },
        'www.liberoquotidiano.it': {
            'paths': [{
                'path_regex': '/.*',
                'article_selector': 'section',
                'article_pos': 0
            }]
        }
    }

    let SI_READ_ALOUD_PAGE_ARTICLE_RULES = {
        'chosun.com': { // Chosun Ilbo
            'article_regex': [/site\/data\//, /\/\d{4}\/\d{2}\/\d{2}/, /news\/articleView/],
            'language': 'ko',
            'country': 'kr',
            'title': '조선일보',
            'pageTitle': "조선일보 - 1등 디지털뉴스"
        },
        'joongang.co.kr': { // Joongang Ilbo
            'article_regex': [/article\/\d{1,}/, /newsletter\/\w+\/\d{1,}/],
            'language': 'ko',
            'country': 'kr',
            'title': '중앙일보',
            'pageTitle': "중앙일보"
        },
        'www.donga.com': { // Donga Ilbo
            'article_regex': [/article\//, /dspecial\/dh/],
            'article_parameter_regex': [/\?p\d{1}=\d{1}&m=view&ymd=\d{8}/],
            'language': 'ko',
            'country': 'kr',
            'title': '동아일보',
            'pageTitle': "동아일보"
        },
        'www.hankyung.com': { // Hankuk Kyungjae
            'article_regex': [/article\/\d{8,}/],
            'language': 'ko',
            'country': 'kr',
            'title': '한국경제',
            'pageTitle': "한국경제 - 성공을 부르는 습관"
        },
        'mk.co.kr': { // Maeil Kyungjae
            'article_regex': [/\/[0-9]+\/?$/],
            'language': 'ko',
            'country': 'kr',
            'title': '매일경제',
            'pageTitle': "매일경제"
            // 'non_article_regex': [/news\/notice\/\d{8}/], // notice
        },
        'khan.co.kr': { // Kyunghyang Shinmun
            'article_regex': [/\/article\/\d{8,}/, /khan_art_view(.html)?/],
            'language': 'ko',
            'country': 'kr',
            'title': '경향신문',
            'pageTitle': "경향신문"
        },
        'www.hani.co.kr': { // Hankyoreh
            'article_regex': [/\/\d{7}(.html)?$/],
            'language': 'ko',
            'country': 'kr',
            'title': '한겨례',
            'pageTitle': "한겨레"
        },
        'www.nikkei.com': { // Nikkei
            'article_regex': [/article\//],
            'language': 'ja',
            'country': 'jp',
            'title': '日本経済新聞',
            'pageTitle': "日本経済新聞の電子版。日経や日経B Pの提供する経済、企業、国際、政治、マーケット、情報・通信、社会など各分野のニュース。ビジネス、マネー、IT、スポーツ、住宅、キャリアなどの専門情報も満載。"
        },
        "yahoo.co.jp": {
            'article_regex': [/\/articles\//],
            'allow_url_host': ['news.yahoo.co.jp'],
            'language': 'ja',
            'country': 'JP',
            'title': 'Yahoo! JAPAN',
            'pageTitle': "日本最大級のポータルサイト。検索、オークション、ニュース、天気、スポーツ、メール、ショッピングなど多数のサービスを展開。あなたの生活をより豊かにする「課題解決エンジン」を目指していきます。"
        },
        'goo.ne.jp': {
            'article_regex': [/iw\//],
            'language': 'ja',
            'country': 'JP',
            'title': 'Goo',
            'pageTitle': "NTTドコモが運営する安心・安全のポータルサイト。使えば使うほど、あなたの興味・関心、趣味・嗜好を学習し、限られた時間で効率よく「あなた専用」のポータルサイトとして必要な情報を収集することができます。"
        },
        'www.yomiuri.co.jp': {
            'article_regex': [/\w+\/\d{8}-/],
            'non_article_regex': [/topics\//],
            'language': 'ja',
            'country': 'JP',
            'title': '読売新聞',
            'pageTitle': "読売新聞オンライン : ニュース＆お得サイト"
        },
        'www.washingtonpost.com': { // The Washington Post
            'article_regex': [/\/\d{4}\//],
            'language': 'en',
            'country': 'us',
            'title': 'The Washington Post',
            'pageTitle': "The Washington Post - Breaking news and latest headlines, U.S. news, world news, and video - The Washington Post"
        },
        'www.cnbc.com': { // CNBC
            'article_regex': [/\d{4}\/\d{2}\/\d{2}\//],
            'language': 'en',
            'country': 'us',
            'title': 'CNBC',
            'pageTitle': "International Business, World News & Global Stock Market Analysis"
        },
        'www.bbc.com': { // BBC
            'article_regex': [/\/articles?\//, /\/live\//, /\/news\/[A-Za-z]+-\d{8}/],
            'language': 'en',
            'country': '*',
            'title': 'BBC',
            'pageTitle': "BBC Home - Breaking News, World News, US News, Sports, Business, Innovation, Climate, Culture, Travel, Video & Audio"
        },
        'naver.com': { // Naver
            'non_list_regex': [/^\/search/],
            'article_regex': [/article\/\d{1,}/, /[P|p]ostView/, /[\w|-]{5,20}\/\d{1,}$/, /contentsGuide\/\d{1,}\//, /faq\/detail/, /contents\/\w{1,}$/],
            'non_article_regex': [/press\/\d{3,}$/, /shorts\//, /v\/\d{1,}/, /stock\/\d{1,}$/, /track\/\d{8}/, /section\/\d{3}/],
            'allow_host': ['m.naver.com', 'm.entertain.naver.com', 'n.news.naver.com', 'm.sports.naver.com',
                'news.naver.com', 'game.naver.com', 'media.naver.com'],
            'allow_url_host': ['m.naver.com', 'm.entertain.naver.com', 'n.news.naver.com', 'm.sports.naver.com',
                'news.naver.com', 'game.naver.com', 'media.naver.com'],
            'language': 'ko',
            'country': 'kr',
            'title': '네이버',
            'pageTitle': "NAVER"
        },
        //fr-FR
        "leparisien.fr": {
            'article_regex': [/\d{2}-\d{2}-\d{4}-\w+(.php)?/],
            'non_article_regex': [/\/podcasts\//],
            'language': 'fr',
            'country': 'fr',
            'title': 'Le Parisien',
            'pageTitle': "Actualités en direct et info en continu - Le Parisien"
        },
        // cn feature start: to adapt some CN website
        'm.sohu.com': { // sohu
            'article_regex': [/\/a\//],
            'language': 'zh',
            'country': 'rCN',
            'title': '搜狐',
            'pageTitle': "手机搜狐网"
        },
        'm.baidu.com': { // baidu
            'redirecting': 'mbd.baidu.com',
            'language': 'zh',
            'country': 'rCN',
            'title': '百度',
            'pageTitle': "百度一下"
        },
        'mbd.baidu.com': { // baidu
            'article_regex': [/\/landingshare/],
            'language': 'zh',
            'country': 'rCN',
            'title': '百度',
            'pageTitle': "百度一下"
        },
        'm.163.com': { // wangyi
            'article_regex': [/\/articles?\//],
            'language': 'zh',
            'country': 'rCN',
            'title': '网易',
            'pageTitle': "手机网易网"
        },
        'sina.cn': { // sina
            'allow_url_host': ['news.sina.cn', 'k.sina.cn', 'finance.sina.cn', 'sports.sina.cn', 'ent.sina.cn', 'mil.sina.cn',
                'tech.sina.cn', 'ast.sina.cn', 'edu.sina.cn', 'sinanews.sina.cn', 'travel.sina.cn', 'blog.sina.cn', 'baby.sina.cn',
                'auto.sina.cn', 'fashion.sina.cn', 'games.sina.cn', 'eladies.sina.cn', 'cj.sina.cn', 'health.sina.cn'],
            'article_regex': [/\/article/, /\/\d{4}-\d{2}-\d{2}\//],
            'non_article_regex': [/mp/, /\/index\/feed/],
            'language': 'zh',
            'country': 'rCN',
            'title': '新浪',
            'pageTitle': "手机新浪网"
        },
        // cn feature end: to adapt some CN website
        //zh-rHK
        "hk01.com": {
            'language': 'zh',
            'country': 'rhk',
            'title': '香港01',
            'pageTitle': "香港01|hk01.com 倡議型媒體",
            'article_regex': [/\/\w+/],
            'non_article_regex': [/\/issue\//],
        },
        "on.cc": {
            'language': 'zh',
            'country': 'rhk',
            'title': '東網',
            'article_regex': [/\/hk\/bkn\/cnt\/news\//],
            'pageTitle': "即時新聞｜中港台｜on.cc東網｜東方傳媒機構"
        },
        //zh-rTW
        "udn.com": {
            'language': 'zh',
            'country': 'rtw',
            'title': '聯合新聞網',
            'article_regex': [/\/\w+\/story\//],
            'pageTitle': "聯合新聞網：觸動未來新識力"
        },
        "ettoday.net": {
            'language': 'zh',
            'country': 'rtw',
            'title': 'ETtoday新聞雲',
            'article_regex': [/\/news\/\w+/],
            'pageTitle': "ETtoday新聞雲 | Today is my day"
        },
        'daum.net': { // Daum
            'non_list_regex': [/^\/search/],
            'article_regex': [/v\/[0-9]{10,}/],
            'non_article_regex': [/s\//, /p\//],
            'language': 'ko',
            'country': 'kr',
            'title': '다음',
            'pageTitle': "Daum"
        },
        //th-TH
        "dailynews.co.th": {
            'article_regex': [/news\/[0-9]{6,}/],
            'language': 'th',
            'country': 'TH',
            'title': 'Dailynews',
            'pageTitle': "เดลินิวส์ | อ่านความจริง อ่านเดลินิวส์"
        },
        "thairath.co.th": {
            'article_regex': [/\/\w+\/\w+\/\d+/],
            'non_article_regex': [/\/video\//, /\/tv\//],
            'language': 'th',
            'country': 'TH',
            'title': 'Thairath',
            'pageTitle': "ไทยรัฐ สำนักข่าวอันดับ 1 ของไทย | ไทยรัฐออนไลน์"
        },
        // hi-IN
        "aajtak.in": {
            'article_regex': [/\/(\w|-)+-\d{7}-\d{4}-\d{2}-\d{2}/],
            'non_article_regex': [/visualstories\//, /video\//],
            'language': 'hi',
            'country': 'in',
            'title': 'Aaj Tak News',
            'pageTitle': "Hindi news, हिंदी न्यूज़ , Hindi Samachar, हिंदी समाचार, Latest News in Hindi, Breaking News in Hindi, ताजा ख़बरें, Aaj Tak News"
        },
        "livehindustan.com": {
            'article_regex': [/(\w|-)+-\d{15}/],
            'non_article_regex': [/web-stories\//, /photos\//],
            'language': 'hi',
            'country': 'in',
            'title': 'Hindustan Hindi News',
            'pageTitle': "hindi news, हिंदी न्यूज़ , hindi samachar, latest news in hindi, aaj ki taza khabar, today's news in hindi"
        },
        // it-IT
        "libero.it": {
            'is_allow_other_host': true,
            'allow_url_host': ['dilei.it', 'www.libero.it', 'www.virgilio.it', 'sport.virgilio.it',
                'sports.virgilio.it', 'notizie.virgilio.it', 'siviaggia.it', 'quifinanza.it'],
            'article_regex': [/\/[\w\W\/]{20,}$/],
            'non_article_regex': [/\/video\//, /\/live\//],
            'language': 'it',
            'country': 'it',
            'title': 'Libero',
            'pageTitle': "Libero: Mail, Ricerca e News con aggiornamento quotidiano"
        },
        //en-IN
        "india.com": {
            'article_regex': [/\/(\w|-|\d)+\d{7}\/$/],
            'non_article_regex': [/video-gallery\//, /short-videos\//, /webstories\//],
            'language': 'en',
            'country': 'in',
            'title': 'India.Com News',
            'pageTitle': "Latest News, Breaking News, LIVE News, Top News Headlines, Viral Video, Cricket LIVE, Sports, Entertainment, Business, Health, Lifestyle and Utility News | India.Com News"
        },
        ///////////////////////////////////////////////
        // These three are for Samsung Internet News //
        ///////////////////////////////////////////////
        /*'news.internet.apps.samsung.com': { // Samsung Internet News Main
            'redirecting': 'trc.taboola.com',
            'language': 'en',
            'country': 'us',
            'title': 'CNBC'
        },
        'trc.taboola.com': {
            'article_regex': [/samsung-browser-us\/log\/\d{1}\/external-ec-click/],
            'language': 'en',
            'country': 'us',
            'title': 'CNBC'
        },
        'taboolanews.com': {
            'article_regex': [/summary-page\/\d{1,}/],
            'language': 'en',
            'country': 'global',
            'title': 'CNBC'
        },*/
    }

    let SI_READ_ALOUD_GLOBAL_ALLOWLIST = {
        //Samsung
        "news.samsung.com": {
            'language': '*',
            'country': '*',
            'title': 'Samsung Newsroom',
            'pageTitle': "Samsung Global Newsroom - All the latest news, key facts and inspiring stories about Samsung Electronics."
        },
        //en-US
        "www.yahoo.com": {
            'language': 'en',
            'country': '*',
            'title': 'Yahoo',
            'pageTitle': "Yahoo | Mail, Weather, Search, Politics, News, Finance, Sports & Videos"
        },
        "usatoday.com": {
            'language': 'en',
            'country': 'us',
            'title': 'USA TODAY',
            'pageTitle': "USA TODAY - Breaking News and Latest News Today"
        },
        "people.com": {
            'language': 'en',
            'country': 'us',
            'title': 'People',
            'pageTitle': "People.com | Celebrity News, Exclusives, Photos and Videos"
        },
        "nypost.com": {
            'language': 'en',
            'country': 'us',
            'title': 'New York Post',
            'pageTitle': "New York Post - Breaking News, Top Headlines, Photos & Videos"
        },
        "dailymail.co.uk": {
            'language': 'en',
            'country': 'us',
            'title': 'Daily Mail Online',
            'pageTitle': "UK Home | Daily Mail Online"
        },
        "newsweek.com": {
            'language': 'en',
            'country': 'us',
            'title': 'Newsweek',
            'pageTitle': "Newsweek - News, Analysis, Politics, Business, Technology"
        },
        "apnews.com": {
            'language': 'en',
            'country': 'us',
            'title': 'Associated Press News',
            'pageTitle': "Associated Press News: Breaking News, Latest Headlines and Videos | AP News"
        },
        "nbcnews.com": {
            'language': 'en',
            'country': 'us',
            'title': 'NBC News',
            'pageTitle': "NBC News - Breaking News & Top Stories - Latest World, US & Local News | NBC News"
        },
        "cbsnews.com": {
            'language': 'en',
            'country': 'us',
            'title': 'CBS News',
            'pageTitle': "CBS News - Breaking news, 24/7 live streaming news & top stories"
        },
        "theguardian.com": {
            'language': 'en',
            'country': 'us',
            'title': 'The Guardian',
            'pageTitle': "Latest news, sport and opinion from the Guardian"
        },
        "abcnews.go.com": {
            'language': 'en',
            'country': 'us',
            'title': 'ABC News',
            'pageTitle': "ABC News - Breaking News, Latest News and Videos"
        },
        "huffpost.com": {
            'language': 'en',
            'country': 'us',
            'title': 'HuffPost',
            'pageTitle': "HuffPost - Breaking News, U.S. and World News | HuffPost"
        },
        //en-GB
        "bbc.co.uk": {
            'language': 'en',
            'country': 'gb',
            'title': 'BBC',
            'pageTitle': "BBC Home"
        },
        "telegraph.co.uk": {
            'language': 'en',
            'country': 'gb',
            'title': 'The Telegraph',
            'pageTitle': "The Telegraph - Telegraph Online, Daily Telegraph, Sunday Telegraph - Telegraph"
        },
        "thesun.co.uk": {
            'language': 'en',
            'country': 'gb',
            'title': 'The Sun',
            'pageTitle': "News, sport, celebrities and gossip | The Sun"
        },
        "independent.co.uk": {
            'language': 'en',
            'country': 'gb',
            'title': 'Independent',
            'pageTitle': "Independent Asia Edition"
        },
        "news.sky.com": {
            'language': 'en',
            'country': 'gb',
            'title': 'Sky News',
            'pageTitle': "The Latest News from the UK and Around the World | Sky News"
        },
        //en-AU
        "news.com.au": {
            'language': 'en',
            'country': 'au',
            'title': 'Australian Brocasting Corporation',
            'pageTitle': "Australia's leading news site | news.com.au — Australia's leading news site"
        },
        "abc.net.au": {
            'language': 'en',
            'country': 'au',
            'title': 'Australian Broadcasting Corporation',
            'pageTitle': "ABC (Australian Broadcasting Corporation)"
        },
        "smh.com.au": {
            'language': 'en',
            'country': 'au',
            'title': 'The Sydney Morning Herald',
            'pageTitle': "Australian Breaking News Headlines & World News Online | SMH.com.au"
        },
        "9news.com.au": {
            'language': 'en',
            'country': 'au',
            'title': '9News',
            'pageTitle': "9News - Latest news and headlines from Australia and the world"
        },
        //en-IN
        "news18.com": {
            'language': 'en',
            'country': 'in',
            'title': 'News18',
            'pageTitle': "News: Today's News Headlines & Daily Updates from Sports, Movies, Politics, Business"
        },
        "indiatimes.com": {
            'language': 'en',
            'country': 'in',
            'title': 'indiatimes',
            'pageTitle': "Indiatimes: Latest in Lifestyle, Health, Fashion, and Wellness"
        },
        "india.com": {
            'language': 'en',
            'country': 'in',
            'title': 'India.Com News',
            'pageTitle': "Latest News, Breaking News, LIVE News, Top News Headlines, Viral Video, Cricket LIVE, Sports, Entertainment, Business, Health, Lifestyle and Utility News | India.Com News"
        },
        "ndtv.com": {
            'language': 'en',
            'country': 'in',
            'title': 'NDTV',
            'pageTitle': "Get Latest News, India News, Breaking News, Today's News - NDTV.com"
        },
        // hi-IN
        "abplive.com": {
            'language': 'hi',
            'country': 'in',
            'title': 'ABP News',
            'pageTitle': "Hindi News, Latest Hindi News, हिंदी न्यूज़, हिंदी समाचार, Breaking Hindi News, Today Hindi News, ABP News"
        },
        //fr-FR
        "francetvinfo.fr": {
            'language': 'fr',
            'country': 'fr',
            'title': 'France Info',
            'pageTitle': "Franceinfo - Actualités en temps réel et info en direct"
        },
        "lefigaro.fr": {
            'language': 'fr',
            'country': 'fr',
            'title': 'Le Figaro',
            'pageTitle': "Le Figaro - Actualité en direct et informations en continu"
        },
        "20minutes.fr": {
            'language': 'fr',
            'country': 'fr',
            'title': '20 Minutes',
            'pageTitle': "20 Minutes - Toute l’actualité en direct et les dernières infos en continu"
        },
        "actu.fr": {
            'language': 'fr',
            'country': 'fr',
            'title': 'Actu',
            'pageTitle': "Actu : toute l'information locale et nationale en direct"
        },
        "ladepeche.fr": {
            'language': 'fr',
            'country': 'fr',
            'title': 'La Dépêche',
            'pageTitle': "La Dépêche : Actualités en temps réel et l'info en continu - ladepeche.fr"
        },
        "leparisien.fr": {
            'language': 'fr',
            'country': 'fr',
            'title': 'Le Parisien',
            'pageTitle': "Actualités en direct et info en continu - Le Parisien"
        },
        "midilibre.fr": {
            'language': 'fr',
            'country': 'fr',
            'title': 'Midi Libre',
            'pageTitle': "Actualités et infos de Montpellier et sa région - À la une - midilibre.fr"
        },
        "sudouest.fr": {
            'language': 'fr',
            'country': 'fr',
            'title': 'Sud Ouest',
            'pageTitle': "Sud Ouest : actualités du jour et info locale en continu"
        },
        //fr-CA
        "lapresse.ca": {
            'language': 'fr',
            'country': 'ca',
            'title': 'La Presse',
            'pageTitle': "LaPresse.ca | Actualités et Infos au Québec et dans le monde"
        },
        "cbc.ca": {
            'language': 'en',
            'country': 'ca',
            'title': 'CBC.ca',
            'pageTitle': "CBC.ca - watch, listen, and discover with Canada's Public Broadcaster"
        },
        "globalnews.ca": {
            'language': 'en',
            'country': 'ca',
            'title': 'Global News',
            'pageTitle': "Global News | Breaking, Latest News and Video for Canada"
        },
        //de-DE
        "bild.de": {
            'language': 'de',
            'country': 'de',
            'title': 'BILD.de',
            'pageTitle': "Aktuelle Nachrichten | BILD.de"
        },
        "t-online.de": {
            'language': 'de',
            'country': 'de',
            'title': 'T-Online',
            'pageTitle': "News & E-Mail bei t-online | Politik, Sport, Unterhaltung & Ratgeber"
        },
        "welt.de": {
            'language': 'de',
            'country': 'de',
            'title': 'WELT',
            'pageTitle': "WELT - Aktuelle Nachrichten, News, Hintergründe & Videos"
        },
        "tagesschau.de": {
            'language': 'de',
            'country': 'de',
            'title': 'Tegesschau',
            'pageTitle': "tagesschau.de - die erste Adresse für Nachrichten und Information | tagesschau.de"
        },
        "spiegel.de": {
            'language': 'de',
            'country': 'de',
            'title': 'DER SPIEGEL',
            'pageTitle': "DER SPIEGEL | Online-Nachrichten"
        },
        "merkur.de": {
            'language': 'de',
            'country': 'de',
            'title': 'Münchner Merkur',
            'pageTitle': "Merkur.de | News aus Politik, Sport, für Verbraucher, der Welt und aus Bayern"
        },
        "focus.de": {
            'language': 'de',
            'country': 'de',
            'title': 'FOCUS online',
            'pageTitle': "FOCUS online - Nachrichten"
        },
        //it-IT
        "ilfattoquotidiano.it": {
            'language': 'it',
            'country': 'it',
            'title': 'Il Fatto Quotidiano',
            'pageTitle': "Il Fatto Quotidiano - News su politica, cronaca, giustizia ed economia"
        },
        "ansa.it": {
            'language': 'it',
            'country': 'it',
            'title': 'ANSA',
            'pageTitle': "Agenzia ANSA: ultime notizie di cronaca, politica e sport - ANSA"
        },
        "fanpage.it": {
            'language': 'it',
            'country': 'it',
            'title': 'Fanpage',
            'pageTitle': "Fanpage.it - Le ultime notizie di oggi in tempo reale"
        },
        "rainews.it": {
            'language': 'it',
            'country': 'it',
            'title': 'RaiNews',
            'pageTitle': "Fanpage.it - Le ultime notizie di oggi in tempo reale"
        },
        //es-ES
        "elmundo.es": {
            'language': 'es',
            'country': 'es',
            'title': 'El Mundo',
            'pageTitle': "EL MUNDO - Diario online líder de información en español"
        },
        "elpais.com": {
            'language': 'es',
            'country': 'es',
            'title': 'EL PAÍS',
            'pageTitle': "EL PAÍS: el periódico global"
        },
        "okdiario.com": {
            'language': 'es',
            'country': 'es',
            'title': 'OkDiario',
            'pageTitle': "Okdiario, el digital de Eduardo Inda"
        },
        "larazon.es": {
            'language': 'es',
            'country': 'es',
            'title': 'La Razón',
            'pageTitle': "LA RAZÓN: diario de noticias, actualidad de España y el mundo hoy"
        },
        "elconfidencial.com": {
            'language': 'es',
            'country': 'es',
            'title': 'El Confidencial',
            'pageTitle': "El Confidencial: Toda la actualidad e información de España y del mundo"
        },
        "elespanol.com": {
            'language': 'es',
            'country': 'es',
            'title': 'El Español',
            'pageTitle': "EL ESPAÑOL - Diario digital, plural, libre, indomable, tuyo"
        },
        "infobae.com": {
            'language': 'es',
            'country': 'es',
            'title': 'Infobae',
            'pageTitle': "Infobae América - Infobae"
        },
        //es-MX
        "unotv.com": {
            'language': 'es',
            'country': 'mx',
            'title': 'UnoTV',
            'pageTitle': "Últimas Noticias de hoy en México y el mundo en vivo - UnoTV"
        },
        "eluniversal.com.mx": {
            'language': 'es',
            'country': 'mx',
            'title': 'El Universal',
            'pageTitle': "El Universal | El periódico de México líder en noticias y clasificados"
        },
        "elfinanciero.com.mx": {
            'language': 'es',
            'country': 'mx',
            'title': 'El Financiero',
            'pageTitle': "El Financiero | Las noticias de finanzas, economía y política más importantes del país."
        },
        "debate.com.mx": {
            'language': 'es',
            'country': 'mx',
            'title': 'Debate',
            'pageTitle': "Debate | Las noticias más importantes de México y el mundo"
        },
        "milenio.com": {
            'language': 'es',
            'country': 'mx',
            'title': 'MILENIO',
            'pageTitle': "MILENIO | Noticias de hoy en México y el mundo al momento- Grupo Milenio"
        },
        //pt-BR
        "globo.com": {
            'language': 'pt',
            'country': 'br',
            'title': 'Globo',
            'pageTitle': "globo.com - Absolutamente tudo sobre notícias, esportes e entretenimento"
        },
        "terra.com.br": {
            'language': 'pt',
            'country': 'br',
            'title': 'El Financiero',
            'pageTitle': "El Financiero | Las noticias de finanzas, economía y política más importantes del país."
        },
        "cnnbrasil.com.br": {
            'language': 'pt',
            'country': 'br',
            'title': 'CNN Brasil',
            'pageTitle': "CNN Brasil | Notícias Ao Vivo do Brasil e do Mundo"
        },
        "metropoles.com": {
            'language': 'pt',
            'country': 'br',
            'title': 'Metrópoles',
            'pageTitle': "Metrópoles | O seu portal de notícias "
        },
        "noticias.uol.com.br": {
            'language': 'pt',
            'country': 'br',
            'title': 'UOL Notícias',
            'pageTitle': "UOL Notícias | Notícias do Dia no Brasil e no Mundo"
        },
        //pt-PT
        "sapo.pt": {
            'language': 'pt',
            'country': 'pt',
            'title': 'SAPO',
            'pageTitle': "SAPO - Última hora e notícias de hoje atualizadas ao minuto"
        },
        "record.pt": {
            'language': 'pt',
            'country': 'pt',
            'title': 'Record',
            'pageTitle': "Record: Tudo sobre desporto. Futebol, mercado, modalidades, resultados e classificações"
        },
        "iol.pt": {
            'language': 'pt',
            'country': 'pt',
            'title': 'IOL',
            'pageTitle': "O portal com os conteúdos e marcas do grupo Media Capital (TVI, CNN, MaisFutebol, SELFIE, VERSA, AWAY, AutoPortal)"
        },
        "cmjornal.pt": {
            'language': 'pt',
            'country': 'pt',
            'title': 'Correio da Manhã',
            'pageTitle': "Correio da Manhã: Portugal, Mundo, Sociedade, Cultura. Classificados"
        },
        "ojogo.pt": {
            'language': 'pt',
            'country': 'pt',
            'title': 'O Jogo',
            'pageTitle': "Jornal diário desportivo que segue toda a atualidade desportiva com independência e rigor jornalístico."
        },
        //ja-JP
        "auone.jp": {
            'language': 'ja',
            'country': 'JP',
            'title': 'au Web',
            'pageTitle': "au Webポータル|最新の国内外ニュースをリアルタイムに配信"
        },
        "asahi.com": {
            'language': 'ja',
            'country': 'JP',
            'title': '朝日新聞デジタル',
            'pageTitle': "朝日新聞デジタル：朝日新聞社のニュースサイト"
        },
        //pl-PL
        "onet.pl": {
            'language': 'pl',
            'country': 'pl',
            'title': 'Onet',
            'pageTitle': "Onet - Jesteś na bieżąco"
        },
        "wp.pl": {
            'language': 'pl',
            'country': 'pl',
            'title': 'Wirtualna Polska',
            'pageTitle': "Wirtualna Polska - Wszystko co ważne"
        },
        "interia.pl": {
            'language': 'pl',
            'country': 'pl',
            'title': 'Interia',
            'pageTitle': "Interia - Polska i świat: informacje, sport, gwiazdy."
        },
        "o2.pl": {
            'language': 'pl',
            'country': 'pl',
            'title': 'O2',
            'pageTitle': "o2 - Blisko Ludzi"
        },
        "fakt.pl": {
            'language': 'pl',
            'country': 'pl',
            'title': 'Fakt',
            'pageTitle': "Fakt.pl – Wiadomości, Wydarzenia, Informacje"
        },
        //vi-VN
        "vnexpress.net": {
            'language': 'vi',
            'country': 'VN',
            'title': 'Báo VnExpress',
            'pageTitle': "Báo VnExpress - Báo tiếng Việt nhiều người xem nhất"
        },
        "dantri.com.vn": {
            'language': 'vi',
            'country': 'VN',
            'title': 'Báo Dân trí',
            'pageTitle': "Tin tức Việt Nam và quốc tế nóng, nhanh, cập nhật 24h | Báo Dân trí"
        },
        "baomoi.com": {
            'language': 'vi',
            'country': 'VN',
            'title': 'Báo Mới',
            'pageTitle': "Báo Mới - Tin tức 24H, đọc báo mới nhanh nhất hôm nay"
        },
        "thanhnien.vn": {
            'language': 'vi',
            'country': 'VN',
            'title': 'Báo Thanh Niên',
            'pageTitle': "Tin tức 24h mới nhất, tin nhanh, tin nóng hàng ngày | Báo Thanh Niên"
        },
        //ru-RU
        "rambler.ru": {
            'language': 'ru',
            'country': 'ru',
            'title': '',
            'pageTitle': ""
        },
        "rbc.ru": {
            'language': 'ru',
            'country': 'ru',
            'title': 'РБК',
            'pageTitle': "Последние новости дня в России и мире сегодня - свежие новости на РБК"
        },
        "lenta.ru": {
            'language': 'ru',
            'country': 'ru',
            'title': '',
            'pageTitle': ""
        },
        "ria.ru": {
            'language': 'ru',
            'country': 'ru',
            'title': 'РИА',
            'pageTitle': "РИА Новости - события в Москве, России и мире сегодня: темы дня, фото, видео, инфографика, радио"
        },
        "mk.ru": {
            'language': 'ru',
            'country': 'ru',
            'title': 'MK',
            'pageTitle': "Новости России и мира - Новостной портал Московский Комсомолец - MK"
        },
        //id-ID
        "detik.com": {
            'language': 'id',
            'country': 'id',
            'title': 'detikcom',
            'pageTitle': "detikcom - Informasi Berita Terkini dan Terbaru Hari Ini"
        },
        "kompas.com": {
            'language': 'id',
            'country': 'id',
            'title': 'Kompas',
            'pageTitle': "Berita Terkini Hari Ini, Kabar Akurat Terpercaya - Kompas.com"
        },
        "cnnindonesia.com": {
            'language': 'id',
            'country': 'id',
            'title': 'CNN Indonesia',
            'pageTitle': "CNN Indonesia | Berita Terbaru, Terkini Indonesia, Dunia"
        },
        "idntimes.com": {
            'language': 'id',
            'country': 'id',
            'title': 'IDN Times',
            'pageTitle': "Berita Terkini dan Terbaru Gen Z Hari Ini"
        },
        "sindonews.com": {
            'language': 'id',
            'country': 'id',
            'title': 'SINDOnews',
            'pageTitle': "Berita Terkini dan Informasi Terbaru Hari Ini - SINDOnews"
        },
        //ar-AE
        "khaleejtimes.com": {
            'language': 'ar',
            'country': 'ae',
            'title': 'Khaleej Times',
            'pageTitle': "Khaleej Times - Dubai News, UAE News, Gulf, News, Latest news, Arab news, Gulf News, Dubai Labour News"
        },
        "aljazeera.net": {
            'language': 'ar',
            'country': 'ae',
            'title': 'aljazeera',
            'pageTitle': "الجزيرة نت: آخر أخبار اليوم حول العالم"
        },
        //nl-NL
        "nu.nl": {
            'language': 'nl',
            'country': 'nl',
            'title': 'NU',
            'pageTitle': "NU - Het laatste nieuws het eerst op NU.nl"
        },
        "ad.nl": {
            'language': 'nl',
            'country': 'nl',
            'title': 'AD',
            'pageTitle': "AD.nl, het laatste nieuws uit binnen- en buitenland, sport en show | AD.nl"
        },
        "destentor.nl": {
            'language': 'nl',
            'country': 'nl',
            'title': 'DeStentor',
            'pageTitle': "DeStentor.nl, het laatste nieuws uit de regio's rond Apeldoorn, Deventer en Zwolle | destentor.nl"
        },
        //sv-SE
        "expressen.se": {
            'language': 'sv',
            'country': 'se',
            'title': 'Expressen',
            'pageTitle': "Nyheter - senaste nyheterna i Sverige och världen"
        },
        "gp.se": {
            'language': 'sv',
            'country': 'se',
            'title': 'Göteborgs-Posten',
            'pageTitle': "Nyheter - riktig journalistik gör skillnad - Göteborgs-Posten"
        },
        "omni.se": {
            'language': 'sv',
            'country': 'se',
            'title': 'Omni',
            'pageTitle': "Omni - Alla nyheter. Alla perspektiv."
        },
        //tr-TR
        "hurriyet.com.tr": {
            'language': 'tr',
            'country': 'tr',
            'title': 'Hürriyet',
            'pageTitle': "Hürriyet - Haber, Son Dakika Haberler, Güncel Gazete Haberleri"
        },
        "mynet.com": {
            'language': 'tr',
            'country': 'tr',
            'title': 'Mynet',
            'pageTitle': "Mynet | Haber, Oyun, Video, Spor, Burçlar ve fazlası sizin için burada"
        },
        "sozcu.com.tr": {
            'language': 'tr',
            'country': 'tr',
            'title': 'Sözcü Gazetesi',
            'pageTitle': "Sözcü Gazetesi - Haberler, son dakika haberleri, güncel haber, köşe yazıları"
        },
        "milliyet.com.tr": {
            'language': 'tr',
            'country': 'tr',
            'title': 'Milliyet',
            'pageTitle': "Milliyet - Haberler, Son Dakika Haberleri ve Güncel Haber"
        },
        "ensonhaber.com": {
            'language': 'tr',
            'country': 'tr',
            'title': 'El Financiero',
            'pageTitle': "El Financiero | Las noticias de finanzas, economía y política más importantes del país."
        },
        "haberler.com": {
            'language': 'tr',
            'country': 'tr',
            'title': 'Haber',
            'pageTitle': "En Son Haber: Son Dakika Haberler, Güncel Haberler"
        },
        //ro-RO
        "hotnews.ro": {
            'language': 'ro',
            'country': 'ro',
            'title': 'HotNews',
            'pageTitle': "HotNews.ro - Știri Non Stop. Citește doar ceea ce merită."
        },
        "adevarul.ro": {
            'language': 'ro',
            'country': 'ro',
            'title': 'adevarul',
            'pageTitle': "Știri, ultima oră, știri locale, video, foto, comunitate | adevarul.ro"
        },
        "libertatea.ro": {
            'language': 'ro',
            'country': 'ro',
            'title': 'Libertatea',
            'pageTitle': "Ziar Online - Site cu Știri de Top din România | Libertatea"
        },
        "stiripesurse.ro": {
            'language': 'ro',
            'country': 'ro',
            'title': 'Stiri pe surse',
            'pageTitle': "Stiri pe surse - Cele mai noi stiri"
        },
        "g4media.ro": {
            'language': 'ro',
            'country': 'ro',
            'title': 'G4Media',
            'pageTitle': "Ultimele știri - G4Media.ro"
        },
    };

    function isCJ() {
        // * mark is for news.samsung.com
        // This site supports all language, and this method is to loosen the restriction of title length.
        // As Samsung Newsroom does not have any advertisements, it is ok to loose the restriction of it.
        let CJ = ["ja", "zh", "*"];
        for (key of Object.keys(SI_READ_ALOUD_PAGE_ARTICLE_RULES)) {
            if (document.location.hostname.includes(key)
                && CJ.includes(SI_READ_ALOUD_PAGE_ARTICLE_RULES[key]["language"])) {
                return true;
            }
        }
        for (key of Object.keys(SI_READ_ALOUD_GLOBAL_ALLOWLIST)) {
            if (document.location.hostname.includes(key)
                && CJ.includes(SI_READ_ALOUD_GLOBAL_ALLOWLIST[key]["language"])) {
                return true;
            }
        }
        return false;
    }

    function getTopDomain(hostname) {
        if (!hostname) return "";
        return hostname.split('.').slice(1).join('.');
    }

    function isArticle() {
        let article_selectors = ['article']
        let article_pos = 0
        let shadow_root = null;
        let shadow_root_pos = null;
        let found = false;
        let ignore_element_class = '';
        let article_pos_ignore = '';
        if (location.hostname in SI_TEXT_EXTRACT_RULES) {
            let pathname = location.pathname;
            for (path of SI_TEXT_EXTRACT_RULES[location.hostname]['paths']) {
                if (path['ignore_query'] && location.search.includes(path['ignore_query'])) {
                    article_selectors = 'none';
                } else {
                    if (pathname.match(path['path_regex'])) {
                        if ('shadow_root' in path) {
                            shadow_root = path['shadow_root'];
                            shadow_root_pos = path['shadow_root_pos'];
                        }
                        if (path['article_selector']) {
                            article_selectors = [path['article_selector']];
                        } else if (path['article_selectors']) {
                            article_selectors = path['article_selectors'];
                        } else {
                            continue;
                        }
                        ignore_element_class = path['ignore_element_class'] ? path['ignore_element_class'] : '';
                        article_pos_ignore = path['article_pos_ignore'] ? path['article_pos_ignore'] : '';
                        article_pos = path['article_pos'];
                        found = true;
                        break;
                    }
                }
            }
        }

        if (!found) {
            let top_domain = getTopDomain(location.hostname);
            if (top_domain in SI_TEXT_TLD_EXTRACT_RULES) {
                let pathname = location.pathname;
                for (path of SI_TEXT_TLD_EXTRACT_RULES[top_domain]['paths']) {
                    if (path['ignore_query'] && location.search.includes(path['ignore_query'])) {
                        article_selectors = 'none';
                    } else {
                        if (pathname.match(path['path_regex'])) {
                            if (path['article_selector']) {
                                article_selectors = [path['article_selector']];
                            } else if (path['article_selectors']) {
                                article_selectors = path['article_selectors'];
                            } else {
                                continue;
                            }
                            ignore_element_class = path['ignore_element_class'] ? path['ignore_element_class'] : '';
                            article_pos_ignore = path['article_pos_ignore'] ? path['article_pos_ignore'] : '';
                            article_pos = path['article_pos'];
                            found = true;
                            break;
                        }
                    }
                }
            }
        }

        let doc = document;
        if (shadow_root) {
            let shadow_node = document.querySelectorAll(shadow_root);
            if (shadow_node && shadow_node.length > shadow_root_pos &&
                shadow_node[shadow_root_pos].shadowRoot) {
                doc = shadow_node[shadow_root_pos].shadowRoot;
            }
        }

        let max_length = 0;
        let article_node = null;
        for (let article_selector of article_selectors) {
            let article_nodes = doc.querySelectorAll(article_selector);
            if (article_nodes && article_nodes.length > article_pos &&
                article_nodes[article_pos].innerText &&
                article_nodes[article_pos].innerText.length > max_length) {
                article_node = article_nodes[article_pos];
                if (ignore_element_class && article_pos_ignore && article_node.className.includes(ignore_element_class)) {
                    article_node = article_nodes[article_pos_ignore];
                }
                max_length = article_nodes[article_pos].innerText.length;
            }
        }

        if (!article_node) {
            let article_nodes = doc.querySelectorAll('*[itemprop="articleBody"]');
            if (!article_nodes || article_nodes.length < 1) {
                return null;
            }
            article_node = article_nodes[0];
        }

        return article_node !== null;
    }

    function SIReadAloudPageIsElementNode(node) {
        return node.nodeType === Node.ELEMENT_NODE;
    }

    /**
     * It will check out of screen articles.
     *
     * @param {*} node
     * @returns true if it is out of the screen.
     */
    function SIReadAloudPageIsOutOfScreenElement(node) {
        if (!node || !SIReadAloudPageIsElementNode(node)) {
            return false;
        }

        // Swipe
        try {
            let rect = node.getBoundingClientRect();
            if (rect.x < 0 || rect.x >= window.innerWidth) {
                return true;
            }
        } catch { }

        return false;
    }

    /**
     * Get to the parent tag and check if the style says not on the screen.
     * If urls are not on the screen, then it will filter them.
     *
     * @param {HTMLAnchorElement} atag <a> tag which contains a link
     * @returns true if the atag is not visible (hidden, collapsed)
     */
    function SIReadAloudPageCheckHiddenContent(atag) {
        try { // Just in case if an atag is in the header or footer
            // Find parents that if they are not visible
            if (SIReadAloudPageIsOutOfScreenElement(atag.parentNode)) {
                return true;
            }

            while (atag != document.body && atag != document.head) {
                let computedStyle = window.getComputedStyle(atag);

                if (computedStyle.getPropertyValue('display').toLowerCase() === 'none' || computedStyle.getPropertyValue('display').toLowerCase() === 'hidden') {
                    return true;
                }

                if (computedStyle.getPropertyValue('visibility').toLowerCase() === 'hidden' || computedStyle.getPropertyValue('visibility').toLowerCase() === 'collapse') {
                    return true;
                }

                atag = atag.parentNode;
            }
        } catch {
            console.log("This link is in the header or footer");
        }

        return false;
    }

    /**
     * This is made for checking after www. area.
     * Some press sites have several urls like
     * www.chosun.com, reality.chosun.com, health.chosun.com, and so on.
     * If you use this, then it will check only the string
     * that you want to check like "chosun.com" which is in SI_READ_ALOUD_PAGE_ARTICLE_RULES.
     * According to the key, it will give you useful data.
     *
     * @param {URL} urlVal site that you want to check
     * @returns an array that contains the data (host_name, current_rule_exist, key, current_article_rule) of urlVal
     */
    function SIReadAloudPageCheckKey(urlVal = new URL(document.location.href)) {
        const current_article_data = {};

        current_article_data["host_name"] = urlVal.host;
        current_article_data["current_rule_exist"] = false;

        for (let key in SI_READ_ALOUD_PAGE_ARTICLE_RULES) {
            let regex = new RegExp(key);
            if (regex.test(urlVal.host)) {
                current_article_data["key"] = key;
                current_article_data["current_article_rule"] = SI_READ_ALOUD_PAGE_ARTICLE_RULES[key];
                current_article_data["current_rule_exist"] = true;
            }
        }

        return current_article_data;
    }

    /**
     * This method will check if the passed url is article or not.
     *
     * @param {URL} urlVal url address to check if this url is article or not
     * @returns true if the urlVal is for the url of article
     */
    function SIReadAloudPageIsArticle(urlVal, current_article_data) {
        let output = false;
        if (current_article_data.current_rule_exist) {
            // For Samsung Internet News, its artices doesn't start with news.internet.~~
            if ('redirecting' in current_article_data.current_article_rule) {
                current_article_data.host_name = current_article_data.current_article_rule.redirecting;
                current_article_data.key = current_article_data.current_article_rule.redirecting;
                current_article_data.current_article_rule = SI_READ_ALOUD_PAGE_ARTICLE_RULES[current_article_data.current_article_rule.redirecting];
            }

            let path_name = urlVal.pathname;
            // pathname rules
            if ('article_regex' in current_article_data.current_article_rule) {
                for (let arti of current_article_data.current_article_rule.article_regex) {
                    let artiRegex = new RegExp(arti);
                    if (artiRegex.test(path_name)) {
                        output = true;
                    }
                }
            }

            if ('non_article_regex' in current_article_data.current_article_rule) {
                for (let arti of current_article_data.current_article_rule.non_article_regex) {
                    let artiRegex = new RegExp(arti);
                    if (artiRegex.test(path_name)) {
                        return false;
                    }
                }
            }

            // allowlist for current working page
            if ('allow_host' in current_article_data.current_article_rule) {
                if (!current_article_data.current_article_rule.allow_host.includes(document.location.hostname)) {
                    return false;
                }
            }

            // allowlist for target
            if ('allow_url_host' in current_article_data.current_article_rule) {
                if (!current_article_data.current_article_rule.allow_url_host.includes(urlVal.hostname)) {
                    return false;
                }
            }

            let parameter_name = urlVal.search;

            // parameter rules
            if ('article_parameter_regex' in current_article_data.current_article_rule) {
                for (let arti of current_article_data.current_article_rule.article_parameter_regex) {
                    let artiRegex = new RegExp(arti);
                    if (artiRegex.test(parameter_name)) {
                        output = true;
                    }
                }
            }
        }

        return output;
    }

    /**
     * This method will give you a list of data of (title:URL)s if it is a list site.
     * If it is not a list site, then it will return an empty list.
     *
     * @returns a lists of article data of (title:URL)s if the current website is a list website
     */
    function SIReadAloudPageGetListOfArticles() {
        let titleUrlList = [];
        let urlMap = {};

        const current_article_data = SIReadAloudPageCheckKey();

        try {
            for (not_list of current_article_data.current_article_rule.non_list_regex) {
                let regex = new RegExp(not_list);

                if (regex.test(document.location.pathname)) {
                    return [];
                }
            }
        } catch (e) { }

        if (!current_article_data.current_rule_exist
            && Object.keys(SI_READ_ALOUD_GLOBAL_ALLOWLIST).some(
                (x) => document.location.hostname.includes(x))) {
            console.log("[SIReadAloudPageGetListOfArticles] global mode");
            if (document.location.pathname.length > 25) {
                return [];
            }
            return extractList();
        }

        if (current_article_data["current_rule_exist"] &&
            !SIReadAloudPageIsArticle(new URL(document.location.href), current_article_data)) {
            // html class rules, especially CNN for now
            let headerTitle = [];
            if ('non_article_class' in current_article_data.current_article_rule) {
                for (let non_arti of current_article_data.current_article_rule.non_article_class) {
                    for (i of document.getElementsByClassName(non_arti)) {
                        let names = i.innerText.split('\n');
                        for (j of names) {
                            headerTitle.push(j.trim());
                        }
                    }
                }
            }

            // For Samsung Internet News, its artices doesn't start with news.internet.~~
            if ('redirecting' in current_article_data.current_article_rule) {
                current_article_data.host_name = current_article_data.current_article_rule.redirecting;
                current_article_data.key = current_article_data.current_article_rule.redirecting;
                current_article_data.current_article_rule = SI_READ_ALOUD_PAGE_ARTICLE_RULES[current_article_data.current_article_rule.redirecting];
            }

            let url_regex = new RegExp(current_article_data.key);

            for (let urlData of document.getElementsByTagName("a")) {
                // cn feature start : for sina.cn , the link is not in href
                if (document.location.hostname.indexOf('sina') != -1) {
                    if (urlData.getAttribute("data-golink") != null) {
                        urlData.href = urlData.getAttribute("data-golink")
                    } else if (urlData.getAttribute("data-href") != null) {
                        urlData.href = urlData.getAttribute("data-href")
                    }
                }
                // cn feature end : for sina.cn , the link is not in href
                if (!url_regex.test(urlData.hostname) &&
                    !current_article_data.current_article_rule['is_allow_other_host']) {
                    continue;
                }

                let article_data = current_article_data;
                let article_url = new URL(urlData.href);
                if (!current_article_data.current_article_rule['is_allow_other_host']) {
                    article_data = SIReadAloudPageCheckKey(article_url);
                }
                if (SIReadAloudPageIsArticle(article_url, article_data)
                    && !SIReadAloudPageCheckHiddenContent(urlData)) {
                    let article_title = "";
                    let article_titles = urlData.innerText.split('\n');
                    // Some article has a link in the title as a key (ex. Daum)
                    for (let t of article_titles) {
                        if (t.indexOf('https://') == -1) {
                            if (article_title.length < t.trim().length
                                && article_title.length <= 10) {
                                article_title = t.trim();
                            }
                        }
                    }
                    if (!headerTitle.includes(article_title) && article_title.length > 8) {
                        let title = getTitle([urlData]);
                        if (!title || title.length <= 0) {
                            continue;
                        }
                        if (urlData.href in urlMap) {
                            if (urlMap[urlData.href]['title'].length < title.length) {
                                urlMap[urlData.href]['title'] = title;
                            }
                        } else {
                            urlMap[urlData.href] = {
                                'title': title,
                                'url': urlData.href,
                                'y_position': urlData.parentNode.getBoundingClientRect().y,
                            }
                        }
                    }
                }
            }
        }
        titleUrlList = Object.values(urlMap);
        titleUrlList.sort(function (a, b) {
            return a.y_position - b.y_position;
        })

        return titleUrlList;
    }

    function isMedia(node) {
        let attrList = ["class"];
        let mediaKeywords = [
            /\bclip\b/, /\bcurrencies\b/, /\bfootball-sportcenter\b/,
            /\bfoto(galerias)?\b/, /\bgames?\b/, /header/i, /\bimage-wrap\b/,
            /\bInfoCard_link/, /\bjoke\b/, /\blivestreams?\b/, /\bloterias?\b/,
            /\bmovie\b/, /\b(n|N)av\b/, /\bpodcast\b/, /\bpromocoes\b/,
            /\bquiz\b/, /\bstories_item\b/, /\bvideo(gallery|s)?\b/,
            /\bmedia\b/
        ];

        // Sites below are that media keyword is also for articles
        let mediaIsArticle = [
            'detik.com', 'mynet.com', 'independent.co.uk', '9news.com.au',
            'elmundo.es'
        ];

        for (_m of mediaIsArticle) {
            if (node.href.includes(_m)) {
                mediaKeywords.pop();
                break;
            }
        }

        if (checkNodes(node, attrList, mediaKeywords)) {
            return true;
        }

        let ignoreMediaUrlKeywords = 'currencies football-sportcenter game media movie';
        for (_m of mediaKeywords) {
            if (_m.test(ignoreMediaUrlKeywords)) {
                continue;
            }

            // for url Regular Expression
            let _urlExp = new RegExp('/' + _m.source, _m.flags);
            if (_urlExp.test(node.pathname)) {
                return true;
            }
        }

        // check the thumbnail image size
        // if the height is longer than width, then it should be a short or sth else.
        // FIXME: It can affect other site.
        /*try {
            if (node.clientHeight > node.clientWidth * 1.3) {
                return true;
            }
        } catch (e) { }*/
        return false;
    }

    function isInNaviElement(node) {
        let navi_nodes = document.querySelectorAll('nav');
        for (navi_node of navi_nodes) {
            if (navi_node.contains(node)) {
                return true;
            }
        }
        return false;
    }

    function isSponsored(node) {
        let attrList = ["class"];
        let sponsorKeywords = [/sponsor/i, /\bad\b/];
        return checkNodes(node, attrList, sponsorKeywords);
    }

    function isUnexpectedNode(node) {
        let attrList = ["id"];
        let headerKeywords = [/header/i, /footer/i];
        return checkNodes(node, attrList, headerKeywords);
    }

    function checkNodes(node, attrList, keywords) {
        let _node = node;
        try {
            while (_node != document.body) {
                for (attrKey of attrList) {
                    let attr = _node.getAttribute(attrKey);
                    for (_k of keywords) {
                        if (_k.test(attr)) {
                            if (__DEBUG__) {
                                console.log('---checkNodes---');
                                console.log(node);
                                console.log('keyworkd: ' + _k);
                            }
                            return true;
                        }
                    }
                }

                _node = _node.parentNode;
            }
        } catch (e) {
            console.log("[SIReadAloudPageGetListOfArticles] Header or Footer");
        }

        return false;
    }

    function hasUnExpectedClassOrId(node) {
        let matchString = node.className + " " + node.id;
        return /notification|img-link|box__tag|button/i.test(matchString);
    }

    function getTitle(nodes) {
        let maxFont = 0;
        let titleNode;

        // nodes should share same href
        for (node of nodes) {
            if (__DEBUG__) {
                node.style = 'border:1px solid red';
            }
            // max text group means largest(font) genuine text node
            // among the target node
            let maxText = getMaxTextGroup(node);
            if (maxText === null) {
                continue;
            }

            // pick largest a tag node from the node group that has same href
            // e.g. node1 is headline located on top and node2 is on bottom of page
            // but both node have same href, at this time we could see node1 has
            // more significant title
            if (getFontSize(maxText) > maxFont) {
                maxFont = getFontSize(maxText);
                titleNode = maxText;
            }
        }

        // if titleNode is none, we could find one having longest text.
        if (titleNode === undefined || titleNode === null) {
            nodes.sort((a, b) => getText(getLongestTextGroup(a)).trim().length
                < getText(getLongestTextGroup(b)).trim().length);
            if (splitText(getText(nodes[0])).length < splitThreshold()) {
                return "";
            }
            return filterTitle(getText(nodes[0]).trim());
        }
        return filterTitle(getText(titleNode).trim());
    }

    function filterTitle(text) {
        if (!text || text.length <= 0) {
            return text;
        }
        // Remove HashTag
        if (text.charAt(0) === '#') {
            return "";
        }
        if (text) {
            text = text.replaceAll(/\n/g, ' ').replaceAll(/\t/g, ' ').replaceAll(/\s+/g, ' ').trim();
        }
        return text;
    }

    function splitThreshold() {
        if (isCJ()) {
            return 1;
        } else {
            return 4;
        }
    }

    function getTextGroup(node) {
        var map = new Map();
        var iter = document.createNodeIterator(node, NodeFilter.SHOW_TEXT);
        while (textnode = iter.nextNode()) {
            if (checkHiddenContent(textnode.parentElement)) {
                continue;
            }
            if (map.has(textnode.parentElement)) {
                map.get(textnode.parentElement).push(textnode);
            } else {
                map.set(textnode.parentElement, [textnode]);
            }
        }
        return map;
    }

    function getFullTextFromMap(node) {
        var map = getTextGroup(node);
        let text = "";
        for (const [parent, textNodes] of map) {
            _text = "";
            textNodes.forEach(function (textNode) {
                _text += textNode.nodeValue.trim() + " ";
            });
            if (splitText(_text).length < splitThreshold()) {
                continue;
            }
            text += _text;
        }
        return text;
    }

    function getMaxTextGroup(node) {
        var map = getTextGroup(node);

        let maxFont = 0;
        let maxNode = null;

        for (const [parent, textNodes] of map) {
            if (parent.nodeName === "NOSCRIPT") {
                continue;
            }
            let text = "";
            textNodes.forEach(function (textNode) {
                text += textNode.nodeValue.trim() + " ";
            });
            if (splitText(text).length < splitThreshold()) {
                continue;
            }
            if (getFontSize(parent) > maxFont) {
                maxFont = getFontSize(parent);
                maxNode = parent;
            }
        }

        return maxNode;
    }

    function getLongestTextGroup(node) {
        var map = getTextGroup(node);
        let maxLength = 0;
        let maxNode = null;

        for (const [parent, textNodes] of map) {
            let text = "";
            textNodes.forEach(function (textNode) {
                text += textNode.nodeValue.trim() + " ";
            });
            if (splitText(text).length < splitThreshold()) {
                continue;
            }
            if (text.length > maxLength) {
                maxLength = text.length;
                maxNode = parent;
            }
        }

        return maxNode;
    }

    function getFontSize(node) {
        var style = window.getComputedStyle(node, null).getPropertyValue('font-size');
        return parseFloat(style);

    }

    function isElementNode(node) {
        return node.nodeType === Node.ELEMENT_NODE;
    }

    function isOutOfScreenElement(node) {
        if (!node || !SIReadAloudPageIsElementNode(node)) {
            return false;
        }

        // Swipe
        try {
            let rect = node.getBoundingClientRect();
            if (rect.x < 0 || rect.x >= window.innerWidth) {
                return true;
            }
        } catch { }

        return false;
    }

    function checkHiddenContent(atag) {
        while (atag != document.body && atag != document.head) {
            let computedStyle = window.getComputedStyle(atag);

            if (computedStyle.getPropertyValue('display').toLowerCase() === 'none'
                || computedStyle.getPropertyValue('display').toLowerCase() === 'hidden') {
                return true;
            }

            if (computedStyle.getPropertyValue('visibility').toLowerCase() === 'hidden'
                || computedStyle.getPropertyValue('visibility').toLowerCase() === 'collapse') {
                return true;
            }
            atag = atag.parentNode;
        }
        return false;
    }

    function getText(a) {
        if (a === null || a === undefined) {
            return "";
        }
        let text = a.textContent;
        if (text === null || text.length == 0 || text.includes('<![CDATA')) {
            text = a.innerText;
        }
        if (text === null || text.length == 0) {
            text = a.getAttribute("aria-label");
        }
        if (text === null || text.length == 0) {
            text = a.getAttribute("title");
        }
        if (text === null || text.length == 0) {
            text = getFullTextFromMap(a);
        }
        if (text === null || text.length == 0) {
            if (a.querySelector("img")) {
                text = a.querySelector("img").alt;
            }
        }

        // Sometimes a title is next to the anchor tag, not in the anchor tag
        if (text === null || text.length == 0 || text.includes('<![CDATA')) {
            text = a.parentNode.innerText;
        }
        if (text === null || text.length == 0 || text.includes('<![CDATA')) {
            text = a.parentNode.textContent;
        }
        return text;
    }

    function splitText(text) {
        var regexp = /[\w\/.:0-9\u0900-\u097F\u3131-\uD79D\u0E00-\u0E7F\u0400-\u04FF\u0621-\u064A\p{Script=Han}ぁ-んァ-ン]+/g;
        return [...text.matchAll(regexp)];
    }

    function isLink(text) {
        try {
            if (!text || text.length <= 0) {
                return false;
            }
            let textStr = text.toString().trim();
            return textStr.startsWith('http://') || textStr.startsWith('https://')
        } catch (e) {
            console.log(e);
            return false;
        }
    }

    function isTextLabel(a) {
        //TODO: check what if extract title of node first and use it as text.
        let text = getText(a);
        if (text) {
            text = text.replace(/\n/g, ' ').replace(/\t/g, ' ').trim();
        }

        if (text === null) {
            return false;
        }
        let splits = splitText(text);
        let threshold = isCJ() ? 1 : 4;

        if (splits.some((x) => isLink(x))) {
            return false;
        }

        if (splits.length > threshold) {
            return true;
        }

        if (isCJ() && splits.length == 1) {
            return text.length > 10;
        }
        return false;
    }

    function extractList() {
        var alist = document.body.querySelectorAll('a');

        var aMap = new Map();
        var titleUrlList = [];

        for (let a of alist) {
            if (a.href == document.location.href) {
                continue;
            }
            if (getTopDomain(document.location.hostname)
                != getTopDomain(a.hostname)) {
                continue;
            }
            if (a.pathname.length < 25) {
                continue;
            }
            var titleLength = isTextLabel(a);
            var heightNotZero = a.getBoundingClientRect().height > 0;
            let outScreen = isOutOfScreenElement(a);
            let hidden = checkHiddenContent(a);
            let media = isMedia(a);
            let sponsor = isSponsored(a);
            let unexpected = isUnexpectedNode(a);
            let isInNavi = isInNaviElement(a);
            let unExpectedClassOrId = hasUnExpectedClassOrId(a);
            // TODO: Need to check shortHrefName
            let shortHrefName = a.href.length < 500;
            let filters = [true, titleLength, heightNotZero, !outScreen, !hidden, !media, !sponsor,
                !unexpected, !isInNavi, shortHrefName, !unExpectedClassOrId];

            if (__DEBUG__) {
                console.log('-------------------------------');
                console.log(a);
                console.log("true, titleLength, heightNotZero, !outScreen, !hidden, !media, !sponsor,"
                    + " !unexpected, !isInNavi, shortHrefName, !unExpectedClassOrId");
                console.log(filters);
            }

            var article = true;
            filters.slice(0, filters.length).forEach(function (filter) {
                article = article && filter;
            });

            if (article) {
                if (aMap.has(a.href)) {
                    aMap.get(a.href).push(a);
                } else {
                    aMap.set(a.href, [a]);
                }
            }
        }
        for (const [href, nodes] of aMap) {
            let title = getTitle(nodes);
            if (title !== null && title.length > 0) {
                titleUrlList.push({
                    'title': title,
                    'url': href
                });
            }
        }

        return titleUrlList;
    }

    /**
     * This method provide supported site list
     *
     * @returns a lists of site
     */
    function SIContinuousReadAloudPageSupportedSiteList() {
        let list = [];

        for (let url in SI_READ_ALOUD_PAGE_ARTICLE_RULES) {
            let site = SI_READ_ALOUD_PAGE_ARTICLE_RULES[url];
            list.push({
                'url': url,
                'title': site['title'],
                'country': site['country'],
                'language': site['language'],
                'pageTitle': site['pageTitle']
            });
        }

        for (let url in SI_READ_ALOUD_GLOBAL_ALLOWLIST) {
            let site = SI_READ_ALOUD_GLOBAL_ALLOWLIST[url];
            list.push({
                'url': url,
                'title': site['title'],
                'country': site['country'],
                'language': site['language'],
                'pageTitle': site['pageTitle']
            });
        }

        return {
            'size': list.length,
            'version': THIS_SCRIPT_VERSION,
            'sites': list
        }
    }

    async function saveFile(map) {
        try {
            // create a new handle
            const newHandle = await window.showSaveFilePicker();

            // create a FileSystemWritableFileStream to write to
            const writableStream = await newHandle.createWritable();

            // write our file
            for (const [href, title] of map) {
                await writableStream.write(href + "\n " + title + "\n" + "======" + "\n");
            }

            // close the file and write the contents to disk.
            await writableStream.close();
        } catch (err) {
            console.error(err.name, err.message);
        }
    }

    if (__DEBUG__) {
        console.log(SIReadAloudPageGetListOfArticles());
    }
} catch (e) { }
