.class Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigFileFetcher$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/model/global_config/FetchCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigFileFetcher;->fetchDataFile(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigFileFetcher$ConfigFileFetchCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigFileFetcher$ConfigFileFetchCallback;

.field final synthetic val$localFilePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigFileFetcher$ConfigFileFetchCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigFileFetcher$1;->val$localFilePath:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigFileFetcher$1;->val$callback:Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigFileFetcher$ConfigFileFetchCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Landroid/content/Context;I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigFileFetcher$1;->val$callback:Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigFileFetcher$ConfigFileFetchCallback;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigFileFetcher$ConfigFileFetchCallback;->onFileFetchFailed()V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Fetch file failed "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AntiTrackingConfigFileFetcher"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onFetched(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature$FetchResponse;)V
    .locals 1

    new-instance p1, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigFileFetcher$FetchAsyncTask;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigFileFetcher$1;->val$localFilePath:Ljava/lang/String;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigFileFetcher$1;->val$callback:Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigFileFetcher$ConfigFileFetchCallback;

    invoke-direct {p1, v0, p0}, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigFileFetcher$FetchAsyncTask;-><init>(Ljava/lang/String;Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigFileFetcher$ConfigFileFetchCallback;)V

    iget-object p0, p2, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature$FetchResponse;->body:Ljava/io/ByteArrayOutputStream;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
