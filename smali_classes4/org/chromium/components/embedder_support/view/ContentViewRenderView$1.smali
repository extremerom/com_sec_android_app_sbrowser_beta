.class Lorg/chromium/components/embedder_support/view/ContentViewRenderView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/chromium/components/embedder_support/view/ContentViewRenderView;


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 10

    iget-object v0, p0, Lorg/chromium/components/embedder_support/view/ContentViewRenderView$1;->this$0:Lorg/chromium/components/embedder_support/view/ContentViewRenderView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/chromium/components/embedder_support/view/ContentViewRenderView;->notifySurfaceChange(Landroid/view/SurfaceHolder;III)V

    iget-object v0, p0, Lorg/chromium/components/embedder_support/view/ContentViewRenderView$1;->this$0:Lorg/chromium/components/embedder_support/view/ContentViewRenderView;

    iget-object v0, v0, Lorg/chromium/components/embedder_support/view/ContentViewRenderView;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    invoke-static {v0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/chromium/components/embedder_support/view/ContentViewRenderView$1;->this$0:Lorg/chromium/components/embedder_support/view/ContentViewRenderView;

    iget-object v0, v0, Lorg/chromium/components/embedder_support/view/ContentViewRenderView;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    invoke-virtual {v0}, Lorg/chromium/ui/base/WindowAndroid;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {}, Lorg/chromium/components/input/InputUtils;->isTransferInputToVizSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-static {v0}, LB4/b;->h(Landroid/view/Window;)Landroid/view/AttachedSurfaceControl;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, LA2/e;->k(Landroid/view/AttachedSurfaceControl;)Landroid/window/InputTransferToken;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Lorg/chromium/components/embedder_support/view/ContentViewRenderViewJni;->get()Lorg/chromium/components/embedder_support/view/ContentViewRenderView$Natives;

    move-result-object v1

    iget-object v4, p0, Lorg/chromium/components/embedder_support/view/ContentViewRenderView$1;->this$0:Lorg/chromium/components/embedder_support/view/ContentViewRenderView;

    iget-wide v2, v4, Lorg/chromium/components/embedder_support/view/ContentViewRenderView;->mNativeContentViewRenderView:J

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v8

    move v5, p2

    move v6, p3

    move v7, p4

    move-object v9, v0

    invoke-interface/range {v1 .. v9}, Lorg/chromium/components/embedder_support/view/ContentViewRenderView$Natives;->surfaceChanged(JLorg/chromium/components/embedder_support/view/ContentViewRenderView;IIILandroid/view/Surface;Landroid/window/InputTransferToken;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    new-instance p2, Lorg/chromium/components/embedder_support/view/ContentViewRenderView$1$1;

    invoke-direct {p2, p0}, Lorg/chromium/components/embedder_support/view/ContentViewRenderView$1$1;-><init>(Lorg/chromium/components/embedder_support/view/ContentViewRenderView$1;)V

    new-instance v1, Lorg/chromium/content_public/browser/InputTransferHandler;

    iget-object v2, p0, Lorg/chromium/components/embedder_support/view/ContentViewRenderView$1;->this$0:Lorg/chromium/components/embedder_support/view/ContentViewRenderView;

    iget-object v2, v2, Lorg/chromium/components/embedder_support/view/ContentViewRenderView;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    invoke-direct {v1, v0, p2, v2}, Lorg/chromium/content_public/browser/InputTransferHandler;-><init>(Landroid/window/InputTransferToken;Lorg/chromium/content_public/browser/InputTransferHandler$Delegate;Lorg/chromium/ui/base/WindowAndroid;)V

    iget-object p2, p0, Lorg/chromium/components/embedder_support/view/ContentViewRenderView$1;->this$0:Lorg/chromium/components/embedder_support/view/ContentViewRenderView;

    invoke-static {p2, p1}, Lorg/chromium/components/embedder_support/view/ContentViewRenderView;->b(Lorg/chromium/components/embedder_support/view/ContentViewRenderView;Ljava/lang/Integer;)V

    invoke-static {}, Lorg/chromium/content_public/browser/SurfaceInputTransferHandlerMap;->getMap()Ljava/util/Map;

    move-result-object p1

    iget-object p2, p0, Lorg/chromium/components/embedder_support/view/ContentViewRenderView$1;->this$0:Lorg/chromium/components/embedder_support/view/ContentViewRenderView;

    invoke-static {p2}, Lorg/chromium/components/embedder_support/view/ContentViewRenderView;->a(Lorg/chromium/components/embedder_support/view/ContentViewRenderView;)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object p1, p0, Lorg/chromium/components/embedder_support/view/ContentViewRenderView$1;->this$0:Lorg/chromium/components/embedder_support/view/ContentViewRenderView;

    iget-object p1, p1, Lorg/chromium/components/embedder_support/view/ContentViewRenderView;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lorg/chromium/content_public/browser/WebContents;->isDestroyed()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {}, Lorg/chromium/components/embedder_support/view/ContentViewRenderViewJni;->get()Lorg/chromium/components/embedder_support/view/ContentViewRenderView$Natives;

    move-result-object v0

    iget-object v3, p0, Lorg/chromium/components/embedder_support/view/ContentViewRenderView$1;->this$0:Lorg/chromium/components/embedder_support/view/ContentViewRenderView;

    iget-wide v1, v3, Lorg/chromium/components/embedder_support/view/ContentViewRenderView;->mNativeContentViewRenderView:J

    iget-object v4, v3, Lorg/chromium/components/embedder_support/view/ContentViewRenderView;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    move v5, p3

    move v6, p4

    invoke-interface/range {v0 .. v6}, Lorg/chromium/components/embedder_support/view/ContentViewRenderView$Natives;->onPhysicalBackingSizeChanged(JLorg/chromium/components/embedder_support/view/ContentViewRenderView;Lorg/chromium/content_public/browser/WebContents;II)V

    :cond_2
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3

    iget-object v0, p0, Lorg/chromium/components/embedder_support/view/ContentViewRenderView$1;->this$0:Lorg/chromium/components/embedder_support/view/ContentViewRenderView;

    invoke-virtual {v0, p1}, Lorg/chromium/components/embedder_support/view/ContentViewRenderView;->notifySurfaceCreation(Landroid/view/SurfaceHolder;)V

    invoke-static {}, Lorg/chromium/components/embedder_support/view/ContentViewRenderViewJni;->get()Lorg/chromium/components/embedder_support/view/ContentViewRenderView$Natives;

    move-result-object p1

    iget-object v0, p0, Lorg/chromium/components/embedder_support/view/ContentViewRenderView$1;->this$0:Lorg/chromium/components/embedder_support/view/ContentViewRenderView;

    iget-wide v1, v0, Lorg/chromium/components/embedder_support/view/ContentViewRenderView;->mNativeContentViewRenderView:J

    invoke-interface {p1, v1, v2, v0}, Lorg/chromium/components/embedder_support/view/ContentViewRenderView$Natives;->surfaceCreated(JLorg/chromium/components/embedder_support/view/ContentViewRenderView;)V

    iget-object p1, p0, Lorg/chromium/components/embedder_support/view/ContentViewRenderView$1;->this$0:Lorg/chromium/components/embedder_support/view/ContentViewRenderView;

    invoke-virtual {p1}, Lorg/chromium/components/embedder_support/view/ContentViewRenderView;->getSurfaceView()Landroid/view/SurfaceView;

    move-result-object p1

    iget-object v0, p0, Lorg/chromium/components/embedder_support/view/ContentViewRenderView$1;->this$0:Lorg/chromium/components/embedder_support/view/ContentViewRenderView;

    invoke-virtual {v0}, Lorg/chromium/components/embedder_support/view/ContentViewRenderView;->getSurfaceView()Landroid/view/SurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/SurfaceView;->setVisibility(I)V

    iget-object p0, p0, Lorg/chromium/components/embedder_support/view/ContentViewRenderView$1;->this$0:Lorg/chromium/components/embedder_support/view/ContentViewRenderView;

    invoke-virtual {p0}, Lorg/chromium/components/embedder_support/view/ContentViewRenderView;->onReadyToRender()V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 3

    iget-object v0, p0, Lorg/chromium/components/embedder_support/view/ContentViewRenderView$1;->this$0:Lorg/chromium/components/embedder_support/view/ContentViewRenderView;

    invoke-virtual {v0, p1}, Lorg/chromium/components/embedder_support/view/ContentViewRenderView;->notifySurfaceDestroy(Landroid/view/SurfaceHolder;)V

    invoke-static {}, Lorg/chromium/components/embedder_support/view/ContentViewRenderViewJni;->get()Lorg/chromium/components/embedder_support/view/ContentViewRenderView$Natives;

    move-result-object p1

    iget-object v0, p0, Lorg/chromium/components/embedder_support/view/ContentViewRenderView$1;->this$0:Lorg/chromium/components/embedder_support/view/ContentViewRenderView;

    iget-wide v1, v0, Lorg/chromium/components/embedder_support/view/ContentViewRenderView;->mNativeContentViewRenderView:J

    invoke-interface {p1, v1, v2, v0}, Lorg/chromium/components/embedder_support/view/ContentViewRenderView$Natives;->surfaceDestroyed(JLorg/chromium/components/embedder_support/view/ContentViewRenderView;)V

    iget-object p1, p0, Lorg/chromium/components/embedder_support/view/ContentViewRenderView$1;->this$0:Lorg/chromium/components/embedder_support/view/ContentViewRenderView;

    invoke-static {p1}, Lorg/chromium/components/embedder_support/view/ContentViewRenderView;->a(Lorg/chromium/components/embedder_support/view/ContentViewRenderView;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/chromium/components/embedder_support/view/ContentViewRenderView$1;->this$0:Lorg/chromium/components/embedder_support/view/ContentViewRenderView;

    invoke-static {p1}, Lorg/chromium/components/embedder_support/view/ContentViewRenderView;->a(Lorg/chromium/components/embedder_support/view/ContentViewRenderView;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lorg/chromium/content_public/browser/SurfaceInputTransferHandlerMap;->remove(I)V

    iget-object p0, p0, Lorg/chromium/components/embedder_support/view/ContentViewRenderView$1;->this$0:Lorg/chromium/components/embedder_support/view/ContentViewRenderView;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lorg/chromium/components/embedder_support/view/ContentViewRenderView;->b(Lorg/chromium/components/embedder_support/view/ContentViewRenderView;Ljava/lang/Integer;)V

    :cond_0
    return-void
.end method
