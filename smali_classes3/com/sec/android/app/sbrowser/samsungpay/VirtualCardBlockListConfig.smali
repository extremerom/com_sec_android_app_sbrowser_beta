.class public Lcom/sec/android/app/sbrowser/samsungpay/VirtualCardBlockListConfig;
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

    const-string v0, "Autofill"

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/samsungpay/VirtualCardBlockListConfig;->mFieldTypeMap:Ljava/util/Map;

    const-string p0, "virtual_card_mc_enabled"

    sget-object v1, Lcom/sec/android/app/sbrowser/common/model/global_config/FieldType;->BOOLEAN:Lcom/sec/android/app/sbrowser/common/model/global_config/FieldType;

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "virtual_card_mc_blocked_list"

    sget-object v1, Lcom/sec/android/app/sbrowser/common/model/global_config/FieldType;->STRING:Lcom/sec/android/app/sbrowser/common/model/global_config/FieldType;

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private isVirtualCardMcEnabled(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "virtual_card_mc_enabled"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public clearData()V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/samsungpay/VirtualCardBlockListData;->getInstance()Lcom/sec/android/app/sbrowser/samsungpay/VirtualCardBlockListData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/samsungpay/VirtualCardBlockListData;->resetData()V

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

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/samsungpay/VirtualCardBlockListConfig;->mFieldTypeMap:Ljava/util/Map;

    return-object p0
.end method

.method public onFeatureConfigUpdated(Landroid/content/Context;)V
    .locals 3

    const-string v0, "onFeatureConfigUpdated"

    const-string v1, "VirtualCardBlockListConfig"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature;->isSupport(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "Feature is not supported"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/samsungpay/VirtualCardBlockListConfig;->clearData()V

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/samsungpay/VirtualCardBlockListConfig;->isVirtualCardMcEnabled(Landroid/content/Context;)Z

    move-result v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/samsungpay/VirtualCardBlockListData;->getInstance()Lcom/sec/android/app/sbrowser/samsungpay/VirtualCardBlockListData;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Lcom/sec/android/app/sbrowser/samsungpay/VirtualCardBlockListData;->updateVirtualCardEnabledFlag(Landroid/content/Context;Z)V

    if-nez v0, :cond_1

    const-string p1, "Feature is disabled in the region"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/samsungpay/VirtualCardBlockListConfig;->clearData()V

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/samsungpay/VirtualCardBlockListConfig;->updateConfig(Landroid/content/Context;)V

    return-void
.end method

.method public onUpdateFailed(Landroid/content/Context;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/samsungpay/VirtualCardBlockListConfig;->clearData()V

    return-void
.end method

.method public updateConfig(Landroid/content/Context;)V
    .locals 2

    const-string v0, "virtual_card_mc_blocked_list"

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature;->createFetch(Landroid/content/Context;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/samsungpay/VirtualCardBlockListConfig$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/samsungpay/VirtualCardBlockListConfig$1;-><init>(Lcom/sec/android/app/sbrowser/samsungpay/VirtualCardBlockListConfig;)V

    invoke-virtual {v0, p1, v1}, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;->fetch(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/model/global_config/FetchCallback;)V

    return-void
.end method

.method public updateData(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/samsungpay/VirtualCardBlockListData;->getInstance()Lcom/sec/android/app/sbrowser/samsungpay/VirtualCardBlockListData;

    move-result-object p0

    const-string v0, "virtual_card_mc_blocked_list.json"

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/android/app/sbrowser/samsungpay/VirtualCardBlockListData;->writeFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/samsungpay/VirtualCardBlockListData;->getInstance()Lcom/sec/android/app/sbrowser/samsungpay/VirtualCardBlockListData;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/samsungpay/VirtualCardBlockListData;->loadBlockListedUrl(Ljava/lang/String;)Z

    return-void
.end method
