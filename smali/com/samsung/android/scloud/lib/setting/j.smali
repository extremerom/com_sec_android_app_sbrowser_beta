.class public final Lcom/samsung/android/scloud/lib/setting/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/samsung/android/scloud/lib/setting/p;


# direct methods
.method public constructor <init>(Landroid/content/Context;LS8/d;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p2}, LS8/d;->getServiceType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SYNC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/samsung/android/scloud/lib/setting/p;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, LJ2/z;

    const/4 v2, 0x2

    invoke-direct {v1, v2, v0}, LJ2/z;-><init>(ILjava/lang/Object;)V

    iput-object v1, v0, Lcom/samsung/android/scloud/lib/setting/p;->c:Ljava/lang/Object;

    const-string v2, "[scsetting][2.0.36.0]"

    sput-object v2, Lcom/samsung/android/scloud/lib/setting/p;->d:Ljava/lang/String;

    iput-object p2, v0, Lcom/samsung/android/scloud/lib/setting/p;->b:Ljava/lang/Object;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.android.scloud.RPC_SYNC_SETTING"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.samsung.android.scloud"

    const-string v4, "com.samsung.android.scloud.app.service.RPCSyncService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v1, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/samsung/android/scloud/lib/setting/p;->d:Ljava/lang/String;

    const-string p2, "binding success"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-interface {p2, p1}, LS8/d;->onBind(Z)V

    sget-object p1, Lcom/samsung/android/scloud/lib/setting/p;->d:Ljava/lang/String;

    const-string p2, "binding failure"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iput-object v0, p0, Lcom/samsung/android/scloud/lib/setting/j;->a:Lcom/samsung/android/scloud/lib/setting/p;

    :cond_1
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    const-string v0, "com.sec.android.app.sbrowser.beta"

    iget-object p0, p0, Lcom/samsung/android/scloud/lib/setting/j;->a:Lcom/samsung/android/scloud/lib/setting/p;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    sget-object v1, Lcom/samsung/android/scloud/lib/setting/p;->d:Ljava/lang/String;

    const-string v2, "showSetting"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/scloud/lib/setting/p;->a:Ljava/lang/Object;

    check-cast p0, LS8/c;

    check-cast p0, LS8/a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v3, "com.samsung.android.scloud.rpc.ISamsungCloudRPC"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p0, p0, LS8/a;->a:Landroid/os/IBinder;

    const/4 v0, 0x5

    const/4 v3, 0x0

    invoke-interface {p0, v0, v1, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public final b(I)V
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/scloud/lib/setting/j;->a:Lcom/samsung/android/scloud/lib/setting/p;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    sget-object v0, Lcom/samsung/android/scloud/lib/setting/p;->d:Ljava/lang/String;

    const-string v1, "switchOnOff"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/scloud/lib/setting/p;->a:Ljava/lang/Object;

    check-cast p0, LS8/c;

    check-cast p0, LS8/a;

    invoke-virtual {p0, p1}, LS8/a;->w0(I)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const p1, 0x55d4a80

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "rcode"

    invoke-virtual {p0, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
