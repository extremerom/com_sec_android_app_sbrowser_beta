.class public Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;,
        Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$TitleState;
    }
.end annotation


# instance fields
.field private mDarkThemeMaskingIcon:Landroid/graphics/Bitmap;

.field private mDefaultTouchIcon:Landroid/graphics/Bitmap;

.field private mDefaultTouchIconHash:I

.field private mDominantColor:I

.field private mHasBeenSynced:Z

.field private mItemId:I

.field private mLightThemeMaskingIcon:Landroid/graphics/Bitmap;

.field private mPosition:I

.field private mSpeciallyRemoved:Z

.field private mTitle:Ljava/lang/String;

.field private mTitleState:Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$TitleState;

.field private mTouchIconUrl:Ljava/lang/String;

.field private mType:Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;->USER:Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->mType:Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->mDefaultTouchIconHash:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->mDominantColor:I

    iput v0, p0, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->mItemId:I

    sget-object v0, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$TitleState;->NOT_EDITED:Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$TitleState;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->mTitleState:Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$TitleState;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;->USER:Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->mType:Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->mDefaultTouchIconHash:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->mDominantColor:I

    iput v0, p0, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->mItemId:I

    sget-object v0, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$TitleState;->NOT_EDITED:Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$TitleState;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->mTitleState:Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$TitleState;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->getDefaultTouchIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v1, "QuickAccessIconItem"

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->getDefaultTouchIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-lez v0, :cond_1

    :try_start_0
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->getDefaultTouchIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->setDefaultTouchIcon(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->getDefaultTouchIconHash()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->setDefaultTouchIconHash(I)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " : Don\'t set default touch icon because available memory is insufficient"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->getTouchIconUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->setTouchIconUrl(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->getLightThemeMaskingIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    :try_start_1
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->getLightThemeMaskingIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->setLightThemeMaskingIcon(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " : Don\'t set light theme masking icon because available memory is insufficient"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->getDarkThemeMaskingIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_3

    :try_start_2
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->getDarkThemeMaskingIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->setDarkThemeTouchIcon(Landroid/graphics/Bitmap;)V
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " : Don\'t set dark theme masking icon because available memory is insufficient"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_2
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->setTitle(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->setUrl(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->getDominantColor()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->setDominantColor(I)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->getPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->setPosition(I)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->isSpeciallyRemoved()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->setSpeciallyRemoved(Z)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->getType()Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->setType(Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->getItemId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->setItemId(I)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->hasBeenSynced()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->setHasBeenSynced(Z)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->getTitleState()Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$TitleState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->setTitleState(Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$TitleState;)V

    return-void
.end method


# virtual methods
.method public areContentsSame(Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    iget v2, p0, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->mDefaultTouchIconHash:I

    iget v3, p1, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->mDefaultTouchIconHash:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->mDominantColor:I

    iget v3, p1, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->mDominantColor:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->mTitle:Ljava/lang/String;

    iget-object v3, p1, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->mTitle:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->mUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->mUrl:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->mType:Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;

    iget-object v3, p1, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->mType:Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->mTouchIconUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->mTouchIconUrl:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->mTitleState:Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$TitleState;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->mTitleState:Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$TitleState;

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0
.end method

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
    check-cast p1, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->mUrl:Ljava/lang/String;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->mUrl:Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public getDarkThemeMaskingIcon()Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->mDarkThemeMaskingIcon:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getDefaultTouchIcon()Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->mDefaultTouchIcon:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getDefaultTouchIconHash()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->mDefaultTouchIconHash:I

    return p0
.end method

.method public getDominantColor()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->mDominantColor:I

    return p0
.end method

.method public getItemId()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->mItemId:I

    return p0
.end method

.method public getLightThemeMaskingIcon()Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->mLightThemeMaskingIcon:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getPosition()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->mPosition:I

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

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->mDarkThemeMaskingIcon:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->mLightThemeMaskingIcon:Landroid/graphics/Bitmap;

    :goto_0
    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->mDefaultTouchIcon:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method public getTitleState()Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$TitleState;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->mTitleState:Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$TitleState;

    return-object p0
.end method

.method public getTouchIconUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->mTouchIconUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getType()Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->mType:Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;

    return-object p0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->mUrl:Ljava/lang/String;

    return-object p0
.end method

.method public hasBeenSynced()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->mHasBeenSynced:Z

    return p0
.end method

.method public hasValidDarkThemeTouchIcon()Z
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->mDarkThemeMaskingIcon:Landroid/graphics/Bitmap;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    const/16 v0, 0x39

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasValidDefaultTouchIcon()Z
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->mDefaultTouchIcon:Landroid/graphics/Bitmap;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    const/16 v0, 0x39

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasValidLightThemeTouchIcon()Z
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->mLightThemeMaskingIcon:Landroid/graphics/Bitmap;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    const/16 v0, 0x39

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasValidThemeTouchIcon(Z)Z
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->isQuickAccessMaskableIconEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->hasValidDarkThemeTouchIcon()Z

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->hasValidLightThemeTouchIcon()Z

    move-result p0

    :goto_0
    return p0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->hasValidDefaultTouchIcon()Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->mUrl:Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public isSpeciallyRemoved()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->mSpeciallyRemoved:Z

    return p0
.end method

.method public isSyncable()Z
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->mType:Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;

    sget-object v0, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;->DEFAULT_SERVER:Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isTitleEdited()Z
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->mTitleState:Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$TitleState;

    sget-object v0, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$TitleState;->EDITED:Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$TitleState;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setDarkThemeTouchIcon(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->mDarkThemeMaskingIcon:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setDefaultTouchIcon(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->mDefaultTouchIcon:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setDefaultTouchIcon([B)V
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->mDefaultTouchIcon:Landroid/graphics/Bitmap;

    return-void

    :cond_0
    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p1, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->mDefaultTouchIcon:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setDefaultTouchIconHash(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->mDefaultTouchIconHash:I

    return-void
.end method

.method public setDominantColor(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->mDominantColor:I

    return-void
.end method

.method public setHasBeenSynced(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->mHasBeenSynced:Z

    return-void
.end method

.method public setItemId(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->mItemId:I

    return-void
.end method

.method public setLightThemeMaskingIcon(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->mLightThemeMaskingIcon:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setPosition(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->mPosition:I

    return-void
.end method

.method public setSpeciallyRemoved(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->mSpeciallyRemoved:Z

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->mTitle:Ljava/lang/String;

    return-void
.end method

.method public setTitleState(Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$TitleState;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->mTitleState:Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$TitleState;

    return-void
.end method

.method public setTouchIconUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->mTouchIconUrl:Ljava/lang/String;

    return-void
.end method

.method public setType(Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->mType:Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->mUrl:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "QuickAccessIconItem{mTitle="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->mType:Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mDefaultTouchIcon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->mDefaultTouchIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mLightThemeMaskingIcon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->mLightThemeMaskingIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mDarkThemeMaskingIcon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->mDarkThemeMaskingIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mTouchIconHash="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->mDefaultTouchIconHash:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mTouchIconUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->mTouchIconUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->mPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDominantColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->mDominantColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mSpeciallyRemoved="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->mSpeciallyRemoved:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mItemId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->mItemId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mTitleState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->mTitleState:Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$TitleState;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
