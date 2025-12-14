.class abstract Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/content/browser/fastscroller/TinScrollManagerDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller$Delegate;
    }
.end annotation


# static fields
.field private static sDragStart:Z

.field private static sGoToButtonTap:Z


# instance fields
.field private mChoreographer:Landroid/view/Choreographer;

.field private final mContext:Landroid/content/Context;

.field mDelegate:Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller$Delegate;

.field private mDeviceScaleFactor:F

.field private final mDisplayAndroid:Lorg/chromium/ui/display/DisplayAndroid;

.field private mDisplayHeight:I

.field private mDisplayWidth:I

.field private mDoNotHandle:Z

.field private mDownX:F

.field private mDownY:F

.field private final mDragHandler:Landroid/os/Handler;

.field private final mGoToHandler:Landroid/os/Handler;

.field private mIsAlphaRequired:Z

.field private mIsKeyEvent:Z

.field private mIsTouching:Z

.field mNightState:Z

.field private mPageScaleFactor:F

.field final mRenderCoordinates:Lorg/chromium/content_public/browser/RenderCoordinates;

.field private mScrollSpeed:F

.field private mTotalDistance:F

.field final mVSyncFrameCallback:Landroid/view/Choreographer$FrameCallback;

.field private mVsyncStartTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller$Delegate;Lorg/chromium/content_public/browser/RenderCoordinates;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->mDragHandler:Landroid/os/Handler;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->mDeviceScaleFactor:F

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->mIsKeyEvent:Z

    iput v1, p0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->mDisplayWidth:I

    iput v1, p0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->mDisplayHeight:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->mVsyncStartTime:J

    iput-boolean v1, p0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->mIsTouching:Z

    iput v0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->mPageScaleFactor:F

    iput-boolean v1, p0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->mNightState:Z

    new-instance v0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller$1;

    invoke-direct {v0, p0}, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller$1;-><init>(Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;)V

    iput-object v0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->mGoToHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller$2;

    invoke-direct {v0, p0}, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller$2;-><init>(Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;)V

    iput-object v0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->mVSyncFrameCallback:Landroid/view/Choreographer$FrameCallback;

    iput-object p2, p0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->mDelegate:Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller$Delegate;

    iput-object p1, p0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->mRenderCoordinates:Lorg/chromium/content_public/browser/RenderCoordinates;

    invoke-static {p1}, Lorg/chromium/ui/display/DisplayAndroid;->getNonMultiDisplay(Landroid/content/Context;)Lorg/chromium/ui/display/DisplayAndroid;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->mDisplayAndroid:Lorg/chromium/ui/display/DisplayAndroid;

    return-void
.end method

.method public static synthetic a(Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->lambda$onActionDown$0()V

    return-void
.end method

.method public static bridge synthetic b(Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;)Landroid/view/Choreographer;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->mChoreographer:Landroid/view/Choreographer;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;)J
    .locals 2

    iget-wide v0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->mVsyncStartTime:J

    return-wide v0
.end method

