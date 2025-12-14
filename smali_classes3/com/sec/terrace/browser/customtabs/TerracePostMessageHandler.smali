.class public Lcom/sec/terrace/browser/customtabs/TerracePostMessageHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/customtabs/TerraceOriginVerifier$OriginVerificationListener;


# instance fields
.field private mChannel:[Lorg/chromium/content_public/browser/MessagePort;

.field private final mMessageCallback:Lorg/chromium/content_public/browser/MessagePort$MessageCallback;

.field private final mPostMessageBackend:LH/A;

.field private mPostMessageSourceUri:Landroid/net/Uri;

.field private mPostMessageTargetUri:Landroid/net/Uri;

.field private mWebContents:Lorg/chromium/content_public/browser/WebContents;

.field private mWebContentsObserver:Lorg/chromium/content_public/browser/WebContentsObserver;


# direct methods
.method public constructor <init>(LH/A;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/terrace/browser/customtabs/TerracePostMessageHandler;->mPostMessageBackend:LH/A;

    new-instance p1, Lcom/sec/android/app/sbrowser/search_widget/a;

    const/16 v0, 0x10

    invoke-direct {p1, v0, p0}, Lcom/sec/android/app/sbrowser/search_widget/a;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lcom/sec/terrace/browser/customtabs/TerracePostMessageHandler;->mMessageCallback:Lorg/chromium/content_public/browser/MessagePort$MessageCallback;

    return-void
.end method

.method public static synthetic a(Lcom/sec/terrace/browser/customtabs/TerracePostMessageHandler;Lorg/chromium/content_public/browser/MessagePayload;[Lorg/chromium/content_public/browser/MessagePort;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/terrace/browser/customtabs/TerracePostMessageHandler;->lambda$new$0(Lorg/chromium/content_public/browser/MessagePayload;[Lorg/chromium/content_public/browser/MessagePort;)V

    return-void
.end method

.method public static bridge synthetic b(Lcom/sec/terrace/browser/customtabs/TerracePostMessageHandler;)[Lorg/chromium/content_public/browser/MessagePort;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/customtabs/TerracePostMessageHandler;->mChannel:[Lorg/chromium/content_public/browser/MessagePort;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sec/terrace/browser/customtabs/TerracePostMessageHandler;)Lorg/chromium/content_public/browser/WebContentsObserver;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/customtabs/TerracePostMessageHandler;->mWebContentsObserver:Lorg/chromium/content_public/browser/WebContentsObserver;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/sec/terrace/browser/customtabs/TerracePostMessageHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/terrace/browser/customtabs/TerracePostMessageHandler;->disconnectChannel()V

    return-void
.end method

.method private disconnectChannel()V
    .locals 2

    iget-object v0, p0, Lcom/sec/terrace/browser/customtabs/TerracePostMessageHandler;->mChannel:[Lorg/chromium/content_public/browser/MessagePort;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0}, Lorg/chromium/content_public/browser/MessagePort;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/terrace/browser/customtabs/TerracePostMessageHandler;->mChannel:[Lorg/chromium/content_public/browser/MessagePort;

    iput-object v0, p0, Lcom/sec/terrace/browser/customtabs/TerracePostMessageHandler;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    iput-object v0, p0, Lcom/sec/terrace/browser/customtabs/TerracePostMessageHandler;->mWebContentsObserver:Lorg/chromium/content_public/browser/WebContentsObserver;

    iget-object p0, p0, Lcom/sec/terrace/browser/customtabs/TerracePostMessageHandler;->mPostMessageBackend:LH/A;

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-interface {p0, v0}, LH/A;->onDisconnectChannel(Landroid/content/Context;)V

    return-void
.end method

.method public static bridge synthetic e(Lcom/sec/terrace/browser/customtabs/TerracePostMessageHandler;Lorg/chromium/content_public/browser/WebContents;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/terrace/browser/customtabs/TerracePostMessageHandler;->initializeWithWebContents(Lorg/chromium/content_public/browser/WebContents;)V

    return-void
.end method

.method private initializeWithWebContents(Lorg/chromium/content_public/browser/WebContents;)V
    .locals 7

    const/4 v0, 0x1

    invoke-interface {p1}, Lorg/chromium/content_public/browser/WebContents;->createMessageChannel()[Lorg/chromium/content_public/browser/MessagePort;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/terrace/browser/customtabs/TerracePostMessageHandler;->mChannel:[Lorg/chromium/content_public/browser/MessagePort;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-object v3, p0, Lcom/sec/terrace/browser/customtabs/TerracePostMessageHandler;->mMessageCallback:Lorg/chromium/content_public/browser/MessagePort$MessageCallback;

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Lorg/chromium/content_public/browser/MessagePort;->setMessageCallback(Lorg/chromium/content_public/browser/MessagePort$MessageCallback;Landroid/os/Handler;)V

    new-instance v1, Lorg/chromium/content_public/browser/MessagePayload;

    const-string v3, ""

    invoke-direct {v1, v3}, Lorg/chromium/content_public/browser/MessagePayload;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/sec/terrace/browser/customtabs/TerracePostMessageHandler;->mPostMessageSourceUri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/terrace/browser/customtabs/TerracePostMessageHandler;->mPostMessageTargetUri:Landroid/net/Uri;

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_0
    iget-object v6, p0, Lcom/sec/terrace/browser/customtabs/TerracePostMessageHandler;->mChannel:[Lorg/chromium/content_public/browser/MessagePort;

    aget-object v6, v6, v0

    new-array v0, v0, [Lorg/chromium/content_public/browser/MessagePort;

    aput-object v6, v0, v2

    invoke-interface {p1, v1, v5, v3, v0}, Lorg/chromium/content_public/browser/WebContents;->postMessageToMainFrame(Lorg/chromium/content_public/browser/MessagePayload;Ljava/lang/String;Ljava/lang/String;[Lorg/chromium/content_public/browser/MessagePort;)V

    iget-object p0, p0, Lcom/sec/terrace/browser/customtabs/TerracePostMessageHandler;->mPostMessageBackend:LH/A;

    invoke-interface {p0, v4}, LH/A;->onNotifyMessageChannelReady(Landroid/os/Bundle;)Z

    return-void
.end method

.method private synthetic lambda$new$0(Lorg/chromium/content_public/browser/MessagePayload;[Lorg/chromium/content_public/browser/MessagePort;)V
    .locals 1

    iget-object p2, p0, Lcom/sec/terrace/browser/customtabs/TerracePostMessageHandler;->mChannel:[Lorg/chromium/content_public/browser/MessagePort;

    const/4 v0, 0x0

    aget-object p2, p2, v0

    invoke-interface {p2}, Lorg/chromium/content_public/browser/MessagePort;->isTransferred()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p0, "TerracePostMessageHandler"

    const-string p1, "Discarding postMessage as channel has been transferred."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p2, p0, Lcom/sec/terrace/browser/customtabs/TerracePostMessageHandler;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-interface {p2}, Lorg/chromium/content_public/browser/WebContents;->getMainFrame()Lorg/chromium/content_public/browser/RenderFrameHost;

    move-result-object p2

    invoke-interface {p2}, Lorg/chromium/content_public/browser/RenderFrameHost;->getLastCommittedURL()Lorg/chromium/url/GURL;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lorg/chromium/url/GURL;->getSpec()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/chromium/net/GURLUtils;->getOrigin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "androidx.browser.customtabs.POST_MESSAGE_ORIGIN"

    invoke-static {v0, p2}, Lt/b;->e(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    iget-object p0, p0, Lcom/sec/terrace/browser/customtabs/TerracePostMessageHandler;->mPostMessageBackend:LH/A;

    invoke-virtual {p1}, Lorg/chromium/content_public/browser/MessagePayload;->getAsString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, p2}, LH/A;->onPostMessage(Ljava/lang/String;Landroid/os/Bundle;)Z

    return-void
.end method


# virtual methods
.method public getPostMessageUriForTesting()Landroid/net/Uri;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/browser/customtabs/TerracePostMessageHandler;->mPostMessageSourceUri:Landroid/net/Uri;

    return-object p0
.end method

.method public initializeWithPostMessageUri(Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/browser/customtabs/TerracePostMessageHandler;->mPostMessageSourceUri:Landroid/net/Uri;

    iput-object p2, p0, Lcom/sec/terrace/browser/customtabs/TerracePostMessageHandler;->mPostMessageTargetUri:Landroid/net/Uri;

    iget-object p1, p0, Lcom/sec/terrace/browser/customtabs/TerracePostMessageHandler;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/chromium/content_public/browser/WebContents;->isDestroyed()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/sec/terrace/browser/customtabs/TerracePostMessageHandler;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-direct {p0, p1}, Lcom/sec/terrace/browser/customtabs/TerracePostMessageHandler;->initializeWithWebContents(Lorg/chromium/content_public/browser/WebContents;)V

    :cond_0
    return-void
.end method

.method public onOriginVerified(Ljava/lang/String;Lcom/sec/terrace/browser/customtabs/TerraceOrigin;ZLjava/lang/Boolean;)V
    .locals 0

    if-nez p3, :cond_0

    return-void

    :cond_0
    invoke-static {p1, p2}, Lcom/sec/terrace/browser/customtabs/TerraceOriginVerifier;->getPostMessageUriFromVerifiedOrigin(Ljava/lang/String;Lcom/sec/terrace/browser/customtabs/TerraceOrigin;)Landroid/net/Uri;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/terrace/browser/customtabs/TerracePostMessageHandler;->mPostMessageTargetUri:Landroid/net/Uri;

    invoke-virtual {p0, p1, p2}, Lcom/sec/terrace/browser/customtabs/TerracePostMessageHandler;->initializeWithPostMessageUri(Landroid/net/Uri;Landroid/net/Uri;)V

    return-void
.end method

.method public postMessageFromClientApp(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lcom/sec/terrace/browser/customtabs/TerracePostMessageHandler;->mChannel:[Lorg/chromium/content_public/browser/MessagePort;

    const/4 v1, -0x3

    if-eqz v0, :cond_3

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-interface {v0}, Lorg/chromium/content_public/browser/MessagePort;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/terrace/browser/customtabs/TerracePostMessageHandler;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/terrace/browser/customtabs/TerracePostMessageHandler;->mChannel:[Lorg/chromium/content_public/browser/MessagePort;

    aget-object v0, v0, v2

    invoke-interface {v0}, Lorg/chromium/content_public/browser/MessagePort;->isTransferred()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "TerracePostMessageHandler"

    const-string p1, "Not sending postMessage as channel has been transferred."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    new-instance v0, Lcom/sec/terrace/browser/customtabs/TerracePostMessageHandler$2;

    invoke-direct {v0, p0, p1}, Lcom/sec/terrace/browser/customtabs/TerracePostMessageHandler$2;-><init>(Lcom/sec/terrace/browser/customtabs/TerracePostMessageHandler;Ljava/lang/String;)V

    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    return v2

    :cond_3
    :goto_0
    return v1
.end method

.method public reset(Lcom/sec/terrace/Terrace;)V
    .locals 1

    invoke-static {p1}, Lcom/sec/terrace/TinWebContentsHelper;->getWebContents(Lcom/sec/terrace/Terrace;)Lorg/chromium/content_public/browser/WebContents;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lorg/chromium/content_public/browser/WebContents;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/terrace/browser/customtabs/TerracePostMessageHandler;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iput-object p1, p0, Lcom/sec/terrace/browser/customtabs/TerracePostMessageHandler;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    iget-object v0, p0, Lcom/sec/terrace/browser/customtabs/TerracePostMessageHandler;->mPostMessageSourceUri:Landroid/net/Uri;

    if-nez v0, :cond_2

    return-void

    :cond_2
    new-instance v0, Lcom/sec/terrace/browser/customtabs/TerracePostMessageHandler$1;

    invoke-direct {v0, p0, p1, p1}, Lcom/sec/terrace/browser/customtabs/TerracePostMessageHandler$1;-><init>(Lcom/sec/terrace/browser/customtabs/TerracePostMessageHandler;Lorg/chromium/content_public/browser/WebContents;Lorg/chromium/content_public/browser/WebContents;)V

    iput-object v0, p0, Lcom/sec/terrace/browser/customtabs/TerracePostMessageHandler;->mWebContentsObserver:Lorg/chromium/content_public/browser/WebContentsObserver;

    return-void

    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/sec/terrace/browser/customtabs/TerracePostMessageHandler;->disconnectChannel()V

    return-void
.end method

.method public setPostMessageTargetUri(Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/browser/customtabs/TerracePostMessageHandler;->mPostMessageTargetUri:Landroid/net/Uri;

    return-void
.end method
