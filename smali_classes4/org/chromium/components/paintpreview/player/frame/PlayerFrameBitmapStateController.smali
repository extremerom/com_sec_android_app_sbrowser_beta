.class public Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapStateController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mCompositorDelegate:Lorg/chromium/components/paintpreview/player/PlayerCompositorDelegate;

.field private final mContentSize:Landroid/util/Size;

.field private final mGuid:Lorg/chromium/base/UnguessableToken;

.field private mLoadingBitmapState:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;

.field private final mMediatorDelegate:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediatorDelegate;

.field private final mViewport:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;

.field private mVisibleBitmapState:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;


# virtual methods
.method public deleteAll()V
    .locals 2

    iget-object v0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapStateController;->mLoadingBitmapState:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;->destroy()V

    iput-object v1, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapStateController;->mLoadingBitmapState:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;

    :cond_0
    iget-object v0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapStateController;->mVisibleBitmapState:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;->destroy()V

    iput-object v1, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapStateController;->mVisibleBitmapState:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;

    :cond_1
    return-void
.end method

.method public getBitmapState(Z)Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;
    .locals 9

    iget-object v0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapStateController;->mLoadingBitmapState:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapStateController;->mVisibleBitmapState:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;

    :cond_0
    if-nez p1, :cond_1

    if-nez v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapStateController;->invalidateLoadingBitmaps()V

    iget-object p1, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapStateController;->mViewport:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;

    invoke-virtual {p1}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;->getBitmapTileSize()Landroid/util/Size;

    move-result-object p1

    iget-object v0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapStateController;->mCompositorDelegate:Lorg/chromium/components/paintpreview/player/PlayerCompositorDelegate;

    invoke-static {v0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;

    iget-object v2, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapStateController;->mGuid:Lorg/chromium/base/UnguessableToken;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v4

    iget-object p1, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapStateController;->mViewport:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;

    invoke-virtual {p1}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;->getScale()F

    move-result v5

    iget-object v6, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapStateController;->mContentSize:Landroid/util/Size;

    iget-object v7, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapStateController;->mCompositorDelegate:Lorg/chromium/components/paintpreview/player/PlayerCompositorDelegate;

    move-object v1, v0

    move-object v8, p0

    invoke-direct/range {v1 .. v8}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;-><init>(Lorg/chromium/base/UnguessableToken;IIFLandroid/util/Size;Lorg/chromium/components/paintpreview/player/PlayerCompositorDelegate;Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapStateController;)V

    iput-object v0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapStateController;->mLoadingBitmapState:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;

    iget-object p1, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapStateController;->mVisibleBitmapState:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;

    if-nez p1, :cond_2

    invoke-virtual {v0}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;->skipWaitingForVisibleBitmaps()V

    iget-object p1, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapStateController;->mLoadingBitmapState:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;

    invoke-virtual {p0, p1}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapStateController;->swap(Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;)V

    iget-object v0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapStateController;->mVisibleBitmapState:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;

    :cond_2
    return-object v0
.end method

.method public invalidateLoadingBitmaps()V
    .locals 1

    iget-object v0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapStateController;->mLoadingBitmapState:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapStateController;->mLoadingBitmapState:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;

    return-void
.end method

.method public isVisible(Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;)Z
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapStateController;->mVisibleBitmapState:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onStartScaling()V
    .locals 1

    iget-object v0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapStateController;->mVisibleBitmapState:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapStateController;->invalidateLoadingBitmaps()V

    iget-object p0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapStateController;->mVisibleBitmapState:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;

    if-nez p0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;->lock()V

    return-void
.end method

.method public stateUpdated(Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;)V
    .locals 1

    invoke-virtual {p0, p1}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapStateController;->isVisible(Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapStateController;->mMediatorDelegate:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediatorDelegate;

    invoke-virtual {p1}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;->getMatrix()[[Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediatorDelegate;->updateBitmapMatrix([[Landroid/graphics/Bitmap;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;->isReadyToShow()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapStateController;->swap(Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;)V

    return-void
.end method

.method public swap(Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;)V
    .locals 1
    .annotation build Lorg/chromium/build/annotations/EnsuresNonNull;
    .end annotation

    iget-object v0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapStateController;->mVisibleBitmapState:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;

    iput-object p1, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapStateController;->mVisibleBitmapState:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapStateController;->mLoadingBitmapState:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;

    iget-object p0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapStateController;->mMediatorDelegate:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediatorDelegate;

    invoke-interface {p0}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediatorDelegate;->onSwapState()V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;->destroy()V

    :cond_0
    return-void
.end method
