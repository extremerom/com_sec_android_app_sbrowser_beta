.class public Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroConfig;
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

    const-string v0, "HelpIntro"

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroConfig;->mFieldTypeMap:Ljava/util/Map;

    sget-object p0, Lcom/sec/android/app/sbrowser/common/model/global_config/FieldType;->STRING:Lcom/sec/android/app/sbrowser/common/model/global_config/FieldType;

    const-string v1, "helpIntroVersionTos"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "helpIntroVersionPp"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroConfig;->mFieldTypeMap:Ljava/util/Map;

    return-object p0
.end method

.method public onFeatureConfigUpdated(Landroid/content/Context;)V
    .locals 1

    const-string p0, "HelpIntroConfig"

    const-string v0, "[Legal] onFeatureConfigUpdated"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    instance-of p0, p1, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityListener;

    if-eqz p0, :cond_0

    check-cast p1, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityListener;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityListener;->launchHelpIntroIfNeeded()Z

    :cond_0
    return-void
.end method

.method public onUpdateFailed(Landroid/content/Context;)V
    .locals 0

    const-string p0, "HelpIntroConfig"

    const-string p1, "[legal] onUpdateFailed"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
