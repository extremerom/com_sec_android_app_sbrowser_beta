.class public Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier$SyncStateObserver;,
        Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier$SyncStateHandler;
    }
.end annotation


# instance fields
.field private final mSyncStateHandler:Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier$SyncStateHandler;

.field private mSyncStateObserverList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier$SyncStateObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier$SyncStateHandler;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier$SyncStateHandler;-><init>(Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier;->mSyncStateHandler:Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier$SyncStateHandler;

    return-void
.end method

.method public static synthetic a()Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier;-><init>()V

    return-object v0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method public static getInstance()Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier;
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/common/sites/b;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/common/sites/b;-><init>(I)V

    const-class v1, Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier;

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/singleton/SingletonFactory;->getOrCreate(Ljava/lang/Class;Lcom/sec/android/app/sbrowser/common/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier;

    return-object v0
.end method

.method private handleMessage(Landroid/os/Message;)V
    .locals 3

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier;->mSyncStateObserverList:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleMessage msg.what = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Landroid/os/Message;->what:I

    const-string v2, "SyncStateNotifier :SBrowserSync"

    invoke-static {v0, v1, v2}, Lw2/j;->j(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const-string p0, "handleMessage wrong message type"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier;->notifyMessage(ILjava/lang/Object;)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier;->notifyMessage(I)V

    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private notifyMessage(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier;->notifyMessage(ILjava/lang/Object;)V

    return-void
.end method

.method private notifyMessage(ILjava/lang/Object;)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier;->mSyncStateObserverList:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier$SyncStateObserver;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier$SyncStateObserver;->onChanged(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier;->mSyncStateHandler:Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier$SyncStateHandler;

    return-object p0
.end method

.method public getSyncStateObserverList()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier$SyncStateObserver;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier;->mSyncStateObserverList:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method public registerSyncStateObserver(Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier$SyncStateObserver;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier;->mSyncStateObserverList:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier;->mSyncStateObserverList:Ljava/util/concurrent/CopyOnWriteArrayList;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier;->mSyncStateObserverList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier;->mSyncStateObserverList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public resetStateObserverList()V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier;->mSyncStateObserverList:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier;->mSyncStateObserverList:Ljava/util/concurrent/CopyOnWriteArrayList;

    :cond_0
    return-void
.end method

.method public unregisterSyncStateObserver(Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier$SyncStateObserver;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier;->mSyncStateObserverList:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier;->mSyncStateObserverList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier;->mSyncStateObserverList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier;->mSyncStateObserverList:Ljava/util/concurrent/CopyOnWriteArrayList;

    :cond_2
    return-void
.end method
