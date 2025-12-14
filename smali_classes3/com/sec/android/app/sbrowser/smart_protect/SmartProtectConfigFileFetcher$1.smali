.class Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectConfigFileFetcher$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/model/global_config/FetchCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectConfigFileFetcher;->fetchConfigFile(Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectConfigFileFetcher$ConfigFileFetchCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectConfigFileFetcher$ConfigFileFetchCallback;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectConfigFileFetcher$ConfigFileFetchCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectConfigFileFetcher$1;->val$callback:Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectConfigFileFetcher$ConfigFileFetchCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Landroid/content/Context;I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectConfigFileFetcher$1;->val$callback:Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectConfigFileFetcher$ConfigFileFetchCallback;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectConfigFileFetcher$ConfigFileFetchCallback;->onFileFetchFailed()V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Fetch file failed "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SmartProtectConfigFileFetcher"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onFetched(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature$FetchResponse;)V
    .locals 1

    const-string p1, "SmartProtectConfigFileFetcher"

    if-eqz p2, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectConfigFileFetcher$1;->val$callback:Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectConfigFileFetcher$ConfigFileFetchCallback;

    iget-object p2, p2, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature$FetchResponse;->body:Ljava/io/ByteArrayOutputStream;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectConfigFileFetcher$ConfigFileFetchCallback;->onFileFetchSucceeded(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectConfigFileFetcher$1;->val$callback:Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectConfigFileFetcher$ConfigFileFetchCallback;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectConfigFileFetcher$ConfigFileFetchCallback;->onFileFetchFailed()V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "fetchConfigFile fail"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectConfigFileFetcher$1;->val$callback:Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectConfigFileFetcher$ConfigFileFetchCallback;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectConfigFileFetcher$ConfigFileFetchCallback;->onFileFetchFailed()V

    const-string p0, "Fetch file fail: response is null"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
