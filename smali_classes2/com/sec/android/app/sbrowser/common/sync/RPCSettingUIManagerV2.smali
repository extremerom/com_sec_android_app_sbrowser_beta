.class public Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManagerV2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/sync/ISyncSettingUIManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManagerV2$RequestLocalSyncHandler;
    }
.end annotation


# instance fields
.field private final mRequestLocalSyncHandler:Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManagerV2$RequestLocalSyncHandler;

.field private mSamsungCloudRPCSetting:Lcom/samsung/android/scloud/lib/setting/k;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManagerV2$RequestLocalSyncHandler;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManagerV2$RequestLocalSyncHandler;-><init>(Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManagerV2;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManagerV2;->mRequestLocalSyncHandler:Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManagerV2$RequestLocalSyncHandler;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManagerV2;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManagerV2;->lambda$showSetting$0(Landroid/app/Activity;)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManagerV2;Landroid/net/Uri;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManagerV2;->lambda$requestLocalSync$6(Landroid/net/Uri;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManagerV2;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManagerV2;->lambda$loadPerformancePolicy$7()V

    return-void
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManagerV2;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManagerV2;->lambda$getContentSync$3(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic e(Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManagerV2;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManagerV2;->lambda$switchOnOff$1(Z)V

    return-void
.end method

.method public static synthetic f(Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManagerV2;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManagerV2;->lambda$requestLocalSync$4(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic g(Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManagerV2;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManagerV2;->lambda$requestSync$2(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic h(Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManagerV2;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManagerV2;->lambda$requestLocalSync$5(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static bridge synthetic i(Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManagerV2;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManagerV2;->requestLocalSyncAPI(Ljava/util/ArrayList;)V

    return-void
.end method

.method private declared-synchronized initSamsungCloudRPCSetting(Lcom/sec/android/app/sbrowser/common/sync/ISyncSettingUIManager$InitCallback;)V
    .locals 4

    const-string v0, "SamsungCloudRPCSettingV2 error : "

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncAccountUtil;->getSamsungAccount()Landroid/accounts/Account;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManagerV2;->mSamsungCloudRPCSetting:Lcom/samsung/android/scloud/lib/setting/k;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    new-instance v1, Lcom/samsung/android/scloud/lib/setting/k;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/scloud/lib/setting/k;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManagerV2;->mSamsungCloudRPCSetting:Lcom/samsung/android/scloud/lib/setting/k;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "RPCSettingUIManagerV2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/sync/ISyncSettingUIManager$InitCallback;->onCompleted()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method private synthetic lambda$getContentSync$3(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManagerV2;->mSamsungCloudRPCSetting:Lcom/samsung/android/scloud/lib/setting/k;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/samsung/android/scloud/lib/setting/k;->a(Ljava/lang/String;)Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManagerV2;->destroy()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$loadPerformancePolicy$7()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManagerV2;->mSamsungCloudRPCSetting:Lcom/samsung/android/scloud/lib/setting/k;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/scloud/lib/setting/k;->b()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManagerV2;->destroy()V

    :cond_0
    return-void
.end method

.method private lambda$requestLocalSync$4(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManagerV2;->mSamsungCloudRPCSetting:Lcom/samsung/android/scloud/lib/setting/k;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/scloud/lib/setting/k;->a:Lcom/samsung/android/scloud/lib/setting/p;

    if-eqz p0, :cond_0

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/scloud/lib/setting/p;->c(Landroid/net/Uri;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$requestLocalSync$5(Ljava/util/ArrayList;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManagerV2;->mSamsungCloudRPCSetting:Lcom/samsung/android/scloud/lib/setting/k;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManagerV2;->requestLocalSyncHandler(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method private lambda$requestLocalSync$6(Landroid/net/Uri;Ljava/util/ArrayList;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManagerV2;->mSamsungCloudRPCSetting:Lcom/samsung/android/scloud/lib/setting/k;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/scloud/lib/setting/k;->a:Lcom/samsung/android/scloud/lib/setting/p;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/scloud/lib/setting/p;->c(Landroid/net/Uri;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$requestSync$2(Ljava/util/ArrayList;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManagerV2;->mSamsungCloudRPCSetting:Lcom/samsung/android/scloud/lib/setting/k;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/scloud/lib/setting/k;->c(Ljava/util/ArrayList;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManagerV2;->destroy()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$showSetting$0(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManagerV2;->mSamsungCloudRPCSetting:Lcom/samsung/android/scloud/lib/setting/k;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/scloud/lib/setting/k;->e(Landroid/app/Activity;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManagerV2;->destroy()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$switchOnOff$1(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManagerV2;->mSamsungCloudRPCSetting:Lcom/samsung/android/scloud/lib/setting/k;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/scloud/lib/setting/k;->d(Z)V

    :cond_0
    return-void
.end method

.method private requestLocalSyncAPI(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "RPCSettingUIManagerV2"

    const-string v1, "requestLocalSyncAPI"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManagerV2;->mSamsungCloudRPCSetting:Lcom/samsung/android/scloud/lib/setting/k;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/scloud/lib/setting/k;->a:Lcom/samsung/android/scloud/lib/setting/p;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/scloud/lib/setting/p;->c(Landroid/net/Uri;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private requestLocalSyncHandler(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManagerV2;->mRequestLocalSyncHandler:Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManagerV2$RequestLocalSyncHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManagerV2;->mRequestLocalSyncHandler:Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManagerV2$RequestLocalSyncHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManagerV2;->mRequestLocalSyncHandler:Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManagerV2$RequestLocalSyncHandler;

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManagerV2;->mRequestLocalSyncHandler:Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManagerV2$RequestLocalSyncHandler;

    const-wide/16 v0, 0xbb8

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method


# virtual methods
.method public checkSyncProfile()I
    .locals 7

    const-string v0, "RPCSettingUIManagerV2"

    const-string v1, "checkSyncProfile"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManagerV2;->mSamsungCloudRPCSetting:Lcom/samsung/android/scloud/lib/setting/k;

    const/4 v1, 0x0

    if-nez p0, :cond_0

    const-string p0, "checkSyncProfile mSamsungCloudRPCSetting is null"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/scloud/lib/setting/k;->a:Lcom/samsung/android/scloud/lib/setting/p;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "com.sec.android.app.sbrowser.beta"

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "authority"

    invoke-virtual {v4, v5, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "application_type"

    const/4 v5, 0x1

    invoke-virtual {v4, v2, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "library_version"

    const-wide/16 v5, 0x4eca

    invoke-virtual {v4, v2, v5, v6}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    sget-object v2, Lcom/samsung/android/scloud/lib/setting/p;->e:Ljava/lang/String;

    const-string v5, "getProfile: com.sec.android.app.sbrowser.beta, 1"

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/scloud/lib/setting/p;->a:Ljava/lang/Object;

    check-cast v2, Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object p0, p0, Lcom/samsung/android/scloud/lib/setting/p;->b:Ljava/lang/Object;

    check-cast p0, Landroid/net/Uri;

    const-string v5, "get_profile"

    invoke-virtual {v2, p0, v5, v3, v4}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v2, Lcom/samsung/android/scloud/lib/setting/p;->e:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-nez v3, :cond_1

    return v1

    :cond_1
    const-string p0, "precondition"

    invoke-virtual {v3, p0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p0

    const-string v1, "rcode"

    invoke-virtual {v3, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "preCondition: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\n status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "checkSyncProfile : "

    invoke-static {v2, v1, v0}, LV0/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public destroy()V
    .locals 2

    const-string v0, "RPCSettingUIManagerV2"

    const-string v1, "destroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManagerV2;->mSamsungCloudRPCSetting:Lcom/samsung/android/scloud/lib/setting/k;

    return-void
.end method

.method public getContentSync(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "RPCSettingUIManagerV2"

    const-string v1, "getContentSync"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManagerV2;->mSamsungCloudRPCSetting:Lcom/samsung/android/scloud/lib/setting/k;

    if-eqz v2, :cond_0

    invoke-virtual {v2, p1}, Lcom/samsung/android/scloud/lib/setting/k;->a(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const-string v2, "getContentSync mSamsungCloudRPCSetting is null"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, LM4/a;

    const/16 v2, 0xe

    invoke-direct {v0, p0, v2, v1, p1}, LM4/a;-><init>(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManagerV2;->initSamsungCloudRPCSetting(Lcom/sec/android/app/sbrowser/common/sync/ISyncSettingUIManager$InitCallback;)V

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public initRPCSetting(Lcom/sec/android/app/sbrowser/common/sync/ISyncSettingUIManager$InitCallback;)V
    .locals 2

    const-string v0, "RPCSettingUIManagerV2"

    const-string v1, "initRPCSetting"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManagerV2;->initSamsungCloudRPCSetting(Lcom/sec/android/app/sbrowser/common/sync/ISyncSettingUIManager$InitCallback;)V

    return-void
.end method

.method public loadPerformancePolicy()V
    .locals 2

    const-string v0, "RPCSettingUIManagerV2"

    const-string v1, "loadPerformancePolicy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManagerV2;->mSamsungCloudRPCSetting:Lcom/samsung/android/scloud/lib/setting/k;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/scloud/lib/setting/k;->b()V

    goto :goto_0

    :cond_0
    const-string v1, "loadPerformancePolicy mSamsungCloudRPCSetting is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/google/firebase/messaging/z;

    const/16 v1, 0x10

    invoke-direct {v0, v1, p0}, Lcom/google/firebase/messaging/z;-><init>(ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManagerV2;->initSamsungCloudRPCSetting(Lcom/sec/android/app/sbrowser/common/sync/ISyncSettingUIManager$InitCallback;)V

    :goto_0
    return-void
.end method

.method public requestLocalSync(Landroid/net/Uri;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "RPCSettingUIManagerV2"

    const-string v1, "requestLocalSync"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManagerV2;->mSamsungCloudRPCSetting:Lcom/samsung/android/scloud/lib/setting/k;

    if-eqz v1, :cond_0

    iget-object p0, v1, Lcom/samsung/android/scloud/lib/setting/k;->a:Lcom/samsung/android/scloud/lib/setting/p;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/scloud/lib/setting/p;->c(Landroid/net/Uri;Ljava/util/List;)V

    goto :goto_0

    :cond_0
    const-string v1, "requestLocalSync mSamsungCloudRPCSetting is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, LM4/a;

    const/16 v1, 0xd

    invoke-direct {v0, p0, v1, p1, p2}, LM4/a;-><init>(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManagerV2;->initSamsungCloudRPCSetting(Lcom/sec/android/app/sbrowser/common/sync/ISyncSettingUIManager$InitCallback;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public requestLocalSync(Ljava/lang/String;)V
    .locals 2

    const-string v0, "RPCSettingUIManagerV2"

    const-string v1, "requestLocalSync single"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManagerV2;->mSamsungCloudRPCSetting:Lcom/samsung/android/scloud/lib/setting/k;

    if-eqz v1, :cond_0

    iget-object p0, v1, Lcom/samsung/android/scloud/lib/setting/k;->a:Lcom/samsung/android/scloud/lib/setting/p;

    if-eqz p0, :cond_1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/scloud/lib/setting/p;->c(Landroid/net/Uri;Ljava/util/List;)V

    goto :goto_0

    :cond_0
    const-string v1, "requestLocalSync single mSamsungCloudRPCSetting is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, LHa/a;

    const/16 v1, 0xd

    invoke-direct {v0, v1, p0, p1}, LHa/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManagerV2;->initSamsungCloudRPCSetting(Lcom/sec/android/app/sbrowser/common/sync/ISyncSettingUIManager$InitCallback;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public requestLocalSync(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "RPCSettingUIManagerV2"

    const-string v1, "requestLocalSync"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManagerV2;->mSamsungCloudRPCSetting:Lcom/samsung/android/scloud/lib/setting/k;

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManagerV2;->requestLocalSyncHandler(Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_0
    const-string v1, "requestLocalSync mSamsungCloudRPCSetting is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/sec/android/app/sbrowser/common/sync/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/sec/android/app/sbrowser/common/sync/a;-><init>(Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManagerV2;Ljava/util/ArrayList;I)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManagerV2;->initSamsungCloudRPCSetting(Lcom/sec/android/app/sbrowser/common/sync/ISyncSettingUIManager$InitCallback;)V

    :goto_0
    return-void
.end method

.method public requestSync(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "RPCSettingUIManagerV2"

    const-string v1, "requestSync"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManagerV2;->mSamsungCloudRPCSetting:Lcom/samsung/android/scloud/lib/setting/k;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/samsung/android/scloud/lib/setting/k;->c(Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_0
    const-string v1, "requestSync mSamsungCloudRPCSetting is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/sec/android/app/sbrowser/common/sync/a;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/sec/android/app/sbrowser/common/sync/a;-><init>(Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManagerV2;Ljava/util/ArrayList;I)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManagerV2;->initSamsungCloudRPCSetting(Lcom/sec/android/app/sbrowser/common/sync/ISyncSettingUIManager$InitCallback;)V

    :goto_0
    return-void
.end method

.method public showSetting(Landroid/app/Activity;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManagerV2;->mSamsungCloudRPCSetting:Lcom/samsung/android/scloud/lib/setting/k;

    const-string v1, "RPCSettingUIManagerV2"

    if-eqz v0, :cond_0

    const-string v0, "showSetting"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManagerV2;->mSamsungCloudRPCSetting:Lcom/samsung/android/scloud/lib/setting/k;

    invoke-virtual {p0, p1}, Lcom/samsung/android/scloud/lib/setting/k;->e(Landroid/app/Activity;)V

    goto :goto_0

    :cond_0
    const-string v0, "showSetting mSamsungCloudRPCSetting is null"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, LHa/a;

    const/16 v1, 0xe

    invoke-direct {v0, v1, p0, p1}, LHa/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManagerV2;->initSamsungCloudRPCSetting(Lcom/sec/android/app/sbrowser/common/sync/ISyncSettingUIManager$InitCallback;)V

    :goto_0
    return-void
.end method

.method public switchOnOff(Z)Z
    .locals 2

    const-string v0, "switchOnOff : "

    const-string v1, "RPCSettingUIManagerV2"

    invoke-static {v0, v1, p1}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManagerV2;->mSamsungCloudRPCSetting:Lcom/samsung/android/scloud/lib/setting/k;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/scloud/lib/setting/k;->d(Z)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string v0, "switchOnOff mSamsungCloudRPCSetting is null"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/H;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/H;-><init>(ILjava/lang/Object;Z)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManagerV2;->initSamsungCloudRPCSetting(Lcom/sec/android/app/sbrowser/common/sync/ISyncSettingUIManager$InitCallback;)V

    const/4 p0, 0x0

    return p0
.end method
