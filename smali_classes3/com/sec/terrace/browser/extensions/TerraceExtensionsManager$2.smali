.class Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManagerJni;->get()Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$Natives;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$2;->this$0:Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;

    invoke-static {v1}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->a(Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;)J

    move-result-wide v1

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$2;->this$0:Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;

    invoke-interface {v0, v1, v2, p0}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$Natives;->resetExtensions(JLcom/sec/terrace/browser/extensions/TerraceExtensionsManager;)V

    return-void
.end method
