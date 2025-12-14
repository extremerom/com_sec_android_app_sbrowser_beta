.class Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainModel$Listener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getItemList()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerAppDTO;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;->getInstance()Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;->getAppList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getListData(Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainModel$Listener;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainModel;->getItemList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainModel$Listener;->onListDataLoaded(Ljava/util/concurrent/CopyOnWriteArrayList;)V

    :cond_0
    return-void
.end method
