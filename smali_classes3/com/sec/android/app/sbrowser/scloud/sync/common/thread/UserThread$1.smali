.class Lcom/sec/android/app/sbrowser/scloud/sync/common/thread/UserThread$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/scloud/sync/common/thread/UserThread;->cancel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/scloud/sync/common/thread/UserThread;

.field final synthetic val$th:Lcom/sec/android/app/sbrowser/scloud/sync/common/thread/UserThread;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/scloud/sync/common/thread/UserThread;Lcom/sec/android/app/sbrowser/scloud/sync/common/thread/UserThread;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/thread/UserThread$1;->this$0:Lcom/sec/android/app/sbrowser/scloud/sync/common/thread/UserThread;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/thread/UserThread$1;->val$th:Lcom/sec/android/app/sbrowser/scloud/sync/common/thread/UserThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/thread/UserThread$1;->this$0:Lcom/sec/android/app/sbrowser/scloud/sync/common/thread/UserThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "interrupt tick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/thread/UserThread$1;->val$th:Lcom/sec/android/app/sbrowser/scloud/sync/common/thread/UserThread;

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method
