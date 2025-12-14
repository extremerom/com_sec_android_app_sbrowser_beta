.class Lcom/sec/terrace/browser/customtabs/TerracePostMessageHandler$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/terrace/browser/customtabs/TerracePostMessageHandler;->postMessageFromClientApp(Ljava/lang/String;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/terrace/browser/customtabs/TerracePostMessageHandler;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/browser/customtabs/TerracePostMessageHandler;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/terrace/browser/customtabs/TerracePostMessageHandler$2;->this$0:Lcom/sec/terrace/browser/customtabs/TerracePostMessageHandler;

    iput-object p2, p0, Lcom/sec/terrace/browser/customtabs/TerracePostMessageHandler$2;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/terrace/browser/customtabs/TerracePostMessageHandler$2;->this$0:Lcom/sec/terrace/browser/customtabs/TerracePostMessageHandler;

    invoke-static {v0}, Lcom/sec/terrace/browser/customtabs/TerracePostMessageHandler;->b(Lcom/sec/terrace/browser/customtabs/TerracePostMessageHandler;)[Lorg/chromium/content_public/browser/MessagePort;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/terrace/browser/customtabs/TerracePostMessageHandler$2;->this$0:Lcom/sec/terrace/browser/customtabs/TerracePostMessageHandler;

    invoke-static {v0}, Lcom/sec/terrace/browser/customtabs/TerracePostMessageHandler;->b(Lcom/sec/terrace/browser/customtabs/TerracePostMessageHandler;)[Lorg/chromium/content_public/browser/MessagePort;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0}, Lorg/chromium/content_public/browser/MessagePort;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/terrace/browser/customtabs/TerracePostMessageHandler$2;->this$0:Lcom/sec/terrace/browser/customtabs/TerracePostMessageHandler;

    invoke-static {v0}, Lcom/sec/terrace/browser/customtabs/TerracePostMessageHandler;->b(Lcom/sec/terrace/browser/customtabs/TerracePostMessageHandler;)[Lorg/chromium/content_public/browser/MessagePort;

    move-result-object v0

    aget-object v0, v0, v1

    new-instance v1, Lorg/chromium/content_public/browser/MessagePayload;

    iget-object p0, p0, Lcom/sec/terrace/browser/customtabs/TerracePostMessageHandler$2;->val$message:Ljava/lang/String;

    invoke-direct {v1, p0}, Lorg/chromium/content_public/browser/MessagePayload;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-interface {v0, v1, p0}, Lorg/chromium/content_public/browser/MessagePort;->postMessage(Lorg/chromium/content_public/browser/MessagePayload;[Lorg/chromium/content_public/browser/MessagePort;)V

    :cond_1
    :goto_0
    return-void
.end method
