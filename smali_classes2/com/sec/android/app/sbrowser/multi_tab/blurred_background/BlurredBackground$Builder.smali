.class public Lcom/sec/android/app/sbrowser/multi_tab/blurred_background/BlurredBackground$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/multi_tab/blurred_background/BlurredBackground;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mBackgroundColor:I

.field private mBottomBarBitmap:Landroid/graphics/Bitmap;

.field private mBottombarHeight:I

.field private mContentHeight:I

.field private mContentWidth:I

.field private final mContext:Landroid/content/Context;

.field private mTabBitmap:Landroid/graphics/Bitmap;

.field private mToolbarBitmap:Landroid/graphics/Bitmap;

.field private mToolbarHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/blurred_background/BlurredBackground$Builder;->mContext:Landroid/content/Context;

    return-void
.end method

.method private createBackgroundBitmap()Landroid/graphics/Bitmap;
    .locals 7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/blurred_background/BlurredBackground$Builder;->mToolbarBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/blurred_background/BlurredBackground$Builder;->mContentWidth:I

    if-lez v0, :cond_3

    iget v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/blurred_background/BlurredBackground$Builder;->mContentHeight:I

    if-gtz v0, :cond_1

    goto :goto_1

    :cond_1
    iget v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/blurred_background/BlurredBackground$Builder;->mToolbarHeight:I

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/blurred_background/BlurredBackground$Builder;->mBottombarHeight:I

    sub-int/2addr v0, v2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/blurred_background/BlurredBackground$Builder;->mTabBitmap:Landroid/graphics/Bitmap;

    const-string v3, "[createBackgroundBitmap] error occurs : "

    const-string v4, "BlurredBackground"

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-eq v2, v0, :cond_2

    const-string v2, "[createBackgroundBitmap] create scaled bitmap"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/blurred_background/BlurredBackground$Builder;->mTabBitmap:Landroid/graphics/Bitmap;

    iget v5, p0, Lcom/sec/android/app/sbrowser/multi_tab/blurred_background/BlurredBackground$Builder;->mContentWidth:I

    const/4 v6, 0x0

    invoke-static {v2, v5, v0, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/blurred_background/BlurredBackground$Builder;->mTabBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    :try_start_1
    iget v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/blurred_background/BlurredBackground$Builder;->mContentWidth:I

    iget v5, p0, Lcom/sec/android/app/sbrowser/multi_tab/blurred_background/BlurredBackground$Builder;->mContentHeight:I

    sget-object v6, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v2

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget v4, p0, Lcom/sec/android/app/sbrowser/multi_tab/blurred_background/BlurredBackground$Builder;->mBackgroundColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->drawColor(I)V

    invoke-direct {p0, v3, v2, v0}, Lcom/sec/android/app/sbrowser/multi_tab/blurred_background/BlurredBackground$Builder;->drawToolbarBitmap(Landroid/graphics/Canvas;II)V

    invoke-direct {p0, v3, v2}, Lcom/sec/android/app/sbrowser/multi_tab/blurred_background/BlurredBackground$Builder;->drawTabBitmap(Landroid/graphics/Canvas;I)V

    invoke-direct {p0, v3, v2, v0}, Lcom/sec/android/app/sbrowser/multi_tab/blurred_background/BlurredBackground$Builder;->drawBottombarBitmap(Landroid/graphics/Canvas;II)V

    return-object v1

    :catch_1
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    return-object v1
.end method

.method private drawBottombarBitmap(Landroid/graphics/Canvas;II)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/blurred_background/BlurredBackground$Builder;->mBottomBarBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p2}, Landroid/graphics/Bitmap;->setDensity(I)V

    iget p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/blurred_background/BlurredBackground$Builder;->mToolbarHeight:I

    add-int/2addr p2, p3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/blurred_background/BlurredBackground$Builder;->mBottomBarBitmap:Landroid/graphics/Bitmap;

    int-to-float p2, p2

    const/4 p3, 0x0

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0, p2, p3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawTabBitmap(Landroid/graphics/Canvas;I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/blurred_background/BlurredBackground$Builder;->mTabBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p2}, Landroid/graphics/Bitmap;->setDensity(I)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/blurred_background/BlurredBackground$Builder;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isFocusLayoutType(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    goto :goto_0

    :cond_1
    iget p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/blurred_background/BlurredBackground$Builder;->mToolbarHeight:I

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/blurred_background/BlurredBackground$Builder;->mTabBitmap:Landroid/graphics/Bitmap;

    int-to-float p2, p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v1, p2, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawToolbarBitmap(Landroid/graphics/Canvas;II)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/blurred_background/BlurredBackground$Builder;->mToolbarBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p2}, Landroid/graphics/Bitmap;->setDensity(I)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/blurred_background/BlurredBackground$Builder;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isFocusLayoutType(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/blurred_background/BlurredBackground$Builder;->mToolbarBitmap:Landroid/graphics/Bitmap;

    int-to-float p2, p3

    const/4 p3, 0x0

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0, p2, p3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method public build(Lcom/sec/android/app/sbrowser/multi_tab/blurred_background/BlurredBackground;)V
    .locals 3
    .param p1    # Lcom/sec/android/app/sbrowser/multi_tab/blurred_background/BlurredBackground;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/blurred_background/BlurredBackground$Builder;->mContext:Landroid/content/Context;

    const-string v1, "BlurredBackground"

    if-eqz v0, :cond_3

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "[build] build blurred background bitmap with "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/blurred_background/BlurredBackground$Builder;->mTabBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/blurred_background/BlurredBackground$Builder;->mBackgroundColor:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/blurred_background/BlurredBackground$Builder;->createBackgroundBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, "[build] blurred background bitmap is null"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_1
    const-string v0, "[build] apply blurred background bitmap"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemSettings;->isReduceTransparency()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/multi_tab/blurred_background/BlurredBackground;->setBlurredBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    return-void

    :cond_3
    :goto_1
    const-string p0, "[build] activity is already destroyed"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setBackgroundColor(I)Lcom/sec/android/app/sbrowser/multi_tab/blurred_background/BlurredBackground$Builder;
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/blurred_background/BlurredBackground$Builder;->mBackgroundColor:I

    return-object p0
.end method

.method public setBottombarBitmap(Landroid/graphics/Bitmap;)Lcom/sec/android/app/sbrowser/multi_tab/blurred_background/BlurredBackground$Builder;
    .locals 0
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/blurred_background/BlurredBackground$Builder;->mBottomBarBitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/blurred_background/BlurredBackground$Builder;->mBottombarHeight:I

    return-object p0
.end method

.method public setSize(II)Lcom/sec/android/app/sbrowser/multi_tab/blurred_background/BlurredBackground$Builder;
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/blurred_background/BlurredBackground$Builder;->mContentWidth:I

    iput p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/blurred_background/BlurredBackground$Builder;->mContentHeight:I

    return-object p0
.end method

.method public setTabBitmap(Landroid/graphics/Bitmap;)Lcom/sec/android/app/sbrowser/multi_tab/blurred_background/BlurredBackground$Builder;
    .locals 0
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/blurred_background/BlurredBackground$Builder;->mTabBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public setToolbarBitmap(Landroid/graphics/Bitmap;)Lcom/sec/android/app/sbrowser/multi_tab/blurred_background/BlurredBackground$Builder;
    .locals 0
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/blurred_background/BlurredBackground$Builder;->mToolbarBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public setToolbarHeight(I)Lcom/sec/android/app/sbrowser/multi_tab/blurred_background/BlurredBackground$Builder;
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/blurred_background/BlurredBackground$Builder;->mToolbarHeight:I

    return-object p0
.end method
