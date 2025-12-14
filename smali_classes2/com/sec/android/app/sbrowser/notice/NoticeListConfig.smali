.class public Lcom/sec/android/app/sbrowser/notice/NoticeListConfig;
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

    const-string v0, "NoticeList"

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/notice/NoticeListConfig;->mFieldTypeMap:Ljava/util/Map;

    const-string p0, "NoticeListFile"

    sget-object v1, Lcom/sec/android/app/sbrowser/common/model/global_config/FieldType;->STRING:Lcom/sec/android/app/sbrowser/common/model/global_config/FieldType;

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "NoticeVersion"

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

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/notice/NoticeListConfig;->mFieldTypeMap:Ljava/util/Map;

    return-object p0
.end method

.method public onFeatureConfigUpdated(Landroid/content/Context;)V
    .locals 2

    const-string v0, "onFeatureConfigUpdated"

    const-string v1, "NoticeListConfig"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature;->isSupport(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "onFeatureConfigUpdated : not support remove file if exist"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "Notice_list.json"

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/common/device/FileUtil;->isExisted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/common/device/FileUtil;->delete(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Lcom/sec/android/app/sbrowser/notice/NoticeListConfig$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/notice/NoticeListConfig$1;-><init>(Lcom/sec/android/app/sbrowser/notice/NoticeListConfig;)V

    const-string v1, "NoticeListFile"

    invoke-virtual {p0, p1, v1}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature;->createFetch(Landroid/content/Context;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;->setUseETag(Z)Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;->fetch(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/model/global_config/FetchCallback;)V

    return-void
.end method

.method public onUpdateFailed(Landroid/content/Context;)V
    .locals 0

    const-string p0, "NoticeListConfig"

    const-string p1, "onUpdateFailed"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
