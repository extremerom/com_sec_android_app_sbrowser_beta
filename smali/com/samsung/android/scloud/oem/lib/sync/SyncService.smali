.class public Lcom/samsung/android/scloud/oem/lib/sync/SyncService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field private static final SCLOUD_INTERFACE_PROVIDER:Ljava/lang/String; = "com.samsung.android.scloud.oem.lib.sync.SyncClientProivder"

.field private static final SCLOUD_PACKAGE:Ljava/lang/String; = "com.samsung.android.scloud"

.field private static final SCLOUD_SYNC_PACKAGE:Ljava/lang/String; = "com.samsung.android.scloud.sync"

.field private static final TAG:Ljava/lang/String; = "SCloud-SyncService"

.field private static sSyncAdapter:Lcom/samsung/android/scloud/oem/lib/sync/SyncAdapter;

.field private static final sSyncAdapterLock:Ljava/lang/Object;


# instance fields
.field private mSupportSCloud:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/scloud/oem/lib/sync/SyncService;->sSyncAdapterLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/scloud/oem/lib/sync/SyncService;->mSupportSCloud:Z

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 5

    const-string v0, "SCloud-SyncService"

    const-string v1, "onBind"

    invoke-static {v0, v1}, LK8/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "action : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LK8/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "intent bundle - "

    const-string v4, ":"

    invoke-static {v3, v2, v4}, LV0/c;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, LK8/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lcom/samsung/android/scloud/oem/lib/sync/SyncService;->mSupportSCloud:Z

    if-nez p1, :cond_1

    const-string p1, "set sync invisible.. SCloud package is not found !!.."

    invoke-static {v0, p1}, LK8/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, LR8/b;->f(Lcom/samsung/android/scloud/oem/lib/sync/SyncService;)Landroid/accounts/Account;

    move-result-object p1

    invoke-static {p0}, Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;->getContentAuthority()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, LR8/b;->j(Landroid/accounts/Account;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-static {p0}, Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;->isSyncable()Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "set sync invisible. from xml config"

    invoke-static {v0, p1}, LK8/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, LR8/b;->f(Lcom/samsung/android/scloud/oem/lib/sync/SyncService;)Landroid/accounts/Account;

    move-result-object p1

    invoke-static {p0}, Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;->getContentAuthority()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, LR8/b;->j(Landroid/accounts/Account;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-static {p0}, Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;->getClientMap()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/scloud/oem/lib/sync/ISCloudSyncClient;

    invoke-interface {v1, p0}, Lcom/samsung/android/scloud/oem/lib/sync/ISCloudSyncClient;->isSyncable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string p1, "set sync invisible. from ISCloudSyncClient config"

    invoke-static {v0, p1}, LK8/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, LR8/b;->f(Lcom/samsung/android/scloud/oem/lib/sync/SyncService;)Landroid/accounts/Account;

    move-result-object p1

    invoke-static {p0}, Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;->getContentAuthority()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, LR8/b;->j(Landroid/accounts/Account;Ljava/lang/String;)V

    :cond_4
    :goto_1
    sget-object p0, Lcom/samsung/android/scloud/oem/lib/sync/SyncService;->sSyncAdapter:Lcom/samsung/android/scloud/oem/lib/sync/SyncAdapter;

    invoke-virtual {p0}, Landroid/content/AbstractThreadedSyncAdapter;->getSyncAdapterBinder()Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public onCreate()V
    .locals 7

    sget-object v0, Lcom/samsung/android/scloud/oem/lib/sync/SyncService;->sSyncAdapterLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "SCloud-SyncService"

    const-string v2, "onCreate"

    invoke-static {v1, v2}, LK8/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/scloud/oem/lib/sync/SyncService;->sSyncAdapter:Lcom/samsung/android/scloud/oem/lib/sync/SyncAdapter;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/scloud/oem/lib/sync/SyncAdapter;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/scloud/oem/lib/sync/SyncAdapter;-><init>(Landroid/content/Context;Z)V

    sput-object v1, Lcom/samsung/android/scloud/oem/lib/sync/SyncService;->sSyncAdapter:Lcom/samsung/android/scloud/oem/lib/sync/SyncAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    const/16 v2, 0x80

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "com.samsung.android.scloud"

    invoke-virtual {v4, v5, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "com.samsung.android.scloud.sync"

    invoke-virtual {v4, v5, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_1
    :try_start_3
    iput-boolean v1, p0, Lcom/samsung/android/scloud/oem/lib/sync/SyncService;->mSupportSCloud:Z

    const-string v2, "SCloud-SyncService"

    const-string v4, "SCloud package is not found !!.."

    invoke-static {v2, v4}, LK8/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-boolean v2, p0, Lcom/samsung/android/scloud/oem/lib/sync/SyncService;->mSupportSCloud:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_0

    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    new-instance v4, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.samsung.android.scloud.oem.lib.sync.SyncClientProivder"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4, v3, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    const-string v2, "SCloud-SyncService"

    const-string v3, "SCloud package is found... enable sync provider"

    invoke-static {v2, v3}, LK8/b;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catch_2
    move-exception v2

    :try_start_5
    const-string v3, "SCloud-SyncService"

    const-string v4, "enable err"

    invoke-static {v2, v3, v4}, LK8/b;->b(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/samsung/android/scloud/oem/lib/sync/SyncService;->mSupportSCloud:Z

    :cond_0
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p0
.end method
