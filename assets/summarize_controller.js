try {

const SI_TEXT_EXTRACT_REGEXPS = {
    unlikelyCandidates: /-ad-|img_desc|caption|ai2html|banner|breadcrumbs|combx|comment|community|cover-wrap|disqus|extra|footer|gdpr|header|legends|menu|related|remark|replies|rss|shoutbox|sidebar|skyscraper|social|sponsor|supplemental|ad-break|agegate|pagination|pager|popup|yom-remote|time|date|wrap_next_news|title|video-playlist|infzm-content__originaltips|infzm-content__charge_editor|infzm-content__author|infzm-content__from|infzm-content__charge_editor|infzm-content__after-header/i,
    okMaybeItsACandidate: /and|article|body|column|content|main|shadow|layout--sidebar/i
};

let ARTICLE_MAX_LENGTH_CJK = 50;
let ARTICLE_MAX_LENGTH = 200;

let SI_TEXT_TLD_EXTRACT_RULES = {
    'yna.co.kr': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div[class^="story-news article"]',
            'article_pos': 0
        }]
    },
    'enorth.com.cn': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.content, td.nr',
            'article_pos': 0
        }]
    },
    'cnr.cn': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.article-content',
            'article_pos': 0
        }]
    },
    'yesky.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.article_infor, div.article, div.content',
            'article_pos': 0
        }]
    },
    'youth.cn': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.page_text',
            'article_pos': 0
        }]
    },
    'ce.cn': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.md_nr',
            'article_pos': 0
        }]
    },
    'tom.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.news_box_text',
            'article_pos': 0
        }]
    },
    'rednet.cn': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': '.content, article',
            'article_pos': 0
        }]
    },
    'cctv.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': null,
            'article_selectors': ['div.content_area', 'div.text_area'],
            'article_pos': 0
        }]
    },
    'androidauthority.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'main',
            'article_pos': 0
        }]
    },
    'southcn.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.content',
            'article_pos': 0
        }]
    },
    'ycwb.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.main_article',
            'article_pos': 0
        }]
    },
    'dahe.cn': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': null,
            'article_selectors': ['div.content', 'div.art_info', 'section.newInfo'],
            'article_pos': 0
        }]
    },
    'guancha.cn': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.gc_content',
            'article_pos': 0
        }]
    },
    'ifeng.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.articleText, section.article, div[class^="main_content"], div.index_main_content_j-HoG, div.acTxt',
            'article_pos': 0
        }]
    },
    'china.com.cn': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.article, div.content, div.list_right, div.list_main2, div.main, div.detail-box',
            'article_pos': 0
        }]
    },
    'chinadaily.com.cn': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.article, div[id=Content]',
            'article_pos': 0
        }]
    },
    'news.cn': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div[id=detail], div.xlcontent',
            'article_pos': 0
        }]
    },
    'pcauto.com.cn': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.article-content, div.m-art-body, div[id=Jcont_con], div.artBody',
            'article_pos': 0
        }]
    },
    'dayoo.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div[id=text_content]',
            'article_pos': 0
        }]
    },
    'focus.cn': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.content, div.main-content, div.substance, div[id=articleText], article',
            'article_pos': 0
        }]
    },
    'douban.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div[id=content], div.main-bd, section.subject-section_intro, div.layout-content, div.layout__content, div.top-banner',
            'article_pos': 0
        }]
    },
    'cnhubei.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.doc_content, article, div.content',
            'article_pos': 0
        }]
    },
    'gmw.cn': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.u-mainText, div[id=articleBox]',
            'article_pos': 0
        }]
    },
    'sina.cn': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'article, div.art_content, div.artcle_content-wrapper',
            'article_pos': 0
        }]
    },
    'health.china.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.article-content',
            'article_pos': 0
        }]
    },
    'nfapp.southcn.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.article',
            'article_pos': 0
        }]
    },
    'baidu.com': {
        'paths': [{
            'path_regex': '/s',
            'article_selector': 'none',
            'article_pos': 0
        }, {
            'path_regex': '/.*',
            'article_selector': 'article',
            'article_pos': 0
        }],
    },
    'thesportstak.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.detail-content, div.news-content',
            'article_pos': 0
        }]
    },
    'm.wikipedia.org': {
        'paths': [{
            'path_regex': '/wiki/Main_Page',
            'article_selector': 'none',
            'article_pos': 0
        },{
            'path_regex': '/wiki/%EC%9C%84%ED%82%A4%EB%B0%B1%EA%B3%BC:%EB%8C%80%EB%AC%B8',
            'article_selector': 'none',
            'article_pos': 0
        },{
            'path_regex': '/wiki/%D0%97%D0%B0%D0%B3%D0%BB%D0%B0%D0%B2%D0%BD%D0%B0%D1%8F_%D1%81%D1%82%D1%80%D0%B0%D0%BD%D0%B8%D1%86%D0%B0',
            'article_selector': 'none',
            'article_pos': 0
        },{
            'path_regex': '/wiki/%E3%83%A1%E3%82%A4%E3%83%B3%E3%83%9A%E3%83%BC%E3%82%B8',
            'article_selector': 'none',
            'article_pos': 0
        },{
            'path_regex': '/wiki/Wikip%C3%A9dia:Accueil_principal',
            'article_selector': 'none',
            'article_pos': 0
        },{
            'path_regex': '/wiki/Wikipedia:%E9%A6%96%E9%A1%B5',
            'article_selector': 'none',
            'article_pos': 0
        },{
            'path_regex': '/wiki/Wikipedia:Portada',
            'article_selector': 'none',
            'article_pos': 0
        },{
            'path_regex': '/wiki/Wikipedia:Hauptseite',
            'article_selector': 'none',
            'article_pos': 0
        },{
            'path_regex': '/wiki/Pagina_principale',
            'article_selector': 'none',
            'article_pos': 0
        },{
            'path_regex': '/wiki/%D8%A7%D9%84%D8%B5%D9%81%D8%AD%D8%A9_%D8%A7%D9%84%D8%B1%D8%A6%D9%8A%D8%B3%D9%8A%D8%A9',
            'article_selector': 'none',
            'article_pos': 0
        },{
            'path_regex': '/.*',
            'article_selector': 'div[id=bodyContent]',
            'article_pos': 0
        }]
    },
    'wikipedia.org': {
        'paths': [{
            'path_regex': '/wiki/Main_Page',
            'article_selector': 'none',
            'article_pos': 0
        },{
            'path_regex': '/wiki/%EC%9C%84%ED%82%A4%EB%B0%B1%EA%B3%BC:%EB%8C%80%EB%AC%B8',
            'article_selector': 'none',
            'article_pos': 0
        },{
            'path_regex': '/wiki/%D0%97%D0%B0%D0%B3%D0%BB%D0%B0%D0%B2%D0%BD%D0%B0%D1%8F_%D1%81%D1%82%D1%80%D0%B0%D0%BD%D0%B8%D1%86%D0%B0',
            'article_selector': 'none',
            'article_pos': 0
        },{
            'path_regex': '/wiki/%E3%83%A1%E3%82%A4%E3%83%B3%E3%83%9A%E3%83%BC%E3%82%B8',
            'article_selector': 'none',
            'article_pos': 0
        },{
            'path_regex': '/wiki/Wikip%C3%A9dia:Accueil_principal',
            'article_selector': 'none',
            'article_pos': 0
        },{
            'path_regex': '/wiki/Wikipedia:%E9%A6%96%E9%A1%B5',
            'article_selector': 'none',
            'article_pos': 0
        },{
            'path_regex': '/wiki/Wikipedia:Portada',
            'article_selector': 'none',
            'article_pos': 0
        },{
            'path_regex': '/wiki/Wikipedia:Hauptseite',
            'article_selector': 'none',
            'article_pos': 0
        },{
            'path_regex': '/wiki/Pagina_principale',
            'article_selector': 'none',
            'article_pos': 0
        },{
            'path_regex': '/wiki/%D8%A7%D9%84%D8%B5%D9%81%D8%AD%D8%A9_%D8%A7%D9%84%D8%B1%D8%A6%D9%8A%D8%B3%D9%8A%D8%A9',
            'article_selector': 'none',
            'article_pos': 0
        },{
            'path_regex': '/.*',
            'article_selector': 'div[id=bodyContent]',
            'article_pos': 0
        }]
    },
    'homeway.com.cn': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.article-main, div.article',
            'article_pos': 0
        }]
    },
    'weixin.qq.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div[id=js_content]',
            'article_pos': 0
        }]
    }
}

/**
 * For Exception case
 */
