.class public Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/TabThumbnailView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapRatio:F

.field private final mBitmapRect:Landroid/graphics/RectF;

.field private mBitmapShader:Landroid/graphics/BitmapShader;

.field private final mContext:Landroid/content/Context;

.field private mCornerRadius:I

.field private final mDrawPaint:Landroid/graphics/Paint;

.field private mEmptyBitmap:Z

.field private mIsDarkThemeEnabled:Z

.field private mIsMultiWindowMode:Z

.field private mIsOrientationChanged:Z

.field private final mLayoutRect:Landroid/graphics/RectF;

.field private final mMainToolbarHeightInitial:I

.field private mOriginalHeight:F

.field private mOriginalRatio:F

.field private mOriginalWidth:F

.field private final mScaleMatrix:Landroid/graphics/Matrix;

.field private mWhiteBitmap:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/TabThumbnailView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/TabThumbnailView;->mScaleMatrix:Landroid/graphics/Matrix;

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/TabThumbnailView;->mBitmapRect:Landroid/graphics/RectF;

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/TabThumbnailView;->mLayoutRect:Landroid/graphics/RectF;

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/TabThumbnailView;->mDrawPaint:Landroid/graphics/Paint;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/TabThumbnailView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f0715d5

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/TabThumbnailView;->mMainToolbarHeightInitial:I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->isTabManagerNewGuiEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabSettings;->isCardViewType()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f070b30

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/TabThumbnailView;->mCornerRadius:I

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabSettings;->isGridViewType()Z

    move-result p3

    if-eqz p3, :cond_1

    const p3, 0x7f070aa1

    goto :goto_0

    :cond_1
    const p3, 0x7f070ebf

    :goto_0
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/TabThumbnailView;->mCornerRadius:I

    :goto_1
    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    return-void
.end method

.method private createEmptyBitmap()Landroid/graphics/Bitmap;
    .locals 3

    :try_start_0
    iget v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/TabThumbnailView;->mOriginalWidth:F

    float-to-int v0, v0

    iget v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/TabThumbnailView;->mOriginalHeight:F

    float-to-int v1, v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/TabThumbnailView;->getBgColor()I

    move-result p0

    invoke-virtual {v1, p0}, Landroid/graphics/Canvas;->drawColor(I)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " OOM in createEmptyBitmap() method: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TabThumbnailView"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private drawForTabView(Landroid/graphics/Canvas;)V
    .locals 5

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/TabThumbnailView;->mIsMultiWindowMode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/TabThumbnailView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/TabThumbnailView;->mOriginalHeight:F

    div-float/2addr v0, v2

    iget v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/TabThumbnailView;->mOriginalWidth:F

    mul-float/2addr v0, v2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/TabThumbnailView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/TabThumbnailView;->mBitmapRect:Landroid/graphics/RectF;

    invoke-virtual {v3, v1, v1, v0, v2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/TabThumbnailView;->mScaleMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/TabThumbnailView;->mBitmapRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/TabThumbnailView;->mLayoutRect:Landroid/graphics/RectF;

    sget-object v4, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_2

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/TabThumbnailView;->mIsOrientationChanged:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/TabThumbnailView;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/TabThumbnailView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/TabThumbnailView;->mOriginalHeight:F

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/TabThumbnailView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/TabThumbnailView;->mOriginalWidth:F

    div-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/TabThumbnailView;->mBitmapRect:Landroid/graphics/RectF;

    invoke-virtual {v3, v1, v1, v0, v2}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_2

    :cond_1
    iget v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/TabThumbnailView;->mOriginalRatio:F

    iget v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/TabThumbnailView;->mBitmapRatio:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/TabThumbnailView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/TabThumbnailView;->mOriginalWidth:F

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/TabThumbnailView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v0, v2

    iget v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/TabThumbnailView;->mOriginalHeight:F

    div-float/2addr v0, v2

    :goto_0
    iget v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/TabThumbnailView;->mOriginalRatio:F

    iget v3, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/TabThumbnailView;->mBitmapRatio:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_3

    iget v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/TabThumbnailView;->mOriginalHeight:F

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/TabThumbnailView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/TabThumbnailView;->mOriginalWidth:F

    div-float/2addr v2, v3

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/TabThumbnailView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    :goto_1
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/TabThumbnailView;->mBitmapRect:Landroid/graphics/RectF;

    invoke-virtual {v3, v1, v1, v0, v2}, Landroid/graphics/RectF;->set(FFFF)V

    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/TabThumbnailView;->mScaleMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/TabThumbnailView;->mBitmapRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/TabThumbnailView;->mLayoutRect:Landroid/graphics/RectF;

    sget-object v4, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/TabThumbnailView;->updateBitmapScale()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->isTabManagerNewGuiEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v1

    goto :goto_3

    :cond_4
    iget v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/TabThumbnailView;->mCornerRadius:I

    neg-int v2, v2

    int-to-float v2, v2

    :goto_3
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/TabThumbnailView;->mCornerRadius:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/TabThumbnailView;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private getBgColor()I
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/TabThumbnailView;->mIsDarkThemeEnabled:Z

    if-eqz p0, :cond_0

    const/high16 p0, -0x1000000

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method private isInMultiWindowMode()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/TabThumbnailView;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/ActivityUtil;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result p0

    return p0
.end method

.method private isLandscape()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/TabThumbnailView;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isLandscapeWindow(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private obtainEmptyBitmap()Landroid/graphics/Bitmap;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/TabThumbnailView;->mWhiteBitmap:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/TabThumbnailView;->mWhiteBitmap:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/TabThumbnailView;->createEmptyBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/TabThumbnailView;->mWhiteBitmap:Ljava/lang/ref/WeakReference;

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/TabThumbnailView;->mWhiteBitmap:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;

    return-object p0
.end method

.method private setUp()V
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f070b31

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/utils/TypedValueUtils;->getFloat(Landroid/content/Context;II)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/TabThumbnailView;->mOriginalHeight:F

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f070b32

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/utils/TypedValueUtils;->getFloat(Landroid/content/Context;II)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/TabThumbnailView;->mOriginalWidth:F

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0715d5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/TabThumbnailView;->mOriginalWidth:F

    iget v3, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/TabThumbnailView;->mOriginalHeight:F

    div-float/2addr v1, v3

    iput v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/TabThumbnailView;->mOriginalRatio:F

    iget v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/TabThumbnailView;->mMainToolbarHeightInitial:I

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/TabThumbnailView;->mIsOrientationChanged:Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/TabThumbnailView;->isInMultiWindowMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/TabThumbnailView;->mIsMultiWindowMode:Z

    return-void
.end method

.method private updateBitmapScale()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/TabThumbnailView;->mBitmapShader:Landroid/graphics/BitmapShader;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/TabThumbnailView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/TabThumbnailView;->mBitmap:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/TabThumbnailView;->mBitmapShader:Landroid/graphics/BitmapShader;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/TabThumbnailView;->mScaleMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/TabThumbnailView;->mBitmapRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/TabThumbnailView;->mLayoutRect:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/TabThumbnailView;->mBitmapShader:Landroid/graphics/BitmapShader;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/TabThumbnailView;->mScaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p0}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/TabThumbnailView;->mScaleMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/TabThumbnailView;->mBitmapRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/TabThumbnailView;->mLayoutRect:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/TabThumbnailView;->mBitmapShader:Landroid/graphics/BitmapShader;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/TabThumbnailView;->mScaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p0}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method


