.class Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/history/TerraceHistoryModel$TerraceHistoryManagerlListner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->getSitesSearchItems(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;

.field final synthetic val$sitesSearchBase:Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController$4;->this$0:Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController$4;->val$sitesSearchBase:Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController$4;->lambda$onHistoryDataReceived$0(Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;Ljava/lang/String;J)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController$4;->lambda$onHistoryItemUpdated$1(Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;Ljava/lang/String;J)V

    return-void
.end method

.method private static synthetic lambda$onHistoryDataReceived$0(Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;Ljava/util/List;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;->clearLists()V

    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->addHistoryItems(Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;ZLjava/util/List;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;->getSitesSmartSearchData()Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;->getSitesSmartSearchData()Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;

    move-result-object p0

    sget-object p1, Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;->HISTORY:Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;->getValue()I

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->orderData(IZ)V

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->u()V

    return-void
.end method

.method private static synthetic lambda$onHistoryItemUpdated$1(Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;Ljava/lang/String;J)V
    .locals 4

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;->getSitesSmartSearchData()Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->getId()Ljava/lang/Long;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;->HISTORY:Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->remove(Ljava/lang/Long;Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;Z)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler;->getInstance()Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler$MESSAGES;->DELETED:Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler$MESSAGES;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler;->getInstance()Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->setTitle(Ljava/lang/String;)V

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->setId(Ljava/lang/Long;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;->getSitesSmartSearchData()Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->insert(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;)V

    const-string p0, "HistoryController"

    const-string p1, "onHistoryItemUpdated: insert completed"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler;->getInstance()Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler;

    move-result-object p0

    sget-object p1, Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler$MESSAGES;->INSERTED:Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler$MESSAGES;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p0

    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler;->getInstance()Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public clearHistoryURLsDone()V
    .locals 0

    return-void
.end method

.method public onHistoryCleared()V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController$4;->val$sitesSearchBase:Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;

    sget-object v0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;->HISTORY:Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;->removeAll(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler;->getInstance()Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler;

    move-result-object p0

    sget-object v1, Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler$MESSAGES;->DELETED:Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler$MESSAGES;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler;->getInstance()Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public onHistoryCountReceived(I)V
    .locals 0

    return-void
.end method

.method public onHistoryDataReceived(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/terrace/browser/history/TerraceHistoryItem;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->t()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController$4;->val$sitesSearchBase:Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/history/controller/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/sec/android/app/sbrowser/sites/history/controller/c;-><init>(Ljava/lang/Object;Ljava/util/List;I)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchThread;->getSmartSearchThread()Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchThread;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchThread;->runOnWorkerThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onHistoryItemDeleted(Ljava/lang/String;J)V
    .locals 0

    return-void
.end method

.method public onHistoryItemReceived(Lcom/sec/terrace/browser/history/TerraceHistoryItem;)V
    .locals 9

    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->t()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;

    invoke-virtual {p1}, Lcom/sec/terrace/browser/history/TerraceHistoryItem;->getVisitTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;->HISTORY:Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;

    invoke-virtual {p1}, Lcom/sec/terrace/browser/history/TerraceHistoryItem;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sec/terrace/browser/history/TerraceHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;-><init>(Ljava/lang/Long;Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController$4;->val$sitesSearchBase:Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;->getSitesSmartSearchData()Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController$4;->val$sitesSearchBase:Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;->getSitesSmartSearchData()Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->insert(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;)V

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler;->getInstance()Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler;

    move-result-object p0

    sget-object p1, Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler$MESSAGES;->INSERTED:Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler$MESSAGES;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p0

    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler;->getInstance()Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return-void
.end method

.method public onHistoryItemUpdated(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;J)V
    .locals 9

    const-string v0, "HistoryController"

    const-string v1, "onHistoryItemUpdated"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;->HISTORY:Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;

    const/4 v8, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, v0

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;-><init>(Ljava/lang/Long;Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    move-object v1, p0

    iget-object v2, v1, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController$4;->val$sitesSearchBase:Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;

    new-instance v7, Lcom/sec/android/app/sbrowser/sites/history/controller/b;

    move-object v1, v7

    move-object v3, v0

    move-object v4, p5

    move-wide v5, p6

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/sites/history/controller/b;-><init>(Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;Ljava/lang/String;J)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryThread;->getClientThread()Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryThread;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryThread;->runOnWorkerThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
