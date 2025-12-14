.class public Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomConfig;
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

    const-string v0, "WebDarkCustom"

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomConfig;->mFieldTypeMap:Ljava/util/Map;

    const-string p0, "custom_data"

    sget-object v1, Lcom/sec/android/app/sbrowser/common/model/global_config/FieldType;->STRING:Lcom/sec/android/app/sbrowser/common/model/global_config/FieldType;

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public clearData()V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomData;->getInstance()Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomData;->resetData()V

    return-void
.end method

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

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomConfig;->mFieldTypeMap:Ljava/util/Map;

    return-object p0
.end method

.method public onFeatureConfigUpdated(Landroid/content/Context;)V
    .locals 2

    const-string v0, "onFeatureConfigUpdated"

    const-string v1, "WebDarkCustomConfig"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature;->isSupport(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "Feature is not supported"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomConfig;->clearData()V

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomConfig;->updateConfig(Landroid/content/Context;)V

    return-void
.end method

.method public onUpdateFailed(Landroid/content/Context;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomConfig;->clearData()V

    return-void
.end method

.method public updateConfig(Landroid/content/Context;)V
    .locals 2

    const-string v0, "custom_data"

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature;->createFetch(Landroid/content/Context;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomConfig$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomConfig$1;-><init>(Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomConfig;)V

    invoke-virtual {v0, p1, v1}, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;->fetch(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/model/global_config/FetchCallback;)V

    return-void
.end method

.method public updateData(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomData;->getInstance()Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomData;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomData;->writeFile(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomData;->getInstance()Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomData;->loadCustomData()Z

    return-void
.end method
