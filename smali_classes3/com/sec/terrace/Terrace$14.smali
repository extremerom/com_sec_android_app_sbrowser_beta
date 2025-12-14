.class Lcom/sec/terrace/Terrace$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/terrace/Terrace;->evaluateJavaScriptForTests(Ljava/lang/String;Lcom/sec/terrace/TerraceJavaScriptCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/terrace/Terrace;

.field final synthetic val$code:Ljava/lang/String;

.field final synthetic val$jsCallback:Lorg/chromium/content_public/browser/JavaScriptCallback;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/Terrace;Ljava/lang/String;Lorg/chromium/content_public/browser/JavaScriptCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/terrace/Terrace$14;->this$0:Lcom/sec/terrace/Terrace;

    iput-object p2, p0, Lcom/sec/terrace/Terrace$14;->val$code:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/terrace/Terrace$14;->val$jsCallback:Lorg/chromium/content_public/browser/JavaScriptCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/terrace/Terrace$14;->this$0:Lcom/sec/terrace/Terrace;

    invoke-static {v0}, Lcom/sec/terrace/Terrace;->m(Lcom/sec/terrace/Terrace;)Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/terrace/Terrace$14;->this$0:Lcom/sec/terrace/Terrace;

    invoke-static {v0}, Lcom/sec/terrace/Terrace;->m(Lcom/sec/terrace/Terrace;)Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/terrace/Terrace$14;->val$code:Ljava/lang/String;

    iget-object p0, p0, Lcom/sec/terrace/Terrace$14;->val$jsCallback:Lorg/chromium/content_public/browser/JavaScriptCallback;

    invoke-virtual {v0, v1, p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->evaluateJavaScriptForTests(Ljava/lang/String;Lorg/chromium/content_public/browser/JavaScriptCallback;)V

    :cond_0
    return-void
.end method
