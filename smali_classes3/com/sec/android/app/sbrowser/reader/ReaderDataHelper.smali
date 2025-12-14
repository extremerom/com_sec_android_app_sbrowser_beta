.class public Lcom/sec/android/app/sbrowser/reader/ReaderDataHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDataHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getHeightFromImage(Ljava/lang/StringBuilder;II)Ljava/lang/Integer;
    .locals 4

    const-string v0, "[getHeightFromImage] checking for image height"

    const-string v1, "si__ReaderDataHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "height=\""

    invoke-virtual {p1, v0, p2}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v2, v0, 0x8

    const-string v3, "\""

    invoke-virtual {p1, v3, v2}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v3

    invoke-direct {p0, v0, v3, p2, p3}, Lcom/sec/android/app/sbrowser/reader/ReaderDataHelper;->isInScope(IIII)Z

    move-result p0

    const/4 p2, 0x0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, "[getHeightFromImage] NumberFormatException occurs"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object p2
.end method

.method private getImageDisplayProperty(Ljava/lang/StringBuilder;II)Ljava/lang/String;
    .locals 3

    const-string v0, "si__ReaderDataHelper"

    const-string v1, "[getImageDisplayProperty] checking for display property"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "display:"

    invoke-virtual {p1, v0, p2}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v1, v0, 0x8

    const-string v2, ";"

    invoke-virtual {p1, v2, v1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v1

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/sec/android/app/sbrowser/reader/ReaderDataHelper;->isInScope(IIII)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getLinkFontColor(I)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x2

    if-ne p1, p0, :cond_0

    const-string p0, "#9da3fb"

    return-object p0

    :cond_0
    const-string p0, "#0000ff"

    return-object p0
.end method

.method private getReaderBgColor(I)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x2

    if-eq p1, p0, :cond_1

    const/4 p0, 0x3

    if-eq p1, p0, :cond_0

    const-string p0, "#ffffff"

    goto :goto_0

    :cond_0
    const-string p0, "#f2ebe2"

    goto :goto_0

    :cond_1
    const-string p0, "#080808"

    :goto_0
    return-object p0
.end method

.method private getReaderDomainColor(I)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x2

    if-eq p1, p0, :cond_0

    const-string p0, "#0072DE"

    goto :goto_0

    :cond_0
    const-string p0, "#3E91FF"

    :goto_0
    return-object p0
.end method

.method private getReaderFontColor(I)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x2

    if-eq p1, p0, :cond_1

    const/4 p0, 0x3

    if-eq p1, p0, :cond_0

    const-string p0, "#252525"

    goto :goto_0

    :cond_0
    const-string p0, "#37220a"

    goto :goto_0

    :cond_1
    const-string p0, "#fafafab3"

    :goto_0
    return-object p0
.end method

.method private isInScope(III)Z
    .locals 0

    const/4 p0, -0x1

    if-le p1, p0, :cond_0

    if-le p2, p0, :cond_0

    if-ge p1, p2, :cond_0

    if-ge p2, p3, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isInScope(IIII)Z
    .locals 0

    const/4 p0, -0x1

    if-le p1, p0, :cond_0

    if-le p2, p0, :cond_0

    if-ge p1, p2, :cond_0

    if-le p1, p3, :cond_0

    if-ge p2, p4, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private makeHStyle()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDataHelper;->mContext:Landroid/content/Context;

    const v1, 0x7f070e84

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/TypedValueUtils;->getFloat(Landroid/content/Context;I)F

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDataHelper;->mContext:Landroid/content/Context;

    const v2, 0x7f070e85

    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/common/utils/TypedValueUtils;->getFloat(Landroid/content/Context;I)F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDataHelper;->mContext:Landroid/content/Context;

    const v3, 0x7f070e86

    invoke-static {v2, v3}, Lcom/sec/android/app/sbrowser/common/utils/TypedValueUtils;->getFloat(Landroid/content/Context;I)F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDataHelper;->mContext:Landroid/content/Context;

    const v4, 0x7f070e87

    invoke-static {v3, v4}, Lcom/sec/android/app/sbrowser/common/utils/TypedValueUtils;->getFloat(Landroid/content/Context;I)F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDataHelper;->mContext:Landroid/content/Context;

    const v5, 0x7f070e88

    invoke-static {v4, v5}, Lcom/sec/android/app/sbrowser/common/utils/TypedValueUtils;->getFloat(Landroid/content/Context;I)F

    move-result v4

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDataHelper;->mContext:Landroid/content/Context;

    const v5, 0x7f070e89

    invoke-static {p0, v5}, Lcom/sec/android/app/sbrowser/common/utils/TypedValueUtils;->getFloat(Landroid/content/Context;I)F

    move-result p0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "h1 {font-size:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "em;margin:.83em 0}h2 {font-size:"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "em;margin:.83em 0}h3 {font-size:"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "em;margin:1.5em 0}h4 {font-size:"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "em;margin:1.67em 0}h5 {font-size:"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "em;margin:1.67em 0}h6 {font-size:"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, "em;margin:1.67em 0}"

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private removeSmallImage(Ljava/lang/StringBuilder;II)V
    .locals 4

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/reader/ReaderDataHelper;->getHeightFromImage(Ljava/lang/StringBuilder;II)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "si__ReaderDataHelper"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v3, 0x14

    if-ge v0, v3, :cond_0

    const-string p0, "[removeSmallImage] removing images with smaller height than threshold"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2, p2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v2, p0, p2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/reader/ReaderDataHelper;->getImageDisplayProperty(Ljava/lang/StringBuilder;II)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v0, "display: none"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "[removeSmallImage] removing images with display property as NONE"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2, p2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v2, p0, p2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    return-void
