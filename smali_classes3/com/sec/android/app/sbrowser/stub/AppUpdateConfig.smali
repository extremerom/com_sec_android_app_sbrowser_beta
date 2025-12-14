.class public Lcom/sec/android/app/sbrowser/stub/AppUpdateConfig;
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

    const-string v0, "UpdateType"

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/stub/AppUpdateConfig;->mFieldTypeMap:Ljava/util/Map;

    const-string p0, "version_data"

    sget-object v1, Lcom/sec/android/app/sbrowser/common/model/global_config/FieldType;->STRING:Lcom/sec/android/app/sbrowser/common/model/global_config/FieldType;

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/stub/AppUpdateConfig;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/stub/AppUpdateConfig;->updateData(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private clearData()V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/stub/AppUpdateManager;->getInstance()Lcom/sec/android/app/sbrowser/stub/AppUpdateManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/stub/AppUpdateManager;->resetData()V

    return-void
.end method

.method private updateConfig(Landroid/content/Context;)V
    .locals 2

    const-string v0, "AppUpdateConfig"

    const-string v1, "updateConfig"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "version_data"

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature;->createFetch(Landroid/content/Context;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;->setUseETag(Z)Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/stub/AppUpdateConfig$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/stub/AppUpdateConfig$1;-><init>(Lcom/sec/android/app/sbrowser/stub/AppUpdateConfig;)V

    invoke-virtual {v0, p1, v1}, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;->fetch(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/model/global_config/FetchCallback;)V

    return-void
.end method

.method private updateData(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/stub/AppUpdateManager;->getInstance()Lcom/sec/android/app/sbrowser/stub/AppUpdateManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/stub/AppUpdateManager;->saveVersions(Landroid/content/Context;Ljava/lang/String;)V

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

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/stub/AppUpdateConfig;->mFieldTypeMap:Ljava/util/Map;

    return-object p0
.end method

.method public onFeatureConfigUpdated(Landroid/content/Context;)V
    .locals 2

    const-string v0, "AppUpdateConfig"

    const-string v1, "onFeatureConfigUpdated"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature;->isSupport(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/stub/AppUpdateConfig;->updateConfig(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/stub/AppUpdateConfig;->clearData()V

    :goto_0
    return-void
.end method

.method public onUpdateFailed(Landroid/content/Context;)V
    .locals 0

    const-string p0, "AppUpdateConfig"

    const-string p1, "onUpdateFailed"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
