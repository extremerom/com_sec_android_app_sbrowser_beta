.class public abstract Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mBitmapHeight:F

.field private mCanShowFastScrollButton:Z

.field private mCancelScrollbarScroll:Z

.field private mContentHeight:F

.field private mContext:Landroid/content/Context;

.field private mDeviceScaleFactor:F

.field private mDisplayAndroid:Lorg/chromium/ui/display/DisplayAndroid;

.field private mDisplayHeight:I

.field private mDisplayWidth:I

.field private mDownX:F

.field private mDownY:F

.field private mIsFastScrollOff:Z

.field private mIsKeyEvent:Z

.field private mIsLoading:Z

.field private mIsTouching:Z

.field private mLastTouchY:F

.field private mMainFrameScroll:Z

.field private mPageScaleFactor:F

.field private final mRenderCoordinates:Lorg/chromium/content_public/browser/RenderCoordinates;

.field private mScheduledDelay:I

.field private mScrollOffsetY:F

.field private mScrollbarButtonVisible:Z

.field private mScrollbarLayerExists:Z

.field private mScrollbarScrollStarted:Z

.field private mScrollbarScroller:Landroid/graphics/Bitmap;

.field private final mScrollbarScrollerHandler:Landroid/os/Handler;

.field private mViewportHeight:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/chromium/content_public/browser/RenderCoordinates;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mScrollbarButtonVisible:Z

    iput-boolean v0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mMainFrameScroll:Z

    iput-boolean v0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mCancelScrollbarScroll:Z

    iput-boolean v0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mIsTouching:Z

    iput-boolean v0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mIsLoading:Z

    iput-boolean v0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mCanShowFastScrollButton:Z

    iput-boolean v0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mScrollbarLayerExists:Z

    iput-boolean v0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mScrollbarScrollStarted:Z

    iput-boolean v0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mIsKeyEvent:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mDownX:F

    iput v1, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mDownY:F

    iput v1, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mLastTouchY:F

    iput v1, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mViewportHeight:F

    iput v1, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mContentHeight:F

    iput v1, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mScrollOffsetY:F

    iput v1, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mBitmapHeight:F

    iput v1, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mPageScaleFactor:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mDeviceScaleFactor:F

    iput v0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mScheduledDelay:I

    iput v0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mDisplayWidth:I

    iput v0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mDisplayHeight:I

    iput-boolean v0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mIsFastScrollOff:Z

    new-instance v0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller$1;

    invoke-direct {v0, p0}, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller$1;-><init>(Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;)V

    iput-object v0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mScrollbarScrollerHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mRenderCoordinates:Lorg/chromium/content_public/browser/RenderCoordinates;

    invoke-static {p1}, Lorg/chromium/ui/display/DisplayAndroid;->getNonMultiDisplay(Landroid/content/Context;)Lorg/chromium/ui/display/DisplayAndroid;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mDisplayAndroid:Lorg/chromium/ui/display/DisplayAndroid;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mScheduledDelay:I

    return-void
.end method

