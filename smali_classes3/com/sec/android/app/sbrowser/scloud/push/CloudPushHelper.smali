.class public Lcom/sec/android/app/sbrowser/scloud/push/CloudPushHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final INSTANCE_LOCK:Ljava/lang/Object;

.field private static sInstance:Lcom/sec/android/app/sbrowser/scloud/push/CloudPushHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/scloud/push/CloudPushHelper;->INSTANCE_LOCK:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/sec/android/app/sbrowser/scloud/push/CloudPushHelper;
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/scloud/push/CloudPushHelper;->INSTANCE_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/sec/android/app/sbrowser/scloud/push/CloudPushHelper;->sInstance:Lcom/sec/android/app/sbrowser/scloud/push/CloudPushHelper;

    if-nez v1, :cond_0

    new-instance v1, Lcom/sec/android/app/sbrowser/scloud/push/CloudPushHelper;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/scloud/push/CloudPushHelper;-><init>()V

    sput-object v1, Lcom/sec/android/app/sbrowser/scloud/push/CloudPushHelper;->sInstance:Lcom/sec/android/app/sbrowser/scloud/push/CloudPushHelper;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/sec/android/app/sbrowser/scloud/push/CloudPushHelper;->sInstance:Lcom/sec/android/app/sbrowser/scloud/push/CloudPushHelper;

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static isTurnOn()Z
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isSyncInternalizationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncAccountUtil;->getSamsungAccount()Landroid/accounts/Account;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public initialize()V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/smp/SmpController;->getInstance()Lcom/sec/android/app/sbrowser/smp/SmpController;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/scloud/push/CloudPushHelper$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/scloud/push/CloudPushHelper$1;-><init>(Lcom/sec/android/app/sbrowser/scloud/push/CloudPushHelper;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/smp/SmpController;->initialize(Lcom/sec/android/app/sbrowser/smp/SmpController$InitializeResultCallback;)V

    return-void
.end method
