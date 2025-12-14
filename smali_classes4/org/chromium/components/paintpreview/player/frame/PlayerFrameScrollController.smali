.class public Lorg/chromium/components/paintpreview/player/frame/PlayerFrameScrollController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field private mAcceptUserInput:Z

.field private final mContentSize:Landroid/util/Size;

.field private mIsOverscrolling:Z

.field private final mMediatorDelegate:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediatorDelegate;

.field private final mOnFlingListener:Ljava/lang/Runnable;

.field private mOnScrollCallbackForAccessibility:Ljava/lang/Runnable;

.field private final mOnScrollListener:Ljava/lang/Runnable;

.field private mOverscrollAmount:F

.field private mOverscrollHandler:Lorg/chromium/components/paintpreview/player/OverscrollHandler;

.field private final mScroller:Landroid/widget/OverScroller;

.field private final mScrollerHandler:Landroid/os/Handler;

.field private final mViewport:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;


# direct methods
.method public static synthetic a(Lorg/chromium/components/paintpreview/player/frame/PlayerFrameScrollController;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameScrollController;->handleFling()V

    return-void
.end method

.method private handleFling()V
    .locals 4

    iget-object v0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameScrollController;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameScrollController;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    iget-object v1, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameScrollController;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v1

    iget-object v2, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameScrollController;->mViewport:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;

    invoke-virtual {v2}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;->getTransX()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameScrollController;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v2

    iget-object v3, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameScrollController;->mViewport:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;

    invoke-virtual {v3}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;->getTransY()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v1, v1

    int-to-float v2, v2

    invoke-direct {p0, v1, v2}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameScrollController;->scrollByInternal(FF)Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameScrollController;->mScrollerHandler:Landroid/os/Handler;

    new-instance v1, Lorg/chromium/components/paintpreview/player/frame/a;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0}, Lorg/chromium/components/paintpreview/player/frame/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method private maybeHandleOverscroll(F)Z
    .locals 4

    iget-object v0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameScrollController;->mOverscrollHandler:Lorg/chromium/components/paintpreview/player/OverscrollHandler;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameScrollController;->mViewport:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;

    invoke-virtual {v0}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;->getTransY()F

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameScrollController;->mIsOverscrolling:Z

    const/4 v2, 0x0

    if-nez v0, :cond_1

    cmpg-float v3, p1, v2

    if-gtz v3, :cond_1

    return v1

    :cond_1
    iget v3, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameScrollController;->mOverscrollAmount:F

    add-float/2addr v3, p1

    iput v3, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameScrollController;->mOverscrollAmount:F

    cmpg-float v3, v3, v2

    if-gtz v3, :cond_2

    iput-boolean v1, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameScrollController;->mIsOverscrolling:Z

    iget-object p0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameScrollController;->mOverscrollHandler:Lorg/chromium/components/paintpreview/player/OverscrollHandler;

    invoke-interface {p0}, Lorg/chromium/components/paintpreview/player/OverscrollHandler;->reset()V

    return v1

    :cond_2
    if-nez v0, :cond_3

    cmpl-float v0, p1, v2

    if-lez v0, :cond_3

    iput p1, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameScrollController;->mOverscrollAmount:F

    iget-object v0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameScrollController;->mOverscrollHandler:Lorg/chromium/components/paintpreview/player/OverscrollHandler;

    invoke-interface {v0}, Lorg/chromium/components/paintpreview/player/OverscrollHandler;->start()Z

    move-result v0

    iput-boolean v0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameScrollController;->mIsOverscrolling:Z

    :cond_3
    iget-object v0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameScrollController;->mOverscrollHandler:Lorg/chromium/components/paintpreview/player/OverscrollHandler;

    invoke-interface {v0, p1}, Lorg/chromium/components/paintpreview/player/OverscrollHandler;->pull(F)V

    iget-boolean p0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameScrollController;->mIsOverscrolling:Z

    return p0

    :cond_4
    :goto_0
    return v1
.end method

