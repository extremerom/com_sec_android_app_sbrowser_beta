.class public Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassConfigManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassConfigManager$LazyHolder;,
        Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassConfigManager$ConfigFetchState;
    }
.end annotation


# instance fields
.field mCurrentState:Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassConfigManager$ConfigFetchState;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassConfigManager;-><init>()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassConfigManager;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassConfigManager;->clearConfig(Landroid/content/Context;)V

    return-void
.end method

.method private clearConfig(Landroid/content/Context;)V
    .locals 1

    const-string p0, ""

    const-string v0, "boarding_pass_data.json"

    invoke-static {p1, p0, v0}, Lcom/sec/android/app/sbrowser/common/device/FileUtil;->write(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance()Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassConfigManager;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassConfigManager$LazyHolder;->a()Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassConfigManager;

    move-result-object v0

    return-object v0
.end method

.method private onBoardingPassDataFetchSuccess()V
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassConfigManager$ConfigFetchState;->COMPLETED:Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassConfigManager$ConfigFetchState;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassConfigManager;->mCurrentState:Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassConfigManager$ConfigFetchState;

    invoke-static {}, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassData;->getInstance()Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassData;->loadBoardingPassData()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassConfigManager;->processConfigUpdate()V

    return-void
.end method


# virtual methods
.method public fetchBoardingPassData()V
    .locals 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->getInstance()Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;

    move-result-object v0

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "boardingPassData"

    const-string v3, "BoardingPassDetection"

    invoke-virtual {v0, v3, v1, v2}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->createFetch(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;

    move-result-object v0

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassConfigManager$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassConfigManager$1;-><init>(Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassConfigManager;)V

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;->fetch(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/model/global_config/FetchCallback;)V

    return-void
.end method

.method public onBoardingPassDataFetchFailure()V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    sget-object v0, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassConfigManager$ConfigFetchState;->COMPLETED:Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassConfigManager$ConfigFetchState;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassConfigManager;->mCurrentState:Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassConfigManager$ConfigFetchState;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassConfigManager;->processConfigUpdate()V

    return-void
.end method

.method public onFeatureConfigUpdated()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassConfigManager;->mCurrentState:Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassConfigManager$ConfigFetchState;

    sget-object v1, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassConfigManager$ConfigFetchState;->IDLE:Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassConfigManager$ConfigFetchState;

    if-eq v0, v1, :cond_0

    sget-object v2, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassConfigManager$ConfigFetchState;->COMPLETED:Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassConfigManager$ConfigFetchState;

    if-eq v0, v2, :cond_0

    return-void

    :cond_0
    iput-object v1, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassConfigManager;->mCurrentState:Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassConfigManager$ConfigFetchState;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassConfigManager;->processConfigUpdate()V

    return-void
.end method

.method public onNativeInitializationSuccess()V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassData;->getInstance()Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassData;->loadBoardingPassData()V

    sget-object v0, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassConfigManager$ConfigFetchState;->IDLE:Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassConfigManager$ConfigFetchState;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassConfigManager;->mCurrentState:Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassConfigManager$ConfigFetchState;

    return-void
.end method

.method public processConfigUpdate()V
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassConfigManager$2;->$SwitchMap$com$sec$android$app$sbrowser$barcode_detect$BoardingPassConfigManager$ConfigFetchState:[I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassConfigManager;->mCurrentState:Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassConfigManager$ConfigFetchState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassConfigManager;->onBoardingPassDataFetchFailure()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassConfigManager;->onBoardingPassDataFetchSuccess()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassConfigManager;->fetchBoardingPassData()V

    :goto_0
    return-void
.end method
