.class Lorg/chromium/components/paintpreview/player/frame/PlayerFrameGestureDetector;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mCanDetectZoom:Z

.field private mDelegate:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameGestureDetectorDelegate;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mLastParentScrollX:F

.field private mLastParentScrollY:F

.field private mParentGestureDetector:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameGestureDetector;

.field private mScaleGestureDetector:Landroid/view/ScaleGestureDetector;


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    iget-object v0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameGestureDetector;->mDelegate:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameGestureDetectorDelegate;

    invoke-virtual {v0, p3, p4}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameGestureDetectorDelegate;->onFling(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object p0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameGestureDetector;->mParentGestureDetector:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameGestureDetector;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameGestureDetector;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object p0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameGestureDetector;->mDelegate:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameGestureDetectorDelegate;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, v0, p1}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameGestureDetectorDelegate;->onLongPress(II)V

    return-void
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 2

    iget-object p0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameGestureDetector;->mDelegate:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameGestureDetectorDelegate;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameGestureDetectorDelegate;->scaleBy(FFF)Z

    move-result p0

    return p0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 2

    iget-object p0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameGestureDetector;->mDelegate:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameGestureDetectorDelegate;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameGestureDetectorDelegate;->scaleFinished(FFF)Z

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3

    iget-object v0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameGestureDetector;->mDelegate:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameGestureDetectorDelegate;

    invoke-virtual {v0, p3, p4}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameGestureDetectorDelegate;->scrollBy(FF)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iput v2, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameGestureDetector;->mLastParentScrollX:F

    iput v2, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameGestureDetector;->mLastParentScrollY:F

    return v1

    :cond_0
    iget v0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameGestureDetector;->mLastParentScrollX:F

    add-float/2addr v0, p3

    iput v0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameGestureDetector;->mLastParentScrollX:F

    iget p3, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameGestureDetector;->mLastParentScrollY:F

    add-float/2addr p3, p4

    iput p3, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameGestureDetector;->mLastParentScrollY:F

    iget-object p4, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameGestureDetector;->mParentGestureDetector:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameGestureDetector;

    if-eqz p4, :cond_1

    invoke-virtual {p4, p1, p2, v0, p3}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameGestureDetector;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    :cond_1
    iput v2, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameGestureDetector;->mLastParentScrollX:F

    iput v2, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameGestureDetector;->mLastParentScrollY:F

    const/4 p0, 0x0

    return p0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object p0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameGestureDetector;->mDelegate:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameGestureDetectorDelegate;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, v0, p1}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameGestureDetectorDelegate;->onTap(II)V

    const/4 p0, 0x1

    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    const-string v0, "PlayerFrameGestureDetector.onTouchEvent"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->begin(Ljava/lang/String;)V

    iget-boolean v1, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameGestureDetector;->mCanDetectZoom:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameGestureDetector;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameGestureDetector;->mDelegate:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameGestureDetectorDelegate;

    invoke-virtual {v1}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameGestureDetectorDelegate;->onRelease()V

    iget-object v1, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameGestureDetector;->mParentGestureDetector:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameGestureDetector;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_1
    iget-object p0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    return p0
.end method
