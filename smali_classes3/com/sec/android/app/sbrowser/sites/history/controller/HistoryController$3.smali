.class Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiDelegate;


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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController$3;->this$0:Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addMoreData()V
    .locals 6

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController$3;->this$0:Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->f(Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;)Lcom/sec/terrace/browser/history/TerraceHistoryModel;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    long-to-double v3, v1

    const/4 v5, 0x0

    const-wide/16 v1, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/terrace/browser/history/TerraceHistoryModel;->getAllHistoryByDuration(DDI)V

    return-void
.end method

.method public deleteHistoryData(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController$3;->this$0:Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->onDeleteHistoryData(Z)V

    return-void
.end method

.method public deleteSearchData()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController$3;->this$0:Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->m(Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;)V

    return-void
.end method

.method public getHistoryItemList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/terrace/browser/history/TerraceHistoryItem;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController$3;->this$0:Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->e(Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public launchSelectedUrl(Ljava/lang/String;I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController$3;->this$0:Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->p(Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;Ljava/lang/String;I)V

    return-void
.end method

.method public launchVideoHistory()V
    .locals 3

    const-string v0, "[MM]"

    const-string v1, "launchVideoHistory"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController$3;->this$0:Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->j(Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;)Lcom/sec/android/app/sbrowser/media/history/MHActivityLauncher;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController$3;->this$0:Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->d(Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController$3;->this$0:Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->d(Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;)Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;->getMainActivityContextId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/media/history/MHActivityLauncher;->launchIfNeeded(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController$3;->this$0:Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->d(Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;)Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;->getScreenID()Ljava/lang/String;

    move-result-object p0

    const-string v0, "3205"

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public selectAllHistoryItem(Z)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController$3;->this$0:Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->g(Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;)Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUI;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUI;->getSelectedList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController$3;->this$0:Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->e(Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/terrace/browser/history/TerraceHistoryItem;

    invoke-virtual {v2, p1}, Lcom/sec/terrace/browser/history/TerraceHistoryItem;->setIsSelected(Z)V

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController$3;->this$0:Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->g(Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;)Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUI;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUI;->getSelectedList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController$3;->this$0:Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->g(Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;)Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUI;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUI;->updateHeaderOnSelectAll(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController$3;->this$0:Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->g(Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;)Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUI;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUI;->updateOnSelectAllHistoryItem(Z)V

    return-void
.end method

.method public shareHistoryData()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController$3;->this$0:Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->q(Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->s(Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;Ljava/lang/String;)V

    return-void
.end method
