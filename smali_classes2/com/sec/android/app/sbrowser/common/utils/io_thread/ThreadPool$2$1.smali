.class Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPool$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPool$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPool$2;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPool$2;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPool$2$1;->this$1:Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPool$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPool$2$1;->this$1:Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPool$2;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPool$2;->this$0:Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPool;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPool;->g(Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPool;Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPool$2$1;->this$1:Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPool$2;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPool$2;->this$0:Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPool;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPool;->b(Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPool;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPool$2$1;->this$1:Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPool$2;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPool$2;->this$0:Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPool;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPool;->f(Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPool;)V

    return-void
.end method
