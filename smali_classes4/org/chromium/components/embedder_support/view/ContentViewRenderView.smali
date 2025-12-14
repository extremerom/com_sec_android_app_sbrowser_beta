.class public Lorg/chromium/components/embedder_support/view/ContentViewRenderView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/components/embedder_support/view/ContentViewRenderView$SurfaceBridge;,
        Lorg/chromium/components/embedder_support/view/ContentViewRenderView$Natives;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mHeight:I

.field protected mNativeContentViewRenderView:J

.field protected mSurfaceBridge:Lorg/chromium/components/embedder_support/view/ContentViewRenderView$SurfaceBridge;

.field private mSurfaceId:Ljava/lang/Integer;

.field protected mWebContents:Lorg/chromium/content_public/browser/WebContents;

.field private mWidth:I

.field protected mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;


# direct methods
.method public static bridge synthetic a(Lorg/chromium/components/embedder_support/view/ContentViewRenderView;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/embedder_support/view/ContentViewRenderView;->mSurfaceId:Ljava/lang/Integer;

    return-object p0
.end method

.method public static bridge synthetic b(Lorg/chromium/components/embedder_support/view/ContentViewRenderView;Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/components/embedder_support/view/ContentViewRenderView;->mSurfaceId:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public didSwapFrame()V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-virtual {p0}, Lorg/chromium/components/embedder_support/view/ContentViewRenderView;->getSurfaceView()Landroid/view/SurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/chromium/components/embedder_support/view/ContentViewRenderView$2;

    invoke-direct {v0, p0}, Lorg/chromium/components/embedder_support/view/ContentViewRenderView$2;-><init>(Lorg/chromium/components/embedder_support/view/ContentViewRenderView;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public getSurfaceView()Landroid/view/SurfaceView;
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/embedder_support/view/ContentViewRenderView;->mSurfaceBridge:Lorg/chromium/components/embedder_support/view/ContentViewRenderView$SurfaceBridge;

    invoke-virtual {p0}, Lorg/chromium/components/embedder_support/view/ContentViewRenderView$SurfaceBridge;->getSurfaceView()Landroid/view/SurfaceView;

    move-result-object p0

    return-object p0
.end method

.method public notifySurfaceChange(Landroid/view/SurfaceHolder;III)V
    .locals 0

    return-void
.end method

.method public notifySurfaceCreation(Landroid/view/SurfaceHolder;)V
    .locals 0

    return-void
.end method

.method public notifySurfaceDestroy(Landroid/view/SurfaceHolder;)V
    .locals 0

    return-void
.end method

.method public onReadyToRender()V
    .locals 0

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    iput p1, p0, Lorg/chromium/components/embedder_support/view/ContentViewRenderView;->mWidth:I

    iput p2, p0, Lorg/chromium/components/embedder_support/view/ContentViewRenderView;->mHeight:I

    iget-object p3, p0, Lorg/chromium/components/embedder_support/view/ContentViewRenderView;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    if-eqz p3, :cond_0

    invoke-interface {p3}, Lorg/chromium/content_public/browser/WebContents;->isDestroyed()Z

    move-result p3

    if-nez p3, :cond_0

    iget-object p0, p0, Lorg/chromium/components/embedder_support/view/ContentViewRenderView;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-interface {p0, p1, p2}, Lorg/chromium/content_public/browser/WebContents;->setSize(II)V

    :cond_0
    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    iget-object p0, p0, Lorg/chromium/components/embedder_support/view/ContentViewRenderView;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/chromium/ui/base/WindowAndroid;->onVisibilityChanged(Z)V

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lorg/chromium/ui/base/WindowAndroid;->onVisibilityChanged(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setCurrentWebContents(Lorg/chromium/content_public/browser/WebContents;)V
    .locals 9

    iput-object p1, p0, Lorg/chromium/components/embedder_support/view/ContentViewRenderView;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/chromium/content_public/browser/WebContents;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lorg/chromium/components/embedder_support/view/ContentViewRenderView;->mWidth:I

    iget v1, p0, Lorg/chromium/components/embedder_support/view/ContentViewRenderView;->mHeight:I

    invoke-interface {p1, v0, v1}, Lorg/chromium/content_public/browser/WebContents;->setSize(II)V

    invoke-static {}, Lorg/chromium/components/embedder_support/view/ContentViewRenderViewJni;->get()Lorg/chromium/components/embedder_support/view/ContentViewRenderView$Natives;

    move-result-object v2

    iget-wide v3, p0, Lorg/chromium/components/embedder_support/view/ContentViewRenderView;->mNativeContentViewRenderView:J

    iget v7, p0, Lorg/chromium/components/embedder_support/view/ContentViewRenderView;->mWidth:I

    iget v8, p0, Lorg/chromium/components/embedder_support/view/ContentViewRenderView;->mHeight:I

    move-object v5, p0

    move-object v6, p1

    invoke-interface/range {v2 .. v8}, Lorg/chromium/components/embedder_support/view/ContentViewRenderView$Natives;->onPhysicalBackingSizeChanged(JLorg/chromium/components/embedder_support/view/ContentViewRenderView;Lorg/chromium/content_public/browser/WebContents;II)V

    :cond_0
    invoke-static {}, Lorg/chromium/components/embedder_support/view/ContentViewRenderViewJni;->get()Lorg/chromium/components/embedder_support/view/ContentViewRenderView$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/components/embedder_support/view/ContentViewRenderView;->mNativeContentViewRenderView:J

    invoke-interface {v0, v1, v2, p0, p1}, Lorg/chromium/components/embedder_support/view/ContentViewRenderView$Natives;->setCurrentWebContents(JLorg/chromium/components/embedder_support/view/ContentViewRenderView;Lorg/chromium/content_public/browser/WebContents;)V

    return-void
.end method

.method public setOverlayVideoMode(Z)V
    .locals 3

    if-eqz p1, :cond_0

    const/4 v0, -0x3

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    invoke-virtual {p0}, Lorg/chromium/components/embedder_support/view/ContentViewRenderView;->getSurfaceView()Landroid/view/SurfaceView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->setFormat(I)V

    invoke-static {}, Lorg/chromium/components/embedder_support/view/ContentViewRenderViewJni;->get()Lorg/chromium/components/embedder_support/view/ContentViewRenderView$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/components/embedder_support/view/ContentViewRenderView;->mNativeContentViewRenderView:J

    invoke-interface {v0, v1, v2, p0, p1}, Lorg/chromium/components/embedder_support/view/ContentViewRenderView$Natives;->setOverlayVideoMode(JLorg/chromium/components/embedder_support/view/ContentViewRenderView;Z)V

    return-void
.end method

.method public setSurfaceViewBackgroundColor(I)V
    .locals 1

    invoke-virtual {p0}, Lorg/chromium/components/embedder_support/view/ContentViewRenderView;->getSurfaceView()Landroid/view/SurfaceView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/components/embedder_support/view/ContentViewRenderView;->getSurfaceView()Landroid/view/SurfaceView;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method