# virtual methods
.method public isBitmapValid()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/TabThumbnailView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/TabThumbnailView;->mEmptyBitmap:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/TabThumbnailView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/TabThumbnailView;->drawForTabView(Landroid/graphics/Canvas;)V

    return-void

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/TabThumbnailView;->getBgColor()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/graphics/Canvas;->drawColor(I)V

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/TabThumbnailView;->mLayoutRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    int-to-float p0, p0

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p3, p2, p0}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public setDarkThemeEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/TabThumbnailView;->mIsDarkThemeEnabled:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/TabThumbnailView;->mWhiteBitmap:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/TabThumbnailView;->setUp()V

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/TabThumbnailView;->mEmptyBitmap:Z

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/TabThumbnailView;->obtainEmptyBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_2
    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/TabThumbnailView;->mBitmap:Landroid/graphics/Bitmap;

    const-string v1, "TabThumbnailView"

    if-nez p1, :cond_3

    const-string p1, "Bitmap is null."

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/TabThumbnailView;->mBitmapShader:Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/TabThumbnailView;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_2

    :cond_3
    const-string p1, "Bitmap is set."

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/TabThumbnailView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    int-to-float p1, p1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/TabThumbnailView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p1, v1

    iput p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/TabThumbnailView;->mBitmapRatio:F

    new-instance p1, Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/TabThumbnailView;->mBitmap:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {p1, v1, v2, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/TabThumbnailView;->mBitmapShader:Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/TabThumbnailView;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/TabThumbnailView;->updateBitmapScale()V

    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v0, p1, v1}, Landroid/view/View;->invalidate(IIII)V

    return-void
.end method

.method public unbindFromTab()V
    .locals 2

    const-string v0, "TabThumbnailView"

    const-string v1, "unbindFromTab"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/TabThumbnailView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method
