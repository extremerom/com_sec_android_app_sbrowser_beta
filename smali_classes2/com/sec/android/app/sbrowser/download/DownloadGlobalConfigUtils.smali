.class public Lcom/sec/android/app/sbrowser/download/DownloadGlobalConfigUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static getDisableChooser()Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->getInstance()Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "disable_chooser"

    const-string v3, ""

    const-string v4, "Download"

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->getString(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
