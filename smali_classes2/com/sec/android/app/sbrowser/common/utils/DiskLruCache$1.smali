.class Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$1;->this$0:Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$1;->call()Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public call()Ljava/lang/Void;
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$1;->this$0:Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$1;->this$0:Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->b(Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;)Ljava/io/Writer;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$1;->this$0:Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->h(Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$1;->this$0:Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->f(Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$1;->this$0:Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->g(Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$1;->this$0:Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->d(Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;)V

    :cond_1
    monitor-exit v0

    return-object v2

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
