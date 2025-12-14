.class public Lorg/chromium/components/paintpreview/player/frame/PlayerFrameGestureDetectorDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field private final mScaleController:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameScaleController;

.field private final mScrollController:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameScrollController;

.field private final mViewDelegate:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewDelegate;


# virtual methods
.method public onFling(FF)Z
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameGestureDetectorDelegate;->mScrollController:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameScrollController;

    invoke-virtual {p0, p1, p2}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameScrollController;->onFling(FF)Z

    move-result p0

    return p0
.end method

.method public onLongPress(II)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameGestureDetectorDelegate;->mViewDelegate:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewDelegate;

    invoke-interface {p0, p1, p2}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewDelegate;->onLongPress(II)V

    return-void
.end method

.method public onRelease()V
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameGestureDetectorDelegate;->mScrollController:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameScrollController;

    invoke-virtual {p0}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameScrollController;->onRelease()V

    return-void
.end method

.method public onTap(II)V
    .locals 1

    iget-object p0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameGestureDetectorDelegate;->mViewDelegate:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewDelegate;

    const/4 v0, 0x0

    invoke-interface {p0, p1, p2, v0}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewDelegate;->onTap(IIZ)V

    return-void
.end method

.method public scaleBy(FFF)Z
    .locals 1

    iget-object v0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameGestureDetectorDelegate;->mScaleController:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameScaleController;

    invoke-static {v0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameGestureDetectorDelegate;->mScaleController:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameScaleController;

    invoke-virtual {p0, p1, p2, p3}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameScaleController;->scaleBy(FFF)Z

    move-result p0

    return p0
.end method

.method public scaleFinished(FFF)Z
    .locals 1

    iget-object v0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameGestureDetectorDelegate;->mScaleController:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameScaleController;

    invoke-static {v0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameGestureDetectorDelegate;->mScaleController:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameScaleController;

    invoke-virtual {p0, p1, p2, p3}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameScaleController;->scaleFinished(FFF)Z

    move-result p0

    return p0
.end method

.method public scrollBy(FF)Z
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameGestureDetectorDelegate;->mScrollController:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameScrollController;

    invoke-virtual {p0, p1, p2}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameScrollController;->scrollBy(FF)Z

    move-result p0

    return p0
.end method