.method private canShow(F)Z
    .locals 1

    iget v0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->mDisplayHeight:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->mDisplayAndroid:Lorg/chromium/ui/display/DisplayAndroid;

    invoke-virtual {v0}, Lorg/chromium/ui/display/DisplayAndroid;->getDisplayHeight()I

    move-result v0

    iput v0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->mDisplayHeight:I

    :cond_0
    iget p0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->mDisplayHeight:I

    int-to-float p0, p0

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p0, v0

    cmpl-float p0, p1, p0

    if-lez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private changeGoToButtonImageAlpha(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->mIsAlphaRequired:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->resetGoToButtonBitmap()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->setGoToButtonLayerState(Z)V

    iput-boolean p1, p0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->mIsAlphaRequired:Z

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->setGoToButtonBitmap()V

    return-void
.end method

.method private createBitmap()Landroid/graphics/Bitmap;
    .locals 4

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->getDrawable()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->getBitmapFromVectorDrawable(I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "TinBaseScroller"

    const-string v2, "getGoToBottomBitmap : bitmap is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->mIsAlphaRequired:Z

    if-eqz v1, :cond_1

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/high16 v2, -0x4e000000

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_1
    invoke-virtual {p0, v0}, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->setBitmap(Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public static bridge synthetic d(Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;J)V
    .locals 0

    iput-wide p1, p0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->mVsyncStartTime:J

    return-void
.end method

.method public static bridge synthetic e(Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->scroll()V

    return-void
.end method

.method private getBitmapFromVectorDrawable(I)Landroid/graphics/Bitmap;
    .locals 4

    iget-object p0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object p1
.end method

.method private hideGoToButtonWithDelay()V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->getMessage()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->mGoToHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->mGoToHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x5dc

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method private isSlideGesture(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v1, p0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->mDownX:F

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget v1, p0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->mDownY:F

    sub-float/2addr p1, v1

    iget-object p0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->mRenderCoordinates:Lorg/chromium/content_public/browser/RenderCoordinates;

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

.method private synthetic lambda$onActionDown$0()V
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->mDelegate:Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller$Delegate;

    invoke-interface {v0}, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller$Delegate;->isBothGoToButtonsVisible()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->onDragStart()V

    return-void
.end method

.method private needToChangeLayerState(Z)Z
    .locals 2

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->isVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->isVisible()Z

    move-result p0

    if-nez p0, :cond_1

    if-eqz p1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private onActionDown(Landroid/view/MotionEvent;)V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->isScrollToTopOrBottom()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->scrollEndForGoToButton()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->setScrollForGoToButton(Z)V

    invoke-static {v0}, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->setGoToButtonTap(Z)V

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->mDownX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->mDownY:F

    iget-object p1, p0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->mDelegate:Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller$Delegate;

    invoke-interface {p1}, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller$Delegate;->isScrollInProgress()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->mDelegate:Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller$Delegate;

    invoke-interface {p1}, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller$Delegate;->scrollEnd()V

    :cond_1
    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->resetDragGesture()V

    iget-object p1, p0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->mDragHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->mDragHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sec/terrace/content/browser/fastscroller/a;

    invoke-direct {v0, p0}, Lcom/sec/terrace/content/browser/fastscroller/a;-><init>(Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private onDragEnd(F)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->resetDragGesture()V

    iget-object v0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->mDelegate:Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller$Delegate;

    invoke-interface {v0}, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller$Delegate;->commitXPositionRatio()V

    invoke-direct {p0, p1}, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->setGotoPosition(F)V

    iget-object p0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->mDelegate:Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller$Delegate;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller$Delegate;->setDragOn(Z)V

    return-void
.end method

.method private onDragStart()V
    .locals 2

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->setDragStart(Z)V

    iget-object v1, p0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->mDelegate:Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller$Delegate;

    invoke-interface {v1}, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller$Delegate;->runDragGestureVibrate()V

    iget-object p0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->mDelegate:Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller$Delegate;

    invoke-interface {p0, v0}, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller$Delegate;->setDragOn(Z)V

    return-void
.end method

.method private scroll()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "scrollSpeed="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->mScrollSpeed:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->instant(Ljava/lang/String;)V

    iget v0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->mScrollSpeed:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->mDelegate:Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller$Delegate;

    neg-float v0, v0

    invoke-interface {p0, v0}, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller$Delegate;->scrollBy(F)V

    return-void
.end method

.method private scrollBeginForGoToButton(F)V
    .locals 3

    iget-object v0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->mRenderCoordinates:Lorg/chromium/content_public/browser/RenderCoordinates;

    invoke-interface {v0}, Lorg/chromium/content_public/browser/RenderCoordinates;->getScrollYPixInt()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->mDelegate:Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller$Delegate;

    invoke-interface {v1}, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller$Delegate;->getTopControlsHeightPix()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->getDistance(FFF)F

    move-result v1

    iput v1, p0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->mTotalDistance:F

    sget-boolean v1, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->DEBUG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "scrollBeginForGoToButton  scrollOffset = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "  contentHeight = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, "  mTotalDistance = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->mTotalDistance:F

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TinBaseScroller"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->setScrollSpeed()V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->setScrollForGoToButton(Z)V

    invoke-static {p1}, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->setGoToButtonTap(Z)V

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->startVSync()V

    iget-object p0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->mDelegate:Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller$Delegate;

    invoke-interface {p0}, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller$Delegate;->scrollBegin()V

    return-void
.end method

.method private static setDragStart(Z)V
    .locals 0

    sput-boolean p0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->sDragStart:Z

    return-void
.end method

.method private static setGoToButtonTap(Z)V
    .locals 0

    sput-boolean p0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->sGoToButtonTap:Z

    return-void
.end method

.method private setGotoPosition(F)V
    .locals 2

    iget-object v0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->mDelegate:Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller$Delegate;

    sget-boolean v1, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->sDragStart:Z

    invoke-interface {v0, v1}, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller$Delegate;->setAlphaToGotoBitmap(Z)V

    iget-object p0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->mDelegate:Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller$Delegate;

    invoke-interface {p0}, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller$Delegate;->getContentOffsetX()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    invoke-interface {p0, p1}, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller$Delegate;->setPosition(F)V

    return-void
.end method

.method public static setSDragStart(Z)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    sput-boolean p0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->sDragStart:Z

    return-void
.end method

.method private setScrollSpeed()V
    .locals 2

    iget v0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->mTotalDistance:F

    iget-object v1, p0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->mDelegate:Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller$Delegate;

    invoke-interface {v1}, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller$Delegate;->getViewportHeightPix()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x42480000    # 50.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x43960000    # 300.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v1, p0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->mTotalDistance:F

    div-float/2addr v1, v0

    const/high16 v0, 0x41800000    # 16.0f

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->mScrollSpeed:F

    invoke-interface {p0}, Lcom/sec/terrace/content/browser/fastscroller/TinScrollManagerDelegate;->getID()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->mScrollSpeed:F

    neg-float v0, v0

    iput v0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->mScrollSpeed:F

    :cond_0
    sget-boolean v0, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "scrollToBottom  scrollSpeed = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->mScrollSpeed:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "  mTotalDistance = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->mTotalDistance:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TinBaseScroller"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private updateAppearance(Z)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->needToChangeLayerState(Z)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->sDragStart:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    sget-boolean v0, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->DEBUG:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "updateAppearance  show = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "  mGoToBottomButtonVisible = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->isVisible()Z

    move-result v1

    const-string v2, "TinBaseScroller"

    invoke-static {v2, v0, v1}, Lt/b;->z(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    :cond_2
    iget-object v0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->mDelegate:Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller$Delegate;

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->getScrollType()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller$Delegate;->updateLayerAppearance(IZ)V

    return-void
.end method


# virtual methods
.method public didUpdateLayerAppearance(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->isVisible()Z

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->setVisible(Z)V

    sget-boolean p0, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->DEBUG:Z

    if-eqz p0, :cond_1

    const-string p0, "didUpdateLayerAppearance visible = "

    const-string v0, "TinBaseScroller"

    invoke-static {p0, v0, p1}, Lw2/j;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public getDisplayHeight()I
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget p0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->mDisplayHeight:I

    return p0
.end method

.method public getDisplayWidth()I
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget p0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->mDisplayWidth:I

    return p0
.end method

.method public abstract getDistance(FFF)F
.end method

.method public abstract getDrawable()I
.end method

.method public abstract getGoToButtonBitmap()Landroid/graphics/Bitmap;
.end method

.method public getMDoNotHandle()Z
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-boolean p0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->mDoNotHandle:Z

    return p0
.end method

.method public getMIsAlphaRequired()Z
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-boolean p0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->mIsAlphaRequired:Z

    return p0
.end method

.method public getMIsKeyEvent()Z
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-boolean p0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->mIsKeyEvent:Z

    return p0
.end method

.method public getMIsTouching()Z
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-boolean p0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->mIsTouching:Z

    return p0
.end method

.method public getMScrollSpeed()F
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget p0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->mScrollSpeed:F

    return p0
.end method

.method public abstract getMessage()I
.end method

.method public abstract getPrevScrollOffsetY()F
.end method

.method public getSDragStart()Z
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    sget-boolean p0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->sDragStart:Z

    return p0
.end method

.method public getSGoToButtonTap()Z
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    sget-boolean p0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->sGoToButtonTap:Z

    return p0
.end method

.method public abstract getScrollType()I
.end method

.method public handleGoToButton(Landroid/view/MotionEvent;)Z
    .locals 5

    sget-boolean v0, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->DEBUG:Z

    const-string v1, "TinBaseScroller"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "handleGoToBottom  event = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_8

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eq v0, v2, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 p1, 0x3

    if-eq v0, p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->mDragHandler:Landroid/os/Handler;

    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->resetDragGesture()V

    return v4

    :cond_2
    iget-boolean v0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->mDoNotHandle:Z

    if-eqz v0, :cond_3

    return v4

    :cond_3
    sget-boolean v0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->sDragStart:Z

    if-nez v0, :cond_4

    invoke-direct {p0, p1}, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->isSlideGesture(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p1, p0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->mDragHandler:Landroid/os/Handler;

    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-boolean v2, p0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->mDoNotHandle:Z

    return v2

    :cond_4
    sget-boolean v0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->sDragStart:Z

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->setGotoPosition(F)V

    return v2

    :cond_5
    iget-object v0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->mDragHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->mDoNotHandle:Z

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->resetDragGesture()V

    return v4

    :cond_6
    sget-boolean v0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->sDragStart:Z

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->onDragEnd(F)V

    return v4

    :cond_7
    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->shouldScroll()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->scrollBeginForGoToButton()V

    sget-boolean p0, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->DEBUG:Z

    if-eqz p0, :cond_9

    const-string p0, "Scroll for GoToButton Started!!!!"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_8
    invoke-direct {p0, p1}, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->onActionDown(Landroid/view/MotionEvent;)V

    :cond_9
    :goto_0
    return v2
.end method

.method public abstract hasReachedToScrollablePoint(FFFFF)Z
.end method

.method public hideGoToButtonImmediately()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->updateAppearance(Z)V

    :cond_0
    return-void
.end method

.method public abstract isEnabled()Z
.end method

.method public abstract isGoToButtonLayerExist()Z
.end method

.method public abstract isScrollToTopOrBottom()Z
.end method

.method public abstract isScrollingCompleted(FFFFF)Z
.end method

.method public abstract isVisible()Z
.end method

.method public onScrollBegin()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->setGoToButtonBitmap()V

    return-void
.end method

.method public resetDragGesture()V
    .locals 2

    sget-boolean v0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->sDragStart:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {v1}, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->setDragStart(Z)V

    :cond_0
    iget-boolean v0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->mDoNotHandle:Z

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->mDoNotHandle:Z

    :cond_1
    return-void
.end method

.method public abstract resetGoToButtonBitmap()V
.end method

.method public resetGoToButtonHidingTimer()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->getMessage()I

    move-result v0

    iget-object v1, p0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->mGoToHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->mGoToHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->hideGoToButtonWithDelay()V

    :cond_1
    return-void
.end method

.method public scrollBeginForGoToButton()V
    .locals 1

    invoke-interface {p0}, Lcom/sec/terrace/content/browser/fastscroller/TinScrollManagerDelegate;->getID()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->mRenderCoordinates:Lorg/chromium/content_public/browser/RenderCoordinates;

    invoke-interface {v0}, Lorg/chromium/content_public/browser/RenderCoordinates;->getContentHeightPixInt()I

    move-result v0

    int-to-float v0, v0

    :goto_0
    invoke-direct {p0, v0}, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->scrollBeginForGoToButton(F)V

    return-void
.end method

.method public scrollEndForGoToButton()V
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->mDelegate:Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller$Delegate;

    invoke-interface {v0}, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller$Delegate;->scrollEnd()V

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->stopVSync()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->setScrollForGoToButton(Z)V

    invoke-static {v0}, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->setGoToButtonTap(Z)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->mScrollSpeed:F

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->hideGoToButtonWithDelay()V

    return-void
.end method

.method public setAlphaToGotoBitmap(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->changeGoToButtonImageAlpha(Z)V

    return-void
.end method

.method public abstract setBitmap(Landroid/graphics/Bitmap;)V
.end method

.method public setDisplaySize(II)V
    .locals 2

    iget v0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->mDisplayWidth:I

    if-ne p1, v0, :cond_0

    iget v1, p0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->mDisplayHeight:I

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->mDisplayWidth:I

    iput p2, p0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->mDisplayHeight:I

    return-void
.end method

.method public setGoToButtonBitmap()V
    .locals 3

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->isHighContrastModeEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->isNightModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iget v1, p0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->mDeviceScaleFactor:F

    iget-object v2, p0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->mRenderCoordinates:Lorg/chromium/content_public/browser/RenderCoordinates;

    invoke-interface {v2}, Lorg/chromium/content_public/browser/RenderCoordinates;->getDeviceScaleFactor()F

    move-result v2

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->resetGoToButtonBitmap()V

    iget-object v0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->mRenderCoordinates:Lorg/chromium/content_public/browser/RenderCoordinates;

    invoke-interface {v0}, Lorg/chromium/content_public/browser/RenderCoordinates;->getDeviceScaleFactor()F

    move-result v0

    iput v0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->mDeviceScaleFactor:F

    goto :goto_2

    :cond_2
    iget-boolean v1, p0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->mNightState:Z

    if-eq v1, v0, :cond_3

    iput-boolean v0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->mNightState:Z

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->resetGoToButtonBitmap()V

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->isGoToButtonLayerExist()Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->getGoToButtonBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_5

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->createBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->getGoToButtonBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq v1, v2, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bitmap Config = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TinBaseScroller"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->resetGoToButtonBitmap()V

    return-void

    :cond_6
    iget-object v1, p0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->mDelegate:Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller$Delegate;

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->getScrollType()I

    move-result p0

    invoke-interface {v1, p0, v0}, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller$Delegate;->setGoToButtonBitmap(ILandroid/graphics/Bitmap;)V

    return-void
.end method

.method public abstract setGoToButtonLayerState(Z)V
.end method

.method public setIsKeyEvent(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->mIsKeyEvent:Z

    return-void
.end method

.method public setIsTouching(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->mIsTouching:Z

    invoke-interface {p0}, Lcom/sec/terrace/content/browser/fastscroller/TinScrollManagerDelegate;->getID()I

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->getPrevScrollOffsetY()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->hideGoToButtonImmediately()V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->setGoToButtonBitmap()V

    :cond_1
    return-void
.end method

.method public setMDoNotHandle(Z)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput-boolean p1, p0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->mDoNotHandle:Z

    return-void
.end method

.method public setMIsAlphaRequired(Z)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput-boolean p1, p0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->mIsAlphaRequired:Z

    return-void
.end method

.method public abstract setPrevScrollOffsetY(F)V
.end method

.method public abstract setScrollForGoToButton(Z)V
.end method

.method public abstract setVisible(Z)V
.end method

.method public shouldIgnoreGoToButton()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->mDoNotHandle:Z

    return p0
.end method

.method public abstract shouldScroll()Z
.end method

.method public abstract shouldShowGoToButton(FF)Z
.end method

.method public startVSync()V
    .locals 2

    iget-object v0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->mChoreographer:Landroid/view/Choreographer;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->mChoreographer:Landroid/view/Choreographer;

    :cond_0
    iget-object v0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->mVSyncFrameCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->mVsyncStartTime:J

    return-void
.end method

.method public stopGoToButton()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->isScrollToTopOrBottom()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->scrollEndForGoToButton()V

    :cond_0
    return-void
.end method

.method public stopVSync()V
    .locals 2

    iget-object v0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->mChoreographer:Landroid/view/Choreographer;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->mVSyncFrameCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->mChoreographer:Landroid/view/Choreographer;

    :cond_0
    return-void
.end method

.method public updateAppearance(FF)V
    .locals 7

    sget-boolean v0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->sGoToButtonTap:Z

    if-eqz v0, :cond_0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    move v2, p1

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->hasReachedToScrollablePoint(FFFFF)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->isGoToBottomEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->mDelegate:Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller$Delegate;

    const/4 p1, 0x2

    const/4 p2, 0x1

    invoke-interface {p0, p1, p2}, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller$Delegate;->updateLayerAppearance(IZ)V

    :cond_0
    return-void
.end method

.method public updateFrameInfo(FFFFF)V
    .locals 6

    iget-object v0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->mDelegate:Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller$Delegate;

    invoke-interface {v0}, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller$Delegate;->disableForAiFeatures()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->hideGoToButtonImmediately()V

    return-void

    :cond_0
    iget v0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->mPageScaleFactor:F

    cmpl-float v0, v0, p3

    if-eqz v0, :cond_1

    iput p3, p0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->mPageScaleFactor:F

    :cond_1
    iget-boolean v0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->mIsTouching:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->stopGoToButton()V

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->hideGoToButtonImmediately()V

    return-void

    :cond_2
    move-object v0, p0

    move v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->hasReachedToScrollablePoint(FFFFF)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->hideGoToButtonImmediately()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->resetGoToButtonHidingTimer()V

    :goto_0
    invoke-virtual {p0, p1}, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->setPrevScrollOffsetY(F)V

    return-void

    :cond_4
    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->isVisible()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, p1, p4}, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->shouldShowGoToButton(FF)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    return-void

    :cond_6
    invoke-interface {p0}, Lcom/sec/terrace/content/browser/fastscroller/TinScrollManagerDelegate;->getID()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_8

    cmpl-float v0, p1, p4

    if-lez v0, :cond_7

    goto :goto_1

    :cond_7
    move v0, v1

    goto :goto_2

    :cond_8
    :goto_1
    move v0, v2

    :goto_2
    invoke-interface {p0}, Lcom/sec/terrace/content/browser/fastscroller/TinScrollManagerDelegate;->getID()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_a

    sub-float v0, p5, p4

    cmpg-float v0, p1, v0

    if-gez v0, :cond_9

    move v0, v2

    goto :goto_3

    :cond_9
    move v0, v1

    :cond_a
    :goto_3
    invoke-interface {p0}, Lcom/sec/terrace/content/browser/fastscroller/TinScrollManagerDelegate;->getID()I

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {p0}, Lcom/sec/terrace/content/browser/fastscroller/TinScrollManagerDelegate;->getID()I

    move-result v3

    if-ne v3, v4, :cond_b

    goto :goto_5

    :cond_b
    :goto_4
    move v1, v2

    goto :goto_6

    :cond_c
    :goto_5
    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->getPrevScrollOffsetY()F

    move-result v3

    cmpl-float v3, v3, p1

    if-eqz v3, :cond_d

    goto :goto_4

    :cond_d
    :goto_6
    iget-object v3, p0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->mDelegate:Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller$Delegate;

    invoke-interface {v3}, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller$Delegate;->isScrollInProgress()Z

    move-result v3

    if-nez v3, :cond_e

    iget-boolean v3, p0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->mIsKeyEvent:Z

    if-eqz v3, :cond_10

    :cond_e
    if-eqz v1, :cond_10

    if-eqz v0, :cond_10

    invoke-direct {p0, p5}, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->canShow(F)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->stopGoToButton()V

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->hideGoToButtonImmediately()V

    goto :goto_7

    :cond_f
    invoke-direct {p0, v2}, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->updateAppearance(Z)V

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->resetGoToButtonHidingTimer()V

    sget-boolean v0, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->sGoToButtonTap:Z

    if-eqz v0, :cond_11

    move-object v0, p0

    move v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->isScrollingCompleted(FFFFF)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->hideGoToButtonImmediately()V

    goto :goto_7

    :cond_10
    invoke-direct {p0}, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->hideGoToButtonWithDelay()V

    :cond_11
    :goto_7
    sget-boolean v0, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->DEBUG:Z

    if-eqz v0, :cond_12

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "updateFrameInfo  scrollOffsetY = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " controlsOffsetY = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " mGoToTopButtonVisible = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->isVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TinBaseScroller"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    invoke-virtual {p0, p1}, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->setPrevScrollOffsetY(F)V

    move-object v0, p0

    move v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->hasReachedToScrollablePoint(FFFFF)Z

    move-result p1

    if-eqz p1, :cond_13

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->stopGoToButton()V

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;->hideGoToButtonImmediately()V

    :cond_13
    return-void
.end method
