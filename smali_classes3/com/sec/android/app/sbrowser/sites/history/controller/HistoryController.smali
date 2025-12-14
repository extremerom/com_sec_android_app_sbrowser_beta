.class public Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiController;
.implements Lcom/sec/android/app/sbrowser/sites/history/model/HistoryObserver;
.implements Lcom/sec/android/app/sbrowser/sites/history/model/HistoryContextMenuDelegate;


# static fields
.field private static sHistoryDataInserted:Z

.field private static sHistoryObserversList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/sites/history/model/HistoryObserver;",
            ">;"
        }
    .end annotation
.end field

.field private static sHistorySearchModel:Lcom/sec/terrace/browser/history/TerraceHistoryModel;

.field private static sVisitTimes:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActivityStatus:Lcom/sec/android/app/sbrowser/common/sites/history/model/HistoryConstants$ActivityStatus;

.field mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mHistoryItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/terrace/browser/history/TerraceHistoryItem;",
            ">;"
        }
    .end annotation
.end field

.field private mHistoryModel:Lcom/sec/terrace/browser/history/TerraceHistoryModel;

.field private mHistoryUi:Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUI;

.field private mIsDataDeleted:Z

.field private mIsFromDelete:Z

.field private mIsHistoryDataReceived:Z

.field private mIsMoreHistoryDataReceived:Z

.field private mIsSearchDataDeleted:Z

.field private mShowProgress:Lcom/sec/android/app/sbrowser/common/sites/BookmarksProgressDialog;

.field mTerraceHistoryManagerListener:Lcom/sec/terrace/browser/history/TerraceHistoryModel$TerraceHistoryManagerlListner;

.field mTerraceHistorySearchManagerListener:Lcom/sec/terrace/browser/history/TerraceHistoryModel$TerraceHistoryManagerlListner;

.field private final mVideoHistoryLauncher:Lcom/sec/android/app/sbrowser/media/history/MHActivityLauncher;

