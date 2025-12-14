.class public Lcom/sec/terrace/browser/thin_webview/TinThinWebViewImpl;
.super Lorg/chromium/components/thinwebview/internal/ThinWebViewImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/thin_webview/TinThinWebViewImpl$Natives;
    }
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/chromium/components/thinwebview/ThinWebViewConstraints;Lorg/chromium/ui/base/IntentRequestTracker;)V
    .locals 1

    invoke-direct {p0, p1, p3}, Lorg/chromium/components/thinwebview/internal/ThinWebViewImpl;-><init>(Landroid/content/Context;Lorg/chromium/ui/base/IntentRequestTracker;)V

    new-instance p3, Lcom/sec/terrace/browser/thin_webview/TinCompositorViewImpl;

    iget-object v0, p0, Lorg/chromium/components/thinwebview/internal/ThinWebViewImpl;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    invoke-direct {p3, p1, v0, p2}, Lcom/sec/terrace/browser/thin_webview/TinCompositorViewImpl;-><init>(Landroid/content/Context;Lorg/chromium/ui/base/WindowAndroid;Lorg/chromium/components/thinwebview/ThinWebViewConstraints;)V

    iput-object p3, p0, Lorg/chromium/components/thinwebview/internal/ThinWebViewImpl;->mCompositorView:Lorg/chromium/components/thinwebview/CompositorView;

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p2, -0x1

    invoke-direct {p1, p2, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object p2, p0, Lorg/chromium/components/thinwebview/internal/ThinWebViewImpl;->mCompositorView:Lorg/chromium/components/thinwebview/CompositorView;

    invoke-interface {p2}, Lorg/chromium/components/thinwebview/CompositorView;->getView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lcom/sec/terrace/browser/thin_webview/TinThinWebViewImplJni;->get()Lcom/sec/terrace/browser/thin_webview/TinThinWebViewImpl$Natives;

    move-result-object p1

    iget-object p2, p0, Lorg/chromium/components/thinwebview/internal/ThinWebViewImpl;->mCompositorView:Lorg/chromium/components/thinwebview/CompositorView;

    iget-object p3, p0, Lorg/chromium/components/thinwebview/internal/ThinWebViewImpl;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    invoke-interface {p1, p0, p2, p3}, Lcom/sec/terrace/browser/thin_webview/TinThinWebViewImpl$Natives;->init(Lcom/sec/terrace/browser/thin_webview/TinThinWebViewImpl;Lorg/chromium/components/thinwebview/CompositorView;Lorg/chromium/ui/base/WindowAndroid;)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/chromium/components/thinwebview/internal/ThinWebViewImpl;->mNativeThinWebViewImpl:J

    return-void
.end method


# virtual methods
.method public attachWebContents(Lorg/chromium/content_public/browser/WebContents;Landroid/view/View;Lorg/chromium/components/embedder_support/delegate/WebContentsDelegateAndroid;J)V
    .locals 6
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lorg/chromium/components/embedder_support/delegate/WebContentsDelegateAndroid;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2, p3}, Lorg/chromium/components/thinwebview/internal/ThinWebViewImpl;->attachWebContents(Lorg/chromium/content_public/browser/WebContents;Landroid/view/View;Lorg/chromium/components/embedder_support/delegate/WebContentsDelegateAndroid;)V

    invoke-static {}, Lcom/sec/terrace/browser/thin_webview/TinThinWebViewImplJni;->get()Lcom/sec/terrace/browser/thin_webview/TinThinWebViewImpl$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/components/thinwebview/internal/ThinWebViewImpl;->mNativeThinWebViewImpl:J

    move-object v3, p0

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/sec/terrace/browser/thin_webview/TinThinWebViewImpl$Natives;->setContentViewCore(JLcom/sec/terrace/browser/thin_webview/TinThinWebViewImpl;J)V

    return-void
.end method

.method public destroy()V
    .locals 0

    invoke-super {p0}, Lorg/chromium/components/thinwebview/internal/ThinWebViewImpl;->destroy()V

    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 0

    invoke-super {p0}, Lorg/chromium/components/thinwebview/internal/ThinWebViewImpl;->getView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public setAlpha(F)V
    .locals 0

    invoke-super {p0, p1}, Lorg/chromium/components/thinwebview/internal/ThinWebViewImpl;->setAlpha(F)V

    return-void
.end method
