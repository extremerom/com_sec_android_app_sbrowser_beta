.class public interface abstract Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeatureDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public createFetch(Landroid/content/Context;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getETag(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract getFeatureName()Ljava/lang/String;
.end method

.method public abstract getFieldTypeMap()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/sbrowser/common/model/global_config/FieldType;",
            ">;"
        }
    .end annotation
.end method

.method public getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract onFeatureConfigUpdated(Landroid/content/Context;)V
.end method

.method public abstract onUpdateFailed(Landroid/content/Context;)V
.end method

.method public setETag(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public abstract storeFeatureConfig(Landroid/content/Context;Lorg/json/JSONObject;Z)Z
.end method