.method private canShowFastScrollButton(F)Z
    .locals 2

    invoke-static {}, Lcom/sec/terrace/TinTerraceInternals;->isDexEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mRenderCoordinates:Lorg/chromium/content_public/browser/RenderCoordinates;

    invoke-interface {v0}, Lorg/chromium/content_public/browser/RenderCoordinates;->getDeviceScaleFactor()F

    move-result v0

    mul-float/2addr v0, p1

    iget-object p1, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mRenderCoordinates:Lorg/chromium/content_public/browser/RenderCoordinates;

    invoke-interface {p1}, Lorg/chromium/content_public/browser/RenderCoordinates;->getMinPageScaleFactor()F

    move-result p1

    mul-float/2addr p1, v0

    iget v0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mDisplayHeight:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mDisplayAndroid:Lorg/chromium/ui/display/DisplayAndroid;

    invoke-virtual {v0}, Lorg/chromium/ui/display/DisplayAndroid;->getDisplayHeight()I

    move-result v0

    iput v0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mDisplayHeight:I

    :cond_1
    iget p0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mDisplayHeight:I

    int-to-float p0, p0

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p0, v0

    cmpl-float p0, p1, p0

    if-lez p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private getFastScrollBitmap()Landroid/graphics/Bitmap;
    .locals 5

    iget-object v0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mScrollbarScroller:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mContext:Landroid/content/Context;

    sget v1, Lcom/sec/terrace/R$drawable;->fastscroll_thumb_mtrl_alpha:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mScrollbarScroller:Landroid/graphics/Bitmap;

    new-instance v1, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mScrollbarScroller:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mScrollbarScroller:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    const-string v0, "TinScrollbarScroller"

    const-string v1, "getFastScrollBitmap() : bitmap is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object p0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mScrollbarScroller:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method private hideAllScrollbar()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->notifyFastScrollerEnabled(Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mCanShowFastScrollButton:Z

    return-void
.end method

.method private hideScrollbarScrollerWithDelay()V
    .locals 1

    const/16 v0, 0x5dc

    invoke-direct {p0, v0}, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->hideScrollbarScrollerWithDelay(I)V

    return-void
.end method

.method private hideScrollbarScrollerWithDelay(I)V
    .locals 4

    iget v0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mScheduledDelay:I

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    if-le v0, p1, :cond_0

    iget-object v0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mScrollbarScrollerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mScrollbarScrollerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-boolean v0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mScrollbarButtonVisible:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mScrollbarScrollerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mContentHeight:F

    iget v2, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mViewportHeight:F

    cmpl-float v3, v0, v2

    if-lez v3, :cond_1

    iget v3, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mScrollOffsetY:F

    sub-float/2addr v0, v2

    div-float/2addr v3, v0

    const v0, 0x3dcccccd    # 0.1f

    cmpg-float v0, v3, v0

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mScrollbarScrollerHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mScrollbarScrollerHandler:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    iput p1, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mScheduledDelay:I

    :cond_2
    return-void
.end method

