.class public Lcom/sec/android/app/sbrowser/global_config/TabManagerGlobalConfigUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static supportCardViewType()Z
    .locals 5

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->getInstance()Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;

    move-result-object v1

    const-string v2, "support_card_view_type"

    const/4 v3, 0x1

    const-string v4, "TabManager"

    invoke-virtual {v1, v4, v0, v2, v3}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->getBoolean(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static useLowQualityBitmap()Z
    .locals 5

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->getInstance()Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;

    move-result-object v2

    const-string v3, "TabManager"

    const-string v4, "use_low_quality_bitmap"

    invoke-virtual {v2, v3, v0, v4, v1}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->getBoolean(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
