.class Lcom/sec/terrace/Terrace$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/sec/terrace/Terrace;

.field final synthetic val$videoFullscreenScript:Ljava/lang/String;


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/terrace/Terrace$3;->this$0:Lcom/sec/terrace/Terrace;

    invoke-static {v0}, Lcom/sec/terrace/Terrace;->m(Lcom/sec/terrace/Terrace;)Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/terrace/Terrace$3;->this$0:Lcom/sec/terrace/Terrace;

    iget-object p0, p0, Lcom/sec/terrace/Terrace$3;->val$videoFullscreenScript:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/sec/terrace/Terrace;->evaluateJavaScript(Ljava/lang/String;Lcom/sec/terrace/TerraceJavaScriptCallback;)V

    :cond_0
    return-void
.end method