let SI_TEXT_EXTRACT_RULES = {
    'www.espn.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selectors': ['article'],
            'article_selector': null,
            'article_pos': 1
        }]
    },
    'www.kado.net': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'article[id=article-view-content-div]',
            'article_pos': 0
        }]
    },
    'mobile.busan.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': '.article_content',
            'article_pos': 0
        }]
    },
    'www.kookje.co.kr': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': '#con_text',
            'article_pos': 0
        }]
    },
    'www.kyeonggi.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': '.d_article_txt',
            'article_pos': 0
        }]
    },
    'www.ikbc.co.kr': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': '#body_wrap',
            'article_pos': 0
        }]
    },
    'www.daejonilbo.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': '#articleViewCon',
            'article_pos': 0
        }]
    },
    'www.jmbc.co.kr': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': '.contents_wrap',
            'article_pos': 0
        }]
    },
    'dgmbc.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': '#journal_article_wrap',
            'article_pos': 0
        }]
    },
    'www.cjb.co.kr': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': '.view-content',
            'article_pos': 0
        }]
    },
    'www.jibs.co.kr': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': '.articles-detail-content',
            'article_pos': 0
        }]
    },
    'mnews.jtbc.co.kr': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': '#article_content_area',
            'article_pos': 0
        }]
    },
    'biz.sbs.co.kr': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': '.news_article_body',
            'article_pos': 0
        }]
    },
    'www.fnnews.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': '#article_content',
            'article_pos': 0
        }]
    },
    'www.mediatoday.co.kr': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'article[id=article-view-content-div]',
            'article_pos': 0
        }]
    },
    'sisain.co.kr': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'article[id=article-view-content-div]',
            'article_pos': 0
        }]
    },
    'san.chosun.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'article[id=article-view-content-div]',
            'article_pos': 0
        }]
    },
    'www.thescoop.co.kr': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'article[id=article-view-content-div]',
            'article_pos': 0
        }]
    },
    'm.mk.co.kr': {
        'paths': [{
            'path_regex': '/economy/.*',
            'article_selector': '#artText',
            'article_pos': 0
        }]
    },
    'weekly.chosun.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'article[id=article-view-content-div]',
            'article_pos': 0
        }]
    },
    'h21.hani.co.kr': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div[id=contents]',
            'article_pos': 0
        }]
    },
    'm.ildaro.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div[id=MRead_b]',
            'article_pos': 0
        }]
    },
    'www.nongmin.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.ck-content',
            'article_pos': 0
        }]
    },
    'newstapa.org': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.archive-contents',
            'article_pos': 0
        }]
    },
    'm.journalist.or.kr': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div[id=news_body_area]',
            'article_pos': 0
        }]
    },
    'm.blog.naver.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.se-main-container',
            'article_pos': 0
        }]
    },
    'm.cafe.naver.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.se-main-container',
            'article_pos': 0
        }]
    },
    'm.post.naver.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.sect_dsc',
            'article_pos': 0
        }],
        'unlikelyCandidates': /se_oglink/
    },
    'm.stock.naver.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div[class^="ResearchContent_text_area"]',
            'article_pos': 0
        }]
    },
    'sports.news.naver.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div[class^="content_area"]',
            'article_pos': 0
        }]
    },
    'www.britannica.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div[class^="topic-content"], article.topic-content',
            'article_pos': 0
        }]
    },
    'www.dnaindia.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': '.article-description, div.article-body',
            'article_pos': 0
        }]
    },
    'www.cnbc.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div[id=RegularArticle-ArticleBody-6], div[class^="ArticleBody"], div[data-module=featuredContent]',
            'article_pos': 0
        }]
    },
    'www.ign.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'section[class^="article-page"]',
            'article_pos': 0
        }]
    },
    'www.scoopwhoop.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div[id=articleBody], article',
            'article_pos': 0
        }]
    },
    'www.deccanchronicle.com': {
        'paths': [{
            'path_regex': '/amp',
            'article_selector': 'div.py-4',
            'article_pos': 0
        },{
            'path_regex': '/.*',
            'article_selector': 'div.details-info',
            'article_pos': 0
        }]
    },
    'm.greatandhra.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.unselectable',
            'article_pos': 0
        }]
    },
    'www.deccanherald.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.rYR8y',
            'article_pos': 0
        }]
    },
    'www.mensxp.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.html-description',
            'article_pos': 0
        }]
    },
    'www.newspointapp.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.articlestory_article_story__VZpXw',
            'article_pos': 0
        }]
    },
    'www.tribuneindia.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.story-desc',
            'article_pos': 0
        }]
    },
    'thewire.in': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div[id=root]',
            'article_pos': 0
        }]
    },
    'timesofindia.indiatimes.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.JuyWl, div._s30J, div.MBVQb',
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
    'www.indiatimes.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div[id=article-description-0]',
            'article_pos': 0
        }]
    },
    'www.indiatoday.in': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.story-with-main-sec,div.content_secondary',
            'article_pos': 0
        }]
    },
    'www.expressandstar.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.story-content',
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
    'indianexpress.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': null,
            'article_selectors': ['div[id=pcl-full-content]', 'article', 'div.story_details', 'div.amp-wp-content', 'div.ie-post-content'],
            'article_pos': 0
        }]
    },
    'www.indy100.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.postpage-container',
            'article_pos': 0
        }]
    },
    'www.firstpost.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.article-sect',
            'article_pos': 0
        }]
    },
    'news.cgtn.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.cg-main-container',
            'article_pos': 0
        }]
    },
    'www.tupaki.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.content-flex',
            'article_pos': 0
        }]
    },
    'www.politico.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': '.page-content, article',
            'article_pos': 0
        }]
    },
    'www.forbesindia.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.artical-main-sec, div.audio-desc',
            'article_pos': 0
        }]
    },
    'laughingcolours.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': '.blog-box',
            'article_pos': 0
        }]
    },
    'www.cosmopolitan.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': '.article-container, .listicle-intro, div[role=region]',
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
    'order-order.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.v-card__text',
            'article_pos': 0
        }]
    },
    'new.qq.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': '.content-article',
            'article_pos': 0
        }]
    },
    'www.aajtak.in': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.content-area',
            'article_pos': 0
        }]
    },
    'www.tribunnews.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div[id=article]',
            'article_pos': 0
        }]
    },
    'www.lanacion.com.ar': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.row',
            'article_pos': 3
        }]
    },
    'www.n-tv.de': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': '.article__text',
            'article_pos': 0
        }]
    },
    'www.mynet.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div[id=contextual]',
            'article_pos': 0
        }]
    },
    'apnews.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.RichTextStoryBody',
            'article_pos': 0
        }]
    },
    'wydarzenia.interia.pl': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': '.kIRanb',
            'article_pos': 0
        }]
    },
    'news.rambler.ru': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': '._3hMaj',
            'article_pos': 0
        }]
    },
    'lenta.ru': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': '.topic-body__content',
            'article_pos': 0
        }]
    },
    'ria.ru': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div[class*="article__body"]',
            'article_pos': 0
        }]
    },
    'm.daum.net': {
        'paths': [{
            'path_regex': '/',
            'article_selector': 'none',
            'article_pos': 0
        }]
    },
    'www.boldsky.com': {
        'paths': [{
            'path_regex': '/',
            'article_selector': '.bs-article-text',
            'article_pos': 0
        }]
    },
    'news.samsung.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.content_view .text_cont',
            'article_pos': 0
        }]
    },
    'm.huxiu.com': {
        'paths': [{
            'path_regex': '/.*',
            'ignore_query': 'type=video',
            'article_selector': 'div[id=article-detail-content]',
            'article_pos': 0
        }]
    },
    'www.shobserver.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.body-padding.news-container',
            'article_pos': 0
        }]
    },
    'article.auone.jp': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.article',
            'article_pos': 0
        }]
    },
    'news.mail.ru': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.article__text',
            'article_pos': 0
        }]
    },
    'milliyet.com.tr': {
        'paths': [{
            'path_regex': '/',
            'article_selector': 'div.news-content',
            'article_pos': 0
        }]
    },
    'www.samsungmobilepress.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.section__detail-desc',
            'article_pos': 0
        }]
    },
    'view.inews.qq.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': '.contentify_contentifyWrapper__77SPv',
            'article_pos': 0
        }]
    },
    'www.xuexi.cn': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.render-detail-article-content',
            'article_pos': 0
        }]
    },
    'www.infzm.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'article, div.nfzm-content, div.content',
            'article_pos': 0
        }],
        'okMaybeItsACandidate': /and|article|body|column|main|shadow|layout--sidebar/i
    },
    'www.xinhuanet.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.main',
            'article_pos': 0
        }]
    },
    'm.gxfin.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.content1',
            'article_pos': 0
        }]
    },
    'www.nfcmag.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.article-content-box',
            'article_pos': 0
        }]
    },
    'www.jfdaily.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.news-content',
            'article_pos': 0
        }]
    },
    'www.express.co.uk': {
        'paths': [],
        'unlikelyCandidates': /related-articles/
    },
    'www.chosun.com': {
        'paths': [{
            'path_regex': '^\/$',
            'article_selector': 'div.no-need-show',
            'article_pos': 0
        }, {
            'path_regex': '^\/([A-z,0-9,-,-]+)\/$',
            'article_selector': 'div.no-need-show',
            'article_pos': 0
        }]
    },
    'm.news.nate.com': {
        'paths': [{
            'path_regex': '/hissue/groupList',
            'article_selector': 'none',
            'article_pos': 0
        }, {
            'path_regex': '/hissue',
            'article_selector': 'none',
            'article_pos': 0
        }]
    },
    'biz.chosun.com': {
        'paths': [{
            'path_regex': '^/$',
            'article_selector': 'none',
            'article_pos': 0
        }]
    },
    'mobile.newsis.com': {
        'paths': [{
            'path_regex': '^/$',
            'article_selector': 'none',
            'article_pos': 0
        }]
    },
    'm.hankookilbo.com': {
        'paths': [{
            'path_regex': '^/$',
            'article_selector': 'none',
            'article_pos': 0
        }]
    },
    'www.wsj.com': {
        'paths': [{
            'path_regex': '^\/$',
            'article_selector': '.div.no-need-show',
            'article_pos': 0
        }]
    },
    'www.nytimes.com': {
        'paths': [{
            'path_regex': '^\/$',
            'article_selector': '.div.no-need-show',
            'article_pos': 0
        }]
    },
    'app.people.cn': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.content',
            'article_pos': 0
        }]
    },
    'www.cac.gov.cn': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.main-content',
            'article_pos': 0
        }]
    },
    'mbd.baidu.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.mainContent',
            'article_pos': 0
        }]
    },
    'wap.yc.ifeng.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.content',
            'article_pos': 0
        }]
    },
    'wap.eastmoney.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div[id=articleContent]',
            'article_pos': 0
        }]
    },
    'gaokao.chsi.com.cn': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.flow-text',
            'article_pos': 0
        }]
    },
    'www.chsi.com.cn': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.flow-text',
            'article_pos': 0
        }]
    },
    'm.hupu.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.bbs-content',
            'article_pos': 0
        }]
    },
    'm.thepaper.cn': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.index_cententWrap__Jv8jK',
            'article_pos': 0
        }]
    },
    'm.huanqiu.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.content',
            'article_pos': 0,
            'ignore_hidden': true
        }]
    },
    'm.cankaoxiaoxi.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'uni-view.content',
            'article_pos': 0
        }]
    },
    'm3.titan007.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.open-main-content',
            'article_pos': 0
        }]
    },
    'm.autohome.com.cn': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.article-major-details, div.details',
            'article_pos': 0
        }]
    },
    'chejiahao.m.autohome.com.cn': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'section[id=content]',
            'article_pos': 0
        }]
    },
    'm.xincheping.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.xcp-custom-content, div.d-box',
            'article_pos': 0
        }]
    },
    'www.81.cn': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'ul[id=main-news-list], div.content-main, div.article-content',
            'article_pos': 0
        }]
    },
    'm.10jqka.com.cn': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.main-article',
            'article_pos': 0
        }]
    },
    'm.jrj.com.cn': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.article_content',
            'article_pos': 0
        }]
    },
    'xueqiu.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.index_status__content_aaf',
            'article_pos': 0
        }]
    },
    'm.it168.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.content',
            'article_pos': 0
        }]
    },
    'm.imobile.com.cn': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.cvt_desc',
            'article_pos': 0
        }]
    },
    'm.zol.com.cn': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div[id=article-content]',
            'article_pos': 0
        }]
    },
    'm.pcpop.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'main.main',
            'article_pos': 0
        }]
    },
    'm.mafengwo.cn': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.chapter-container',
            'article_pos': 0
        }]
    },
    'www.cwl.gov.cn': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.body-con',
            'article_pos': 0
        }]
    },
    'www.shobserver.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.news-content',
            'article_pos': 0
        }]
    },
    'm.guokr.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div[id=js_content], div[class*="styled__ArticleContent-"]',
            'article_pos': 0
        }]
    },
    'm.banyuetan.org': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.text-detail-con',
            'article_pos': 0
        }]
    },
    'www.myzaker.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div[id=article]',
            'article_pos': 0
        }]
    },
    'm.36kr.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.moments-content, div[id=body-content]',
            'article_pos': 0
        }]
    },
    'www.qstheory.cn': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.content, div.clipboard_text',
            'article_pos': 0
        }]
    },
    'm.youth.cn': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div[id=content]',
            'article_pos': 0
        }]
    },
    't.m.youth.cn': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div[id=content]',
            'article_pos': 0
        }]
    },
    'www.stdaily.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.content',
            'article_pos': 0
        }]
    },
    'h5.kepuchina.cn': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.detail-content',
            'article_pos': 0
        }]
    },
    'm.cnr.cn': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'uni-view[id=_root], article-content',
            'article_pos': 0
        }]
    },
    'm.chinanews.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.content',
            'article_pos': 0
        }]
    },
    'resource.ttplus.cn': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.articleBox-bd',
            'article_pos': 0
        }]
    },
    'm.eeo.com.cn': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.t_box_public',
            'article_pos': 0
        }]
    },
    'm.nfcmag.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.article-content',
            'article_pos': 0
        }]
    },
    'www.wenweipo.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.post-body',
            'article_pos': 0
        }]
    },
    'g.pconline.com.cn': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.art-content',
            'article_pos': 0
        }]
    },
    'news.cqnews.net': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.content_detail, div.main_text',
            'article_pos': 0
        }]
    },
    'cn.chinareviewnews.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div[id=detail_content]',
            'article_pos': 0
        }]
    },
    'www.xhby.net': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.article-content',
            'article_pos': 0
        }]
    },
    'www.jfdaily.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.news-content',
            'article_pos': 0
        }]
    },
    'm.cyol.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div[id=article-content]',
            'article_pos': 0
        }]
    },
    'm.jinghua.cn': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.cont',
            'article_pos': 0
        }]
    },
    'jinghva.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.article',
            'article_pos': 0
        }]
    },
    'm.cs.com.cn': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.content',
            'article_pos': 0
        }]
    },
    'www.cb.com.cn': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.article_info',
            'article_pos': 0
        }]
    },
    'm.39.net': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.art_content',
            'article_pos': 0
        }]
    },
    'mp.cnfol.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div[id=ArtMainBox]',
            'article_pos': 0
        }]
    },
    'm.zhaopin.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.about-main',
            'article_pos': 0
        }]
    },
    'www.xcar.com.cn': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.article-wrap, div.tripContent',
            'article_pos': 0
        }]
    },
    'm.pchome.net': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.article-content',
            'article_pos': 0
        }]
    },
    'csdnnews.blog.csdn.net': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div[id=content_views]',
            'article_pos': 0
        }]
    },
    'blog.csdn.net': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div[id=content_views]',
            'article_pos': 0
        }]
    },
    'mwenku.51job.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.article-desc',
            'article_pos': 0
        }]
    },
    'wap.yesky.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': null,
            'article_selectors': ['div.content', 'div[id=contentt1]'],
            'article_pos': 0
        }]
    },
    'm.fang.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.articleN, div.areaDiv',
            'article_pos': 0
        }]
    },
    'news.fang.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.articleN',
            'article_pos': 0
        }]
    },
    'news.17173.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.art-bd',
            'article_pos': 0
        }]
    },
    'newgame.17173.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.art-bd',
            'article_pos': 0
        }]
    },
    'news.qq.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.article-content-wrap',
            'article_pos': 0
        }]
    },
    'www.msn.cn': {
        'paths': [{
            'path_regex': '/zh-cn/.*',
            'shadow_root': 'msn-article',
            'shadow_root_pos': 0,
            'article_selector': '.article-body',
            'article_pos': 0
        }]
    },
    'www.msn.com': {
        'paths': [{
            'path_regex': '/ko-kr/news/.*',
            'shadow_root': 'msn-article',
            'shadow_root_pos': 0,
            'article_selector': '.article-body',
            'article_pos': 0
        }]
    },
    'card.weibo.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.f-art',
            'article_pos': 0
        }]
    },
    'finance.cnr.cn': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.article-content',
            'article_pos': 0
        }]
    },
    'www.cnr.cn': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.article-content',
            'article_pos': 0
        }]
    },
    'yz.chsi.com.cn': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div[id=article_dnull]',
            'article_pos': 0
        }]
    },
    'www.autohome.com.cn': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div[id=articleContent]',
            'article_pos': 0
        }]
    },
    'www.xincheping.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div[id=main-con-left]',
            'article_pos': 0
        }]
    },
    'm.weibo.cn': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.lite-page-wrap',
            'article_pos': 0
        }]
    },
    'www.mafengwo.cn': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.view_con',
            'article_pos': 0
        }]
    },
    'pc.yiyouliao.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.yyl-weiruan-article-detail-content',
            'article_pos': 0
        }]
    },
    'www.guokr.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div[id=img-content]',
            'article_pos': 0
        }]
    },
    'www.huxiu.com': {
        'paths': [{
            'path_regex': '/.*',
            'ignore_query': 'type=video',
            'article_selector': 'div[id=article-content]',
            'article_pos': 0
        }]
    },
    'm.kepuchina.cn': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.activity-detail-content, div.content-info',
            'article_pos': 0
        }]
    },
    'news.enorth.com.cn': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div[id=article]',
            'article_pos': 0
        }]
    },
    'www.yangtse.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div[id=wrap]',
            'article_pos': 0
        }]
    },
    'a.xcar.com.cn': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.article-wrap, div.tripContent, div.main_content',
            'article_pos': 0
        }]
    },
    'm.nbd.com.cn': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.m-article, div.detail-content',
            'article_pos': 0
        }]
    },
    'wap.chengdu.cn': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div[id=txt]',
            'article_pos': 0
        }]
    },
    'm.bjnews.com.cn': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.article, article',
            'article_pos': 0
        }]
    },
    'www.jiemian.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.article-content',
            'article_pos': 0
        }]
    },
    'm.jiemian.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.article-content',
            'article_pos': 0
        }]
    },
    'm.ithome.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.news-content',
            'article_pos': 0
        }]
    },
    'news.fang.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div[name=newscontent]',
            'article_pos': 0
        }]
    },
    'gz.home.focus.cn': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.article',
            'article_pos': 0
        }]
    },
    'm.home.focus.cn': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div[class^="index_content_"]',
            'article_pos': 0
        }]
    },
    'www.fool.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div[class="content-container"]',
            'article_pos': 0
        }]
    },
    'www.stereogum.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div[class="article"]',
            'article_pos': 0
        }]
    },
    'm.ddaily.co.kr': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.article_content',
            'article_pos': 0
        }]
    },
    'v.daum.net': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'article',
            'article_pos': 0
        }],
        unlikelyCandidatesKeys: ['data-cloud-area'],
        unlikelyCandidates: /-ad-|img_desc|caption|ai2html|banner|breadcrumbs|combx|comment|community|cover-wrap|disqus|extra|footer|gdpr|header|legends|menu|related|remark|replies|rss|shoutbox|sidebar|skyscraper|social|sponsor|supplemental|ad-break|agegate|pagination|pager|popup|yom-remote|time|date|wrap_next_news|title|video-playlist|addition|util_wrap/i,
    },
    'www.sisain.co.kr': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'article',
            'article_pos': 2
        }]
    },
    'economist.co.kr': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div[id=article_body]',
            'article_pos': 0
        }]
    },
    'm.dailian.co.kr': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.article',
            'article_pos': 0
        }]
    },
    'www.bloter.net': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'article[id=article-view-content-div]',
            'article_pos': 0
        }]
    },
    'premium.sbs.co.kr': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.contentsEnd',
            'article_pos': 0
        }]
    },
    'www.vice.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.observer__content',
            'article_pos': 0
        }]
    },
    'm.rediff.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div[id=div_arti_cont], div.arti_content',
            'article_pos': 0
        }]
    },
    'm.toutiao.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'article, div.weitoutiao-content',
            'article_pos': 0
        }]
    },
    "www.zhihu.com": {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'span.RichText',
            'article_pos': 0
        }]
    },
    "finance.ce.cn": {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div[id=body-content], div[id=md_nr]',
            'article_pos': 0
        }]
    },
    'h5.cqliving.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div[id=detail_content]',
            'article_pos': 0
        }]
    },
    'www.sanqin.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.article-content',
            'article_pos': 0
        }]
    },
    'qinwen.sanqin.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.main-content-box',
            'article_pos': 0
        }]
    },
    'www.tmtpost.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.p_main, article, div.title_content',
            'article_pos': 0
        }]
    },
    'www.cls.cn': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.content',
            'article_pos': 0
        }]
    },
    'm.cls.cn': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.content',
            'article_pos': 0
        }]
    },
    'm.cyzone.cn': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.art-content',
            'article_pos': 0
        }]
    },
    'www.chinaz.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div[id=article]',
            'article_pos': 0
        }]
    },
    'abcnews.go.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.FITT_Article_main',
            'article_pos': 0
        }]
    },
    'taboolanews.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.article-content-wrapper',
            'article_pos': 0
        }]
    },
    'www.timesnownews.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div[id=readtrinity0]',
            'article_pos': 0
        }]
    },
    'm.chinaz.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div[id=article]',
            'article_pos': 0
        }]
    },
    'm.tmtpost.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.p_main, article, div.title_content',
            'article_pos': 0
        }]
    },
    'www.npr.org': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'article.story',
            'article_pos': 0
        }]
    },
    'www.nouvelobs.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'section.article-page-content',
            'article_pos': 0
        }]
    },
    'www.laprovence.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.Article_article-content__4D51m',
            'article_pos': 0
        }]
    },
    'www.parismatch.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'section.content-rte',
            'article_pos': 0
        }]
    },
    'insidemag.fr': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.entry-content',
            'article_pos': 0
        }]
    },
    'www.bienpublic.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': ['div.insetContent', 'article'],
            'article_pos': 0
        }]
    },
    'fr.le360.ma': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'section[id=main]',
            'article_pos': 0
        }]
    },
    'www.zinfos974.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.et_pb_post_content',
            'article_pos': 0
        }]
    },
    'www.mieux-vivre-autrement.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.post-content',
            'article_pos': 0
        }]
    },
    'spettacoli.tiscali.it': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.cnt-text-article.current-photo',
            'article_pos': 0
        }]
    },
    'lesmoutonsrebelles.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.entry-content',
            'article_pos': 0
        }]
    },
    'www.familyfeed.net': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.jeg_main_content',
            'article_pos': 0
        }]
    },
    'www.streetpress.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.article',
            'article_pos': 0
        }]
    },
    'www.lelibrepenseur.org': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.entry-content',
            'article_pos': 0
        }]
    },
    'www.alternatives-economiques.fr': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.o-page__content',
            'article_pos': 0
        }]
    },
    'www.dagospia.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'section[id=articoli]',
            'article_pos': 0
        }]
    },
    'www.gazetevatan.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.gallery-main-container',
            'article_pos': 0
        }]
    },
    'www.crashdebug.fr': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.main-content',
            'article_pos': 0
        }]
    },
    'www.panorama.com.al': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div[id=content1]',
            'article_pos': 0
        }]
    },
    'www.liputan6.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'article, div.article',
            'article_pos': 0
        }]
    },
    'eldeforma.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.cntn-wrp',
            'article_pos': 0
        }]
    },
    'www.corriere.it': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'section.body-article',
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
    'www.nieuwsblad.be': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div[data-fragment-name=articleDetail]',
            'article_pos': 0
        }]
    },
    'tn.com.ar': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div[id=fusion-app]',
            'article_pos': 0
        }]
    },
    'www.protothema.gr': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'section.articleContainer',
            'article_pos': 0
        }]
    },
    'www.elperiodico.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.ep-detail-body',
            'article_pos': 0
        }]
    },
    'www.hurriyet.com.tr': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.news-content, div.rhd-all-article-detail',
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
    'm.focus.de': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'article[id=article]',
            'article_pos': 0
        }]
    },
    'www.stern.de': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'article',
            'article_pos': 1
        }]
    },
    'www.gala.de': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.page__content',
            'article_pos': 0
        }]
    },
    'www.rbb24.de': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div[id=main]',
            'article_pos': 0
        }]
    },
    'journalistenwatch.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div[data-elementor-type=single-post]',
            'article_pos': 0
        }]
    },
    'www.ruhrnachrichten.de': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.article__content paywalled',
            'article_pos': 0
        }]
    },
    'www.suedkurier.de': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'article.cXenseParse',
            'article_pos': 0
        }]
    },
    'www.ruhrnachrichten.de': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.article__content',
            'article_pos': 0
        }]
    },
    'www.cicero.de': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.article',
            'article_pos': 0
        }]
    },
    'najzena.alo.rs': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.content',
            'article_pos': 0
        }]
    },
    'net.hr': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'article',
            'article_pos': 1
        }]
    },
    'slobodnadalmacija.hr': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.itemFullText',
            'article_pos': 0
        }]
    },
    'blitz.bg': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.article-content',
            'article_pos': 0
        }]
    },
    'www.boyens-medien.de': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'article.news-detail',
            'article_pos': 0
        }]
    },
    '24.hu': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.site-content',
            'article_pos': 0
        }]
    },
    'www.dewezet.de': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'article[id=article]',
            'article_pos': 0
        }]
    },
    'www.kanald.ro': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'article',
            'article_pos': 1
        }]
    },
    't.m.china.com.cn': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div[id=content]',
            'article_pos': 0
        }]
    },
    'namu.wiki': {
        'paths': [{
            'path_regex': '/w/%EB%82%98%EB%AC%B4%EC%9C%84%ED%82%A4:%EB%8C%80%EB%AC%B8',
            'article_selector': 'none',
            'article_pos': 0
        }, {
            'path_regex': '/w/%EB%B6%84%EB%A5%98:.*',
            'article_selectors': 'none',
            'article_pos': 0
        }, {
            'path_regex': '/.*',
            'article_selectors': ['div[class^="_1+UTAYHc"]', 'article'],
            'article_pos': 0
        }]
    },
    'www.nature.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selectors': ['article', 'div.c-article-body'],
            'article_pos': 0
        }]
    },
    'www.businesskorea.co.kr': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'article[id=article-view-content-div]',
        }]
    },
    'www.lexpress.fr': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.article',
            'article_pos': 1
        }]
    },
    'www.lejdd.fr': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'article',
            'article_pos': 3
        }]
    },
    'amomama.fr': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'main[data-testid=post-content]',
            'article_pos': 0
        }]
    },
    'atlantico.fr': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'section',
            'article_pos': 0
        }]
    },
    'www.causeur.fr': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.td-post-content',
            'article_pos': 0
        }]
    },
    'lifestyle.sapo.pt': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.content',
            'article_pos': 0
        }]
    },
    'viagens.sapo.pt': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.content',
            'article_pos': 0
        }]
    },
    'lanouvelletribune.info': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.entry-content',
            'article_pos': 0
        }]
    },
    'www.liberoquotidiano.it': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'section',
            'article_pos': 0
        }]
    },
    'info-tours.fr': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.elementor-widget-theme-post-content',
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
    'www.clicanoo.re': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.content-single',
            'article_pos': 0
        }]
    },
    'www.cmjornal.pt': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.texto_center',
            'article_pos': 0
        }]
    },
    'kapitalis.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.entry-content',
            'article_pos': 0
        }]
    },
    'www.greenpeace.fr': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'article',
            'article_pos': 1
        }]
    },
    'www.europe-israel.org': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.post_content',
            'article_pos': 0
        }]
    },
    'www.pointdevue.fr': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.newspackChapo',
            'article_pos': 0
        }]
    },
    'www.bloomberg.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.styles_content__aEat_',
            'article_pos': 0
        }]
    },
    'www.adnkronos.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.ar-cont',
            'article_pos': 0
        }]
    },
    'www.breizh-info.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div[id=postfullcontent]',
            'article_pos': 0
        }]
    },
    'www.amarujala.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector':  'div.article-desc, div[id=pageContainer]',
            'article_pos': 0
        }],
        'unlikelyCandidates': /related_content/
    },
    'government.economictimes.indiatimes.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.article-section__body__news',
            'article_pos': 0
        }]
    },
    'm.timesofindia.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'article, div.MBVQb, div.para-txt, div.article-txt',
            'article_pos': 0
        }]
    },
    'news24online.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.story-content',
            'article_pos': 0
        }]
    },
    'zeenews.india.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div[id=fullArticle]',
            'article_pos': 0
        }]
    },
    'employmentnews.gov.in': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'span[id=ContentPlaceHolder1_lblMessahecont]',
            'article_pos': 0
        }]
    },
    'odishatv.in': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.mobile-story-content, div.content',
            'article_pos': 0
        }]
    },
    'www.crimetak.in': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.relatedArticles',
            'article_pos': 0
        }]
    },
    'www.filmcompanion.in': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div[id="container"]',
            'article_pos': 0
        }]
    },
    'www.harpersbazaar.in': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.story_caption',
            'article_pos': 0
        }]
    },
    'www.dailyo.in': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.storyWrpInner',
            'article_pos': 0
        }]
    },
    'newsonair.gov.in': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'section.new-news-area, div.listing-bx',
            'article_pos': 0
        }],
        unlikelyCandidates: /-ad-|img_desc|caption|ai2html|banner|breadcrumbs|combx|comment|community|cover-wrap|disqus|extra|footer|gdpr|header|legends|menu|related|remark|replies|rss|shoutbox|skyscraper|social|sponsor|supplemental|ad-break|agegate|pagination|pager|popup|yom-remote|time|date|wrap_next_news|title|video-playlist|infzm-content__originaltips|infzm-content__charge_editor|infzm-content__author|infzm-content__from|infzm-content__charge_editor|infzm-content__after-header/i,
    },
    'mag.sapo.pt': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.article-body-ctn',
            'article_pos': 0
        }]
    },
    'desporto.sapo.pt': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div[itemprop=articleBody]',
            'article_pos': 0
        }]
    },
    'www.rudaw.net': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.articleContent',
            'article_pos': 0
        }]
    },
    'www.qualcomm.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'none',
            'article_pos': 0
        }]
    },
    'ads.google.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.no-need-show',
            'article_pos': 0
        }]
    },
    'www.hdblog.it': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.content, div.news-blocks',
            'article_pos': 0
        }]
    },
    'www.hdmotori.it': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.content, div.news-blocks',
            'article_pos': 0
        }]
    },
    'm.punjabkesari.in':{
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.press-single-the-content',
            'article_pos': 0
        }]
    },
    'www.abplive.com':{
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.article-text, div.article-body, div[id=full-content]',
            'article_pos': 0
        }]
    },
    'www.samacharjagat.com':{
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.post_body',
            'article_pos': 0
        }]
    },
    'hindi.news18.com':{
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.content_sec',
            'article_pos': 0
        }]
    },
    'navbharattimes.indiatimes.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.full_article',
            'article_pos': 0
        }],
        'nodeFilterException': ['h1', 'h2', 'h3']
    },
    'www.tv9hindi.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.ArticleBodyCont ',
            'article_pos': 0
        }]
    },
    'www.aitimes.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'article-view-content-div',
            'article_pos': 0
        }]
    },
    'www.businessinsider.in': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.article-contents',
            'article_pos': 0
        }]
    },
    'www.vishvasnews.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.detail-text, div.view-full',
            'article_pos': 0
        }]
    },
    'www.business-standard.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.storycontent, div.content-mainstory-data',
            'article_pos': 0
        }],
        'unlikelyCandidates': /whtsppchannle/
    },
    'salahuddinayyubi.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.post-content',
            'article_pos': 0
        }]
    },
    'www.patrika.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.story-wrapper, div[class^="xl"]',
            'article_pos': 0
        }],
        'unlikelyCandidates': /news-card_source/
    },
    'epaper.patrika.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.story_body',
            'article_pos': 0
        }]
    },
    'knnindia.co.in': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.article-content',
            'article_pos': 0
        }]
    },
    'mpbreakingnews.in': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.entry-content',
            'article_pos': 0
        }],
        'unlikelyCandidates': /left/
    },
    'english.metrovaartha.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.text-story-m_gap-16__5BPKQ',
            'article_pos': 0
        }],
        'unlikelyCandidates': /text-story-m_story-tags__Roh7y/
    },
    'www.jagmarg.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.DNewsBody',
            'article_pos': 0
        }]
    },
    'www.etvbharat.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div[id=newsroom-bodyText]',
            'article_pos': 0
        }]
    },
    'english.newsnationtv.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.art-txt',
            'article_pos': 0
        }]
    },
    'www.deshbandhu.co.in': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.news_content, div.nstory_intro',
            'article_pos': 0
        }]
    },
    'www.livelaw.in': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.story, div.news_details_page_row2',
            'article_pos': 0
        }]
    },
    'm.mptak.in': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div[id=story-detail], div.story-detail',
            'article_pos': 0
        }]
    },
    'www.thesangaiexpress.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.body_container',
            'article_pos': 0
        }]
    },
    'www.newkerala.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.post-content',
            'article_pos': 0
        }]
    },
    'organiser.org': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.content-inner',
            'article_pos': 0
        }],
        'unlikelyCandidates': /jeg-post-tags/
    },
    'm.legaldaily.com.cn': {
        'paths': [{
            'path_regex': '/video.*',
            'article_selector': 'none',
            'article_pos': 0
        }]
    },
    'www.aljazeera.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.wysiwyg',
            'article_pos': 0
        }]
    },
    'www.ibc24.in': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.article-desc',
            'article_pos': 0
        }]
    },
    'indiavoice.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector':  'div.story-element, div.story-element-text',
            'article_pos': 0
        }]
    },
    'ddnews.gov.in': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.news_content',
            'article_pos': 0
        }]
    },
    'sikkimexpress.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.details-news',
            'article_pos': 0
        }]
    },
    'www.naidunia.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.articleSide',
            'article_pos': 0
        }]
    },
    'www.newsnationtv.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.art-txt.position-relative',
            'article_pos': 0
        }]
    },
    'www.bundelkhandnews.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.post-text',
            'article_pos': 1
        }]
    },
    'www.haribhoomi.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.story_content',
            'article_pos': 0
        }]
    },
    'sports.ndtv.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.expand-txt, div.story__content',
            'article_pos': 0
        }]
    },
    'www.livemint.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.mainArea',
            'article_pos': 0
        }]
    },
    'www.jansatta.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.pcl-container',
            'article_pos': 0
        }]
    },
    'e-pao.net': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div[id=gen_panel]',
            'article_pos': 0
        }],
        'unlikelyCandidates': /breadcrumbs/
    },
    'dainiknavajyoti.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.w-noku',
            'article_pos': 0
        }]
    },
    'www.theweek.in': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.articlecontentbody',
            'article_pos': 0
        }]
    },
    'tech.hindustantimes.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.liveBlogWrapper',
            'article_pos': 0
        }],
        'unlikelyCandidates': /ProductAffilateWrapper/
    },
    'www.gnttv.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.common-area, div.text-formatted',
            'article_pos': 0
        }]
    },
    'www.cnbctv18.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.articleWrap',
            'article_pos': 0
        }]
    },
    'assamtribune.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.story_content',
            'article_pos': 0
        }]
    },
    'www.sudarshannews.in': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.detailpara',
            'article_pos': 0
        }]
    },
    'janjwar.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.story-wrap',
            'article_pos': 0
        }]
    },
    'www.123telugu.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.amp-wp-content',
            'article_pos': 0
        }]
    },
    'm.economictimes.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.undefined',
            'article_pos': 1
        }]
    },
    'www.cntraveller.in': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.article, div.ArticlePageChunks-fLyCVG',
            'article_pos': 0
        }]
    },
    'www.financialexpress.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.pcl-container',
            'article_pos': 0
        }]
    },
    'www.koimoi.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.amp-wp-content, div.td-main-content',
            'article_pos': 0
        }]
    },
    'news.kbs.co.kr': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.view-body',
            'article_pos': 0
        }]
    },
    'm.kenh14.vn': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.post-content',
            'article_pos': 0
        }]
    },
    'vietnamnet.vn': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div[id=maincontent]',
            'article_pos': 0
        }]
    },
    'tienphong.vn': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'article.article',
            'article_pos': 0
        }]
    },
    'm.soha.vn': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.post-content',
            'article_pos': 0
        }]
    },
    'baomoi.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div[id=content-ui-scroll]',
            'article_pos': 0
        }]
    },
    'bongdaplus.vn': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div[id=postContent]',
            'article_pos': 0
        }]
    },
    'vtc.vn': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div[itemprop=articleBody]',
            'article_pos': 0
        }]
    },
    'gaadiwaadi.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.cntn-wrp',
            'article_pos': 0
        }]
    },
    'www.thedailytimes.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.asset-content',
            'article_pos': 0
        }]
    },
    'www.wionews.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.article-main-data',
            'article_pos': 0
        }],
        'unlikelyCandidates': /my-4/
    },
    'm.jansatta.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div[id=story-detail], div.story-detail',
            'article_pos': 0
        }],
        'unlikelyCandidates': /amp_Ad/
    },
    'www.thequint.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.story-body',
            'article_pos': 0
        }],
        'unlikelyCandidates': /story-tag/
    },
    'bwhotelier.businessworld.in': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.main-article, div[id=main_recent_article_div]',
            'article_pos': 0
        }]
    },
    'www.bundelkhand24x7.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.post-body',
            'article_pos': 0
        }]
    },
    'www.editorji.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.story-page_desc__0C7_p',
            'article_pos': 0
        }]
    },
    'www.newsclick.in': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.bodyContent',
            'article_pos': 0
        }]
    },
    'www.frommers.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div[id=bodycontent]',
            'article_pos': 0
        }]
    },
    'www.nationalheraldindia.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.styles-m__story-content__1xPvO',
            'article_pos': 0
        }]
    },
    'theprobe.in': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.article-content',
            'article_pos': 0
        }]
    },
    'www.sangritoday.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.post-text',
            'article_pos': 0
        }]
    },
    'bangaloremirror.indiatimes.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.Normal',
            'article_pos': 0
        }]
    },
    'www.thenewsminute.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.text-story-m_gap-16__5BPKQ',
            'article_pos': 0
        }],
        'unlikelyCandidates': /author-card-wrapper/
    },
    'telanganatoday.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.detailBody',
            'article_pos': 0
        }],
        'unlikelyCandidates': /also-read/
    },
    'www.sinceindependence.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.arr--story-page-card-wrapper',
            'article_pos': 0
        }]
    },
    'www.businesstoday.in': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.field',
            'article_pos': 0
        }],
        'unlikelyCandidates': /description/
    },
    'm.greaterkashmir.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div[id=story-detail], div.story-detail',
            'article_pos': 0
        }],
        'unlikelyCandidates': /ad_div/
    },
    'www.yovizag.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.content-inner',
            'article_pos': 0
        }],
        'unlikelyCandidates': /jnews_inline_related_post_wrapper/
    },
    'globalkashmir.net': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.content-inner',
            'article_pos': 0
        }],
        'unlikelyCandidates': /jnews_inline_related_post_wrapper/
    },
    'hindi.business-standard.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.p_30_0',
            'article_pos': 0
        }],
        'unlikelyCandidates': /row_card_container, whtsppchannle/
    },
    'kashmirobserver.net': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.content-inner',
            'article_pos': 0
        }]
    },
    'www.gudstory.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.content-inner',
            'article_pos': 0
        }]
    },
    'thenewsglory.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.content-inner',
            'article_pos': 0
        }]
    },
    'news1india.in': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.content-inner',
            'article_pos': 0
        }],
        'unlikelyCandidates': /jnews_inline_related_post_wrapper/
    },
    'krooknews.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.sp-rt',
            'article_pos': 0
        }]
    },
    'thebridge.in': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.col-sm-7',
            'article_pos': 2
        }]
    },
    'www.upday.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.ArticleBody_articleBody__KkUQr',
            'article_pos': 0
        }],
        'unlikelyCandidates': /ArticleRecommendations_articleRecommendations__KUc4v/
    },
    'www.ptinews.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.story-coloumn',
            'article_pos': 0
        }],
        'unlikelyCandidates': /article-story-head/
    },
    'm.dailyhunt.in': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'section.sc-jKVCRD, section.hTKTpu',
            'article_pos': 0
        }],
        'unlikelyCandidates': /disclaimer/
    },
    'samsung.dailyhunt.in': {
            'paths': [{
                'path_regex': '/.*',
                'article_selector': 'div[class=txt]',
                'article_pos': 0
            }],
            'unlikelyCandidates': /disclaimer/
        },
    'm.thewire.in': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.story-detail, div[id=root]',
            'article_pos': 0
        }],
        'unlikelyCandidates': /inbtw_content_container/
    },
    'www.onmanorama.com':{
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.story-body',
            'article_pos': 0
        }]
    },
    'nownews.in':{
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.post-text',
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
    'www.voanews.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div[id=content]',
            'article_pos': 0
        }]
    },
    'www.rferl.org': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div[id=newsItems]',
            'article_pos': 0
        }]
    },
    'www.afar.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.Page-content',
            'article_pos': 0
        }]
    },
    'telecoms.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.article-view',
            'article_pos': 0
        }]
    },
    'cotich.net': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div[id=content]',
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
    'vator.tv': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'section.news-content',
            'article_pos': 0
        }]
    },
    'en.tengrinews.kz': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'article',
            'article_pos': 1
        }]
    },
    'www.joplinglobe.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div[itemprop=articleBody]',
            'article_pos': 0
        }]
    },
    'gazette.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div[itemprop=articleBody]',
            'article_pos': 0
        }]
    },
    'kdvr.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.article-content',
            'article_pos': 0
        }]
    },
    'fox40.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.article-content',
            'article_pos': 0
        }]
    },
    'www.pbs.org': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'article.post__article',
            'article_pos': 0
        }]
    },
    'www.news-medical.net': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.content',
            'article_pos': 0
        }]
    },
    'art.china.cn': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.content',
            'article_pos': 0
        }]
    },
    'www.legaldaily.com.cn': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.content-two',
            'article_pos': 0
        }]
    },
    'www.jinghva.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.article',
            'article_pos': 0
        }]
    },
    'www.prabhatkhabar.com':{
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.a1TnR, div.tbl-forkorts-article',
            'article_pos': 0
        }],
        'unlikelyCandidates': /_3hFr7, gR_IS/
    },
    'www.khaleejtimes.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.article-nwsplit-arp-wrap-nf',
            'article_pos': 0
        }]
    },
    'www.eremnews.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.static-container',
            'article_pos': 0
        }]
    },
    'www.hiamag.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.entry-article__content',
            'article_pos': 0
        }]
    },
    'www.bloomberg.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.main-container',
            'article_pos': 0
        }]
    },
    'www.ibtimes.co.in': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div[id=article_content]',
            'article_pos': 0
        }]
    },
    'www.yjc.ir': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div[id=article_content]',
            'article_pos': 0
        }]
    },
    'm.vanitha.in': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.article',
            'article_pos': 0
        }]
    },
    'www.arageek.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.chakra-collapse',
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
    'www.alarab.co.il': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div[id=content]',
            'article_pos': 0
        }]
    },
    'kyiv.tsn.ua': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.c-article__body',
            'article_pos': 0
        }]
    },
    'tsn.ua': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.c-article__body',
            'article_pos': 0
        }]
    },
    'www.alaraby.co.uk': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div[id=article-0]',
            'article_pos': 0
        }]
    },
    'www.light-dark.net': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.content-inner',
            'article_pos': 0
        }]
    },
    'abcnews.go.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.Article',
            'article_pos': 0
        }]
    },
    'odnaminyta.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.content-wrapper',
            'article_pos': 0
        }]
    },
    'www.allarab.info': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div[id=content]',
            'article_pos': 0
        }]
    },
    'etajakhabar.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'article',
            'article_pos': 1
        }]
    },
    'www.loksatta.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.entry-content',
            'article_pos': 0
        }]
    },
    'www.bignewslive.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.amp-wp-article-content',
            'article_pos': 0
        }]
    },
    'www.peacefmonline.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.content-inner ',
            'article_pos': 0
        }]
    },
    'www.nation.com.pk': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.content-inner ',
            'article_pos': 0
        }]
    },
    'm.cafef.vn': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.detail-content',
            'article_pos': 0
        }]
    },
    'm.cafebiz.vn': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.detail-content',
            'article_pos': 0
        }]
    },
    'bongdaplus.vn': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div[id=postContent]',
            'article_pos': 0
        }]
    },
    'vietnamnet.vn': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div[id=maincontent]',
            'article_pos': 0
        }]
    },
    'plo.vn': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.article',
            'article_pos': 0
        }]
    },
    'congthuong.vn': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.article-detail-content',
            'article_pos': 0
        }]
    },
    'www.qdnd.vn': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.post-content',
            'article_pos': 0
        }]
    },
    'baochinhphu.vn': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.detail-content',
            'article_pos': 0
        }]
    },
    'eva.vn': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'section[id=div_news_content]',
            'article_pos': 0
        }]
    },
    'm.tiin.vn': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.detail-content-main',
            'article_pos': 0
        }]
    },
    'm.genk.vn': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.detail-content',
            'article_pos': 0
        }]
    },
    'www.businesstoday.in': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.content-area',
            'article_pos': 0
        }]
    },
    'vnreview.vn': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div[id=content_vnr]',
            'article_pos': 0
        }]
    },
    'quantrimang.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.content-detail',
            'article_pos': 0
        }]
    },
    'www.etnownews.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.visible-content, div[id=readtrinity0]',
            'article_pos': 0
        }]
    },
    'www.zoomtventertainment.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.visible-content',
            'article_pos': 0
        }],
        'unlikelyCandidates': /_3navW/
    },
    'www.exchange4media.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.resizable',
            'article_pos': 0
        }],
        'unlikelyCandidates': /font15/
    },
    'www.republicworld.com' : {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.description',
            'article_pos': 0
        }]
    },
    'www.pinkvilla.com': {
        'paths': [{
            'path_regex': '/.*',
            'ignore_element_class': 'also_read_link',
            'article_pos_ignore': 0,
            'article_selector': 'div.article-content, div.content',
            'article_pos': 1
        }],
        'unlikelyCandidates': /mobileads/
    },
    'www.naturaldiamonds.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'main[id=main]',
            'article_pos': 0
        }],
    },
    'fermentools.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.elementor-widget-wrap',
            'article_pos': 1
        }]
    },
    'udaipurtimes.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.story-mainnews',
            'article_pos': 0
        }]
    },
    'kashmirtimes.com' : {
            'paths': [{
                'path_regex': '/.*',
                'article_selector': 'div.entry-content',
                'article_pos': 0
            }]
    },
    'chetnamanch.com': {
            'paths': [{
                'path_regex': '/.*',
                'article_selector': 'div.content',
                'article_pos': 0
            }]
        },
    'tricitytoday.com':{
            'paths': [{
                'path_regex': '/.*',
                'article_selector': 'section.factTxt',
                'article_pos': 0
            }]
    },
    'www.rt.com':{
            'paths': [{
                'path_regex': '/.*',
                'article_selector': 'div.article__text',
                'article_pos': 0
            }],
            'unlikelyCandidates': /read-more/
    },
    'www.zeebiz.com':{
            'paths': [{
                'path_regex': '/.*',
                'ignore_element_class': 'slick-track',
                'article_pos_ignore': 0,
                'article_selector': 'div.field-items',
                'article_pos': 0
            }]
    },
    'm.punjabkesari.com':{
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.story-detail, div[id=story-detail]',
            'article_pos': 0
        }]
    },
    'www.eenadu.net': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.tel-newscontant',
            'article_pos': 0
        }]
    },
    'www.millenniumpost.in':{
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.story_content',
            'article_pos': 1
        }]
    },
    'www.outlookindia.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.__article_detail, div[id=articleBodyWrapper], div.news-content',
            'article_pos': 0
        }]
    },
    'tfipost.com': {
            'paths': [{
                'path_regex': '/.*',
                'article_selector': 'div.content-inner',
                'article_pos': 0
            }]
    },
    'statetimes.in': {
            'paths': [{
                'path_regex': '/.*',
                'article_selector': 'div.post-content',
                'article_pos': 0
            }]
    },
    'www.newsncr.com': {
            'paths': [{
                'path_regex': '/.*',
                'article_selector': 'div.post-content',
                'article_pos': 0
            }]
    },
    'www.newslaundry.com': {
            'paths': [{
                'path_regex': '/.*',
                'article_selector': 'div.story-element',
                'article_pos': 0
            }]
    },
    'gurugramnewsnetwork.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.post-page-content',
            'article_pos': 0
        }]
    },
    'hindi.moneycontrol.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.lft-side',
            'article_pos': 0
        }]
    },
    'www.hindi.nyoooz.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.post_details_block',
            'article_pos': 0
        }]
    },
    'hindi.news24online.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.story-content',
            'article_pos': 0
        }]
    },
    'www.news9live.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.ArticleBodyCont',
            'article_pos': 0
        }]
    },
    'pragativadi.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.entry-content',
            'article_pos': 0
        }]
    },
    'www.asianage.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.storyBody',
            'article_pos': 0
        }]
    },
    'openthemagazine.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.post-meta',
            'article_pos': 0
        }]
    },
    'komonews.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div[id=js-Story-Content-0]',
            'article_pos': 0
        }]
    },
    'www.timesnowhindi.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div._1ZtBI',
            'article_pos': 0
        }]
    },
    'samsung.dailyhunt.in': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div[id=moreContentData]',
            'article_pos': 0
        }]
    },
    'meghalayatimes.in': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.ct-code-block',
            'article_pos': 0
        }]
    },
    'www.uttamhindu.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div[id=pryc-wp-acctp-original-content]',
            'article_pos': 0
        }]
    },
    'rudrapurpost.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.content-inner',
            'article_pos': 0
        }]
    },
    'www.inextlive.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.articleBody',
            'article_pos': 0
        }]
    },
    'www.mobigyaan.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.content-inner',
            'article_pos': 0
        }]
    },
    'www.businessworld.in': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.article_text_desc',
            'article_pos': 0
        }],
        'unlikelyCandidates': /tag-cloud/
    },
    'www.m.khaskhabar.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.fruit',
            'article_pos': 0
        }]
    },
    'jjnnews.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.news-content',
            'article_pos': 1
        }]
    },
    'www.kgmaeil.net': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.article-body',
            'article_pos': 0
        }]
    },
    'www.lonelyplanet.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'main.relative, div.article-body',
            'article_pos': 0
        }]
    },
    'www.grihshobha.in': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.article-body',
            'article_pos': 0
        }]
    },
    'blog.hubspot.com' : {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'span[id=hs_cos_wrapper_post_body]',
            'article_pos': 0
        }]
    },
    'thewirehindi.com' : {
        'paths': [{
        'path_regex': '/.*',
        'article_selector': 'div.dropcap-content',
        'article_pos': 0
            }]
    },
    'rockcontent.com' :{
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.elementor-widget-theme-post-content',
            'article_pos': 0
        }]
    },
    'www.ahmedabadmirror.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.ndetails-info',
            'article_pos': 0
        }]
    },
    'www.cbc.ca' :{
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.story',
            'article_pos': 0
        }]
    },
    'www.alltechbuzz.net': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'section.tcb-post-content',
            'article_pos': 0
        }]
    },
    'www.bollywoodhungama.com' : {
        'paths': [{
            'path_regex': '/amp',
            'article_selector': 'div.maincontent',
            'article_pos': 0
        }]
    },
    'raftaar.in' : {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.text-story-m_gap-16__5BPKQ',
            'article_pos': 0
        }]
    },
    'bundelkhandnews.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.post-text',
            'article_pos': 1
        }]
    },
    'blog.organicbazar.net' : {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.entry-content',
            'article_pos': 0
        }]
    },
    'news.un.org': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.text-formatted',
            'article_pos': 0
        }]
    },
    'www.euronews.com' : {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.c-article-content',
            'article_pos': 1
        }]
    },
    'news.sky.com' : {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.sdc-article-body',
            'article_pos': 0
        }]
    },
    '9to5mac.com' : {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.post-content',
            'article_pos': 0
        }]
    },
    'www.ptcnews.tv' : {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.des-txt',
            'article_pos': 1
        }]
    },
    'www.positive.news' : {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.article__content',
            'article_pos': 0
        }]
    },
    'businessconnectindia.in': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.content-inner',
            'article_pos': 0
        }]
    },
    'www.komando.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.post-body',
            'article_pos': 0
        }]
    },
    'www.techdirt.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.postbody',
            'article_pos': 0
        }]
    },
    'bollywoodwallah.in': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.cntn-wrp',
            'article_pos': 0
        }]
    },
    'www.moneycontrol.com': {
        'paths': [{
            'path_regex': '/amp',
            'article_selector': 'div.content',
            'article_pos': 1
        },{
            'path_regex': '/.*',
            'article_selector': 'div.content_wrapper',
            'article_pos': 0
        }],
        'unlikelyCandidates': /related_stories_left_block/
    },
    'www.socialnews.xyz': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.artl-cnt',
            'article_pos': 0
        }],
        'unlikelyCandidates' : /amp-web-push-container, wp-biographia-container-top/
    },
    'www.thenews.com.pk': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.story-detail',
            'article_pos': 0
        }]
    },
    'livelokvani.com' :{
        'paths': [{
                'path_regex': '/.*',
                'article_selector': 'div.content-inner',
                'article_pos': 0
        }],
        'unlikelyCandidates' : /jeg_post_tags/
    },
    'hindi.thequint.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div[id=story-body-wrapper]',
            'article_pos': 0
        }],
        'unlikelyCandidates' : /story-element-text-also-read/
    },
    'www.rd.com' :{
            'paths': [{
                'path_regex': '/.*',
                'article_selector': 'div.post-body, div.bt-content',
                'article_pos': 0
            }]
    },
    'www.usnews.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.content',
            'article_pos': 0
        }]
    },
    'ml.t-mobile.com' :{
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div[class^="_articleBody_"]',
            'article_pos': 0
        }]
    },
    'blog.perplexity.ai' :{
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div[data-framer-name=Content]',
            'article_pos': 0
        }]
    },
    'openai.com' :{
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div[id=content]',
            'article_pos': 0
        }]
    },
    'yourstory.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.quill-content',
            'article_pos': 0
        }]
    },
    'homegrown.co.in' :{
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.dWdwrc',
            'article_pos': 0
        }]
    },
    'www.thenewsminute.com' :{
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.hRGIKp',
            'article_pos': 0
        }]
    },
    'www.slurrp.com' :{
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.articleBody',
            'article_pos': 0
        }]
    },
    'www.dailysabah.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.article_body',
            'article_pos': 0
        }]
    },
    'www.thejakartapost.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.col-md-10',
            'article_pos': 0
        }]
    },
    'www.straitstimes.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.field--name-field-paragraph-text',
            'article_pos': 0
        }]
    },
    'www.thelocal.es': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.article-single__content',
            'article_pos': 0
        }]
    },
    'www.baltictimes.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.col-md-11',
            'article_pos': 0
        }]
    },
    'electropiknik.cz': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.td-post-content',
            'article_pos': 0
        }]
    },
    'www.rferl.org': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.wsw',
            'article_pos': 0
        }]
    },
    'www.defencestar.in' : {
        'paths': [{
            'path_regex': '/.*',
            'ignore_element_class': 'jp-relatedposts',
            'article_pos_ignore': 0,
            'article_selector': 'div.post-content',
            'article_pos': 0
        }]
    },
    'www.downtoearth.org.in' : {
        'paths': [{
            'path_regex': '/.*',
            'ignore_element_class': 'hindi_detail_link, mt-30, row, mt-20',
            'article_pos_ignore': 0,
            'article_selector': 'div.news-detail-content',
                'article_pos': 0
        }]
    },
    'www.thermofisher.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div[role=main]',
            'article_pos': 0
        }]
    },
    'www.gqindia.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.fcontent',
            'article_pos': 0
        }]
    },
    'www.reporters-collective.in': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div[id=en-body]',
            'article_pos': 0
        }]
    },
    'www.ptcpunjabi.co.in': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.des-txt',
            'article_pos': 0
        }]
    },
    'www.milliyet.com.tr': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'section.news-detail-content',
            'article_pos': 0
        }]
    },
    'www.mynet.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': '#contextual',
            'article_pos': 0
        }]
    },
    'www.sozcu.com.tr': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'article',
            'article_pos': 0
        }],
        'unlikelyCandidates': /taboola|related/
    },
    'www.sondakika.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'section.detail-content',
            'article_pos': 0
        }]
    },
    'www.cumhuriyet.com.tr': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div[property=articleBody]',
            'article_pos': 0
        }]
    },
    'www.ntv.com.tr': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div[property=articleBody]',
            'article_pos': 0
        }]
    },
    'www.takvim.com.tr': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div[class~="article-container"]',
            'article_pos': 0
        }]
    },
    'tr.euronews.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': '#articlesSwiper',
            'article_pos': 0
        }]
    },
    'www.aa.com.tr': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.row.detay.container',
            'article_pos': 0
        }]
    },
    'www.trthaber.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.news-content',
            'article_pos': 0
        }]
    },
    'twitter.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'none',
            'article_pos': 0
        }]
    },
    'tr.motorsport.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.ms-article_detail',
            'article_pos': 0
        }]
    },
    'www.lorealparisusa.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.rich-text',
            'article_pos': 0
        }]
    },
    'globalbizoutlook.com' :{
            'paths': [{
                'path_regex': '/.*',
                'article_selector': 'div.elementor-widget-container',
                'article_pos': 32
            }]
    },
    'indianbusinesstimes.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.newsstand-blog-single-content',
            'article_pos': 0
        }]
    },
    'www.wfla.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.article-content',
            'article_pos': 0
        }]
    },
    'www.swadeshnews.in': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.visually-hidden',
            'article_pos': 0
        }]
    },
    'www.rajexpress.co': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.text-story-m_gap-16__5BPKQ',
            'article_pos': 0
        }]
    },
    'thebeautylookbook.com':{
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.post-entry',
            'article_pos': 0
        }]
    },
    'www3.nhk.or.jp': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.content--detail-body',
            'article_pos': 0
        }]
    },
    'news.koreadaily.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.article_body',
            'article_pos': 0
        }]
    },
    'www.rtl.nl':{
        'paths': [{
            'path_regex': '/.*',
            'ignore_element_class': 'bmpui-ui-hugeplaybacktogglebutton bmpui-off bmpui-no-transition-animations',
            'article_pos_ignore': 0,
            'article_selector': 'div.css-eh0voe',
            'article_pos': 0
        }]
    },
    'www.hindusthansamachar.in': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.body_container',
            'article_pos': 0
        }]
    },
    'techcrunch.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.content',
            'article_pos': 0
        }]
    },
    'www.autocarpro.in': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.detail-content',
            'article_pos': 0
        }]
    },
    'nomadflag.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.entry-content',
            'article_pos': 0
        }]
    },
    'www.bundle.app': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.containerFluid',
            'article_pos': 0
        }]
    },
    'm.sabah.com.tr': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.detailText',
            'article_pos': 0
        }]
    },
    'www.oggusto.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.post-page-content',
            'article_pos': 0
        }]
    },
    'm.sporx.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.haber-body',
            'article_pos': 0
        }]
    },
    'www.ntv.com.tr': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.category-detail-inner',
            'article_pos': 0
        }]
    },
    'shiftdelete.net': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.post-content',
            'article_pos': 0
        }],
        'unlikelyCandidates': /thb-sponsored-content-container|comments/
    },
    'www.agi.it': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'article.agi-article-view',
            'article_pos': 0
        }]
    },
    'www.iltirreno.it': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.css-l5c1s3',
            'article_pos': 0
        }]
    },
    'www.lanuovasardegna.it': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.css-l5c1s3',
            'article_pos': 0
        }]
    },
    'www.varesenews.it': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div[id=entry]',
            'article_pos': 0
        }]
    },
    'www.lifegate.it': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'main.main-content',
            'article_pos': 0
        }]
    },
    'corrierefiorentino.corriere.it': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'section.body-article',
            'article_pos': 0
        }]
    },
    'www.gazzetta.it': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'section.body-article',
            'article_pos': 0
        }]
    },
    'nhandan.vn': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div[itemprop=articleBody]',
            'article_pos': 0
        }]
    },
    'www.espn.in': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.article-body',
            'article_pos': 0
        }],
    },
    'so.city': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.article-content',
            'article_pos': 0
        }]
    },
    'm.sakshipost.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.body',
            'article_pos': 0
        }],
    },
    'm.joemonster.org': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div[id=article-box]',
            'article_pos': 0
        }],
    },
    'www.onet.pl': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div[class^="Body_mobileContent"], article',
            'article_pos': 0
        }],
    },
    'www.rp.pl': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.main--content--body',
            'article_pos': 0
        }],
    },
    'www.microsoft.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.single-post__content',
            'article_pos': 0
        }],
    },
    'brunch.co.kr': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.wrap_view_article_body',
            'article_pos': 0
        }],
    },
    'isplus.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div[id=container]',
            'article_pos': 0
        }],
    },
    'news.tvchosun.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.article',
            'article_pos': 0
        }],
    },
    'www.aquaaston.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'main[id=main]',
            'article_pos': 0
        }],
    },
    'shindonga.donga.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.article_view',
            'article_pos': 0
        }],
    },
    'weekly.donga.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.article_view',
            'article_pos': 0
        }],
    },
    'www.donga.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'section.news_view',
            'article_pos': 0
        }],
    },
    'www.anandtech.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'section.content',
            'article_pos': 0
        }],
    },
    'www.digitaltoday.co.kr': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'article[id=article-view-content-div]',
            'article_pos': 0
        }],
    },
    'www.globetip.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'main[class^="MainContent_mainContent"]',
            'article_pos': 0
        }],
    },
    'www.ccn.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.ccn-single',
            'article_pos': 0
        }],
    },
    'www.bachhoaxanh.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.boxcontent, div.content',
            'article_pos': 0
        }],
    },
    'www.anandabazar.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.articlebox, div.container',
            'article_pos': 0
        }],
    },
    'news4social.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.td-post-content',
            'article_pos': 0
        }],
        'nodeFilterException': ['h1', 'h2', 'h3']
    },
    'www.cnet.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.single-article__content',
            'article_pos': 0
        }],
    },
    'themortgagereports.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'section.post-body',
            'article_pos': 0
        }],
    },
    'www.cbsnews.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'section.content__body',
            'article_pos': 0
        }],
    },
    'nextbigwhat.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.content-inner',
            'article_pos': 0
        }]
    },
    'omni.se': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div[class^="Text_textContainer"]',
            'article_pos': 0
        }]
    },
    'www.expressen.se': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.article__card',
            'article_pos': 0
        }]
    },
    'www.larazon.es': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'main div.container',
            'article_pos': 0
        }]
    },
    'www.elconfidencial.com': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.innerArticle__content',
            'article_pos': 0
        }]
    },
    'knewsindia.in': {
        'paths': [{
            'path_regex': '/.*',
            'article_selector': 'div.entry-content',
            'article_pos': 0
        }]
    }
};

