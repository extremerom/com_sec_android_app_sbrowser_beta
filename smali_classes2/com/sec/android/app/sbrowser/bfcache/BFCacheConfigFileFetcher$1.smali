.class Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigFileFetcher$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/model/global_config/FetchCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigFileFetcher;->fetchConfigFile(Landroid/content/Context;Ljava/lang/String;Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigFileFetcher$ConfigFileFetchCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigFileFetcher;

.field final synthetic val$callback:Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigFileFetcher$ConfigFileFetchCallback;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigFileFetcher;Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigFileFetcher$ConfigFileFetchCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigFileFetcher$1;->this$0:Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigFileFetcher;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigFileFetcher$1;->val$callback:Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigFileFetcher$ConfigFileFetchCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Landroid/content/Context;I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigFileFetcher$1;->val$callback:Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigFileFetcher$ConfigFileFetchCallback;

    invoke-interface {p0, p2}, Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigFileFetcher$ConfigFileFetchCallback;->onFileFetchFailed(I)V

    return-void
.end method

.method public onFetched(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature$FetchResponse;)V
    .locals 0

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigFileFetcher$1;->val$callback:Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigFileFetcher$ConfigFileFetchCallback;

    iget-object p1, p2, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature$FetchResponse;->body:Ljava/io/ByteArrayOutputStream;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigFileFetcher$ConfigFileFetchCallback;->onFileFetchSucceeded(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigFileFetcher$1;->val$callback:Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigFileFetcher$ConfigFileFetchCallback;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigFileFetcher$ConfigFileFetchCallback;->onFileFetchFailed(I)V

    :goto_0
    return-void
.end method
