.class Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/history/TerraceHistoryModel$TerraceHistoryManagerlListner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;->createHistoryModel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler$1;->this$0:Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearHistoryURLsDone()V
    .locals 0

    return-void
.end method

.method public onHistoryCleared()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler$1;->this$0:Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;->deleteAllFromLocal()V

    return-void
.end method

.method public onHistoryCountReceived(I)V
    .locals 0

    return-void
.end method

.method public onHistoryDataReceived(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/terrace/browser/history/TerraceHistoryItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "[HistorySync]HistorySyncHandler"

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onHistoryDataReceived size : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler$1;->this$0:Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;

    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;->i(Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;Ljava/util/List;)V

    goto :goto_0

    :cond_0
    const-string p1, "onHistoryDataReceived empty!"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler$1;->this$0:Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;->g(Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;)Landroid/content/Context;

    move-result-object p0

    const-string p1, "pref_migrate_history_db_done"

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/sec/android/app/sbrowser/common/utils/PreferenceUtils;->setDefaultPreference(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public onHistoryItemDeleted(Ljava/lang/String;J)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onHistoryItemDeleted url : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " visitTime : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[HistorySync]HistorySyncHandler"

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler$1;->this$0:Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;->deleteFromLocal(Ljava/lang/String;J)V

    return-void
.end method

.method public onHistoryItemReceived(Lcom/sec/terrace/browser/history/TerraceHistoryItem;)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onHistoryItemReceived item.getUrl() : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sec/terrace/browser/history/TerraceHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[HistorySync]HistorySyncHandler"

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler$1;->this$0:Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;

    invoke-virtual {p1}, Lcom/sec/terrace/browser/history/TerraceHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sec/terrace/browser/history/TerraceHistoryItem;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sec/terrace/browser/history/TerraceHistoryItem;->getVisitTime()J

    move-result-wide v5

    invoke-virtual {p1}, Lcom/sec/terrace/browser/history/TerraceHistoryItem;->getVisitCount()I

    move-result v7

    invoke-virtual/range {v2 .. v7}, Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;->insertFromLocal(Ljava/lang/String;Ljava/lang/String;JI)V

    return-void
.end method

.method public onHistoryItemUpdated(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;J)V
    .locals 11

    const-string v0, "onHistoryItemUpdated url : "

    const-string v1, " oldTitle : "

    const-string v2, " oldVisitTime : "

    move-object v4, p1

    move-object v5, p2

    invoke-static {v0, p1, v1, p2, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-wide v1, p3

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " newTitle : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, p5

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " newVisitTime : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v9, p6

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "[HistorySync]HistorySyncHandler"

    invoke-static {v3, v0}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler$1;->this$0:Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;

    move-wide v6, p3

    invoke-virtual/range {v3 .. v10}, Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;->updateFromLocal(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;J)V

    return-void
.end method
