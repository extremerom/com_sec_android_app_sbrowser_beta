.class public Lcom/sec/android/app/sbrowser/common/device/WakeLockManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/common/device/WakeLockManager$Type;
    }
.end annotation


# instance fields
.field private mWakeLockMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/os/PowerManager$WakeLock;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/device/WakeLockManager;->mWakeLockMap:Ljava/util/HashMap;

    return-void
.end method

.method public static synthetic a()Lcom/sec/android/app/sbrowser/common/device/WakeLockManager;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/common/device/WakeLockManager;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/common/device/WakeLockManager;-><init>()V

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/sec/android/app/sbrowser/common/device/WakeLockManager;
    .locals 4

    const-class v0, Lcom/sec/android/app/sbrowser/common/device/WakeLockManager;

    monitor-enter v0

    :try_start_0
    const-class v1, Lcom/sec/android/app/sbrowser/common/device/WakeLockManager;

    new-instance v2, Lcom/google/firebase/messaging/m;

    const/16 v3, 0x18

    invoke-direct {v2, v3}, Lcom/google/firebase/messaging/m;-><init>(I)V

    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/common/singleton/SingletonFactory;->getOrCreate(Ljava/lang/Class;Lcom/sec/android/app/sbrowser/common/function/Supplier;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/device/WakeLockManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public clear()V
    .locals 1

    const-string v0, "SBrowser::READ_ALOUD_WAKE_LOCK_TAG"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/WakeLockManager;->unlockScreen(Ljava/lang/String;)V

    return-void
.end method

.method public getWakeLockMap()Ljava/util/HashMap;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/os/PowerManager$WakeLock;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/device/WakeLockManager;->mWakeLockMap:Ljava/util/HashMap;

    return-object p0
.end method

.method public lockScreen(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-string v0, "Lock Screen is called : "

    const-string v1, "WakeLockManager"

    invoke-static {v0, p2, v1}, LV0/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/device/WakeLockManager;->mWakeLockMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    if-nez p1, :cond_1

    const-string p0, "Cannot get power service"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    const-wide/32 v0, 0x927c0

    invoke-virtual {p1, v0, v1}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/device/WakeLockManager;->mWakeLockMap:Ljava/util/HashMap;

    invoke-virtual {p0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public unlockScreen(Ljava/lang/String;)V
    .locals 2

    const-string v0, "Un lock Screen is called : "

    const-string v1, "WakeLockManager"

    invoke-static {v0, p1, v1}, LV0/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/device/WakeLockManager;->mWakeLockMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager$WakeLock;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_1
    return-void
.end method
