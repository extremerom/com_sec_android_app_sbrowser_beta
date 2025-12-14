.class public Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassConfig;
.super Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature;
.source "SourceFile"


# instance fields
.field private final mFieldTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/sbrowser/common/model/global_config/FieldType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "BoardingPassDetection"

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassConfig;->mFieldTypeMap:Ljava/util/Map;

    const-string p0, "boardingPassData"

    sget-object v1, Lcom/sec/android/app/sbrowser/common/model/global_config/FieldType;->STRING:Lcom/sec/android/app/sbrowser/common/model/global_config/FieldType;

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static isBoardingPassDetectionSupported(Landroid/content/Context;)Z
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->getInstance()Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;

    move-result-object v0

    const-string v1, "BoardingPassDetection"

    invoke-virtual {v0, v1, p0}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->isSupport(Ljava/lang/String;Landroid/content/Context;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public getFieldTypeMap()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/sbrowser/common/model/global_config/FieldType;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassConfig;->mFieldTypeMap:Ljava/util/Map;

    return-object p0
.end method

.method public onFeatureConfigUpdated(Landroid/content/Context;)V
    .locals 0

    const-string p0, "BoardingPassConfig"

    const-string p1, "Initiating feature config updation"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassConfigManager;->getInstance()Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassConfigManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassConfigManager;->onFeatureConfigUpdated()V

    return-void
.end method

.method public onUpdateFailed(Landroid/content/Context;)V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassData;->getInstance()Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassData;->loadBoardingPassData()V

    return-void
.end method
