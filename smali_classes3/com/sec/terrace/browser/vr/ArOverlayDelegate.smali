.class public Lcom/sec/terrace/browser/vr/ArOverlayDelegate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/vr/XrImmersiveOverlay$Delegate;


# instance fields
.field private mArCompositorDelegate:Lcom/sec/terrace/browser/vr/ArCompositorDelegate;

.field private mCanRenderDomContent:Z

.field private mDomSurfaceNeedsConfiguring:Z

.field private mUseOverlay:Z

.field private mWebContents:Lorg/chromium/content_public/browser/WebContents;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/browser/vr/ArCompositorDelegate;Lorg/chromium/content_public/browser/WebContents;ZZ)V
    .locals 0
    .param p1    # Lcom/sec/terrace/browser/vr/ArCompositorDelegate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/terrace/browser/vr/ArOverlayDelegate;->mArCompositorDelegate:Lcom/sec/terrace/browser/vr/ArCompositorDelegate;

    iput-object p2, p0, Lcom/sec/terrace/browser/vr/ArOverlayDelegate;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    iput-boolean p3, p0, Lcom/sec/terrace/browser/vr/ArOverlayDelegate;->mUseOverlay:Z

    iput-boolean p4, p0, Lcom/sec/terrace/browser/vr/ArOverlayDelegate;->mCanRenderDomContent:Z

    if-eqz p3, :cond_0

    if-nez p4, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/sec/terrace/browser/vr/ArOverlayDelegate;->mDomSurfaceNeedsConfiguring:Z

    return-void
.end method


# virtual methods
.method public configureSurfaceView(Landroid/view/SurfaceView;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, -0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    iget-boolean v0, p0, Lcom/sec/terrace/browser/vr/ArOverlayDelegate;->mDomSurfaceNeedsConfiguring:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/SurfaceView;->setZOrderMediaOverlay(Z)V

    iget-boolean p1, p0, Lcom/sec/terrace/browser/vr/ArOverlayDelegate;->mUseOverlay:Z

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/sec/terrace/browser/vr/ArOverlayDelegate;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-static {p0}, Lorg/chromium/content_public/browser/WebContentsAccessibility;->fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content_public/browser/WebContentsAccessibility;

    move-result-object p0

    invoke-interface {p0, v1}, Lorg/chromium/content_public/browser/WebContentsAccessibility;->setObscuredByAnotherView(Z)V

    :cond_0
    return-void
.end method

.method public getDesiredOrientation()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public maybeForwardTouchEvent(Landroid/view/MotionEvent;)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/terrace/browser/vr/ArOverlayDelegate;->mUseOverlay:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/terrace/browser/vr/ArOverlayDelegate;->mArCompositorDelegate:Lcom/sec/terrace/browser/vr/ArCompositorDelegate;

    invoke-interface {p0, p1}, Lcom/sec/terrace/browser/vr/ArCompositorDelegate;->dispatchTouchEvent(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method public onStopUsingSurfaceView()V
    .locals 2

    iget-object v0, p0, Lcom/sec/terrace/browser/vr/ArOverlayDelegate;->mArCompositorDelegate:Lcom/sec/terrace/browser/vr/ArCompositorDelegate;

    const/4 v1, 0x0

    iget-boolean p0, p0, Lcom/sec/terrace/browser/vr/ArOverlayDelegate;->mDomSurfaceNeedsConfiguring:Z

    invoke-interface {v0, v1, p0}, Lcom/sec/terrace/browser/vr/ArCompositorDelegate;->setOverlayImmersiveArMode(ZZ)V

    return-void
.end method

.method public parentAndShowSurfaceView(Landroid/view/SurfaceView;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/browser/vr/ArOverlayDelegate;->mArCompositorDelegate:Lcom/sec/terrace/browser/vr/ArCompositorDelegate;

    invoke-interface {v0}, Lcom/sec/terrace/browser/vr/ArCompositorDelegate;->getArSurfaceParent()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/terrace/browser/vr/ArOverlayDelegate;->mArCompositorDelegate:Lcom/sec/terrace/browser/vr/ArCompositorDelegate;

    invoke-interface {p0}, Lcom/sec/terrace/browser/vr/ArCompositorDelegate;->shouldToggleArSurfaceParentVisibility()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public prepareToCreateSurfaceView()V
    .locals 2

    iget-object v0, p0, Lcom/sec/terrace/browser/vr/ArOverlayDelegate;->mArCompositorDelegate:Lcom/sec/terrace/browser/vr/ArCompositorDelegate;

    const/4 v1, 0x1

    iget-boolean p0, p0, Lcom/sec/terrace/browser/vr/ArOverlayDelegate;->mDomSurfaceNeedsConfiguring:Z

    invoke-interface {v0, v1, p0}, Lcom/sec/terrace/browser/vr/ArCompositorDelegate;->setOverlayImmersiveArMode(ZZ)V

    return-void
.end method

.method public removeAndHideSurfaceView(Landroid/view/SurfaceView;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-boolean v1, p0, Lcom/sec/terrace/browser/vr/ArOverlayDelegate;->mUseOverlay:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/terrace/browser/vr/ArOverlayDelegate;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-static {v1}, Lorg/chromium/content_public/browser/WebContentsAccessibility;->fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content_public/browser/WebContentsAccessibility;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lorg/chromium/content_public/browser/WebContentsAccessibility;->setObscuredByAnotherView(Z)V

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object p0, p0, Lcom/sec/terrace/browser/vr/ArOverlayDelegate;->mArCompositorDelegate:Lcom/sec/terrace/browser/vr/ArCompositorDelegate;

    invoke-interface {p0}, Lcom/sec/terrace/browser/vr/ArCompositorDelegate;->shouldToggleArSurfaceParentVisibility()Z

    move-result p0

    if-eqz p0, :cond_2

    const/16 p0, 0x8

    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public useDisplaySizes()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
