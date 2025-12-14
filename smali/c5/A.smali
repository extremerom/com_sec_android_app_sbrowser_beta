.class public final Lc5/A;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lc5/A;->a:I

    iput-object p2, p0, Lc5/A;->c:Ljava/lang/Object;

    iput-object p3, p0, Lc5/A;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Z)V
    .locals 0

    iput p1, p0, Lc5/A;->a:I

    iput-object p2, p0, Lc5/A;->b:Ljava/lang/Object;

    iput-object p3, p0, Lc5/A;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lr7/i;)V
    .locals 1

    const/16 v0, 0xc

    iput v0, p0, Lc5/A;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc5/A;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lv2/i;)V
    .locals 1

    const/16 v0, 0x10

    iput v0, p0, Lc5/A;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc5/A;->c:Ljava/lang/Object;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lc5/A;->b:Ljava/lang/Object;

    return-void
.end method

.method private final a()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lc5/A;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v0, p0, Lc5/A;->b:Ljava/lang/Object;

    check-cast v0, LJ2/k0;

    iget-object v0, v0, LJ2/k0;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    iget-object p0, p0, Lc5/A;->b:Ljava/lang/Object;

    check-cast p0, LJ2/k0;

    invoke-virtual {p0}, LJ2/k0;->a()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lc5/A;->b:Ljava/lang/Object;

    check-cast v1, LJ2/k0;

    iget-object v1, v1, LJ2/k0;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_2
    iget-object p0, p0, Lc5/A;->b:Ljava/lang/Object;

    check-cast p0, LJ2/k0;

    invoke-virtual {p0}, LJ2/k0;->a()V

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    :catchall_2
    move-exception p0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0
.end method

.method private final b()V
    .locals 5

    iget-object v0, p0, Lc5/A;->b:Ljava/lang/Object;

    check-cast v0, Lu5/i;

    iget-object p0, p0, Lc5/A;->c:Ljava/lang/Object;

    check-cast p0, Lu5/c;

    iget p0, p0, Lu5/c;->a:I

    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Lu5/i;->r:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lu5/c;

    if-eqz v1, :cond_0

    const-string v2, "MessengerIpcClient"

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x1f

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Timing out request: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v0, Lu5/i;->r:Landroid/util/SparseArray;

    invoke-virtual {v2, p0}, Landroid/util/SparseArray;->remove(I)V

    new-instance p0, Lu5/b;

    const-string v2, "Timed out waiting for response"

    const/4 v3, 0x3

    invoke-direct {p0, v3, v2}, Lu5/b;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, p0}, Lu5/c;->a(Lu5/b;)V

    invoke-virtual {v0}, Lu5/i;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public c()V
    .locals 9

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lc5/A;->c:Ljava/lang/Object;

    check-cast v2, Lr7/i;

    iget-object v2, v2, Lr7/i;->b:Ljava/util/ArrayDeque;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_2

    :try_start_1
    iget-object v0, p0, Lc5/A;->c:Ljava/lang/Object;

    check-cast v0, Lr7/i;

    iget-object v3, v0, Lr7/i;->c:Lr7/h;

    sget-object v4, Lr7/h;->RUNNING:Lr7/h;

    if-ne v3, v4, :cond_1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_1
    :try_start_2
    iget-wide v5, v0, Lr7/i;->d:J

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    iput-wide v5, v0, Lr7/i;->d:J

    iput-object v4, v0, Lr7/i;->c:Lr7/h;

    const/4 v0, 0x1

    :cond_2
    iget-object v3, p0, Lc5/A;->c:Ljava/lang/Object;

    check-cast v3, Lr7/i;

    iget-object v3, v3, Lr7/i;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Runnable;

    iput-object v3, p0, Lc5/A;->b:Ljava/lang/Object;

    if-nez v3, :cond_4

    iget-object p0, p0, Lc5/A;->c:Ljava/lang/Object;

    check-cast p0, Lr7/i;

    sget-object v0, Lr7/h;->IDLE:Lr7/h;

    iput-object v0, p0, Lr7/i;->c:Lr7/h;

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    :cond_3
    return-void

    :cond_4
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    or-int/2addr v1, v2

    const/4 v2, 0x0

    :try_start_5
    iget-object v3, p0, Lc5/A;->b:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :goto_1
    :try_start_6
    iput-object v2, p0, Lc5/A;->b:Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_4

    :catchall_2
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v3

    :try_start_7
    sget-object v4, Lr7/i;->f:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception while executing runnable "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lc5/A;->b:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_1

    :goto_2
    :try_start_8
    iput-object v2, p0, Lc5/A;->b:Ljava/lang/Object;

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :goto_3
    :try_start_9
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    throw p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :goto_4
    if-eqz v1, :cond_5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_5
    throw p0
