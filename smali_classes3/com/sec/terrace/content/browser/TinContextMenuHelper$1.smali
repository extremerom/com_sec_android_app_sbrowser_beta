.class Lcom/sec/terrace/content/browser/TinContextMenuHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/terrace/content/browser/TinContextMenuHelper;->showContextMenu(Lcom/sec/terrace/content/browser/TinContentView;Lcom/sec/terrace/TerraceContextMenuParams;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/terrace/content/browser/TinContextMenuHelper;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/content/browser/TinContextMenuHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/content/browser/TinContextMenuHelper$1;->this$0:Lcom/sec/terrace/content/browser/TinContextMenuHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/sec/terrace/content/browser/TinContextMenuHelper$1;->this$0:Lcom/sec/terrace/content/browser/TinContextMenuHelper;

    invoke-static {v0}, Lcom/sec/terrace/content/browser/TinContextMenuHelper;->c(Lcom/sec/terrace/content/browser/TinContextMenuHelper;)Lcom/sec/terrace/TerraceContextMenuPopulator;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/terrace/TerraceContextMenuPopulator;->clearDeepSkyInfo()V

    iget-object v0, p0, Lcom/sec/terrace/content/browser/TinContextMenuHelper$1;->this$0:Lcom/sec/terrace/content/browser/TinContextMenuHelper;

    invoke-static {v0}, Lcom/sec/terrace/content/browser/TinContextMenuHelper;->a(Lcom/sec/terrace/content/browser/TinContextMenuHelper;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/terrace/content/browser/TinContextMenuHelperJni;->get()Lcom/sec/terrace/content/browser/TinContextMenuHelper$Natives;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/terrace/content/browser/TinContextMenuHelper$1;->this$0:Lcom/sec/terrace/content/browser/TinContextMenuHelper;

    invoke-static {v1}, Lcom/sec/terrace/content/browser/TinContextMenuHelper;->a(Lcom/sec/terrace/content/browser/TinContextMenuHelper;)J

    move-result-wide v1

    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinContextMenuHelper$1;->this$0:Lcom/sec/terrace/content/browser/TinContextMenuHelper;

    invoke-interface {v0, v1, v2, p0}, Lcom/sec/terrace/content/browser/TinContextMenuHelper$Natives;->onContextMenuClosed(JLcom/sec/terrace/content/browser/TinContextMenuHelper;)V

    return-void
.end method
