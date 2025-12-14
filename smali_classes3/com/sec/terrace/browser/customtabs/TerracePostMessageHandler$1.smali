.class Lcom/sec/terrace/browser/customtabs/TerracePostMessageHandler$1;
.super Lorg/chromium/content_public/browser/WebContentsObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/terrace/browser/customtabs/TerracePostMessageHandler;->reset(Lcom/sec/terrace/Terrace;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private mNavigatedOnce:Z

.field final synthetic this$0:Lcom/sec/terrace/browser/customtabs/TerracePostMessageHandler;

.field final synthetic val$webContents:Lorg/chromium/content_public/browser/WebContents;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/browser/customtabs/TerracePostMessageHandler;Lorg/chromium/content_public/browser/WebContents;Lorg/chromium/content_public/browser/WebContents;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/browser/customtabs/TerracePostMessageHandler$1;->this$0:Lcom/sec/terrace/browser/customtabs/TerracePostMessageHandler;

    iput-object p3, p0, Lcom/sec/terrace/browser/customtabs/TerracePostMessageHandler$1;->val$webContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-direct {p0, p2}, Lorg/chromium/content_public/browser/WebContentsObserver;-><init>(Lorg/chromium/content_public/browser/WebContents;)V

    return-void
.end method


# virtual methods
.method public didFinishNavigationInPrimaryMainFrame(Lorg/chromium/content_public/browser/NavigationHandle;)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/terrace/browser/customtabs/TerracePostMessageHandler$1;->mNavigatedOnce:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/chromium/content_public/browser/NavigationHandle;->hasCommitted()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/chromium/content_public/browser/NavigationHandle;->isSameDocument()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/sec/terrace/browser/customtabs/TerracePostMessageHandler$1;->this$0:Lcom/sec/terrace/browser/customtabs/TerracePostMessageHandler;

    invoke-static {p1}, Lcom/sec/terrace/browser/customtabs/TerracePostMessageHandler;->b(Lcom/sec/terrace/browser/customtabs/TerracePostMessageHandler;)[Lorg/chromium/content_public/browser/MessagePort;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/terrace/browser/customtabs/TerracePostMessageHandler$1;->this$0:Lcom/sec/terrace/browser/customtabs/TerracePostMessageHandler;

    invoke-static {p1}, Lcom/sec/terrace/browser/customtabs/TerracePostMessageHandler;->c(Lcom/sec/terrace/browser/customtabs/TerracePostMessageHandler;)Lorg/chromium/content_public/browser/WebContentsObserver;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/terrace/browser/customtabs/TerracePostMessageHandler$1;->this$0:Lcom/sec/terrace/browser/customtabs/TerracePostMessageHandler;

    invoke-static {p1}, Lcom/sec/terrace/browser/customtabs/TerracePostMessageHandler;->c(Lcom/sec/terrace/browser/customtabs/TerracePostMessageHandler;)Lorg/chromium/content_public/browser/WebContentsObserver;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/chromium/content_public/browser/WebContentsObserver;->observe(Lorg/chromium/content_public/browser/WebContents;)V

    :cond_0
    iget-object p0, p0, Lcom/sec/terrace/browser/customtabs/TerracePostMessageHandler$1;->this$0:Lcom/sec/terrace/browser/customtabs/TerracePostMessageHandler;

    invoke-static {p0}, Lcom/sec/terrace/browser/customtabs/TerracePostMessageHandler;->d(Lcom/sec/terrace/browser/customtabs/TerracePostMessageHandler;)V

    return-void

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/terrace/browser/customtabs/TerracePostMessageHandler$1;->mNavigatedOnce:Z

    return-void
.end method

.method public documentLoadedInPrimaryMainFrame(Lorg/chromium/content_public/browser/Page;Lorg/chromium/content_public/browser/GlobalRenderFrameHostId;I)V
    .locals 0

    iget-object p1, p0, Lcom/sec/terrace/browser/customtabs/TerracePostMessageHandler$1;->this$0:Lcom/sec/terrace/browser/customtabs/TerracePostMessageHandler;

    invoke-static {p1}, Lcom/sec/terrace/browser/customtabs/TerracePostMessageHandler;->b(Lcom/sec/terrace/browser/customtabs/TerracePostMessageHandler;)[Lorg/chromium/content_public/browser/MessagePort;

    move-result-object p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/sec/terrace/browser/customtabs/TerracePostMessageHandler$1;->this$0:Lcom/sec/terrace/browser/customtabs/TerracePostMessageHandler;

    iget-object p0, p0, Lcom/sec/terrace/browser/customtabs/TerracePostMessageHandler$1;->val$webContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-static {p1, p0}, Lcom/sec/terrace/browser/customtabs/TerracePostMessageHandler;->e(Lcom/sec/terrace/browser/customtabs/TerracePostMessageHandler;Lorg/chromium/content_public/browser/WebContents;)V

    return-void
.end method

.method public primaryMainFrameRenderProcessGone(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/customtabs/TerracePostMessageHandler$1;->this$0:Lcom/sec/terrace/browser/customtabs/TerracePostMessageHandler;

    invoke-static {p0}, Lcom/sec/terrace/browser/customtabs/TerracePostMessageHandler;->d(Lcom/sec/terrace/browser/customtabs/TerracePostMessageHandler;)V

    return-void
.end method
