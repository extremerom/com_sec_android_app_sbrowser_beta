.class public Lcom/sec/android/app/sbrowser/tss/TssCustomizationConfig;
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

    const-string v0, "Tss"

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tss/TssCustomizationConfig;->mFieldTypeMap:Ljava/util/Map;

    const-string p0, "TssCustomizationFile"

    sget-object v1, Lcom/sec/android/app/sbrowser/common/model/global_config/FieldType;->STRING:Lcom/sec/android/app/sbrowser/common/model/global_config/FieldType;

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/sites/provider/OperatorBookmarkManager;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/tss/TssCustomizationConfig;->lambda$updateOperatorBookmark$0(Lcom/sec/android/app/sbrowser/sites/provider/OperatorBookmarkManager;)V

    return-void
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/tss/TssCustomizationConfig;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tss/TssCustomizationConfig;->updateOperatorBookmark(Landroid/content/Context;)V

    return-void
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/tss/TssCustomizationConfig;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tss/TssCustomizationConfig;->updateOperatorHomepage(Landroid/content/Context;)V

    return-void
.end method

.method private static synthetic lambda$updateOperatorBookmark$0(Lcom/sec/android/app/sbrowser/sites/provider/OperatorBookmarkManager;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/sites/provider/OperatorBookmarkManager;->checkBookmarkUpdate(Z)V

    return-void
.end method

.method private updateOperatorBookmark(Landroid/content/Context;)V
    .locals 3

    const-string p0, "TssCustomizationConfig"

    const-string v0, "updateOperatorBookmark"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/sec/android/app/sbrowser/sites/provider/OperatorBookmarkManager;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sites/provider/OperatorBookmarkManager;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/tab_sync/o;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/sbrowser/tab_sync/o;-><init>(ILjava/lang/Object;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private updateOperatorHomepage(Landroid/content/Context;)V
    .locals 1

    const-string p0, "TssCustomizationConfig"

    const-string v0, "updateOperatorHomepage"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->getInstance()Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->setFactoryResetHomeUrl(Landroid/content/Context;Z)V

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

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tss/TssCustomizationConfig;->mFieldTypeMap:Ljava/util/Map;

    return-object p0
.end method

.method public onFeatureConfigUpdated(Landroid/content/Context;)V
    .locals 2

    const-string v0, "TssCustomizationConfig"

    const-string v1, "onFeatureConfigUpdated"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/sec/android/app/sbrowser/tss/TssCustomizationConfig$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/tss/TssCustomizationConfig$1;-><init>(Lcom/sec/android/app/sbrowser/tss/TssCustomizationConfig;)V

    const-string v1, "TssCustomizationFile"

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

    const-string p0, "TssCustomizationConfig"

    const-string p1, "onUpdateFailed"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
