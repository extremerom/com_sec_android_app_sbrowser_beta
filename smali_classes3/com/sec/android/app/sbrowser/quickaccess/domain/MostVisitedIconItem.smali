.class public Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mDarkThemeTouchIcon:Landroid/graphics/Bitmap;

.field private mDefaultTouchIcon:Landroid/graphics/Bitmap;

.field private mDominantColor:I

.field private mLightThemeTouchIcon:Landroid/graphics/Bitmap;

.field private mScore:F

.field private mTitle:Ljava/lang/String;

.field private mTouchIconHash:I

.field private mTouchIconUrl:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;->mUrl:Ljava/lang/String;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;->mUrl:Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public getDarkThemeTouchIcon()Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;->mDarkThemeTouchIcon:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getDefaultTouchIcon()Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;->mDefaultTouchIcon:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getDominantColor()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;->mDominantColor:I

    return p0
.end method

.method public getLightThemeTouchIcon()Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;->mLightThemeTouchIcon:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getScore()F
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;->mScore:F

    return p0
.end method

.method public getThemeTouchIcon(Z)Landroid/graphics/Bitmap;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->isQuickAccessMaskableIconEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;->mDarkThemeTouchIcon:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;->mLightThemeTouchIcon:Landroid/graphics/Bitmap;

    :goto_0
    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;->mDefaultTouchIcon:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method public getTouchIconHash()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;->mTouchIconHash:I

    return p0
.end method

.method public getTouchIconUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;->mTouchIconUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;->mUrl:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;->mUrl:Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public isContentsSame(Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    iget v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;->mDominantColor:I

    iget v3, p1, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;->mDominantColor:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;->mTitle:Ljava/lang/String;

    iget-object v3, p1, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;->mTitle:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;->mUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;->mUrl:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;->mTouchIconUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;->mTouchIconUrl:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;->mDefaultTouchIcon:Landroid/graphics/Bitmap;

    iget-object v3, p1, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;->mDefaultTouchIcon:Landroid/graphics/Bitmap;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;->mLightThemeTouchIcon:Landroid/graphics/Bitmap;

    iget-object v3, p1, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;->mLightThemeTouchIcon:Landroid/graphics/Bitmap;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;->mDarkThemeTouchIcon:Landroid/graphics/Bitmap;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;->mDarkThemeTouchIcon:Landroid/graphics/Bitmap;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0
.end method

.method public isEquals(Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;)Z
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;->mUrl:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;->mTitle:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;->mScore:F

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;->getScore()F

    move-result p1

    cmpl-float p0, p0, p1

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isItemSame(Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;->mUrl:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public setDarkThemeTouchIcon(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;->mDarkThemeTouchIcon:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setDefaultTouchIcon(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;->mDefaultTouchIcon:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setDominantColor(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;->mDominantColor:I

    return-void
.end method

.method public setLightThemeTouchIcon(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;->mLightThemeTouchIcon:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setScore(F)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;->mScore:F

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;->mTitle:Ljava/lang/String;

    return-void
.end method

.method public setTouchIconHash(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;->mTouchIconHash:I

    return-void
.end method

.method public setTouchIconUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;->mTouchIconUrl:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;->mUrl:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MostVisitedIconItem{mTitle=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', mUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', mScore="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;->mScore:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