.end method

.method public final run()V
    .locals 10

    const/4 v0, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget v4, p0, Lc5/A;->a:I

    packed-switch v4, :pswitch_data_0

    iget-object v0, p0, Lc5/A;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv2/s;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lc5/A;->c:Ljava/lang/Object;

    check-cast p0, Lv2/i;

    iget-object p0, p0, Lv2/i;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsb/k;

    invoke-interface {v1, v0}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lc5/A;->b()V

    return-void

    :pswitch_1
    iget-object v0, p0, Lc5/A;->c:Ljava/lang/Object;

    check-cast v0, LG5/e4;

    :try_start_0
    iget-object v1, v0, LG5/e4;->d:Ljava/lang/Object;

    check-cast v1, Lt3/k;

    iget-object p0, p0, Lc5/A;->b:Ljava/lang/Object;

    check-cast p0, Lt3/c;

    iget-object v2, v0, LG5/e4;->c:Ljava/lang/Object;

    check-cast v2, Lt3/j;

    invoke-interface {v1, p0, v2}, Lt3/k;->h(Ljava/lang/Object;Lt3/f;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    invoke-static {}, Lf3/u;->d()Lf3/u;

    move-result-object v1

    sget-object v2, Lt3/i;->e:Ljava/lang/String;

    const-string v3, "Unable to execute"

    invoke-virtual {v1, v2, v3, p0}, Lf3/u;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, v0, LG5/e4;->c:Ljava/lang/Object;

    check-cast v0, Lt3/j;

    invoke-static {v0, p0}, Lt3/g;->a(Lt3/f;Ljava/lang/Throwable;)V

    :goto_1
    return-void

    :pswitch_2
    iget-object v0, p0, Lc5/A;->c:Ljava/lang/Object;

    check-cast v0, Lt/m;

    iget-object v4, v0, Lt/m;->c:Ls/i;

    if-eqz v4, :cond_1

    iget-object v5, v4, Ls/i;->e:Ls/g;

    if-eqz v5, :cond_1

    invoke-interface {v5, v4}, Ls/g;->c(Ls/i;)V

    :cond_1
    iget-object v4, v0, Lt/m;->h:Ls/v;

    check-cast v4, Landroid/view/View;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object p0, p0, Lc5/A;->b:Ljava/lang/Object;

    check-cast p0, Lt/h;

    invoke-virtual {p0}, Ls/r;->b()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    iget-object v4, p0, Ls/r;->e:Landroid/view/View;

    if-nez v4, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p0, v1, v1, v3, v3}, Ls/r;->d(IIZZ)V

    :goto_2
    iput-object p0, v0, Lt/m;->s:Lt/h;

    :cond_4
    :goto_3
    iput-object v2, v0, Lt/m;->u:Lc5/A;

    return-void

    :pswitch_3
    :try_start_1
    invoke-virtual {p0}, Lc5/A;->c()V
    :try_end_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lc5/A;->c:Ljava/lang/Object;

    check-cast v1, Lr7/i;

    iget-object v1, v1, Lr7/i;->b:Ljava/util/ArrayDeque;

    monitor-enter v1

    :try_start_2
    iget-object p0, p0, Lc5/A;->c:Ljava/lang/Object;

    check-cast p0, Lr7/i;

    sget-object v2, Lr7/h;->IDLE:Lr7/h;

    iput-object v2, p0, Lr7/i;->c:Lr7/h;

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :pswitch_4
    const-string v0, "Updating notification for "

    const-string v1, "Worker was marked important ("

    iget-object v2, p0, Lc5/A;->c:Ljava/lang/Object;

    check-cast v2, Lp3/r;

    iget-object v2, v2, Lp3/r;->a:Lq3/j;

    iget-object v2, v2, Lq3/h;->a:Ljava/lang/Object;

    instance-of v2, v2, Lq3/a;

    if-eqz v2, :cond_5

    goto/16 :goto_5

    :cond_5
    :try_start_4
    iget-object v2, p0, Lc5/A;->b:Ljava/lang/Object;

    check-cast v2, Lq3/j;

    invoke-virtual {v2}, Lq3/h;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lf3/l;

    if-eqz v7, :cond_6

    invoke-static {}, Lf3/u;->d()Lf3/u;

    move-result-object v1

    sget-object v2, Lp3/r;->g:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lc5/A;->c:Ljava/lang/Object;

    check-cast v0, Lp3/r;

    iget-object v0, v0, Lp3/r;->c:Lo3/q;

    iget-object v0, v0, Lo3/q;->c:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lf3/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lc5/A;->c:Ljava/lang/Object;

    check-cast v0, Lp3/r;

    iget-object v1, v0, Lp3/r;->a:Lq3/j;

    iget-object v2, v0, Lp3/r;->e:Lp3/s;

    iget-object v8, v0, Lp3/r;->b:Landroid/content/Context;

    iget-object v0, v0, Lp3/r;->d:Lf3/t;

    iget-object v0, v0, Lf3/t;->b:Landroidx/work/WorkerParameters;

    iget-object v6, v0, Landroidx/work/WorkerParameters;->a:Ljava/util/UUID;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lq3/j;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v9, LQ7/n;

    move-object v3, v9

    move-object v4, v2

    move-object v5, v0

    invoke-direct/range {v3 .. v8}, LQ7/n;-><init>(Lp3/s;Lq3/j;Ljava/util/UUID;Lf3/l;Landroid/content/Context;)V

    iget-object v2, v2, Lp3/s;->a:Lr3/a;

    invoke-virtual {v2, v9}, Lr3/a;->a(Ljava/lang/Runnable;)V

    invoke-virtual {v1, v0}, Lq3/j;->l(Lcom/google/common/util/concurrent/y;)Z

    goto :goto_5

    :catchall_2
    move-exception v0

    goto :goto_4

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lc5/A;->c:Ljava/lang/Object;

    check-cast v1, Lp3/r;

    iget-object v1, v1, Lp3/r;->c:Lo3/q;

    iget-object v1, v1, Lo3/q;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") but did not provide ForegroundInfo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :goto_4
    iget-object p0, p0, Lc5/A;->c:Ljava/lang/Object;

    check-cast p0, Lp3/r;

    iget-object p0, p0, Lp3/r;->a:Lq3/j;

    invoke-virtual {p0, v0}, Lq3/j;->k(Ljava/lang/Throwable;)Z

    :goto_5
    return-void

    :pswitch_5
    invoke-direct {p0}, Lc5/A;->a()V

    return-void

    :pswitch_6
    iget-object v0, p0, Lc5/A;->c:Ljava/lang/Object;

    check-cast v0, Ln3/b;

    iget-object v0, v0, Ln3/b;->a:Lg3/n;

    iget-object v0, v0, Lg3/n;->f:Lg3/d;

    iget-object v1, p0, Lc5/A;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v3, v0, Lg3/d;->k:Ljava/lang/Object;

    monitor-enter v3

    :try_start_5
    invoke-virtual {v0, v1}, Lg3/d;->c(Ljava/lang/String;)Lg3/s;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v2, v0, Lg3/s;->d:Lo3/q;

    monitor-exit v3

    goto :goto_6

    :catchall_3
    move-exception p0

    goto :goto_8

    :cond_7
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :goto_6
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lo3/q;->c()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lc5/A;->c:Ljava/lang/Object;

    check-cast v0, Ln3/b;

    iget-object v0, v0, Ln3/b;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_6
    iget-object v1, p0, Lc5/A;->c:Ljava/lang/Object;

    check-cast v1, Ln3/b;

    iget-object v1, v1, Ln3/b;->f:Ljava/util/HashMap;

    invoke-static {v2}, LAd/a;->a(Lo3/q;)Lo3/j;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lc5/A;->c:Ljava/lang/Object;

    check-cast v1, Ln3/b;

    iget-object v3, v1, Ln3/b;->h:LP7/c;

    iget-object v4, v1, Ln3/b;->b:Lr3/a;

    iget-object v4, v4, Lr3/a;->b:LNc/x;

    invoke-static {v3, v2, v4, v1}, Lk3/h;->a(LP7/c;Lo3/q;LNc/x;Lk3/e;)LNc/m0;

    move-result-object v1

    iget-object p0, p0, Lc5/A;->c:Ljava/lang/Object;

    check-cast p0, Ln3/b;

    iget-object p0, p0, Ln3/b;->g:Ljava/util/HashMap;

    invoke-static {v2}, LAd/a;->a(Lo3/q;)Lo3/j;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    goto :goto_7

    :catchall_4
    move-exception p0

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    throw p0

    :cond_8
    :goto_7
    return-void

    :goto_8
    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw p0

    :pswitch_7
    invoke-static {}, Lf3/u;->d()Lf3/u;

    move-result-object v0

    sget-object v1, Lh3/a;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Scheduling work "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lc5/A;->b:Ljava/lang/Object;

    check-cast v3, Lo3/q;

    iget-object v4, v3, Lo3/q;->a:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lf3/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lc5/A;->c:Ljava/lang/Object;

    check-cast p0, Lh3/a;

    iget-object p0, p0, Lh3/a;->a:Lh3/c;

    filled-new-array {v3}, [Lo3/q;

    move-result-object v0

    invoke-virtual {p0, v0}, Lh3/c;->a([Lo3/q;)V

    return-void

    :pswitch_8
    iget-object v1, p0, Lc5/A;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object p0, p0, Lc5/A;->c:Ljava/lang/Object;

    check-cast p0, Lg3/s;

    :try_start_8
    iget-object v2, p0, Lg3/s;->q:Lq3/j;

    invoke-virtual {v2}, Lq3/h;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf3/s;

    if-nez v2, :cond_9

    invoke-static {}, Lf3/u;->d()Lf3/u;

    move-result-object v2

    sget-object v3, Lg3/s;->s:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lg3/s;->d:Lo3/q;

    iget-object v5, v5, Lo3/q;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " returned a null result. Treating it as a failure."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lf3/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :catchall_5
    move-exception v0

    goto :goto_d

    :catch_1
    move-exception v0

    goto :goto_a

    :catch_2
    move-exception v2

    goto :goto_b

    :cond_9
    invoke-static {}, Lf3/u;->d()Lf3/u;

    move-result-object v3

    sget-object v4, Lg3/s;->s:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lg3/s;->d:Lo3/q;

    iget-object v6, v6, Lo3/q;->c:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " returned a "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lf3/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lg3/s;->g:Lf3/s;
    :try_end_8
    .catch Ljava/util/concurrent/CancellationException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    :cond_a
    :goto_9
    invoke-virtual {p0}, Lg3/s;->b()V

    goto :goto_c

    :goto_a
    :try_start_9
    invoke-static {}, Lf3/u;->d()Lf3/u;

    move-result-object v2

    sget-object v3, Lg3/s;->s:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " failed because it threw an exception/error"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1, v0}, Lf3/u;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9

    :goto_b
    invoke-static {}, Lf3/u;->d()Lf3/u;

    move-result-object v3

    sget-object v4, Lg3/s;->s:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " was cancelled"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v3, v3, Lf3/u;->a:I

    if-gt v3, v0, :cond_a

    invoke-static {v4, v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_9

    :goto_c
    return-void

    :goto_d
    invoke-virtual {p0}, Lg3/s;->b()V

    throw v0

    :pswitch_9
    const-string v0, "Starting work for "

    iget-object v1, p0, Lc5/A;->c:Ljava/lang/Object;

    check-cast v1, Lg3/s;

    iget-object v1, v1, Lg3/s;->q:Lq3/j;

    iget-object v1, v1, Lq3/h;->a:Ljava/lang/Object;

    instance-of v1, v1, Lq3/a;

    if-eqz v1, :cond_b

    goto :goto_e

    :cond_b
    :try_start_a
    iget-object v1, p0, Lc5/A;->b:Ljava/lang/Object;

    check-cast v1, Lq3/j;

    invoke-virtual {v1}, Lq3/h;->get()Ljava/lang/Object;

    invoke-static {}, Lf3/u;->d()Lf3/u;

    move-result-object v1

    sget-object v2, Lg3/s;->s:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lc5/A;->c:Ljava/lang/Object;

    check-cast v0, Lg3/s;

    iget-object v0, v0, Lg3/s;->d:Lo3/q;

    iget-object v0, v0, Lo3/q;->c:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lf3/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lc5/A;->c:Ljava/lang/Object;

    check-cast v0, Lg3/s;

    iget-object v1, v0, Lg3/s;->q:Lq3/j;

    iget-object v0, v0, Lg3/s;->e:Lf3/t;

    invoke-virtual {v0}, Lf3/t;->c()Lq3/j;

    move-result-object v0

    invoke-virtual {v1, v0}, Lq3/j;->l(Lcom/google/common/util/concurrent/y;)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    goto :goto_e

    :catchall_6
    move-exception v0

    iget-object p0, p0, Lc5/A;->c:Ljava/lang/Object;

    check-cast p0, Lg3/s;

    iget-object p0, p0, Lg3/s;->q:Lq3/j;

    invoke-virtual {p0, v0}, Lq3/j;->k(Ljava/lang/Throwable;)Z

    :goto_e
    return-void

    :pswitch_a
    :try_start_b
    iget-object v0, p0, Lc5/A;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/work/Worker;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Expedited WorkRequests require a Worker to provide an implementation for \n `getForegroundInfo()`"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    :catchall_7
    move-exception v0

    iget-object p0, p0, Lc5/A;->b:Ljava/lang/Object;

    check-cast p0, Lq3/j;

    invoke-virtual {p0, v0}, Lq3/j;->k(Ljava/lang/Throwable;)Z

    return-void

    :pswitch_b
    iget-object v0, p0, Lc5/A;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "ARCore-InstallService"

    const-string v1, "requestInstall timed out, launching fullscreen."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lc5/A;->c:Ljava/lang/Object;

    check-cast p0, LN3/g;

    iget-object v0, p0, LN3/g;->d:Ljava/lang/Object;

    iget-object v0, p0, LN3/g;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/ar/core/InstallActivity;

    iget-object p0, p0, LN3/g;->c:Ljava/lang/Object;

    check-cast p0, LS3/F;

    invoke-static {v0, p0}, Lcom/google/ar/core/G;->e(Lcom/google/ar/core/InstallActivity;LS3/F;)V

    :cond_c
    return-void

    :pswitch_c
    iget-object v0, p0, Lc5/A;->c:Ljava/lang/Object;

    check-cast v0, Lc5/w;

    iget-boolean v0, v0, Lc5/w;->b:Z

    if-nez v0, :cond_d

    goto/16 :goto_14

    :cond_d
    iget-object v0, p0, Lc5/A;->b:Ljava/lang/Object;

    check-cast v0, Lc5/Q;

    iget-object v0, v0, Lc5/Q;->b:Lcom/google/android/gms/common/ConnectionResult;

    iget v4, v0, Lcom/google/android/gms/common/ConnectionResult;->b:I

    if-eqz v4, :cond_e

    iget-object v4, v0, Lcom/google/android/gms/common/ConnectionResult;->c:Landroid/app/PendingIntent;

    if-eqz v4, :cond_e

    move v4, v3

    goto :goto_f

    :cond_e
    move v4, v1

    :goto_f
    if-eqz v4, :cond_f

    iget-object v2, p0, Lc5/A;->c:Ljava/lang/Object;

    check-cast v2, Lc5/w;

    iget-object v4, v2, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->a:Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->a()Landroid/app/Activity;

    move-result-object v2

    iget-object v0, v0, Lcom/google/android/gms/common/ConnectionResult;->c:Landroid/app/PendingIntent;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->f(Ljava/lang/Object;)V

    iget-object p0, p0, Lc5/A;->b:Ljava/lang/Object;

    check-cast p0, Lc5/Q;

    iget p0, p0, Lc5/Q;->a:I

    sget v5, Lcom/google/android/gms/common/api/GoogleApiActivity;->b:I

    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/google/android/gms/common/api/GoogleApiActivity;

    invoke-direct {v5, v2, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "pending_intent"

    invoke-virtual {v5, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "failing_client_id"

    invoke-virtual {v5, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "notify_manager"

    invoke-virtual {v5, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-interface {v4, v5, v3}, Lc5/l;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_14

    :cond_f
    iget-object v4, p0, Lc5/A;->c:Ljava/lang/Object;

    check-cast v4, Lc5/w;

    iget-object v5, v4, Lc5/w;->e:La5/b;

    invoke-virtual {v4}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->a()Landroid/app/Activity;

    move-result-object v4

    iget v6, v0, Lcom/google/android/gms/common/ConnectionResult;->b:I

    invoke-virtual {v5, v4, v6, v2}, La5/c;->a(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_10

    iget-object v1, p0, Lc5/A;->c:Ljava/lang/Object;

    check-cast v1, Lc5/w;

    iget-object v2, v1, Lc5/w;->e:La5/b;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->a()Landroid/app/Activity;

    move-result-object v1

    iget-object p0, p0, Lc5/A;->c:Ljava/lang/Object;

    check-cast p0, Lc5/w;

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->a:Ljava/lang/Object;

    iget v0, v0, Lcom/google/android/gms/common/ConnectionResult;->b:I

    invoke-virtual {v2, v1, v3, v0, p0}, La5/b;->g(Landroid/app/Activity;Lc5/l;ILandroid/content/DialogInterface$OnCancelListener;)V

    goto/16 :goto_14

    :cond_10
    iget v4, v0, Lcom/google/android/gms/common/ConnectionResult;->b:I

    const/16 v5, 0x12

    if-ne v4, v5, :cond_17

    iget-object v0, p0, Lc5/A;->c:Ljava/lang/Object;

    check-cast v0, Lc5/w;

    iget-object v4, v0, Lc5/w;->e:La5/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->a()Landroid/app/Activity;

    move-result-object v0

    iget-object v6, p0, Lc5/A;->c:Ljava/lang/Object;

    check-cast v6, Lc5/w;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Landroid/widget/ProgressBar;

    const v7, 0x101007a

    invoke-direct {v4, v0, v2, v7}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {v4, v3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-static {v5, v0}, Lcom/google/android/gms/common/internal/r;->b(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v4, ""

    invoke-virtual {v3, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    const-string v4, "GooglePlayServicesUpdatingDialog"

    invoke-static {v0, v3, v4, v6}, La5/b;->e(Landroid/app/Activity;Landroid/app/AlertDialog;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Lc5/A;->c:Ljava/lang/Object;

    check-cast v0, Lc5/w;

    iget-object v4, v0, Lc5/w;->e:La5/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v5, Lo3/e;

    invoke-direct {v5, p0, v3}, Lo3/e;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v4, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v6, "package"

    invoke-virtual {v4, v6}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    new-instance v6, Lc5/D;

    invoke-direct {v6, v5}, Lc5/D;-><init>(Lo3/e;)V

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x54

    const/16 v8, 0x21

    if-ge v5, v8, :cond_12

    sget-object v9, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-virtual {v9, v1}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v7, :cond_11

    goto :goto_10

    :cond_11
    invoke-virtual {v0, v6, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_11

    :cond_12
    :goto_10
    if-ge v5, v8, :cond_13

    sget-object v5, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v7, :cond_14

    :cond_13
    const/4 v1, 0x2

    :cond_14
    invoke-virtual {v0, v6, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    :goto_11
    iput-object v0, v6, Lc5/D;->a:Landroid/content/Context;

    const-string v1, "com.google.android.gms"

    invoke-static {v0, v1}, La5/f;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    iget-object p0, p0, Lc5/A;->c:Ljava/lang/Object;

    check-cast p0, Lc5/w;

    iget-object v0, p0, Lc5/w;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object p0, p0, Lc5/w;->g:Lc5/h;

    iget-object p0, p0, Lc5/h;->A:LC5/a;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-virtual {v3}, Landroid/app/Dialog;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_15

    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    :cond_15
    monitor-enter v6

    :try_start_c
    iget-object p0, v6, Lc5/D;->a:Landroid/content/Context;

    if-eqz p0, :cond_16

    invoke-virtual {p0, v6}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_12

    :catchall_8
    move-exception p0

    goto :goto_13

    :cond_16
    :goto_12
    iput-object v2, v6, Lc5/D;->a:Landroid/content/Context;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    monitor-exit v6

    goto :goto_14

    :goto_13
    :try_start_d
    monitor-exit v6
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    throw p0

    :cond_17
    iget-object v1, p0, Lc5/A;->c:Ljava/lang/Object;

    check-cast v1, Lc5/w;

    iget-object p0, p0, Lc5/A;->b:Ljava/lang/Object;

    check-cast p0, Lc5/Q;

    iget p0, p0, Lc5/Q;->a:I

    iget-object v3, v1, Lc5/w;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v1, v1, Lc5/w;->g:Lc5/h;

    invoke-virtual {v1, v0, p0}, Lc5/h;->h(Lcom/google/android/gms/common/ConnectionResult;I)V

    :cond_18
    :goto_14
    return-void

    :pswitch_d
    iget-object v4, p0, Lc5/A;->b:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/gms/signin/internal/zak;

    iget-object v5, v4, Lcom/google/android/gms/signin/internal/zak;->b:Lcom/google/android/gms/common/ConnectionResult;

    iget v6, v5, Lcom/google/android/gms/common/ConnectionResult;->b:I

    if-nez v6, :cond_19

    move v1, v3

    :cond_19
    iget-object p0, p0, Lc5/A;->c:Ljava/lang/Object;

    check-cast p0, Lc5/K;

    if-eqz v1, :cond_1f

    iget-object v1, v4, Lcom/google/android/gms/signin/internal/zak;->c:Lcom/google/android/gms/common/internal/zav;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/o;->f(Ljava/lang/Object;)V

    iget-object v3, v1, Lcom/google/android/gms/common/internal/zav;->c:Lcom/google/android/gms/common/ConnectionResult;

    iget v4, v3, Lcom/google/android/gms/common/ConnectionResult;->b:I

    if-nez v4, :cond_1e

    iget-object v3, p0, Lc5/K;->u:Lc5/B;

    iget-object v1, v1, Lcom/google/android/gms/common/internal/zav;->b:Landroid/os/IBinder;

    if-nez v1, :cond_1a

    goto :goto_16

    :cond_1a
    sget v2, Lcom/google/android/gms/common/internal/a;->b:I

    const-string v2, "com.google.android.gms.common.internal.IAccountAccessor"

    invoke-interface {v1, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v4

    instance-of v5, v4, Lcom/google/android/gms/common/internal/k;

    if-eqz v5, :cond_1b

    check-cast v4, Lcom/google/android/gms/common/internal/k;

    :goto_15
    move-object v2, v4

    goto :goto_16

    :cond_1b
    new-instance v4, Lcom/google/android/gms/common/internal/J;

    const/4 v5, 0x6

    invoke-direct {v4, v1, v2, v5}, LD5/a;-><init>(Landroid/os/IBinder;Ljava/lang/String;I)V

    goto :goto_15

    :goto_16
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v2, :cond_1d

    iget-object v1, p0, Lc5/K;->r:Ljava/util/Set;

    if-nez v1, :cond_1c

    goto :goto_17

    :cond_1c
    iput-object v2, v3, Lc5/B;->c:Lcom/google/android/gms/common/internal/k;

    iput-object v1, v3, Lc5/B;->d:Ljava/util/Set;

    iget-boolean v0, v3, Lc5/B;->e:Z

    if-eqz v0, :cond_20

    iget-object v0, v3, Lc5/B;->a:Lb5/e;

    invoke-interface {v0, v2, v1}, Lb5/e;->getRemoteService(Lcom/google/android/gms/common/internal/k;Ljava/util/Set;)V

    goto :goto_18

    :cond_1d
    :goto_17
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    const-string v2, "GoogleApiManager"

    const-string v4, "Received null response from onSignInSuccess"

    invoke-static {v2, v4, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {v1, v0}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    invoke-virtual {v3, v1}, Lc5/B;->b(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_18

    :cond_1e
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    const-string v2, "Sign-in succeeded with resolve account failure: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "SignInCoordinator"

    invoke-static {v2, v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lc5/K;->u:Lc5/B;

    invoke-virtual {v0, v3}, Lc5/B;->b(Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object p0, p0, Lc5/K;->t:LP5/a;

    invoke-interface {p0}, Lb5/e;->disconnect()V

    goto :goto_19

    :cond_1f
    iget-object v0, p0, Lc5/K;->u:Lc5/B;

    invoke-virtual {v0, v5}, Lc5/B;->b(Lcom/google/android/gms/common/ConnectionResult;)V

    :cond_20
    :goto_18
    iget-object p0, p0, Lc5/K;->t:LP5/a;

    invoke-interface {p0}, Lb5/e;->disconnect()V

    :goto_19
    return-void

    :pswitch_e
    iget-object v0, p0, Lc5/A;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/emoji2/text/d;

    iget-object p0, p0, Lc5/A;->c:Ljava/lang/Object;

    check-cast p0, Lc5/n;

    iget-object v0, v0, Landroidx/emoji2/text/d;->b:Ljava/lang/Object;

    check-cast v0, LL5/b;

    if-nez v0, :cond_21

    goto :goto_1a

    :cond_21
    invoke-interface {p0, v0}, Lc5/n;->k(LL5/b;)V

    :goto_1a
    return-void

    :pswitch_f
    iget-object v0, p0, Lc5/A;->c:Ljava/lang/Object;

    check-cast v0, Lc5/B;

    iget-object v4, v0, Lc5/B;->f:Lc5/h;

    iget-object v4, v4, Lc5/h;->w:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v5, v0, Lc5/B;->b:Lc5/b;

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc5/y;

    if-nez v4, :cond_22

    goto :goto_1b

    :cond_22
    iget-object p0, p0, Lc5/A;->b:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/common/ConnectionResult;

    iget v5, p0, Lcom/google/android/gms/common/ConnectionResult;->b:I

    if-nez v5, :cond_23

    move v1, v3

    :cond_23
    if-eqz v1, :cond_25

    iput-boolean v3, v0, Lc5/B;->e:Z

    iget-object p0, v0, Lc5/B;->a:Lb5/e;

    invoke-interface {p0}, Lb5/e;->requiresSignIn()Z

    move-result v1

    if-eqz v1, :cond_24

    iget-boolean v1, v0, Lc5/B;->e:Z

    if-eqz v1, :cond_26

    iget-object v1, v0, Lc5/B;->c:Lcom/google/android/gms/common/internal/k;

    if-eqz v1, :cond_26

    iget-object v0, v0, Lc5/B;->d:Ljava/util/Set;

    invoke-interface {p0, v1, v0}, Lb5/e;->getRemoteService(Lcom/google/android/gms/common/internal/k;Ljava/util/Set;)V

    goto :goto_1b

    :cond_24
    :try_start_e
    invoke-interface {p0}, Lb5/e;->getScopesForConnectionlessNonSignIn()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p0, v2, v0}, Lb5/e;->getRemoteService(Lcom/google/android/gms/common/internal/k;Ljava/util/Set;)V
    :try_end_e
    .catch Ljava/lang/SecurityException; {:try_start_e .. :try_end_e} :catch_3

    goto :goto_1b

    :catch_3
    move-exception v0

    const-string v1, "GoogleApiManager"

    const-string v3, "Failed to get service from broker. "

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v0, "Failed to get service from broker."

    invoke-interface {p0, v0}, Lb5/e;->disconnect(Ljava/lang/String;)V

    new-instance p0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    invoke-virtual {v4, p0, v2}, Lc5/y;->l(Lcom/google/android/gms/common/ConnectionResult;Ljava/lang/RuntimeException;)V

    goto :goto_1b

    :cond_25
    invoke-virtual {v4, p0, v2}, Lc5/y;->l(Lcom/google/android/gms/common/ConnectionResult;Ljava/lang/RuntimeException;)V

    :cond_26
    :goto_1b
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lc5/A;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lc5/A;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    const-string v1, "}"

    if-eqz v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "SequentialExecutorWorker{running="

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "SequentialExecutorWorker{state="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lc5/A;->c:Ljava/lang/Object;

    check-cast p0, Lr7/i;

    iget-object p0, p0, Lr7/i;->c:Lr7/h;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
    .end packed-switch
.end method
