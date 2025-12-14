.class public Lcom/sec/android/app/sbrowser/extract_text/ExtractTextConfig;
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
    .locals 1

    const-string v0, "ExtractText"

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/ExtractTextConfig;->mFieldTypeMap:Ljava/util/Map;

    return-void
.end method

.method private updateVisionTextSupport()V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object p0

    invoke-static {}, Lcom/sec/android/app/sbrowser/extract_text/ExtractTextHelper;->isVisionTextSupported()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/terrace/TerraceHelper;->setVisionTextSupport(Z)V

    return-void
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

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extract_text/ExtractTextConfig;->mFieldTypeMap:Ljava/util/Map;

    return-object p0
.end method

.method public onFeatureConfigUpdated(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/extract_text/ExtractTextConfig;->updateVisionTextSupport()V

    return-void
.end method

.method public onUpdateFailed(Landroid/content/Context;)V
    .locals 0

    return-void
.end method
