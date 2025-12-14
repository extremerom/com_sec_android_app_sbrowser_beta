.class public Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOption;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final MAXIMUM_FONT_SCALE:I = 0xc8
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final MINIMUM_FONT_SCALE:I = 0x50
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private mFontScale:I

.field private mThemeColor:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOption;->loadThemeColor()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOption;->loadFontScale()V

    return-void
.end method


# virtual methods
.method public enlarge()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOption;->isEnlargeable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOption;->mFontScale:I

    add-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOption;->mFontScale:I

    invoke-static {}, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionSettings;->getInstance()Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionSettings;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOption;->getFontScaleAsFloat()F

    move-result p0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionSettings;->setReaderTextScale(F)V

    return-void
.end method

.method public getFontScale()I
    .locals 3

    iget v0, p0, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOption;->mFontScale:I

    const/16 v1, 0x50

    const/16 v2, 0xc8

    invoke-static {v0, v1, v2}, LG5/L3;->e(III)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOption;->mFontScale:I

    return v0
.end method

.method public getFontScaleAsFloat()F
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOption;->getFontScale()I

    move-result p0

    int-to-float p0, p0

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p0, v0

    return p0
.end method

.method public getThemeColor()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOption;->mThemeColor:I

    return p0
.end method

.method public isBlackTheme()Z
    .locals 1

    iget p0, p0, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOption;->mThemeColor:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isEnlargeable()Z
    .locals 1

    iget p0, p0, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOption;->mFontScale:I

    const/16 v0, 0xc8

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSepiaTheme()Z
    .locals 1

    iget p0, p0, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOption;->mThemeColor:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isShrinkable()Z
    .locals 1

    iget p0, p0, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOption;->mFontScale:I

    const/16 v0, 0x50

    if-le p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isThemeAvailable()Z
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOption;->mThemeColor:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isWhiteTheme()Z
    .locals 1

    iget p0, p0, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOption;->mThemeColor:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public loadFontScale()V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionSettings;->getInstance()Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionSettings;->getReaderTextScale()F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOption;->mFontScale:I

    return-void
.end method

.method public loadThemeColor()V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionSettings;->getInstance()Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionSettings;->getReaderTheme()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOption;->mThemeColor:I

    return-void
.end method

.method public setThemeColor(I)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOption;->mThemeColor:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOption;->mThemeColor:I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOption;->isThemeAvailable()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionSettings;->getInstance()Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionSettings;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionSettings;->setReaderTheme(I)V

    :cond_1
    return-void
.end method

.method public shrink()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOption;->isShrinkable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOption;->mFontScale:I

    add-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOption;->mFontScale:I

    invoke-static {}, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionSettings;->getInstance()Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionSettings;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOption;->getFontScaleAsFloat()F

    move-result p0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionSettings;->setReaderTextScale(F)V

    return-void
.end method