.end method

.method private replaceCharacterEntityToSymbol(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string p0, "&amp;"

    const-string v0, "&"

    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "&lt;"

    const-string v0, "<"

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "&gt;"

    const-string v0, ">"

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "&quot;"

    const-string v0, "\""

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "&#039;"

    const-string v0, "\'"

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "&#047;"

    const-string v0, "/"

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private replaceEscapeHTMLFromHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "class=\"SISO_header\""

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x3e

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const-string v1, "</div>"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/sbrowser/reader/ReaderDataHelper;->isInScope(III)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/reader/ReaderDataHelper;->replaceCharacterEntityToSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method


# virtual methods
.method public findImgTag(Ljava/lang/String;)LRd/d;
    .locals 5

    invoke-static {p1}, Ll5/a;->c(Ljava/lang/String;)LQd/j;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "reader_content_div"

    invoke-static {p1}, LOd/b;->e(Ljava/lang/String;)V

    new-instance v0, LRd/f;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, LRd/f;-><init>(Ljava/lang/String;IZ)V

    new-instance p1, LRd/d;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, LM4/a;

    const/4 v2, 0x4

    invoke-direct {v1, v0, v2, p0, p1}, LM4/a;-><init>(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v1, p0}, LG5/I;->h(LRd/p;LQd/u;)V

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result p0

    const/4 v0, 0x0

    if-lez p0, :cond_0

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LQd/n;

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    const-string p1, "si__ReaderDataHelper"

    if-nez p0, :cond_1

    const-string p0, "[findImgTag] error : body is null"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_1
    const-string v1, "img"

    invoke-static {v1}, LOd/b;->e(Ljava/lang/String;)V

    invoke-static {v1}, LG5/u;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, LRd/f;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-direct {v2, v1, v3, v4}, LRd/f;-><init>(Ljava/lang/String;IZ)V

    new-instance v1, LRd/d;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, LM4/a;

    const/4 v4, 0x4

    invoke-direct {v3, v2, v4, p0, v1}, LM4/a;-><init>(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v3, p0}, LG5/I;->h(LRd/p;LQd/u;)V

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "[findImgTag] error : img is not exist"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_2
    return-object v1
.end method

.method public getReaderInnerHtml(Lcom/sec/terrace/browser/context_aware_engine/TerraceReadabilityExtractionResult;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p1}, Lcom/sec/terrace/browser/context_aware_engine/TerraceReadabilityExtractionResult;->getInnerHTML()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/sec/terrace/browser/context_aware_engine/TerraceReadabilityExtractionResult;->getInnerHTML()Ljava/lang/String;

    move-result-object p1

    const-string v0, "</div>"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/sec/android/app/sbrowser/reader/ReaderDataHelper;->isInScope(III)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/reader/ReaderDataHelper;->replaceEscapeHTMLFromHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object p1
.end method

.method public getVisibleImageUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string p0, "<img"

    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    const-string v0, "<!--"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "-->"

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-le p0, v0, :cond_0

    if-ge p0, v1, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public makeCSP()Ljava/lang/String;
    .locals 0

    const-string p0, "<meta http-equiv=\"Content-Security-Policy\" content=\"script-src \'self\'\">"

    return-object p0
.end method

.method public makeCssStyle(I)Ljava/lang/String;
    .locals 14

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDataHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/reader/ReaderDataHelper;->getReaderFontColor(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/reader/ReaderDataHelper;->getReaderBgColor(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/reader/ReaderDataHelper;->getLinkFontColor(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/reader/ReaderDataHelper;->getReaderDomainColor(I)Ljava/lang/String;

    move-result-object p1

    const v4, 0x7f0c007e

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    const v5, 0x7f0c007d

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    const v6, 0x7f0c007c

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    const v7, 0x7f0c007f

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDataHelper;->mContext:Landroid/content/Context;

    const v8, 0x7f070eab

    invoke-static {v7, v8}, Lcom/sec/android/app/sbrowser/common/utils/TypedValueUtils;->getFloat(Landroid/content/Context;I)F

    move-result v7

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDataHelper;->mContext:Landroid/content/Context;

    const v9, 0x7f070e83

    invoke-static {v8, v9}, Lcom/sec/android/app/sbrowser/common/utils/TypedValueUtils;->getFloat(Landroid/content/Context;I)F

    move-result v8

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDataHelper;->mContext:Landroid/content/Context;

    const v10, 0x7f070e8a

    invoke-static {v9, v10}, Lcom/sec/android/app/sbrowser/common/utils/TypedValueUtils;->getFloat(Landroid/content/Context;I)F

    move-result v9

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDataHelper;->mContext:Landroid/content/Context;

    const v11, 0x7f070e82

    invoke-static {v10, v11}, Lcom/sec/android/app/sbrowser/common/utils/TypedValueUtils;->getFloat(Landroid/content/Context;I)F

    move-result v10

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "<style> .SISO_page {font-size:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, "em;margin-top:0px;word-wrap:break-word;line-height:1.5em;} .SISO_domain_name {font-size:"

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, "em;margin-left:"

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "px;margin-right:"

    const-string v12, "px;color:"

    invoke-static {v11, v0, v8, v0, v12}, Lt/b;->A(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    const-string v12, ";} .SISO_page-separator {display:none;font-size:10px;text-align:right;width:95%;color:"

    const-string v13, ";padding-top:10px} .SISO_page-num {font-size:10px;color:"

    invoke-static {v11, p1, v12, v1, v13}, LB/e;->B(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "} .SISO_page-total {font-size:10px;color:"

    const-string v12, "} body {background-color:"

    invoke-static {v11, v1, p1, v1, v12}, LB/e;->B(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, ";margin:0px;padding:0px;color:"

    const-string v12, "} #reader_content_div {padding-bottom:35px;margin-left:"

    invoke-static {v11, v2, p1, v1, v12}, LB/e;->B(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "px;margin-top:"

    invoke-static {v11, v0, v8, v0, p1}, Lt/b;->A(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "px;} #reader_section {font-family:roboto; min-height:100vh;}.SISO_header {font-size:"

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "px;padding-bottom:"

    const-string v6, "px; margin-right:"

    invoke-static {v11, v0, p1, v5, v6}, Lt/b;->A(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    const-string p1, "px;padding-top:"

    const-string v5, "px;line-height:1.5em;} "

    invoke-static {v11, v0, p1, v4, v5}, Lt/b;->A(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/reader/ReaderDataHelper;->makeHStyle()Ljava/lang/String;

    move-result-object p0

    const-string p1, "a {text-decoration:none;color:"

    const-string v4, ";} hr {margin-right:"

    invoke-static {v11, p0, p1, v3, v4}, LB/e;->B(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "px;margin-left:"

    const-string p1, "px;background-color:#cecece;color:#cecece;height:2px;border:none;} section.contents article header > strong {display:block;font-size:75%;}pre {overflow:scroll;}p.story-body__introduction {font-weight: bold;}.table th {color: "

    invoke-static {v11, v0, p0, v0, p1}, Lt/b;->A(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    const-string p0, ";}.table td {color: "

    const-string p1, ";}.reader_section {background-color:"

    invoke-static {v11, v1, p0, v1, p1}, LB/e;->B(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " } @media screen and (orientation:landscape) and (min-width:640px) {.reader_section {margin-left:"

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, "%; margin-right:"

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, "%;} } @media screen and (orientation:portrait) { .reader_section {margin-left:0%; margin-right:0%;} } img { height: auto;}</style>"

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public makeRtlStyle(Lcom/sec/terrace/browser/context_aware_engine/TerraceReadabilityExtractionResult;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Lcom/sec/terrace/browser/context_aware_engine/TerraceReadabilityExtractionResult;->getArticleHeader()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v0, 0x0

    if-lez p0, :cond_0

    invoke-virtual {p1}, Lcom/sec/terrace/browser/context_aware_engine/TerraceReadabilityExtractionResult;->getArticleHeader()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/sec/terrace/browser/context_aware_engine/TerraceReadabilityExtractionResult;->getTextContent()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_1

    invoke-virtual {p1}, Lcom/sec/terrace/browser/context_aware_engine/TerraceReadabilityExtractionResult;->getTextContent()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    goto :goto_0

    :cond_1
    move p0, v0

    :goto_0
    const/16 p1, 0x5d0

    if-lt p0, p1, :cond_2

    const/16 p1, 0x6ff

    if-gt p0, p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "<style>html {direction:"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_3

    const-string p1, "rtl"

    goto :goto_1

    :cond_3
    const-string p1, "ltr"

    :goto_1
    const-string v0, ";}</style>"

    invoke-static {p0, p1, v0}, Lt/b;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public makeViewPort()Ljava/lang/String;
    .locals 0

    const-string p0, "<meta charset=\"utf-8\"/><meta name=\"viewport\" content=\"width=device-width, minimum-scale=1.0,initial-scale=1.0, maximum-scale=10.0,user-scalable=1\"/>"

    return-object p0
.end method

.method public removeSmallImages(Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 5

    const-string v0, "<img"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v1

    const-string v2, ">"

    invoke-virtual {p1, v2, v1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    :goto_0
    invoke-direct {p0, v1, v3, v4}, Lcom/sec/android/app/sbrowser/reader/ReaderDataHelper;->isInScope(III)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0, p1, v1, v3}, Lcom/sec/android/app/sbrowser/reader/ReaderDataHelper;->removeSmallImage(Ljava/lang/StringBuilder;II)V

    invoke-virtual {p1, v0, v3}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p1, v2, v1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public wrapTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string p0, "<"

    const-string v0, ">"

    const-string v1, "</"

    invoke-static {p0, p1, v0, p2, v1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p0, p1, v0}, Lt/b;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