.field private mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->sVisitTimes:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/media/history/MHActivityLauncher;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/media/history/MHActivityLauncher;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->mVideoHistoryLauncher:Lcom/sec/android/app/sbrowser/media/history/MHActivityLauncher;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->mIsSearchDataDeleted:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->mIsDataDeleted:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->mIsHistoryDataReceived:Z

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController$1;-><init>(Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->lambda$deleteSearchDataCall$0()V

    return-void
.end method

.method public static declared-synchronized addHistoryItems(Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;ZLjava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;",
            "Z",
            "Ljava/util/List<",
            "Lcom/sec/terrace/browser/history/TerraceHistoryItem;",
            ">;)V"
        }
    .end annotation

    const-class v0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/terrace/browser/history/TerraceHistoryItem;

    new-instance v10, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;

    invoke-virtual {v1}, Lcom/sec/terrace/browser/history/TerraceHistoryItem;->getVisitTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sget-object v11, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;->HISTORY:Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;

    invoke-virtual {v1}, Lcom/sec/terrace/browser/history/TerraceHistoryItem;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/sec/terrace/browser/history/TerraceHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v2, v10

    move-object v4, v11

    invoke-direct/range {v2 .. v9}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;-><init>(Ljava/lang/Long;Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;->getSitesSmartSearchData()Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;

    move-result-object v1

    invoke-virtual {v1, v10, v11}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->add(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;->getSitesSearchData()Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchData;

    move-result-object v1

    invoke-virtual {v1, v10, v11}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchData;->add(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->lambda$showProgress$1()V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->lambda$setSearchData$2()V

    return-void
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private deleteSearchData(Ljava/util/concurrent/CopyOnWriteArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->mIsSearchDataDeleted:Z

    check-cast v0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchDataDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchDataDelegate;->getSitesSearchData()Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;->isSmartSearchAvailable()Z

    move-result v3

    if-eqz v3, :cond_4

    move v3, v1

    :goto_0
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v3

    const/16 v5, 0x1f4

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move v6, v3

    :goto_1
    add-int v7, v3, v4

    if-ge v6, v7, :cond_2

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v8

    if-lt v6, v8, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p1, v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;->HISTORY:Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ","

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v5, v1, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;->removeInBulk(Ljava/lang/String;)V

    :cond_3
    move v3, v7

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;->getSitesSearchData()Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchData;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;->HISTORY:Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;

    invoke-virtual {v3, v1, v4}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchData;->remove(Ljava/lang/Long;Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;)V

    goto :goto_3

    :cond_5
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->mContext:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->isAvailable()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler;->getInstance()Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler$MESSAGES;->DELETED:Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler$MESSAGES;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-static {p1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;->HISTORY:Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler;->getInstance()Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_6
    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->mIsSearchDataDeleted:Z

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->mIsDataDeleted:Z

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->dismissProgress()V

    :cond_7
    sget-object p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->sVisitTimes:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    :cond_8
    :goto_4
    return-void
.end method

.method private deleteSearchDataCall()V
    .locals 3

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/sbrowser/sites/history/controller/a;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/sites/history/controller/a;-><init>(Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static bridge synthetic e(Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->mHistoryItemList:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;)Lcom/sec/terrace/browser/history/TerraceHistoryModel;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->mHistoryModel:Lcom/sec/terrace/browser/history/TerraceHistoryModel;

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;)Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUI;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->mHistoryUi:Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUI;

    return-object p0
.end method

.method private getHeaderName(I)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_2

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    const/4 p0, 0x2

    if-eq p1, p0, :cond_0

    const-string p0, "All time"

    return-object p0

    :cond_0
    const-string p0, "Yesterday"

    return-object p0

    :cond_1
    const-string p0, "Today"

    return-object p0

    :cond_2
    const-string p0, "LastHour"

    return-object p0
.end method

.method public static bridge synthetic h(Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->mIsMoreHistoryDataReceived:Z

    return p0
.end method

.method public static bridge synthetic i(Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->mIsSearchDataDeleted:Z

    return p0
.end method

.method public static bridge synthetic j(Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;)Lcom/sec/android/app/sbrowser/media/history/MHActivityLauncher;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->mVideoHistoryLauncher:Lcom/sec/android/app/sbrowser/media/history/MHActivityLauncher;

    return-object p0
.end method

.method public static bridge synthetic k(Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->mIsDataDeleted:Z

    return-void
.end method

.method public static bridge synthetic l(Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->mIsMoreHistoryDataReceived:Z

    return-void
.end method

.method private synthetic lambda$deleteSearchDataCall$0()V
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->sVisitTimes:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->deleteSearchData(Ljava/util/concurrent/CopyOnWriteArrayList;)V

    return-void
.end method

.method private synthetic lambda$setSearchData$2()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->mHistoryUi:Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUI;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUI;->setMenuItemVisibility(Z)V

    goto :goto_0

    :cond_0
    const-string p0, "HistoryController"

    const-string v0, "History Ui is null"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private synthetic lambda$showProgress$1()V
    .locals 3

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->mIsHistoryDataReceived:Z

    const/4 v1, 0x0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->mShowProgress:Lcom/sec/android/app/sbrowser/common/sites/BookmarksProgressDialog;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/common/sites/BookmarksProgressDialog;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/sbrowser/common/sites/BookmarksProgressDialog;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->mShowProgress:Lcom/sec/android/app/sbrowser/common/sites/BookmarksProgressDialog;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->mShowProgress:Lcom/sec/android/app/sbrowser/common/sites/BookmarksProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->mShowProgress:Lcom/sec/android/app/sbrowser/common/sites/BookmarksProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->mShowProgress:Lcom/sec/android/app/sbrowser/common/sites/BookmarksProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/view/Window;->setGravity(I)V

    goto :goto_1

    :cond_2
    :goto_0
    const-string p0, "HistoryController"

    const-string v0, "activity is invalid, cannot show dialog for progress"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    :goto_1
    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->mIsHistoryDataReceived:Z

    return-void
.end method

.method public static bridge synthetic m(Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->deleteSearchDataCall()V

    return-void
.end method

.method public static bridge synthetic n(Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->onClearHistoryURLsDone()V

    return-void
.end method

.method public static bridge synthetic o(Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->onHistoryReceived(Ljava/util/List;)V

    return-void
.end method

.method private onClearHistoryURLsDone()V
    .locals 4

    const-string v0, "HistoryController"

    const-string v1, "clearHistoryURLsDone"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->mContext:Landroid/content/Context;

    const v1, 0x7f1405d8

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->mView:Landroid/view/View;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->mActivityStatus:Lcom/sec/android/app/sbrowser/common/sites/history/model/HistoryConstants$ActivityStatus;

    sget-object v3, Lcom/sec/android/app/sbrowser/common/sites/history/model/HistoryConstants$ActivityStatus;->FOREGROUND:Lcom/sec/android/app/sbrowser/common/sites/history/model/HistoryConstants$ActivityStatus;

    if-eq v2, v3, :cond_1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->notifyHistoryItemsUpdate()V

    return-void
.end method

.method private onHistoryReceived(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/terrace/browser/history/TerraceHistoryItem;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->mIsHistoryDataReceived:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->mHistoryModel:Lcom/sec/terrace/browser/history/TerraceHistoryModel;

    invoke-virtual {v0}, Lcom/sec/terrace/browser/history/TerraceHistoryModel;->getHistoryCount()V

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onHistoryDataReceived "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HistoryController"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->setHistoryData(Ljava/util/List;)V

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->mIsFromDelete:Z

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler;->getInstance()Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler$MESSAGES;->DELETED:Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler$MESSAGES;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-static {p1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;->HISTORY:Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler;->getInstance()Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->mIsFromDelete:Z

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->mHistoryUi:Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUI;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUI;->onViewCreated()V

    :cond_1
    return-void
.end method

.method private onLaunchHistorySearchResult(Ljava/lang/String;)V
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->mContext:Landroid/content/Context;

    check-cast p0, Landroid/app/Activity;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "HistorySelectedUrl"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p1, 0x7e

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private onLaunchSelectedUrl(Ljava/lang/String;I)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    instance-of v1, v0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "act"

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->getHeaderName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p0, v0

    check-cast p0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;->getScreenID()Ljava/lang/String;

    move-result-object p0

    const-string p2, "3207"

    invoke-static {p0, p2, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    const-string p2, "HistorySelectedUrl"

    invoke-virtual {p0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p1, 0x64

    invoke-virtual {v0, p1, p0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public static bridge synthetic p(Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->onLaunchSelectedUrl(Ljava/lang/String;I)V

    return-void
.end method

.method private prepareUrlsFromSelectedItemsforShareVia()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->mHistoryItemList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/terrace/browser/history/TerraceHistoryItem;

    invoke-virtual {v1}, Lcom/sec/terrace/browser/history/TerraceHistoryItem;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/sec/terrace/browser/history/TerraceHistoryItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/sec/terrace/browser/history/TerraceHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "\n"

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/sec/terrace/browser/history/TerraceHistoryItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/sec/terrace/browser/history/TerraceHistoryItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/terrace/browser/history/TerraceHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-eqz p0, :cond_3

    add-int/lit8 p0, p0, -0x1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_3
    const-string p0, ""

    :goto_1
    return-object p0
.end method

.method public static bridge synthetic q(Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->prepareUrlsFromSelectedItemsforShareVia()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic r(Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->resetScrollPositionIfNecessary()V

    return-void
.end method

.method public static declared-synchronized registerObserver(Lcom/sec/android/app/sbrowser/sites/history/model/HistoryObserver;)V
    .locals 2

    const-class v0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->sHistoryObserversList:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->sHistoryObserversList:Ljava/util/ArrayList;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->sHistoryObserversList:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->sHistoryObserversList:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private resetScrollPositionIfNecessary()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->mHistoryUi:Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUI;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUI;->resetScrollPositionIfNecessary()V

    :cond_0
    return-void
.end method

.method public static bridge synthetic s(Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->shareUrls(Ljava/lang/String;)V

    return-void
.end method

.method private setHistoryData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/terrace/browser/history/TerraceHistoryItem;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->mHistoryItemList:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->mHistoryItemList:Ljava/util/List;

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->mHistoryItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->mHistoryUi:Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUI;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->mHistoryItemList:Ljava/util/List;

    invoke-interface {p1, p0}, Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUI;->setHistoryData(Ljava/util/List;)V

    return-void
.end method

.method private shareUrls(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x4e20

    if-ge v0, v1, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/utils/ShareHelper$IntentBuilder;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/utils/ShareHelper$IntentBuilder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/sec/android/app/sbrowser/utils/ShareHelper$IntentBuilder;->chooserIntent(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/utils/ShareHelper$IntentBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/utils/ShareHelper$IntentBuilder;->bringToFront()Lcom/sec/android/app/sbrowser/utils/ShareHelper$IntentBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/utils/ShareHelper$IntentBuilder;->build()Landroid/content/Intent;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->mContext:Landroid/content/Context;

    check-cast p0, Landroid/app/Activity;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil;->startActivityShare(Landroid/app/Activity;Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->mContext:Landroid/content/Context;

    check-cast p0, Landroid/app/Activity;

    const p1, 0x1020002

    const v0, 0x7f140dc8

    const/4 v1, -0x1

    invoke-static {p0, p1, v0, v1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->q(Landroid/app/Activity;III)V

    :goto_0
    return-void
.end method

.method public static bridge synthetic t()Z
    .locals 1

    sget-boolean v0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->sHistoryDataInserted:Z

    return v0
.end method

.method public static bridge synthetic u()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->sHistoryDataInserted:Z

    return-void
.end method


# virtual methods
.method public delete(Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiDelegate;Lcom/sec/terrace/browser/history/TerraceHistoryItem;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/sec/terrace/browser/history/TerraceHistoryItem;->setIsSelected(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->mHistoryUi:Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUI;

    invoke-interface {p0, p2}, Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUI;->addHistoryItemFromContextMenu(Lcom/sec/terrace/browser/history/TerraceHistoryItem;)V

    const/4 p0, 0x0

    invoke-interface {p1, p0}, Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiDelegate;->deleteHistoryData(Z)V

    return-void
.end method

.method public dismissProgress()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->mShowProgress:Lcom/sec/android/app/sbrowser/common/sites/BookmarksProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->mShowProgress:Lcom/sec/android/app/sbrowser/common/sites/BookmarksProgressDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->mHistoryUi:Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUI;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUI;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public dispatchMoreKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->mHistoryUi:Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUI;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUI;->dispatchMoreKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public getCurrentTabInformativeSubTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->mHistoryUi:Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUI;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUI;->getCurrentTabInformativeSubTitle()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentTabInformativeTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->mHistoryUi:Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUI;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUI;->getCurrentTabInformativeTitle()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDndList()Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->mHistoryUi:Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUI;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUI;->getDndList()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    return-object p0
.end method

.method public getSitesSearchItems(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;)V
    .locals 6

    sget-object p1, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->sHistorySearchModel:Lcom/sec/terrace/browser/history/TerraceHistoryModel;

    if-nez p1, :cond_0

    new-instance p1, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController$4;

    invoke-direct {p1, p0, p2}, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController$4;-><init>(Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->mTerraceHistorySearchManagerListener:Lcom/sec/terrace/browser/history/TerraceHistoryModel$TerraceHistoryManagerlListner;

    new-instance p0, Lcom/sec/terrace/browser/history/TerraceHistoryModel;

    invoke-direct {p0, p1}, Lcom/sec/terrace/browser/history/TerraceHistoryModel;-><init>(Lcom/sec/terrace/browser/history/TerraceHistoryModel$TerraceHistoryManagerlListner;)V

    sput-object p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->sHistorySearchModel:Lcom/sec/terrace/browser/history/TerraceHistoryModel;

    invoke-virtual {p0}, Lcom/sec/terrace/browser/history/TerraceHistoryModel;->initListenerHelper()V

    :cond_0
    sget-object v0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->sHistorySearchModel:Lcom/sec/terrace/browser/history/TerraceHistoryModel;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    long-to-double v3, p0

    const/4 v5, 0x0

    const-wide/16 v1, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/terrace/browser/history/TerraceHistoryModel;->getAllHistoryByDuration(DDI)V

    return-void
.end method

.method public historyItemsChanged()V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->mHistoryModel:Lcom/sec/terrace/browser/history/TerraceHistoryModel;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    long-to-double v3, v1

    const/4 v5, 0x0

    const-wide/16 v1, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/terrace/browser/history/TerraceHistoryModel;->getAllHistoryByDuration(DDI)V

    return-void
.end method

.method public isHistoryListEmpty()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->mHistoryItemList:Ljava/util/List;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public notifyHistoryItemsUpdate()V
    .locals 1

    sget-object p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->sHistoryObserversList:Ljava/util/ArrayList;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/sites/history/model/HistoryObserver;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sites/history/model/HistoryObserver;->historyItemsChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onAppBarHeightChanged(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->mHistoryUi:Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUI;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUI;->onAppBarHeightChanged(I)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUI;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->mHistoryUi:Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUI;

    check-cast p1, Landroid/app/Activity;

    invoke-interface {p2, p1}, Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUI;->setActivity(Landroid/app/Activity;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->mHistoryUi:Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUI;

    invoke-interface {p1, p0}, Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUI;->setContextMenuDelegate(Lcom/sec/android/app/sbrowser/sites/history/model/HistoryContextMenuDelegate;)V

    return-void
.end method

.method public onBackPressed()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->mHistoryUi:Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUI;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUI;->onBackPressed()Z

    move-result p0

    return p0
.end method

.method public onCancelButtonClicked()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->mHistoryUi:Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUI;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUI;->onCancelButtonClicked()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->mHistoryUi:Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUI;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUI;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->mHistoryUi:Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUI;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUI;->onCreate()V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "sbrowser_history_delete"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v1, p0, v0}, Lcom/sec/android/app/sbrowser/common/device/ContextUtils;->registerExportedBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)V
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->mHistoryUi:Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUI;

    sget-object v0, Lcom/sec/android/app/sbrowser/common/sites/history/model/HistoryConstants$OptionMenuAction;->OPTION_MENU_CREATE:Lcom/sec/android/app/sbrowser/common/sites/history/model/HistoryConstants$OptionMenuAction;

    const/4 v1, 0x0

    invoke-interface {p0, v0, p1, v1}, Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUI;->onOptionMenu(Lcom/sec/android/app/sbrowser/common/sites/history/model/HistoryConstants$OptionMenuAction;Landroid/view/Menu;Landroid/view/MenuItem;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->registerObserver(Lcom/sec/android/app/sbrowser/sites/history/model/HistoryObserver;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->mHistoryUi:Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUI;

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUI;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onDeleteButtonClicked()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->mHistoryUi:Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUI;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUI;->onDeleteButtonClicked()V

    return-void
.end method

.method public onDeleteHistoryData(Z)V
    .locals 7

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->mHistoryModel:Lcom/sec/terrace/browser/history/TerraceHistoryModel;

    invoke-virtual {p1}, Lcom/sec/terrace/browser/history/TerraceHistoryModel;->clearAllHistory()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->mContext:Landroid/content/Context;

    check-cast p1, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchDataDelegate;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchDataDelegate;->getSitesSearchData()Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->mContext:Landroid/content/Context;

    check-cast p0, Landroid/app/Activity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->isAvailable()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;->HISTORY:Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;->removeAll(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler;->getInstance()Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler$MESSAGES;->DELETED:Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler$MESSAGES;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-static {p1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;->getValue()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler;->getInstance()Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void

    :cond_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->mIsHistoryDataReceived:Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->showProgress()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->sVisitTimes:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->mHistoryUi:Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUI;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUI;->getSelectedList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v2, p1

    :goto_0
    if-ge v2, v1, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->mHistoryUi:Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUI;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUI;->getSelectedList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->mHistoryItemList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/terrace/browser/history/TerraceHistoryItem;

    invoke-virtual {v3}, Lcom/sec/terrace/browser/history/TerraceHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->sVisitTimes:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Lcom/sec/terrace/browser/history/TerraceHistoryItem;->getVisitTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->mHistoryModel:Lcom/sec/terrace/browser/history/TerraceHistoryModel;

    sget-object v2, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->sVisitTimes:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0, v2}, Lcom/sec/terrace/browser/history/TerraceHistoryModel;->deleteHistory(Ljava/util/List;Ljava/util/List;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->mHistoryUi:Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUI;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUI;->getSelectedList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->mIsDataDeleted:Z

    return-void
.end method

.method public onDestroy()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->mHistoryUi:Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUI;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUI;->setHistoryDelegate(Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiDelegate;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->mHistoryUi:Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUI;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUI;->onDestroy()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->mHistoryUi:Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUI;

    :cond_0
    iput-object v1, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->mShowProgress:Lcom/sec/android/app/sbrowser/common/sites/BookmarksProgressDialog;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->mHistoryModel:Lcom/sec/terrace/browser/history/TerraceHistoryModel;

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->mTerraceHistoryManagerListener:Lcom/sec/terrace/browser/history/TerraceHistoryModel$TerraceHistoryManagerlListner;

    invoke-virtual {v0}, Lcom/sec/terrace/browser/history/TerraceHistoryModel;->destroy()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->mHistoryModel:Lcom/sec/terrace/browser/history/TerraceHistoryModel;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->mHistoryItemList:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->mHistoryItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->mHistoryItemList:Ljava/util/List;

    :cond_2
    sget-object v0, Lcom/sec/android/app/sbrowser/common/sites/history/model/HistoryConstants$ActivityStatus;->FINISHED:Lcom/sec/android/app/sbrowser/common/sites/history/model/HistoryConstants$ActivityStatus;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->mActivityStatus:Lcom/sec/android/app/sbrowser/common/sites/history/model/HistoryConstants$ActivityStatus;

    invoke-virtual {p0, p0}, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->unregisterObserver(Lcom/sec/android/app/sbrowser/sites/history/model/HistoryObserver;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->mContext:Landroid/content/Context;

    :cond_3
    return-void
.end method

.method public onDialogDismissed()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->mHistoryUi:Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUI;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUI;->onDialogDismissed()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)V
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->mHistoryUi:Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUI;

    sget-object v0, Lcom/sec/android/app/sbrowser/common/sites/history/model/HistoryConstants$OptionMenuAction;->OPTION_MENU_SELECT:Lcom/sec/android/app/sbrowser/common/sites/history/model/HistoryConstants$OptionMenuAction;

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1, p1}, Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUI;->onOptionMenu(Lcom/sec/android/app/sbrowser/common/sites/history/model/HistoryConstants$OptionMenuAction;Landroid/view/Menu;Landroid/view/MenuItem;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/sites/history/model/HistoryConstants$ActivityStatus;->BACKGROUND:Lcom/sec/android/app/sbrowser/common/sites/history/model/HistoryConstants$ActivityStatus;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->mActivityStatus:Lcom/sec/android/app/sbrowser/common/sites/history/model/HistoryConstants$ActivityStatus;

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->mHistoryUi:Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUI;

    sget-object v0, Lcom/sec/android/app/sbrowser/common/sites/history/model/HistoryConstants$OptionMenuAction;->OPTION_MENU_PREPARE:Lcom/sec/android/app/sbrowser/common/sites/history/model/HistoryConstants$OptionMenuAction;

    const/4 v1, 0x0

    invoke-interface {p0, v0, p1, v1}, Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUI;->onOptionMenu(Lcom/sec/android/app/sbrowser/common/sites/history/model/HistoryConstants$OptionMenuAction;Landroid/view/Menu;Landroid/view/MenuItem;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/common/sites/history/model/HistoryConstants$ActivityStatus;->FOREGROUND:Lcom/sec/android/app/sbrowser/common/sites/history/model/HistoryConstants$ActivityStatus;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->mActivityStatus:Lcom/sec/android/app/sbrowser/common/sites/history/model/HistoryConstants$ActivityStatus;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getHistoryBixbyUpdate()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->onClearHistoryURLsDone()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setHistoryBixbyUpdate(Z)V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->mHistoryUi:Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUI;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUI;->onResume()V

    return-void
.end method

.method public onSearchDelete(Ljava/util/concurrent/CopyOnWriteArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->sVisitTimes:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->mIsHistoryDataReceived:Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->showProgress()V

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->getType()Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;->HISTORY:Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;

    if-ne v3, v4, :cond_0

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->sVisitTimes:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    sget-object p1, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->sVisitTimes:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->mIsFromDelete:Z

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->mHistoryModel:Lcom/sec/terrace/browser/history/TerraceHistoryModel;

    sget-object v2, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->sVisitTimes:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v0, v2}, Lcom/sec/terrace/browser/history/TerraceHistoryModel;->deleteHistory(Ljava/util/List;Ljava/util/List;)V

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->mIsDataDeleted:Z

    :cond_3
    :goto_1
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    const-string p2, "HistoryController"

    const-string v0, "onViewCreated"

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_0

    instance-of v0, p2, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;->getAppBarLayout()Lcom/google/android/material/appbar/AppBarLayout;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->mContext:Landroid/content/Context;

    check-cast p2, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;->getAppBarLayout()Lcom/google/android/material/appbar/AppBarLayout;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(Z)V

    :cond_0
    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->mView:Landroid/view/View;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->mHistoryUi:Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUI;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUI;->createHistoryBaseUiHelperInstance()V

    new-instance p1, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController$2;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController$2;-><init>(Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->mTerraceHistoryManagerListener:Lcom/sec/terrace/browser/history/TerraceHistoryModel$TerraceHistoryManagerlListner;

    new-instance p2, Lcom/sec/terrace/browser/history/TerraceHistoryModel;

    invoke-direct {p2, p1}, Lcom/sec/terrace/browser/history/TerraceHistoryModel;-><init>(Lcom/sec/terrace/browser/history/TerraceHistoryModel$TerraceHistoryManagerlListner;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->mHistoryModel:Lcom/sec/terrace/browser/history/TerraceHistoryModel;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->showProgress()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->mHistoryModel:Lcom/sec/terrace/browser/history/TerraceHistoryModel;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    long-to-double v3, p1

    const/16 v5, 0x1f4

    const-wide/16 v1, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/terrace/browser/history/TerraceHistoryModel;->getAllHistoryByDuration(DDI)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->mHistoryUi:Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUI;

    new-instance p2, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController$3;

    invoke-direct {p2, p0}, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController$3;-><init>(Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;)V

    invoke-interface {p1, p2}, Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUI;->setHistoryDelegate(Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiDelegate;)V

    return-void
.end method

.method public open(Lcom/sec/terrace/browser/history/TerraceHistoryItem;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->mHistoryUi:Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUI;

    invoke-virtual {p1}, Lcom/sec/terrace/browser/history/TerraceHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUI;->handleHistoryItemClick(Ljava/lang/String;)V

    return-void
.end method

.method public openInNewTab(Lcom/sec/terrace/browser/history/TerraceHistoryItem;)V
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->mContext:Landroid/content/Context;

    check-cast p0, Landroid/app/Activity;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "HistorySelectedUrl"

    invoke-virtual {p1}, Lcom/sec/terrace/browser/history/TerraceHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p1, 0x7e

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public openInNewWindow(Lcom/sec/terrace/browser/history/TerraceHistoryItem;)V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->mContext:Landroid/content/Context;

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/sec/terrace/browser/history/TerraceHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->openInNewWindow(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public setActionModeTitleAlpha(F)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->mHistoryUi:Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUI;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUI;->setActionModeTitleAlpha(F)V

    return-void
.end method

.method public setHistoryUi(Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUI;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->mHistoryUi:Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUI;

    return-void
.end method

.method public setOnClickForSearchItem(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->mHistoryUi:Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUI;

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->onLaunchHistorySearchResult(Ljava/lang/String;)V

    return-void
.end method

.method public setSearchData(Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;)V
    .locals 3

    const-string v0, "HistoryController"

    const-string v1, "Setting search Data in HistoryController"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->mHistoryItemList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/sites/history/controller/a;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/sites/history/controller/a;-><init>(Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->mHistoryItemList:Ljava/util/List;

    invoke-static {p1, v0, p0}, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->addHistoryItems(Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;ZLjava/util/List;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setViewForNewConfig(Landroid/view/ViewGroup;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->mHistoryUi:Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUI;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUI;->setViewForNewConfig(Landroid/view/ViewGroup;)V

    :cond_0
    return-void
.end method

.method public share(Lcom/sec/terrace/browser/history/TerraceHistoryItem;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/sec/terrace/browser/history/TerraceHistoryItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/terrace/browser/history/TerraceHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->shareUrls(Ljava/lang/String;)V

    return-void
.end method

.method public showProgress()V
    .locals 4

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/android/app/sbrowser/sites/history/controller/a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/sites/history/controller/a;-><init>(Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;I)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public unregisterObserver(Lcom/sec/android/app/sbrowser/sites/history/model/HistoryObserver;)V
    .locals 0

    sget-object p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->sHistoryObserversList:Ljava/util/ArrayList;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->sHistoryObserversList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    sget-object p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->sHistoryObserversList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    sput-object p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->sHistoryObserversList:Ljava/util/ArrayList;

    :cond_2
    return-void
.end method

.method public updateHistorySearchDataAfterSync()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->sHistoryDataInserted:Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;->notifyHistoryItemsUpdate()V

    return-void
.end method