.method private scrollByInternal(FF)Z
    .locals 9

    iget-boolean v0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameScrollController;->mAcceptUserInput:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    neg-float v0, p2

    invoke-direct {p0, v0}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameScrollController;->maybeHandleOverscroll(F)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameScrollController;->mViewport:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;

    invoke-virtual {v0}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;->getScale()F

    move-result v0

    iget-object v3, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameScrollController;->mContentSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    iget-object v4, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameScrollController;->mContentSize:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v0

    iget-object v0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameScrollController;->mViewport:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;

    invoke-virtual {v0}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;->asRect()Landroid/graphics/Rect;

    move-result-object v0

    iget v5, v0, Landroid/graphics/Rect;->left:I

    const/high16 v6, -0x40800000    # -1.0f

    const/4 v7, 0x0

    if-lez v5, :cond_2

    cmpg-float v8, p1, v7

    if-gez v8, :cond_2

    int-to-float v3, v5

    mul-float/2addr v3, v6

    invoke-static {p1, v3}, Ljava/lang/Math;->max(FF)F

    move-result p1

    :goto_0
    float-to-int p1, p1

    goto :goto_1

    :cond_2
    iget v5, v0, Landroid/graphics/Rect;->right:I

    int-to-float v8, v5

    cmpg-float v8, v8, v3

    if-gez v8, :cond_3

    cmpl-float v8, p1, v7

    if-lez v8, :cond_3

    int-to-float v5, v5

    sub-float/2addr v3, v5

    invoke-static {p1, v3}, Ljava/lang/Math;->min(FF)F

    move-result p1

    goto :goto_0

    :cond_3
    move p1, v1

    :goto_1
    iget v3, v0, Landroid/graphics/Rect;->top:I

    if-lez v3, :cond_4

    cmpg-float v5, p2, v7

    if-gez v5, :cond_4

    int-to-float v0, v3

    mul-float/2addr v0, v6

    invoke-static {p2, v0}, Ljava/lang/Math;->max(FF)F

    move-result p2

    :goto_2
    float-to-int p2, p2

    goto :goto_3

    :cond_4
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_5

    cmpl-float v3, p2, v7

    if-lez v3, :cond_5

    int-to-float v0, v0

    sub-float/2addr v4, v0

    invoke-static {p2, v4}, Ljava/lang/Math;->min(FF)F

    move-result p2

    goto :goto_2

    :cond_5
    move p2, v1

    :goto_3
    if-nez p1, :cond_6

    if-nez p2, :cond_6

    return v1

    :cond_6
    iget-object v0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameScrollController;->mMediatorDelegate:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediatorDelegate;

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-interface {v0, p1, p2}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediatorDelegate;->offsetBitmapScaleMatrix(FF)V

    iget-object v0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameScrollController;->mViewport:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;

    invoke-virtual {v0, p1, p2}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;->offset(FF)V

    iget-object p1, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameScrollController;->mMediatorDelegate:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediatorDelegate;

    invoke-interface {p1, v1}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediatorDelegate;->updateVisuals(Z)V

    iget-object p0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameScrollController;->mOnScrollCallbackForAccessibility:Ljava/lang/Runnable;

    if-eqz p0, :cond_7

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_7
    return v2
.end method


# virtual methods
.method public onFling(FF)Z
    .locals 13

    iget-boolean v0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameScrollController;->mAcceptUserInput:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameScrollController;->mViewport:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;

    invoke-virtual {v0}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;->getScale()F

    move-result v0

    iget-object v1, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameScrollController;->mContentSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iget-object v2, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameScrollController;->mContentSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v0, v2

    iget-object v2, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameScrollController;->mScroller:Landroid/widget/OverScroller;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/OverScroller;->forceFinished(Z)V

    iget-object v2, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameScrollController;->mViewport:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;

    invoke-virtual {v2}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;->asRect()Landroid/graphics/Rect;

    move-result-object v2

    iget-object v4, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameScrollController;->mScroller:Landroid/widget/OverScroller;

    iget v5, v2, Landroid/graphics/Rect;->left:I

    iget v6, v2, Landroid/graphics/Rect;->top:I

    neg-float p1, p1

    float-to-int v7, p1

    neg-float p1, p2

    float-to-int v8, p1

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result p1

    sub-int v10, v1, p1

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result p1

    sub-int v12, v0, p1

    const/4 v9, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v12}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    iget-object p1, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameScrollController;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameScrollController;->mOnFlingListener:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_1
    iget-object p1, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameScrollController;->mScrollerHandler:Landroid/os/Handler;

    new-instance p2, Lorg/chromium/components/paintpreview/player/frame/a;

    const/4 v0, 0x1

    invoke-direct {p2, v0, p0}, Lorg/chromium/components/paintpreview/player/frame/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v3
.end method

.method public onRelease()V
    .locals 2

    iget-object v0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameScrollController;->mOverscrollHandler:Lorg/chromium/components/paintpreview/player/OverscrollHandler;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameScrollController;->mIsOverscrolling:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/chromium/components/paintpreview/player/OverscrollHandler;->release()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameScrollController;->mIsOverscrolling:Z

    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameScrollController;->mOverscrollAmount:F

    :cond_1
    :goto_0
    return-void
.end method

.method public scrollBy(FF)Z
    .locals 2

    iget-object v0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameScrollController;->mScroller:Landroid/widget/OverScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/OverScroller;->forceFinished(Z)V

    invoke-direct {p0, p1, p2}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameScrollController;->scrollByInternal(FF)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameScrollController;->mOnScrollListener:Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return p1
.end method

.method public scrollToMakeRectVisibleForAccessibility(Landroid/graphics/Rect;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameScrollController;->mViewport:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;

    invoke-virtual {v0}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;->getScale()F

    move-result v0

    new-instance v1, Landroid/graphics/Rect;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    iget v3, p1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    mul-float/2addr v3, v0

    float-to-int v3, v3

    iget v4, p1, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    mul-float/2addr v4, v0

    float-to-int v4, v4

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    mul-float/2addr p1, v0

    float-to-int p1, p1

    invoke-direct {v1, v2, v3, v4, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object p1, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameScrollController;->mViewport:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;

    invoke-virtual {p1}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;->asRect()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget v0, v1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    if-ge v0, v2, :cond_2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    add-int/2addr v2, v0

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v0

    int-to-float v0, v2

    :goto_0
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->left:I

    if-ge v2, v3, :cond_3

    sub-int/2addr v2, v3

    int-to-float p1, v2

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    add-int/2addr v1, v2

    iget p1, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, p1

    int-to-float p1, v1

    :goto_1
    invoke-virtual {p0, p1, v0}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameScrollController;->scrollBy(FF)Z

    return-void
.end method

.method public setOnScrollCallbackForAccessibility(Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameScrollController;->mOnScrollCallbackForAccessibility:Ljava/lang/Runnable;

    return-void
.end method
