.class Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/history/TerraceHistoryModel$TerraceHistoryManagerlListner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController$2;->this$0:Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearHistoryURLsDone()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController$2;->this$0:Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->i(Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController$2;->this$0:Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->dismissProgress()V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController$2;->this$0:Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->n(Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;)V

    return-void
.end method

.method public onHistoryCleared()V
    .locals 0

    return-void
.end method

.method public onHistoryCountReceived(I)V
    .locals 1

    const-string v0, "0043"

    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendStatusLog(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController$2;->this$0:Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->h(Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController$2;->this$0:Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->g(Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;)Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUI;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUI;->setHistoryCount(I)V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController$2;->this$0:Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->l(Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;)V

    return-void
.end method

.method public onHistoryDataReceived(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/terrace/browser/history/TerraceHistoryItem;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController$2;->this$0:Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->i(Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController$2;->this$0:Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->dismissProgress()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController$2;->this$0:Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->k(Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController$2;->this$0:Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;

    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->o(Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;Ljava/util/List;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController$2;->this$0:Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->r(Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;)V

    return-void
.end method

.method public onHistoryItemDeleted(Ljava/lang/String;J)V
    .locals 0

    return-void
.end method

.method public onHistoryItemReceived(Lcom/sec/terrace/browser/history/TerraceHistoryItem;)V
    .locals 0

    return-void
.end method

.method public onHistoryItemUpdated(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;J)V
    .locals 0

    return-void
.end method
