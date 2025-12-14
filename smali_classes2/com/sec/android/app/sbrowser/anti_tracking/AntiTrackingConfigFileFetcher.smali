.class Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigFileFetcher;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigFileFetcher$ConfigFileFetchCallback;,
        Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigFileFetcher$FetchAsyncTask;
    }
.end annotation


# direct methods
.method public static fetchDataFile(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigFileFetcher$ConfigFileFetchCallback;)V
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->getInstance()Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;

    move-result-object v0

    const-string v1, "AntiTracking"

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p0}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->createFetch(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;

    move-result-object p0

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigFileFetcher$1;

    invoke-direct {v1, p1, p2}, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigFileFetcher$1;-><init>(Ljava/lang/String;Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigFileFetcher$ConfigFileFetchCallback;)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;->fetch(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/model/global_config/FetchCallback;)V

    return-void
.end method
