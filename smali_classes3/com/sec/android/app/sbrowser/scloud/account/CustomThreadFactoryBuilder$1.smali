.class Lcom/sec/android/app/sbrowser/scloud/account/CustomThreadFactoryBuilder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/scloud/account/CustomThreadFactoryBuilder;->build()Ljava/util/concurrent/ThreadFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/scloud/account/CustomThreadFactoryBuilder;

.field final synthetic val$count:Ljava/util/concurrent/atomic/AtomicLong;

.field final synthetic val$nameFormat:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/scloud/account/CustomThreadFactoryBuilder;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicLong;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/account/CustomThreadFactoryBuilder$1;->this$0:Lcom/sec/android/app/sbrowser/scloud/account/CustomThreadFactoryBuilder;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/scloud/account/CustomThreadFactoryBuilder$1;->val$nameFormat:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/scloud/account/CustomThreadFactoryBuilder$1;->val$count:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 4
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/account/CustomThreadFactoryBuilder$1;->val$nameFormat:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/scloud/account/CustomThreadFactoryBuilder$1;->val$count:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/account/CustomThreadFactoryBuilder$1;->this$0:Lcom/sec/android/app/sbrowser/scloud/account/CustomThreadFactoryBuilder;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/scloud/account/CustomThreadFactoryBuilder;->a(Lcom/sec/android/app/sbrowser/scloud/account/CustomThreadFactoryBuilder;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/account/CustomThreadFactoryBuilder$1;->this$0:Lcom/sec/android/app/sbrowser/scloud/account/CustomThreadFactoryBuilder;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/scloud/account/CustomThreadFactoryBuilder;->a(Lcom/sec/android/app/sbrowser/scloud/account/CustomThreadFactoryBuilder;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/Thread;->setPriority(I)V

    :cond_1
    return-object p1
.end method
