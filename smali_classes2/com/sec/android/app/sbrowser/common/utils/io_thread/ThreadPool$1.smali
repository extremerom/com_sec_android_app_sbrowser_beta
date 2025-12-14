.class Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPool$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPool;->execute(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/utils/io_thread/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPool;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$message:Lcom/sec/android/app/sbrowser/common/utils/io_thread/Message;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPool;Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/utils/io_thread/Message;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPool$1;->this$0:Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPool;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPool$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPool$1;->val$message:Lcom/sec/android/app/sbrowser/common/utils/io_thread/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPool$1;->this$0:Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPool;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPool$1;->val$context:Landroid/content/Context;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPool$1;->val$message:Lcom/sec/android/app/sbrowser/common/utils/io_thread/Message;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/Message;->runOnIOThread(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/common/utils/io_thread/Message$Result;

    move-result-object v2

    invoke-static {v0, p0, v1, v2}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPool;->h(Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPool;Lcom/sec/android/app/sbrowser/common/utils/io_thread/Message;Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/utils/io_thread/Message$Result;)V

    return-void
.end method