let si_text_highlighter = null;

if (!String.format) {
    String.prototype.format = function () {
        var formatted = this;
        for (var arg in arguments) {
            formatted = formatted.replace("{" + arg + "}", arguments[arg]);
        }
        return formatted;
    };
}

let SITextSummarizeParser = function(check_body) {
    this.check_body = check_body;

    this.getTopDomain = function (hostname) {
        return hostname.split('.').slice(1).join('.');
    }

    this.getArticle = function () {
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
                        ignore_element_class = path['ignore_element_class'] ? path['ignore_element_class']:'';
                        article_pos_ignore = path['article_pos_ignore'] ? path['article_pos_ignore']:'';
                        article_pos = path['article_pos'];
                        found = true;
                        break;
                    }
                }
            }
        }

        if (!found) {
            let top_domain = this.getTopDomain(location.hostname);
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
                            ignore_element_class = path['ignore_element_class'] ? path['ignore_element_class']:'';
                            article_pos_ignore = path['article_pos_ignore'] ? path['article_pos_ignore']:'';
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
                if (ignore_element_class && article_pos_ignore && article_node.className.includes(ignore_element_class)){
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

        return article_node;
    }

    this.parse = function (isHighlight) {
        window.isFromBody = false;
        let article_node = this.check_body ? document.body : this.getArticle();

        if (!article_node) {
            console.log('no article');
            return {};
        }

        if (this.check_body) {
            window.isFromBody = true;
        }

        let parsedDomTree = {};
        let reachedEndOfTree = false;
        let groupIndex = 0;
        let blockDeps = [];
        let elementBoundary = false;
        let preformatted = { flag: false, index: null };

        let walker = document.createTreeWalker(article_node, NodeFilter.SHOW_ALL, { acceptNode: nodeFilter }, false);
        let node = walker.root;
        while (!reachedEndOfTree) {
            node = walker.nextNode();

            if (!node) {
                reachedEndOfTree = true;
            }

            let textGroup = { group: [], preformatted: false };
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

                    let nodeText = formatTextNodeValue(node, preformatted.flag, elementBoundary);

                    if (nodeText.length === 0) {
                        node = walker.nextNode();
                        continue;
                    }

                    let wrapperElement = node;
                    if (isHighlight) {
                        wrapperElement = document.createElement('span');
                        wrapperElement.style.cssText = 'all: unset;';
                        node.parentNode.insertBefore(wrapperElement, node);
                        wrapperElement.appendChild(node);
                    }

                    let textNodeInformation = {
                        groupIndex: groupIndex,
                        text: nodeText,
                        node: wrapperElement
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

        if (!this.isArticle(parsedDomTree)) {
            return {};
        }

        return parsedDomTree;
    };

    this.isArticle = function(parsedDomTree) {
        if (!window.isFromBody &&
                location.pathname == '/' && !location.hash) {
            return false;
        }

        let total_length = 0;
        let is_baidu = document.location.href.includes("baidu")
        let max_length = is_baidu ? ARTICLE_MAX_LENGTH_CJK : ARTICLE_MAX_LENGTH;

        for (let key in parsedDomTree) {
            let mergedText = "";
            for (let j = 0; j < parsedDomTree[key]['group'].length; j++) {
                mergedText += parsedDomTree[key]['group'][j]['text'];
            }
            let textContentLength = mergedText.trim().length;
            total_length += textContentLength;
            if (total_length > max_length) {
                return true;
            }
        }
        console.log('[summarize_controller.js] not enough length : ' + total_length);
        console.log("[summarize_controller.js] isBaidu : " + is_baidu);
        console.log("[summarize_controller.js] max_length : " + max_length);
        return false;
    }

    function nodeFilter(node) {
        if (isElementNode(node)) {
            let exception_list = [];
            if (SI_TEXT_EXTRACT_RULES[location.hostname] &&
            SI_TEXT_EXTRACT_RULES[location.hostname]['nodeFilterException']) {
                exception_list = SI_TEXT_EXTRACT_RULES[location.hostname]['nodeFilterException'];
            }
            let allPageExceptions = ['figcaption', 'figure', 'header', 'h1', 'h2', 'h3'];
            switch (node.tagName.toLowerCase()) {
                case 'script':
                case 'noscript':
                case 'style':
                case 'textarea':
                case 'math':
                case 'figcaption':
                case 'figure':
                case 'header':
                case 'button':
                case 'time':
                case 'h1':
                case 'h2':
                case 'h3':
                    if (!exception_list.includes(node.tagName.toLowerCase())
                        && !(window.isFromBody
                            && allPageExceptions.includes(node.tagName.toLowerCase()))) {
                        return NodeFilter.FILTER_REJECT;
                    }
                default:
                    if (window.isFromBody) {
                        return isHiddenElement(node) ? NodeFilter.FILTER_REJECT : NodeFilter.FILTER_ACCEPT;
                    }
                    return isSkippedClassOrId(node) || isHiddenElement(node) ||
                        isAbsoluteElement(node) || notEnoughBoundary(node) ?
                        NodeFilter.FILTER_REJECT : NodeFilter.FILTER_ACCEPT;
            }
        }

        if (isTextNode(node)) {
            return NodeFilter.FILTER_ACCEPT;
        }

        return NodeFilter.FILTER_REJECT;
    }

    function formatTextNodeValue(node, preformatted, elementBoundary) {
        if (isElementNode(node)) {
            return;
        }

        let nodeText = node.nodeValue;
        if (preformatted) {
            return nodeText;
        }

        let text = nodeText.replace(/[\t\n\r ]+/g, ' ');
        if (elementBoundary) {
            text = text.replace(/^[\t\n\r ]+/g, '');
        }

        return text;
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

    function isHiddenElement(node) {
        if (!isElementNode(node)) {
            return undefined;
        }

        let hostname = location.hostname;
        if (!window.isFromBody && SI_TEXT_EXTRACT_RULES[hostname] && SI_TEXT_EXTRACT_RULES[hostname]['ignore_hidden'] && SI_TEXT_EXTRACT_RULES[hostname]['ignore_hidden'] == true) {
            return false;
        }

        let computedStyle = window.getComputedStyle(node);
        if (computedStyle.getPropertyValue('display').toLowerCase() === 'none' || computedStyle.getPropertyValue('display').toLowerCase() === 'hidden') {
            return true;
        }

        if (computedStyle.getPropertyValue('visibility').toLowerCase() === 'hidden' || computedStyle.getPropertyValue('visibility').toLowerCase() === 'collapse') {
            return true;
        }

        return false;
    }

    function notEnoughBoundary(node) {
        if (isElementNode(node)) {
            return undefined;
        }

        return node.clientWidth < 100;
    }

    function isAbsoluteElement(node) {
        if (!isElementNode(node)) {
            return undefined;
        }

        if (node.style.position.toLowerCase() == 'absolute') {
            return true;
        }

        return window.getComputedStyle(node).getPropertyValue('position').toLowerCase() == 'absolute';
    }

    function isElementNode(node) {
        return node.nodeType === Node.ELEMENT_NODE;
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

    function isSkippedClassOrId(node) {
        let hostname = location.hostname;
        let matchString = node.className + " " + node.id;
        if (SI_TEXT_EXTRACT_RULES[hostname] && SI_TEXT_EXTRACT_RULES[hostname]['unlikelyCandidatesKeys']) {
            for (let key of SI_TEXT_EXTRACT_RULES[hostname]['unlikelyCandidatesKeys']) {
                let value = node.getAttribute(key);
                if (value) {
                    matchString += " " + value;
                }
            }
        }

        let unlikelyCandidates = SI_TEXT_EXTRACT_REGEXPS.unlikelyCandidates;
        let okMaybeItsACandidate = SI_TEXT_EXTRACT_REGEXPS.okMaybeItsACandidate;
        let isCustomCandidate = false;
        if (SI_TEXT_EXTRACT_RULES[hostname] && SI_TEXT_EXTRACT_RULES[hostname]['unlikelyCandidates']) {
            unlikelyCandidates = SI_TEXT_EXTRACT_RULES[hostname]['unlikelyCandidates']
            isCustomCandidate = true;
        }
        if (SI_TEXT_EXTRACT_RULES[hostname] && SI_TEXT_EXTRACT_RULES[hostname]['okMaybeItsACandidate']) {
            okMaybeItsACandidate = SI_TEXT_EXTRACT_RULES[hostname]['okMaybeItsACandidate'];
        }
        if (unlikelyCandidates.test(matchString) &&
                (isCustomCandidate || !okMaybeItsACandidate.test(matchString))) {
            return true;
        }
        return false;
    }
}

let SITextHighlighter = function (domtree) {
    this.domtree = domtree;
    this.seekPos = 0;
    this.currentPos = -1;

    this.partial_contains = function (source, target, check_from_start) {
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
                }
            }

            if (check_from_start && source_pos == 0
                && (source[source_pos] != target[target_pos])) {
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
                continue;
            } else if (target_pos != 0) {
                source_start_pos = -1;
                target_pos = 0;
            }
        }

        return {
            source_start_pos: source_start_pos,
            target_pos: target_pos,
        };
    }

    this.search = function (keywords) {
        if (keywords == undefined || keywords == '') {
            return 0;
        }
        this.clear();

        // TODO: Need to change to json string
        let searches = [];
        for (keyword of keywords.split('#')) {
            searches.push(keyword.trim());
        }

        let start_pos = []
        let search_finished = []
        let search_groups = {}
        let remained_count = searches.length;
        for (let pos = 0; pos < searches.length; ++pos) {
            start_pos.push(0);
            search_finished.push(false);
            search_groups[pos] = [];
        }

        for (let key in this.domtree) {
            for (let j = 0; j < this.domtree[key]['group'].length; j++) {
                for (let pos = 0; pos < searches.length; ++pos) {
                    if (search_finished[pos]) {
                        continue;
                    }
                    while (true) {
                        let search_string = searches[pos].slice(start_pos[pos]);
                        let textContent = this.domtree[key]['group'][j]['text'];

                        let result = this.partial_contains(textContent, search_string, start_pos[pos] != 0);
                        if (result.source_start_pos >= 0) {
                            start_pos[pos] = start_pos[pos] + result.target_pos;
                            let done = false;
                            if (start_pos[pos] == searches[pos].length) {
                                search_finished[pos] = true;
                                remained_count--;
                            }
                            search_groups[pos].push({
                                node_number: key * 10000 + j,
                                node_info: this.domtree[key]['group'][j],
                                start_pos: result.source_start_pos,
                                end_pos: result.source_start_pos + result.target_pos,
                            });
                        } else {
                            // The sentence you are looking for is repeated continuously, We need to check 1 more.
                            let need_to_retry = false;
                            if (search_groups[pos].length > 0) {
                                need_to_retry = true;
                            }
                            start_pos[pos] = 0;
                            search_groups[pos] = [];

                            if (need_to_retry) {
                                continue;
                            }
                        }
                        break;
                    }
                }
                if (remained_count == 0) {
                    break;
                }
            }
            if (remained_count == 0) {
                break;
            }
        }

        this.seekPos = 0;
        // Organize highlight targets by node
        let search_by_nodes = {}
        for (let key in search_groups) {
            let search_item = search_groups[key];
            if (!search_finished[key]) {
                continue;
            }
            for (let pos = 0; pos < search_item.length; ++pos) {
                let node_number = search_item[pos].node_number
                if (!(node_number in search_by_nodes)) {
                    search_by_nodes[node_number] = {
                        node_number: node_number,
                        node_info: search_item[pos].node_info,
                        searches: []
                    }
                }
                search_by_nodes[node_number].searches.push({
                    start_pos: search_item[pos].start_pos,
                    end_pos: search_item[pos].end_pos,
                    seek_pos: pos == 0 ? this.seekPos++ : -1
                })
            }
        }

        // Highlights by Node
        for (let key in search_by_nodes) {
            let search_by_node = search_by_nodes[key];
            search_by_node.searches.sort((a, b) => a.start_pos - b.start_pos);
            highlight_item = [];
            let node = search_by_node.node_info.node;
            let textContent = search_by_node.node_info.text;
            start_pos = 0;
            for (let pos = 0; pos < search_by_node.searches.length; ++pos) {
                let item = search_by_node.searches[pos];
                let text_span = document.createElement('span');
                text_span.textContent = textContent.slice(start_pos, item.start_pos);
                highlight_item.push(text_span);

                let highlight_span = document.createElement('span');
                highlight_span.className = 'si-text-highlight';
                highlight_span.style.backgroundColor = '#8cff5f4d';
                if (item.seek_pos >= 0) {
                    highlight_span.id = 'si-text-highlight-seek-' + item.seek_pos;
                }
                highlight_span.textContent = textContent.slice(item.start_pos, item.end_pos);
                highlight_item.push(highlight_span);
                start_pos = item.end_pos
            }
            if (start_pos < textContent.length) {
                let text_span = document.createElement('span');
                text_span.textContent = textContent.slice(start_pos, textContent.length);
                highlight_item.push(text_span);
            }
            node.textContent = '';
            while (node.lastElementChild) {
                node.removeChild(node.lastElementChild);
            }
            for (let item of highlight_item) {
                node.appendChild(item);
            }
        }

        return this.seekPos
    }

    this.seek = function (forward) {
        console.log('[seek] forward:' + forward + ', currentPos: ' + this.currentPos);
        if (forward) {
            this.currentPos = this.currentPos + 1 >= this.seekPos ? 0 : this.currentPos + 1
        } else {
            this.currentPos = this.currentPos - 1 < 0 ? this.seekPos - 1 : this.currentPos - 1;
        }
        console.log('[seek] new currentPos: ' + this.currentPos);

        let node = document.querySelector('#si-text-highlight-seek-' + this.currentPos);
        node.scrollIntoView({ block: "center" });
        return this.currentPos;
    }

    this.clear = function () {
        let nodeList = document.querySelectorAll(".si-text-highlight");
        for (node of nodeList) {
            node.style.backgroundColor = "";
            node.className = "";
            node.id = "";
        }
        this.seekPos = 0;
        this.currentPos = -1;
    }
}

function SiTextGetSentences() {
    let parser = new SITextSummarizeParser(false);
    let parsed_data = parser.parse(false);
    if (Object.keys(parsed_data).length <= 0) {
        parser = new SITextSummarizeParser(true);
        parsed_data = parser.parse(false);
        if (Object.keys(parsed_data).length <= 0) {
            return {
                'is_article': false,
                'sentences': {}
            };
        }
    }

    let sentences = [];
    for (let key in parsed_data) {
        let mergedText = "";
        for (let j = 0; j < parsed_data[key]['group'].length; j++) {
            mergedText += parsed_data[key]['group'][j]['text'];
        }
        sentences.push(mergedText);
    }
    return {
        'is_article': sentences.length > 0 && !window.isFromBody,
        'sentences': Object.assign({}, sentences)
    };
}

function SiTextHighlight(keyword) {
    let searchPos = 0;
    if (si_text_highlighter != null) {
        searchPos = si_text_highlighter.search(keyword);
    }
    if (si_text_highlighter == null || searchPos === 0) {
        let parser = new SITextSummarizeParser(false, false);
        let parsed_data = parser.parse(true);
        si_text_highlighter = new SITextHighlighter(parsed_data);
        searchPos = si_text_highlighter.search(keyword);
    }
    return searchPos;
}

function SiTextUnHighlight() {
    if (si_text_highlighter == null) {
        return;
    }
    si_text_highlighter.clear();
}

function SiTextHighlightSeek(forward) {
    if (si_text_highlighter == null) {
        return;
    }
    return si_text_highlighter.seek(forward);
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

function SiTextIsRobotsIndexBlocked() {
    const head = document.head;
    if (head == null) return false;

    const metaTags = head.getElementsByTagName('meta');

    for (const meta of metaTags) {
        const nameAttribute = meta.getAttribute('name');
        const contentAttribute = meta.getAttribute('content');

        if (nameAttribute != null && contentAttribute != null) {
            if (nameAttribute.toUpperCase() === 'ROBOTS') {
                const contents = contentAttribute.toUpperCase().split(',');
                if (contents.includes('NOINDEX') || contents.includes('NONE')) {
                    return true;
                }
            }
        }
    }
    return false;
}

} catch(e) {}