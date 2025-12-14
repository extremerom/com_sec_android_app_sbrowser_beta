try {
let subtitle = null;
let langList = null;

function SiGetSubtitle(language) {
    const videos = document.getElementsByTagName("video")
    if (videos.length < 1) {
        return;
    }
    videos[0].getSubtitle((string) => {
        subtitle = string
    }, language)
}

function SiGetSubtitleLangList() {
    const videos = document.getElementsByTagName("video")
    if (videos.length < 1) {
        return;
    }
    videos[0].getSubtitleLangList((string) => {
        langList = string
    })
}

function SiGetSubtitleResult() {
    return subtitle
}

function SiGetSubtitleLangListResult() {
    return langList
}

} catch(e) {}