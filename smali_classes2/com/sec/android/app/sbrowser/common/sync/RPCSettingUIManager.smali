.class public Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/sync/ISyncSettingUIManager;


# instance fields
.field private mIsServiceBinding:Z

.field private mSamsungCloudRPCSetting:Lcom/samsung/android/scloud/lib/setting/j;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManager;->mIsServiceBinding:Z

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManager;->lambda$showSetting$0()V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManager;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManager;->lambda$switchOnOff$1(Z)V

    return-void
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManager;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManager;->mIsServiceBinding:Z

    return-void
.end method

.method private synthetic lambda$showSetting$0()V
    .locals 2

    const-string v0, "RPCSettingUIManager"

    const-string v1, "showSetting onCompleted"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManager;->mSamsungCloudRPCSetting:Lcom/samsung/android/scloud/lib/setting/j;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/scloud/lib/setting/j;->a()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManager;->destroy()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$switchOnOff$1(Z)V
    .locals 2

    const-string v0, "RPCSettingUIManager"

    const-string v1, "switchOnOff onCompleted"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManager;->mSamsungCloudRPCSetting:Lcom/samsung/android/scloud/lib/setting/j;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/scloud/lib/setting/j;->b(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized bindSamsungCloudRPCSetting(Lcom/sec/android/app/sbrowser/common/sync/ISyncSettingUIManager$InitCallback;)V
    .locals 4

    const-string v0, "SamsungCloudRPCSetting error : "

    const-string v1, "bindSamsungCloudRPCSetting : "

    monitor-enter p0

    :try_start_0
    const-string v2, "RPCSettingUIManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManager;->mIsServiceBinding:Z

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncAccountUtil;->getSamsungAccount()Landroid/accounts/Account;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManager;->mIsServiceBinding:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    new-instance v1, Lcom/samsung/android/scloud/lib/setting/j;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManager$1;

    invoke-direct {v3, p0, p1}, Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManager$1;-><init>(Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManager;Lcom/sec/android/app/sbrowser/common/sync/ISyncSettingUIManager$InitCallback;)V

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/scloud/lib/setting/j;-><init>(Landroid/content/Context;LS8/d;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManager;->mSamsungCloudRPCSetting:Lcom/samsung/android/scloud/lib/setting/j;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_2
    const-string v1, "RPCSettingUIManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/sync/ISyncSettingUIManager$InitCallback;->onCompleted()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public checkSyncProfile()I
    .locals 6

    const-string v0, "rcode"

    const-string v1, "RPCSettingUIManager"

    const-string v2, "checkSyncProfile"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManager;->mSamsungCloudRPCSetting:Lcom/samsung/android/scloud/lib/setting/j;

    const/4 v2, 0x0

    if-nez p0, :cond_0

    const-string p0, "checkSyncProfile mSamsungCloudRPCSetting is null"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    new-instance v3, Lcom/samsung/android/scloud/rpc/SamsungCloudRPCProfile;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iget-object p0, p0, Lcom/samsung/android/scloud/lib/setting/j;->a:Lcom/samsung/android/scloud/lib/setting/p;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    sget-object v4, Lcom/samsung/android/scloud/lib/setting/p;->d:Ljava/lang/String;

    const-string v5, "getProfile"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/scloud/lib/setting/p;->a:Ljava/lang/Object;

    check-cast p0, LS8/c;

    check-cast p0, LS8/a;

    invoke-virtual {p0, v3}, LS8/a;->v0(Lcom/samsung/android/scloud/rpc/SamsungCloudRPCProfile;)Landroid/os/Bundle;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const v4, 0x55d4a80

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v0, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    if-nez p0, :cond_1

    return v2

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Sync profile - cloudDisplayName: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v3, Lcom/samsung/android/scloud/rpc/SamsungCloudRPCProfile;->a:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n preCondition: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v3, Lcom/samsung/android/scloud/rpc/SamsungCloudRPCProfile;->c:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\n isOn: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v3, Lcom/samsung/android/scloud/rpc/SamsungCloudRPCProfile;->i:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\n status: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "checkSyncProfile : "

    invoke-static {v0, p0, v1}, LV0/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget p0, v3, Lcom/samsung/android/scloud/rpc/SamsungCloudRPCProfile;->c:I

    return p0
.end method

.method public destroy()V
    .locals 2

    const-string v0, "RPCSettingUIManager"

    const-string v1, "destroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManager;->mSamsungCloudRPCSetting:Lcom/samsung/android/scloud/lib/setting/j;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, v0, Lcom/samsung/android/scloud/lib/setting/j;->a:Lcom/samsung/android/scloud/lib/setting/p;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v0, v0, Lcom/samsung/android/scloud/lib/setting/p;->c:Ljava/lang/Object;

    check-cast v0, LJ2/z;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    sget-object v0, Lcom/samsung/android/scloud/lib/setting/p;->d:Ljava/lang/String;

    const-string v1, "unbindService: success"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManager;->mSamsungCloudRPCSetting:Lcom/samsung/android/scloud/lib/setting/j;

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManager;->mIsServiceBinding:Z

    return-void
.end method

.method public initRPCSetting(Lcom/sec/android/app/sbrowser/common/sync/ISyncSettingUIManager$InitCallback;)V
    .locals 2

    const-string v0, "RPCSettingUIManager"

    const-string v1, "initRPCSetting"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManager;->bindSamsungCloudRPCSetting(Lcom/sec/android/app/sbrowser/common/sync/ISyncSettingUIManager$InitCallback;)V

    return-void
.end method

.method public showSetting(Landroid/app/Activity;)V
    .locals 1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManager;->mSamsungCloudRPCSetting:Lcom/samsung/android/scloud/lib/setting/j;

    const-string v0, "RPCSettingUIManager"

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManager;->mIsServiceBinding:Z

    if-eqz p1, :cond_0

    const-string p1, "showSetting"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManager;->mSamsungCloudRPCSetting:Lcom/samsung/android/scloud/lib/setting/j;

    invoke-virtual {p0}, Lcom/samsung/android/scloud/lib/setting/j;->a()V

    goto :goto_0

    :cond_0
    const-string p1, "showSetting mSamsungCloudRPCSetting is null"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/google/firebase/messaging/z;

    const/16 v0, 0xf

    invoke-direct {p1, v0, p0}, Lcom/google/firebase/messaging/z;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManager;->bindSamsungCloudRPCSetting(Lcom/sec/android/app/sbrowser/common/sync/ISyncSettingUIManager$InitCallback;)V

    :goto_0
    return-void
.end method

.method public switchOnOff(Z)Z
    .locals 2

    const-string v0, "switchOnOff : "

    const-string v1, "RPCSettingUIManager"

    invoke-static {v0, v1, p1}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManager;->mSamsungCloudRPCSetting:Lcom/samsung/android/scloud/lib/setting/j;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/scloud/lib/setting/j;->b(I)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string v0, "switchOnOff mSamsungCloudRPCSetting is null"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/H;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/H;-><init>(ILjava/lang/Object;Z)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManager;->bindSamsungCloudRPCSetting(Lcom/sec/android/app/sbrowser/common/sync/ISyncSettingUIManager$InitCallback;)V

    const/4 p0, 0x0

    return p0
.end method
