.class public Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfig;
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

    const-string v0, "BFCache"

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfig;->mFieldTypeMap:Ljava/util/Map;

    const-string p0, "BFCacheAvailableStatus"

    sget-object v1, Lcom/sec/android/app/sbrowser/common/model/global_config/FieldType;->BOOLEAN:Lcom/sec/android/app/sbrowser/common/model/global_config/FieldType;

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/sec/android/app/sbrowser/common/model/global_config/FieldType;->STRING:Lcom/sec/android/app/sbrowser/common/model/global_config/FieldType;

    const-string v1, "BFCacheMetadata"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "BFCacheBlockedUrl"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "BFCacheBlockedFeatures"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "metadata-version"

    sget-object v1, Lcom/sec/android/app/sbrowser/common/model/global_config/FieldType;->INT:Lcom/sec/android/app/sbrowser/common/model/global_config/FieldType;

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfig;->mFieldTypeMap:Ljava/util/Map;

    return-object p0
.end method

.method public onFeatureConfigUpdated(Landroid/content/Context;)V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager;->getInstance()Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager;->onFeatureConfigUpdated(Landroid/content/Context;)V

    return-void
.end method

.method public onUpdateFailed(Landroid/content/Context;)V
    .locals 0

    return-void
.end method
