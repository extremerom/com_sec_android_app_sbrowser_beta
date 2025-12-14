.class Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPool$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPool;->postExecute(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/utils/io_thread/Message;Lcom/sec/android/app/sbrowser/common/utils/io_thread/Message$Result;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPool;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$message:Lcom/sec/android/app/sbrowser/common/utils/io_thread/Message;

.field final synthetic val$result:Lcom/sec/android/app/sbrowser/common/utils/io_thread/Message$Result;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPool;Lcom/sec/android/app/sbrowser/common/utils/io_thread/Message;Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/utils/io_thread/Message$Result;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPool$2;->this$0:Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPool;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPool$2;->val$message:Lcom/sec/android/app/sbrowser/common/utils/io_thread/Message;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPool$2;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPool$2;->val$result:Lcom/sec/android/app/sbrowser/common/utils/io_thread/Message$Result;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPool$2;->this$0:Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPool;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPool;->a(Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPool;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPool;->e(Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPool;I)V

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPool$2;->this$0:Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPool;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPool;->d(Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPool;)Ljava/lang/Runnable;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPool$2;->this$0:Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPool;

    new-instance v1, Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPool$2$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPool$2$1;-><init>(Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPool$2;)V

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPool;->g(Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPool;Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPool$2;->this$0:Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPool;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPool;->c(Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPool;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPool$2;->this$0:Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPool;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPool;->d(Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPool;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPool$2;->val$message:Lcom/sec/android/app/sbrowser/common/utils/io_thread/Message;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPool$2;->val$context:Landroid/content/Context;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPool$2;->val$result:Lcom/sec/android/app/sbrowser/common/utils/io_thread/Message$Result;

    invoke-virtual {v0, v1, p0}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/Message;->onResult(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/utils/io_thread/Message$Result;)V

    return-void
.end method
