.class Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigFileFetcher$ConfigFileFetchCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;->fetchMetadata()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$1;->this$0:Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFileFetchFailed()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$1;->this$0:Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;

    const-string v0, "Fetch metadata failed."

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;->d(Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;Ljava/lang/String;)V

    return-void
.end method

.method public onFileFetchSucceeded(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$1;->this$0:Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;->b(Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;Lorg/json/JSONObject;)V

    sget-object p1, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConstants;->METADATA_FILE_PATH:Ljava/lang/String;

    invoke-static {p1}, Lcom/sec/terrace/browser/anti_tracking/TerraceAntiTrackingHelper;->setMetadata(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$1;->this$0:Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;->a(Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;)I

    move-result v0

    or-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;->c(Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$1;->this$0:Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;

    sget-object v0, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$ConfigFetchState;->METADATA_FETCH_SUCCESS:Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$ConfigFetchState;

    iput-object v0, p1, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;->mCurrentState:Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$ConfigFetchState;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;->processConfigUpdateState()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$1;->this$0:Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Metadata Read Error "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;->d(Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
