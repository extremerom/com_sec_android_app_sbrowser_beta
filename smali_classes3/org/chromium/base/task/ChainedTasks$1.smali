.class Lorg/chromium/base/task/ChainedTasks$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/base/task/ChainedTasks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/base/task/ChainedTasks;


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lorg/chromium/base/task/ChainedTasks$1;->this$0:Lorg/chromium/base/task/ChainedTasks;

    invoke-static {v0}, Lorg/chromium/base/task/ChainedTasks;->b(Lorg/chromium/base/task/ChainedTasks;)I

    move-result v0

    sget v1, Lorg/chromium/base/task/PostTask;->sTestIterationForTesting:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/chromium/base/task/ChainedTasks$1;->this$0:Lorg/chromium/base/task/ChainedTasks;

    invoke-virtual {v0}, Lorg/chromium/base/task/ChainedTasks;->cancel()V

    :cond_0
    iget-object v0, p0, Lorg/chromium/base/task/ChainedTasks$1;->this$0:Lorg/chromium/base/task/ChainedTasks;

    invoke-static {v0}, Lorg/chromium/base/task/ChainedTasks;->a(Lorg/chromium/base/task/ChainedTasks;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lorg/chromium/base/task/ChainedTasks$1;->this$0:Lorg/chromium/base/task/ChainedTasks;

    invoke-static {v0}, Lorg/chromium/base/task/ChainedTasks;->c(Lorg/chromium/base/task/ChainedTasks;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ChainedTask.run: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/chromium/base/TraceEvent;->scoped(Ljava/lang/String;)Lorg/chromium/base/TraceEvent;

    move-result-object v1

    :try_start_0
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/chromium/base/TraceEvent;->close()V

    :cond_2
    iget-object v0, p0, Lorg/chromium/base/task/ChainedTasks$1;->this$0:Lorg/chromium/base/task/ChainedTasks;

    invoke-static {v0}, Lorg/chromium/base/task/ChainedTasks;->c(Lorg/chromium/base/task/ChainedTasks;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/chromium/base/task/ChainedTasks$1;->this$0:Lorg/chromium/base/task/ChainedTasks;

    invoke-static {v0}, Lorg/chromium/base/task/ChainedTasks;->c(Lorg/chromium/base/task/ChainedTasks;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, p0}, Lorg/chromium/base/task/PostTask;->postTask(ILjava/lang/Runnable;)V

    :cond_3
    return-void

    :catchall_0
    move-exception p0

    if-eqz v1, :cond_4

    :try_start_1
    invoke-virtual {v1}, Lorg/chromium/base/TraceEvent;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_0
    throw p0
.end method
