.class Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigFileFetcher$ConfigFileFetchCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager;->fetchConfigFile(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager;

.field final synthetic val$configType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager$1;->this$0:Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager$1;->val$configType:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFileFetchFailed(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager$1;->this$0:Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager$1;->val$configType:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager;->fileFetchFailed(Ljava/lang/String;I)V

    return-void
.end method

.method public onFileFetchSucceeded(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager$1;->this$0:Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager$1;->val$configType:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager;->fileFetchSucceeded(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setGCMetaDataVersion(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager$1;->this$0:Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager;->a(Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager;I)V

    return-void
.end method
