.class public Lcom/sec/android/app/sbrowser/smp/SmpController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/smp/SmpController$InitializeResultCallback;
    }
.end annotation


# instance fields
.field private mInitialized:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Lcom/sec/android/app/sbrowser/smp/SmpController;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/smp/SmpController;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/smp/SmpController;-><init>()V

    return-object v0
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/smp/SmpController;Lcom/sec/android/app/sbrowser/smp/SmpController$InitializeResultCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/smp/SmpController;->lambda$initialize$0(Lcom/sec/android/app/sbrowser/smp/SmpController$InitializeResultCallback;)V

    return-void
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/smp/SmpController;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/smp/SmpController;->mInitialized:Z

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/sec/android/app/sbrowser/smp/SmpController;
    .locals 4

    const-class v0, Lcom/sec/android/app/sbrowser/smp/SmpController;

    monitor-enter v0

    :try_start_0
    const-class v1, Lcom/sec/android/app/sbrowser/smp/SmpController;

    new-instance v2, Lcom/sec/android/app/sbrowser/settings/debug/o;

    const/16 v3, 0xc

    invoke-direct {v2, v3}, Lcom/sec/android/app/sbrowser/settings/debug/o;-><init>(I)V

    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/common/singleton/SingletonFactory;->getOrCreate(Ljava/lang/Class;Lcom/sec/android/app/sbrowser/common/function/Supplier;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/smp/SmpController;
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

.method private initializeInternal(Lcom/sec/android/app/sbrowser/smp/SmpController$InitializeResultCallback;)V
    .locals 4
    .param p1    # Lcom/sec/android/app/sbrowser/smp/SmpController$InitializeResultCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/smp/firebase/FirebaseAppCustomInitializer;->initialize(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/smp/SmpController;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/smp/SmpController$InitializeResultCallback;->onSuccess()V

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/smp/SmpController;->mInitialized:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const-string v0, "Initialize SMP..."

    const-string v1, "SmpController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/sdk/smp/SmpInitOptions;

    invoke-direct {v0}, Lcom/samsung/android/sdk/smp/SmpInitOptions;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/smp/SmpController;->getSPPAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/smp/SmpInitOptions;->setSppAppId(Ljava/lang/String;)Lcom/samsung/android/sdk/smp/SmpInitOptions;

    new-instance v2, Lcom/sec/android/app/sbrowser/smp/SmpController$1;

    invoke-direct {v2, p0, p1}, Lcom/sec/android/app/sbrowser/smp/SmpController$1;-><init>(Lcom/sec/android/app/sbrowser/smp/SmpController;Lcom/sec/android/app/sbrowser/smp/SmpController$InitializeResultCallback;)V

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/smp/SmpEventReceiver;->setInitializeResultCallback(Lcom/sec/android/app/sbrowser/smp/SmpController$InitializeResultCallback;)V

    :try_start_0
    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/smp/SmpController;->getSMPAppId()Ljava/lang/String;

    move-result-object p0

    sget-object v3, Lcom/samsung/android/sdk/smp/SmpConstants$PushModeForHkAndMo;->FCM_PRIMARY_MODE:Lcom/samsung/android/sdk/smp/SmpConstants$PushModeForHkAndMo;

    invoke-static {v2, p0, v3, v0}, Lcom/samsung/android/sdk/smp/SmpFeature;->init(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/SmpConstants$PushModeForHkAndMo;Lcom/samsung/android/sdk/smp/SmpInitOptions;)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/smp/SmpException$NullArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/samsung/android/sdk/smp/SmpException$IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/smp/SmpConfiguration;->setSupported(Landroid/content/Context;Z)V

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Smp.init error : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/smp/SmpConfiguration;->setSupported(Landroid/content/Context;Z)V

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/smp/SmpController$InitializeResultCallback;->onFailure()V

    return-void
.end method

.method private synthetic lambda$initialize$0(Lcom/sec/android/app/sbrowser/smp/SmpController$InitializeResultCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/smp/SmpController;->initializeInternal(Lcom/sec/android/app/sbrowser/smp/SmpController$InitializeResultCallback;)V

    return-void
.end method


# virtual methods
.method public getFCMAppId()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/smp/SmpController;->getSmpIdPropertiesName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "fcm_push_app_id"

    invoke-static {v0, p0, v1}, Lcom/sec/android/app/sbrowser/common/device/AssetUtil;->getProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSMPAppId()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/smp/SmpController;->getSmpIdPropertiesName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "smp_app_id"

    invoke-static {v0, p0, v1}, Lcom/sec/android/app/sbrowser/common/device/AssetUtil;->getProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSPPAppId()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/smp/SmpController;->getSmpIdPropertiesName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "spp_app_id"

    invoke-static {v0, p0, v1}, Lcom/sec/android/app/sbrowser/common/device/AssetUtil;->getProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSmpIdPropertiesName()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/AppInfo;->isBetaApk()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "contents_push_smp_id_beta.properties"

    goto :goto_0

    :cond_0
    const-string p0, "contents_push_smp_id.properties"

    :goto_0
    return-object p0
.end method

.method public getToken()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/Smp;->getPushToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lcom/samsung/android/sdk/smp/SmpException$NullArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/samsung/android/sdk/smp/SmpException$IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getToken error : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "SmpController"

    invoke-static {p0, v0, v1}, Landroidx/recyclerview/widget/P;->s(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getType()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/Smp;->getPushType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lcom/samsung/android/sdk/smp/SmpException$NullArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/samsung/android/sdk/smp/SmpException$IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getType error : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "SmpController"

    invoke-static {p0, v0, v1}, Landroidx/recyclerview/widget/P;->s(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public initialize(Lcom/sec/android/app/sbrowser/smp/SmpController$InitializeResultCallback;)V
    .locals 3
    .param p1    # Lcom/sec/android/app/sbrowser/smp/SmpController$InitializeResultCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/sec/terrace/base/TerraceThreadUtils;->assertOnUiThread()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/main_activity/a;

    const/16 v2, 0x1c

    invoke-direct {v1, v2, p0, p1}, Lcom/sec/android/app/sbrowser/main_activity/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public isSupported()Z
    .locals 0

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/smp/SmpConfiguration;->isSupported(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method
