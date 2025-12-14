.class Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;

.field final synthetic val$callback:Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$OnResultInitCallback;


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManagerJni;->get()Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$Natives;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$1;->this$0:Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;

    invoke-static {v1}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->a(Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$1;->this$0:Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$1;->val$callback:Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$OnResultInitCallback;

    invoke-interface {v0, v1, v2, v3, p0}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$Natives;->initExtensions(JLcom/sec/terrace/browser/extensions/TerraceExtensionsManager;Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$OnResultInitCallback;)V

    return-void
.end method
