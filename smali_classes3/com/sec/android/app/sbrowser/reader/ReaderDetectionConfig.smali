.class public Lcom/sec/android/app/sbrowser/reader/ReaderDetectionConfig;
.super Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature;
.source "SourceFile"


# static fields
.field private static final FIELD_TYPE_MAP:Ljava/util/Map;
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
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    sget-object v2, Lcom/sec/android/app/sbrowser/common/model/global_config/FieldType;->STRING:Lcom/sec/android/app/sbrowser/common/model/global_config/FieldType;

    new-instance v3, Ljava/util/AbstractMap$SimpleEntry;

    const-string v4, "override_list"

    invoke-direct {v3, v4, v2}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-array v2, v1, [Ljava/util/Map$Entry;

    aput-object v3, v2, v0

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v1}, Ljava/util/HashMap;-><init>(I)V

    aget-object v0, v2, v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/reader/ReaderDetectionConfig;->FIELD_TYPE_MAP:Ljava/util/Map;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "duplicate key: "

    invoke-static {v1, v2}, Lt/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor <init>()V
    .locals 1

    const-string v0, "ReaderDetection"

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a()Lcom/sec/android/app/sbrowser/reader/ReaderDetectionConfig;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/reader/ReaderDetectionConfig;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/reader/ReaderDetectionConfig;-><init>()V

    return-object v0
.end method

.method public static getInstance()Lcom/sec/android/app/sbrowser/reader/ReaderDetectionConfig;
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/reader/a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/reader/a;-><init>(I)V

    const-class v1, Lcom/sec/android/app/sbrowser/reader/ReaderDetectionConfig;

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/singleton/SingletonFactory;->getOrCreate(Ljava/lang/Class;Lcom/sec/android/app/sbrowser/common/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/reader/ReaderDetectionConfig;

    return-object v0
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

    sget-object p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetectionConfig;->FIELD_TYPE_MAP:Ljava/util/Map;

    return-object p0
.end method

.method public onFeatureConfigUpdated(Landroid/content/Context;)V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/reader/ReaderDetectionOverrideListManager;->getInstance()Lcom/sec/android/app/sbrowser/reader/ReaderDetectionOverrideListManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/reader/ReaderDetectionOverrideListManager;->fetch()V

    return-void
.end method

.method public onNativeInitializationSuccess()V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/reader/ReaderDetectionOverrideListManager;->getInstance()Lcom/sec/android/app/sbrowser/reader/ReaderDetectionOverrideListManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/reader/ReaderDetectionOverrideListManager;->onNativeInitializationSuccess()V

    return-void
.end method

.method public onUpdateFailed(Landroid/content/Context;)V
    .locals 0

    return-void
.end method