.method private isDragGesture(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v1, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mDownX:F

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget v1, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mDownY:F

    sub-float/2addr p1, v1

    iget-object p0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mRenderCoordinates:Lorg/chromium/content_public/browser/RenderCoordinates;

    invoke-interface {p0}, Lorg/chromium/content_public/browser/RenderCoordinates;->getDeviceScaleFactor()F

    move-result p0

    const/high16 v1, 0x41000000    # 8.0f

    mul-float/2addr p0, v1

    mul-float/2addr v0, v0

    mul-float/2addr p1, p1

    add-float/2addr p1, v0

    mul-float/2addr p0, p0

    cmpl-float p0, p1, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isMainFrameScroll(F)Z
    .locals 2

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->isScrollInProgress()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mMainFrameScroll:Z

    return p1

    :cond_0
    iget-boolean v0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mMainFrameScroll:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->isScrollInProgress()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mScrollOffsetY:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_2

    float-to-int p1, p1

    if-eqz p1, :cond_2

    iput-boolean v1, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mMainFrameScroll:Z

    :cond_2
    iget-boolean p0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mMainFrameScroll:Z

    return p0
.end method

.method private needToChangeLayerState(Z)Z
    .locals 2

    invoke-static {}, Lcom/sec/terrace/TinTerraceInternals;->isDexEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean p0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mScrollbarButtonVisible:Z

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    return v1

    :cond_1
    if-nez p0, :cond_2

    if-nez p1, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private updateAppearance(Z)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->needToChangeLayerState(Z)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    iget-boolean v0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mIsTouching:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mScrollbarButtonVisible:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    sget-boolean v0, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->DEBUG:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "updateAppearance   show = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "  mScrollbarButtonVisible = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mScrollbarButtonVisible:Z

    const-string v2, "TinScrollbarScroller"

    invoke-static {v2, v0, v1}, Lt/b;->z(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    :cond_2
    const/4 v0, 0x1

    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mScrollbarScrollerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mScrollbarScrollerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "updateAppearance show ="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/chromium/base/TraceEvent;->instant(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p1}, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->updateLayerAppearance(IZ)V

    return-void
.end method


# virtual methods
.method public abstract blockTopControlsUpdate()V
.end method

.method public didUpdateLayerAppearance(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mScrollbarButtonVisible:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mScrollbarButtonVisible:Z

    sget-boolean p0, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->DEBUG:Z

    if-eqz p0, :cond_1

    const-string p0, "didUpdateLayerAppearance visible = "

    const-string v0, "TinScrollbarScroller"

    invoke-static {p0, v0, p1}, Lw2/j;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public getScrollbarButtonVisible()Z
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-boolean p0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mScrollbarButtonVisible:Z

    return p0
.end method

.method public getScrollbarVisibility()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mScrollbarButtonVisible:Z

    return p0
.end method

.method public handleScrollbarScroller(Landroid/view/MotionEvent;)V
    .locals 8

    iget-boolean v0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mScrollbarButtonVisible:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    iput-boolean v1, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mCancelScrollbarScroll:Z

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_b

    if-eq v0, v1, :cond_a

    const/4 v4, 0x2

    if-eq v0, v4, :cond_2

    const/4 p1, 0x3

    if-eq v0, p1, :cond_a

    goto/16 :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mCancelScrollbarScroll:Z

    if-eqz v0, :cond_3

    goto/16 :goto_0

    :cond_3
    invoke-direct {p0, p1}, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->isDragGesture(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_4

    return-void

    :cond_4
    iget-boolean v0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mScrollbarScrollStarted:Z

    const-string v2, "TinScrollbarScroller"

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mContext:Landroid/content/Context;

    const-string v4, "0373"

    const-string v5, ""

    const-wide/16 v6, -0x1

    invoke-static {v0, v4, v5, v6, v7}, Lcom/sec/terrace/browser/TinAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    const-string v0, "201"

    const-string v4, "1120"

    invoke-static {v0, v4, v6, v7}, Lcom/sec/terrace/browser/TinSALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    const-string v0, "scrollbar scroll started!!"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->runScrollbarVibrate()V

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->scrollBegin()V

    :cond_5
    iput-boolean v1, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mScrollbarScrollStarted:Z

    iget v0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mLastTouchY:F

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mLastTouchY:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mViewportHeight:F

    iget v4, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mPageScaleFactor:F

    mul-float v5, v1, v4

    div-float v5, v0, v5

    iget v6, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mBitmapHeight:F

    cmpl-float v3, v6, v3

    if-lez v3, :cond_6

    cmpl-float v3, v1, v6

    if-lez v3, :cond_6

    mul-float v3, v1, v4

    sub-float/2addr v3, v6

    div-float v5, v0, v3

    :cond_6
    iget v3, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mContentHeight:F

    sub-float v6, v3, v1

    mul-float/2addr v6, v4

    mul-float/2addr v6, v5

    cmpg-float v1, v3, v1

    if-gez v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "handleScrollbarScroller  scrollSpeed is wrong  ratio = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mContentHeight:F

    mul-float v6, v1, v5

    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "ScrollbarScroller ratio="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/chromium/base/TraceEvent;->instant(Ljava/lang/String;)V

    sget-boolean v1, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->DEBUG:Z

    if-eqz v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "handleScrollbarScroller  ratio = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " touchDist = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " Speed = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " Viewport = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mViewportHeight:F

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " Content = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mContentHeight:F

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " Y = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    invoke-virtual {p0, v6}, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->scrollBy(F)V

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->resetScrollbarScrollerHidingTimer()V

    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mLastTouchY:F

    goto :goto_0

    :cond_a
    iput v3, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mLastTouchY:F

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->restoreTopControlsState()V

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->scrollEnd()V

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->hideScrollbarScrollerWithDelay()V

    iput-boolean v2, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mCancelScrollbarScroll:Z

    goto :goto_0

    :cond_b
    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->isScrollInProgress()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->scrollEnd()V

    :cond_c
    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->blockTopControlsUpdate()V

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->resetScrollbarScrollerHidingTimer()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mLastTouchY:F

    iput-boolean v2, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mCancelScrollbarScroll:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mDownX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mDownY:F

    iput-boolean v2, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mScrollbarScrollStarted:Z

    iget p1, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mBitmapHeight:F

    cmpl-float p1, p1, v3

    if-nez p1, :cond_d

    iget-object p1, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mScrollbarScroller:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    int-to-float p1, p1

    iget-object v0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mRenderCoordinates:Lorg/chromium/content_public/browser/RenderCoordinates;

    invoke-interface {v0}, Lorg/chromium/content_public/browser/RenderCoordinates;->getDeviceScaleFactor()F

    move-result v0

    div-float/2addr p1, v0

    iput p1, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mBitmapHeight:F

    :cond_d
    :goto_0
    return-void
.end method

.method public hideScrollbarScrollerImmediately()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mScrollbarButtonVisible:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->updateAppearance(Z)V

    :cond_0
    return-void
.end method

.method public isFastScrollOff()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mIsFastScrollOff:Z

    return p0
.end method

.method public abstract isScrollInProgress()Z
.end method

.method public abstract notifyFastScrollerEnabled(Z)V
.end method

.method public onScrollBegin()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mIsFastScrollOff:Z

    iget-boolean v1, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mIsLoading:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mContentHeight:F

    invoke-direct {p0, v1}, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->canShowFastScrollButton(F)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->hideAllScrollbar()V

    return-void

    :cond_0
    iget v1, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mContentHeight:F

    invoke-direct {p0, v1}, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->canShowFastScrollButton(F)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->notifyFastScrollerEnabled(Z)V

    iput-boolean v0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mCanShowFastScrollButton:Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->notifyFastScrollerEnabled(Z)V

    iput-boolean v0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mCanShowFastScrollButton:Z

    :goto_0
    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->setScrollbarScrollerBitmap()V

    return-void
.end method

.method public onScrollEnded()V
    .locals 3

    iget v0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mContentHeight:F

    iget v1, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mViewportHeight:F

    cmpl-float v2, v0, v1

    if-lez v2, :cond_0

    iget v2, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mScrollOffsetY:F

    sub-float/2addr v0, v1

    div-float/2addr v2, v0

    const v0, 0x3dcccccd    # 0.1f

    cmpg-float v0, v2, v0

    if-gez v0, :cond_0

    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->hideScrollbarScrollerWithDelay(I)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->hideScrollbarScrollerWithDelay()V

    :goto_0
    return-void
.end method

.method public resetMainFrameScroll()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mMainFrameScroll:Z

    return-void
.end method

.method public resetScrollbarScrollerHidingTimer()V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mScrollbarButtonVisible:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mScrollbarScrollerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mScrollbarScrollerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->hideScrollbarScrollerWithDelay()V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mScrollbarButtonVisible:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mScrollbarScrollerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->hideScrollbarScrollerWithDelay()V

    :cond_1
    :goto_0
    return-void
.end method

.method public abstract restoreTopControlsState()V
.end method

.method public abstract runScrollbarVibrate()V
.end method

.method public abstract scrollBegin()V
.end method

.method public abstract scrollBy(F)V
.end method

.method public abstract scrollEnd()V
.end method

.method public scrollbarScrollStarted()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mScrollbarScrollStarted:Z

    return p0
.end method

.method public setDisplaySize(II)V
    .locals 2

    iget v0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mDisplayWidth:I

    if-ne p1, v0, :cond_0

    iget v1, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mDisplayHeight:I

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mDisplayWidth:I

    iput p2, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mDisplayHeight:I

    return-void
.end method

.method public setIsKeyEvent(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mIsKeyEvent:Z

    return-void
.end method

.method public setIsLoading(Z)V
    .locals 2

    sget-boolean v0, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isLoading = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TinScrollbarScroller"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-boolean p1, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mIsLoading:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->isScrollInProgress()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->hideAllScrollbar()V

    :cond_1
    return-void
.end method

.method public setIsTouching(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mIsTouching:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->setScrollbarScrollerBitmap()V

    :cond_0
    return-void
.end method

.method public setScrollbarLayerState(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mScrollbarLayerExists:Z

    sget-boolean p0, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "setScrollbarLayerState layerExists = "

    const-string v0, "TinScrollbarScroller"

    invoke-static {p0, v0, p1}, Lw2/j;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public setScrollbarScrollerBitmap()V
    .locals 4

    iget v0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mDeviceScaleFactor:F

    iget-object v1, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mRenderCoordinates:Lorg/chromium/content_public/browser/RenderCoordinates;

    invoke-interface {v1}, Lorg/chromium/content_public/browser/RenderCoordinates;->getDeviceScaleFactor()F

    move-result v1

    cmpl-float v0, v0, v1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mScrollbarScroller:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mRenderCoordinates:Lorg/chromium/content_public/browser/RenderCoordinates;

    invoke-interface {v0}, Lorg/chromium/content_public/browser/RenderCoordinates;->getDeviceScaleFactor()F

    move-result v0

    iput v0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mDeviceScaleFactor:F

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mScrollbarLayerExists:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mScrollbarScroller:Landroid/graphics/Bitmap;

    const-string v2, "TinScrollbarScroller"

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->getFastScrollBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_2

    const-string p0, "setScrollbarScrollerBitmap null"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mScrollbarScroller:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq v0, v3, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "bitmap Config = "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mScrollbarScroller:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v1, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mScrollbarScroller:Landroid/graphics/Bitmap;

    return-void

    :cond_3
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mScrollbarScroller:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0, v1}, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->setScrollbarScrollerBitmap(ILandroid/graphics/Bitmap;)V

    return-void
.end method

.method public abstract setScrollbarScrollerBitmap(ILandroid/graphics/Bitmap;)V
.end method

.method public updateFrameInfo(FFFF)V
    .locals 3

    iget-object v0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mRenderCoordinates:Lorg/chromium/content_public/browser/RenderCoordinates;

    invoke-interface {v0}, Lorg/chromium/content_public/browser/RenderCoordinates;->getDeviceScaleFactor()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_0
    iget-boolean v1, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mScrollbarButtonVisible:Z

    if-nez v1, :cond_1

    float-to-int v1, p1

    if-nez v1, :cond_1

    div-float/2addr p4, v0

    iput p4, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mContentHeight:F

    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mCanShowFastScrollButton:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mIsKeyEvent:Z

    if-nez v1, :cond_2

    invoke-direct {p0, p1}, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->isMainFrameScroll(F)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->resetScrollbarScrollerHidingTimer()V

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->updateAppearance(Z)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->onScrollEnded()V

    :goto_0
    sget-boolean v1, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->DEBUG:Z

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "updateFrameInfo  scrollOffsetY = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "  mScrollbarButtonVisible = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mScrollbarButtonVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "  contentHeight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "  viewportHeight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "  mMainFrameScroll = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mMainFrameScroll:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "  HeightPix = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mDisplayAndroid:Lorg/chromium/ui/display/DisplayAndroid;

    invoke-virtual {v2}, Lorg/chromium/ui/display/DisplayAndroid;->getDisplayHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TinScrollbarScroller"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    div-float/2addr p3, v0

    iput p3, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mViewportHeight:F

    div-float/2addr p4, v0

    iput p4, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mContentHeight:F

    iput p1, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mScrollOffsetY:F

    iput p2, p0, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;->mPageScaleFactor:F

    return-void
.end method

.method public abstract updateLayerAppearance(IZ)V
.end method
