.class Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectConfigFileFetcher;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectConfigFileFetcher$ConfigFileFetchCallback;
    }
.end annotation


# direct methods
.method public static fetchConfigFile(Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectConfigFileFetcher$ConfigFileFetchCallback;)V
    .locals 4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->getInstance()Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;

    move-result-object v0

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "smartProtectConfig"

    const-string v3, "SmartProtect"

    invoke-virtual {v0, v3, v1, v2}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->createFetch(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;

    move-result-object v0

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectConfigFileFetcher$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectConfigFileFetcher$1;-><init>(Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectConfigFileFetcher$ConfigFileFetchCallback;)V

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;->fetch(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/model/global_config/FetchCallback;)V

    return-void
.end method
