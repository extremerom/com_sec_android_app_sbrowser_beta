.class public final synthetic Ls3/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Ls3/a;->a:I

    iput-object p2, p0, Ls3/a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Ls3/a;->a:I

    packed-switch v1, :pswitch_data_0

    iget-object p0, p0, Ls3/a;->b:Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, Lz3/y;

    iget-object p0, v0, Lz3/y;->d:Lz3/x;

    if-nez p0, :cond_0

    goto :goto_3

    :cond_0
    iget-object v1, p0, Lz3/x;->a:Ljava/lang/Object;

    if-eqz v1, :cond_2

    monitor-enter v0

    :try_start_0
    new-instance p0, Ljava/util/ArrayList;

    iget-object v2, v0, Lz3/y;->a:Ljava/util/LinkedHashSet;

    invoke-direct {p0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lz3/v;

    invoke-interface {v2, v1}, Lz3/v;->onResult(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    monitor-exit v0

    goto :goto_3

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_2
    iget-object p0, p0, Lz3/x;->b:Ljava/lang/Throwable;

    monitor-enter v0

    :try_start_2
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v0, Lz3/y;->b:Ljava/util/LinkedHashSet;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v1, "Lottie encountered an error but no failure listener was added:"

    invoke-static {v1, p0}, LL3/b;->c(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_4

    :cond_3
    :try_start_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lz3/v;

    invoke-interface {v2, p0}, Lz3/v;->onResult(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :cond_4
    monitor-exit v0

    :goto_3
    return-void

    :goto_4
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0

    :pswitch_0
    iget-object p0, p0, Ls3/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteRetrainService;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteRetrainService;->a(Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteRetrainService;)V

    return-void

    :pswitch_1
    iget-object p0, p0, Ls3/a;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/work/multiprocess/RemoteCoroutineWorker;

    sget v1, Landroidx/work/multiprocess/RemoteCoroutineWorker;->k:I

    const-string v1, "this$0"

    invoke-static {p0, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/work/multiprocess/RemoteCoroutineWorker;->j:Lq3/j;

    iget-object v1, v1, Lq3/h;->a:Ljava/lang/Object;

    instance-of v1, v1, Lq3/a;

    if-eqz v1, :cond_5

    iget-object p0, p0, Landroidx/work/multiprocess/RemoteCoroutineWorker;->i:LNc/m0;

    invoke-virtual {p0, v0}, LNc/t0;->a(Ljava/util/concurrent/CancellationException;)V

    :cond_5
    return-void

    :pswitch_2
    iget-object p0, p0, Ls3/a;->b:Ljava/lang/Object;

    check-cast p0, LNc/m0;

    invoke-virtual {p0, v0}, LNc/t0;->a(Ljava/util/concurrent/CancellationException;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
