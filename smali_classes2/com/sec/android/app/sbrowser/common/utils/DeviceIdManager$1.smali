.class Lcom/sec/android/app/sbrowser/common/utils/DeviceIdManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/common/utils/DeviceIdManager;->initialize(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/common/utils/DeviceIdManager;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/common/utils/DeviceIdManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/utils/DeviceIdManager$1;->this$0:Lcom/sec/android/app/sbrowser/common/utils/DeviceIdManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    const-string p1, "DeviceIdManager"

    const-string v0, "oaid = "

    :try_start_0
    const-string v1, "onServiceConnected"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Lz8/b;->v0(Landroid/os/IBinder;)Lz8/c;

    move-result-object p2

    check-cast p2, Lz8/a;

    invoke-virtual {p2}, Lz8/a;->v0()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/common/utils/DeviceIdManager;->e(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/DeviceIdManager;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onServiceConnected failed ="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2, v0, p1}, Landroidx/recyclerview/widget/P;->s(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/common/utils/DeviceIdManager$1;->this$0:Lcom/sec/android/app/sbrowser/common/utils/DeviceIdManager;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/DeviceIdManager;->b(Lcom/sec/android/app/sbrowser/common/utils/DeviceIdManager;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/utils/DeviceIdManager$1;->this$0:Lcom/sec/android/app/sbrowser/common/utils/DeviceIdManager;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/DeviceIdManager;->b(Lcom/sec/android/app/sbrowser/common/utils/DeviceIdManager;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    const-string p0, "DeviceIdManager"

    const-string p1, "onServiceDisconnected"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
