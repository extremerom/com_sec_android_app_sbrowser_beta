.class public Lcom/sec/android/app/sbrowser/reader/ReaderScript;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sDefaultMargin:Ljava/lang/Float;

.field private static sThemeJS:Ljava/lang/String;


# direct methods
.method private static getDefaultBodyMargin(Landroid/content/Context;)F
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/sec/android/app/sbrowser/reader/ReaderScript;->sDefaultMargin:Ljava/lang/Float;

    if-nez v0, :cond_0

    const v0, 0x7f070e82

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/utils/TypedValueUtils;->getFloat(Landroid/content/Context;I)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    sput-object p0, Lcom/sec/android/app/sbrowser/reader/ReaderScript;->sDefaultMargin:Ljava/lang/Float;

    :cond_0
    sget-object p0, Lcom/sec/android/app/sbrowser/reader/ReaderScript;->sDefaultMargin:Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method public static getReaderFontScaleScript(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/reader/ReaderScript;->getReaderOptionScript(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LB/e;->r(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    int-to-float p1, p1

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/reader/ReaderScript;->getReaderMarginMethod(Landroid/content/Context;F)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getReaderMarginMethod(Landroid/content/Context;F)Ljava/lang/String;
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/high16 v0, 0x41a00000    # 20.0f

    sub-float/2addr p1, v0

    const/4 v1, 0x0

    cmpg-float v2, p1, v1

    if-gez v2, :cond_0

    move p1, v1

    :cond_0
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/reader/ReaderScript;->getDefaultBodyMargin(Landroid/content/Context;)F

    move-result p0

    div-float v0, p0, v0

    mul-float/2addr v0, p1

    sub-float/2addr p0, v0

    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "applyMargin(%f);"

    invoke-static {p1, v0, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getReaderOptionScript(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/sec/android/app/sbrowser/reader/ReaderScript;->sThemeJS:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "reader_theme.js"

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/AssetUtil;->read(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/sec/android/app/sbrowser/reader/ReaderScript;->sThemeJS:Ljava/lang/String;

    :cond_0
    sget-object p0, Lcom/sec/android/app/sbrowser/reader/ReaderScript;->sThemeJS:Ljava/lang/String;

    return-object p0
.end method

.method public static getReaderOptionScript(Landroid/content/Context;II)Ljava/lang/String;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/reader/ReaderScript;->getReaderOptionScript(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LB/e;->r(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/reader/ReaderScript;->getReaderThemeMethod(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LB/e;->r(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    int-to-float p2, p2

    invoke-static {p0, p2}, Lcom/sec/android/app/sbrowser/reader/ReaderScript;->getReaderMarginMethod(Landroid/content/Context;F)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getReaderOptions(I)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    add-int/lit8 p0, p0, -0x14

    int-to-float p0, p0

    const/4 v1, 0x0

    cmpg-float v2, p0, v1

    if-gez v2, :cond_0

    move p0, v1

    :cond_0
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/reader/ReaderScript;->getDefaultBodyMargin(Landroid/content/Context;)F

    move-result v1

    const/high16 v2, 0x41a00000    # 20.0f

    div-float v2, v1, v2

    mul-float/2addr v2, p0

    sub-float/2addr v1, v2

    const/high16 p0, 0x40000000    # 2.0f

    mul-float/2addr v1, p0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0c007f

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v2, "sideMargin"

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "bodyMargin"

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static getReaderThemeMethod(I)Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const-string p0, "applyWhiteTheme();"

    goto :goto_0

    :cond_0
    const-string p0, "applySepiaTheme();"

    goto :goto_0

    :cond_1
    const-string p0, "applyBlackTheme();"

    :goto_0
    return-object p0
.end method

.method public static getReaderThemeScript(Landroid/content/Context;I)Ljava/lang/String;
    .locals 0
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-nez p1, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/reader/ReaderScript;->getReaderOptionScript(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LB/e;->r(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/reader/ReaderScript;->getReaderThemeMethod(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
