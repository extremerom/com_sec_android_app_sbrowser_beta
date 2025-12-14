.class public Lcom/sec/terrace/browser/thin_webview/TerraceThinWebView;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mThinWebView:Lcom/sec/terrace/browser/thin_webview/TinThinWebViewImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p1, Lcom/sec/terrace/TerraceActivity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/sec/terrace/TerraceActivity;

    invoke-static {v0}, Lcom/sec/terrace/TinTerraceInternals;->getWindowAndroid(Lcom/sec/terrace/TerraceActivity;)Lorg/chromium/ui/base/WindowAndroid;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/ui/base/WindowAndroid;->getIntentRequestTracker()Lorg/chromium/ui/base/IntentRequestTracker;

    move-result-object v0

    new-instance v1, Lcom/sec/terrace/browser/thin_webview/TinThinWebViewImpl;

    new-instance v2, Lorg/chromium/components/thinwebview/ThinWebViewConstraints;

    invoke-direct {v2}, Lorg/chromium/components/thinwebview/ThinWebViewConstraints;-><init>()V

    invoke-direct {v1, p1, v2, v0}, Lcom/sec/terrace/browser/thin_webview/TinThinWebViewImpl;-><init>(Landroid/content/Context;Lorg/chromium/components/thinwebview/ThinWebViewConstraints;Lorg/chromium/ui/base/IntentRequestTracker;)V

    iput-object v1, p0, Lcom/sec/terrace/browser/thin_webview/TerraceThinWebView;->mThinWebView:Lcom/sec/terrace/browser/thin_webview/TinThinWebViewImpl;

    return-void
.end method


# virtual methods
.method public attachTerrace(Lcom/sec/terrace/Terrace;)V
    .locals 6

    invoke-static {p1}, Lcom/sec/terrace/TinWebContentsHelper;->getWebContents(Lcom/sec/terrace/Terrace;)Lorg/chromium/content_public/browser/WebContents;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/terrace/content/browser/TinContentViewCore;->fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lcom/sec/terrace/content/browser/TinContentViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getNativeContentViewCore()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->onResetStates()V

    :goto_0
    move-wide v4, v2

    goto :goto_1

    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0

    :goto_1
    invoke-virtual {p1}, Lcom/sec/terrace/Terrace;->getWebContainerView()Landroid/view/ViewGroup;

    move-result-object v2

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/sec/terrace/browser/thin_webview/TerraceThinWebView;->mThinWebView:Lcom/sec/terrace/browser/thin_webview/TinThinWebViewImpl;

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/terrace/browser/thin_webview/TinThinWebViewImpl;->attachWebContents(Lorg/chromium/content_public/browser/WebContents;Landroid/view/View;Lorg/chromium/components/embedder_support/delegate/WebContentsDelegateAndroid;J)V

    :cond_1
    return-void
.end method

.method public destroy()V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/thin_webview/TerraceThinWebView;->mThinWebView:Lcom/sec/terrace/browser/thin_webview/TinThinWebViewImpl;

    invoke-virtual {p0}, Lcom/sec/terrace/browser/thin_webview/TinThinWebViewImpl;->destroy()V

    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/thin_webview/TerraceThinWebView;->mThinWebView:Lcom/sec/terrace/browser/thin_webview/TinThinWebViewImpl;

    invoke-virtual {p0}, Lcom/sec/terrace/browser/thin_webview/TinThinWebViewImpl;->getView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method
