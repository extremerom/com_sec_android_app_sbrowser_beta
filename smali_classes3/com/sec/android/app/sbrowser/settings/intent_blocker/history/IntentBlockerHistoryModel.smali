.class Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryModel$Listener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getItemList(Ljava/lang/String;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 11
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/android/app/sbrowser/settings/base_class/HistoryListBaseView;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;->getInstance()Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;->getAppInfo(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerAppDTO;

    move-result-object p1

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;->getInstance()Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerAppDTO;->getAppId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;->getAppHistory(I)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    move v9, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerHistoryDTO;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerHistoryDTO;->getTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/utils/TimeUtil;->timestampToDateOnly(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerHistoryDTO;->getTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/utils/TimeUtil;->timestampToTimeOnly(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryHeaderView;

    add-int/lit8 v8, v3, 0x1

    invoke-direct {v7, v3, v5}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryHeaderView;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    move v3, v8

    :cond_1
    new-instance v5, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryItemView;

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerHistoryDTO;->isBlocked()Z

    move-result v8

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerHistoryDTO;->getUrl()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v5, v3, v8, v10, v6}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryItemView;-><init>(IZLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerHistoryDTO;->isBlocked()Z

    move-result v3

    if-eqz v3, :cond_2

    add-int/lit8 v9, v9, 0x1

    :cond_2
    move v3, v7

    goto :goto_0

    :cond_3
    new-instance p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryAppInfoView;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerAppDTO;->getAppName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerAppDTO;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerAppDTO;->getBlocked()Z

    move-result v7

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerAppDTO;->getCount()I

    move-result v8

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryAppInfoView;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZII)V

    invoke-virtual {v0, v2, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public getListData(Ljava/lang/String;Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryModel$Listener;)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryModel;->getItemList(Ljava/lang/String;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryModel$Listener;->onListDataLoaded(Ljava/util/concurrent/CopyOnWriteArrayList;)V

    :cond_0
    return-void
.end method
