.class public final Lcom/google/common/util/concurrent/v;
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

    iput p1, p0, Lcom/google/common/util/concurrent/v;->a:I

    iput-object p2, p0, Lcom/google/common/util/concurrent/v;->b:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/common/util/concurrent/v;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Z)V
    .locals 0

    iput p1, p0, Lcom/google/common/util/concurrent/v;->a:I

    iput-object p2, p0, Lcom/google/common/util/concurrent/v;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/common/util/concurrent/v;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a()V
    .locals 4

    iget-object v0, p0, Lcom/google/common/util/concurrent/v;->b:Ljava/lang/Object;

    check-cast v0, LZ4/g;

    iget-object p0, p0, Lcom/google/common/util/concurrent/v;->c:Ljava/lang/Object;

    check-cast p0, LZ4/h;

    iget p0, p0, LZ4/h;->a:I

    monitor-enter v0

    :try_start_0
    iget-object v1, v0, LZ4/g;->r:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LZ4/h;

    if-eqz v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x1f

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Timing out request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "MessengerIpcClient"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v0, LZ4/g;->r:Landroid/util/SparseArray;

    invoke-virtual {v2, p0}, Landroid/util/SparseArray;->remove(I)V

    new-instance p0, LBb/a;

    const-string v2, "Timed out waiting for response"

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v1, p0}, LZ4/h;->b(LBb/a;)V

    invoke-virtual {v0}, LZ4/g;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :goto_0
    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public final run()V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/common/util/concurrent/v;->a:I

    packed-switch v3, :pswitch_data_0

    iget-object v0, p0, Lcom/google/common/util/concurrent/v;->b:Ljava/lang/Object;

    check-cast v0, Lc1/e;

    iget-object p0, p0, Lcom/google/common/util/concurrent/v;->c:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Lc1/e;->accept(Ljava/lang/Object;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/v;->b:Ljava/lang/Object;

    check-cast v0, LI3/d;

    iget-object v0, v0, LI3/d;->b:Ljava/lang/Object;

    check-cast v0, LW0/b;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/common/util/concurrent/v;->c:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Typeface;

    invoke-virtual {v0, p0}, LW0/b;->k(Landroid/graphics/Typeface;)V

    :cond_0
    return-void

    :pswitch_1
    invoke-direct {p0}, Lcom/google/common/util/concurrent/v;->a()V

    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/google/common/util/concurrent/v;->b:Ljava/lang/Object;

    check-cast v0, LZ4/g;

    iget-object p0, p0, Lcom/google/common/util/concurrent/v;->c:Ljava/lang/Object;

    check-cast p0, Landroid/os/IBinder;

    monitor-enter v0

    if-nez p0, :cond_1

    :try_start_0
    const-string p0, "Null service connection"

    invoke-virtual {v0, v2, p0}, LZ4/g;->a(ILjava/lang/String;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :try_start_1
    new-instance v3, Lt9/c;

    invoke-direct {v3, p0}, Lt9/c;-><init>(Landroid/os/IBinder;)V

    iput-object v3, v0, LZ4/g;->p:Lt9/c;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p0, 0x2

    :try_start_2
    iput p0, v0, LZ4/g;->a:I

    iget-object p0, v0, LZ4/g;->s:LZ4/i;

    iget-object p0, p0, LZ4/i;->c:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, LZ4/f;

    invoke-direct {v2, v0, v1}, LZ4/f;-><init>(LZ4/g;I)V

    invoke-interface {p0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    monitor-exit v0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v2, p0}, LZ4/g;->a(ILjava/lang/String;)V

    monitor-exit v0

    :goto_0
    return-void

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :pswitch_3
    iget-object v0, p0, Lcom/google/common/util/concurrent/v;->c:Ljava/lang/Object;

    check-cast v0, LY5/k;

    iget-object v1, v0, LY5/k;->p:LY5/i;

    iget-object p0, p0, Lcom/google/common/util/concurrent/v;->b:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/wearable/internal/zzbf;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/wearable/internal/zzbf;->b(LY5/b;)V

    iget-object v0, v0, LY5/k;->p:LY5/i;

    invoke-static {v0}, LY5/i;->zzd(LY5/i;)LZ5/e;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/internal/zzbf;->b(LY5/b;)V

    return-void

    :pswitch_4
    iget-object v0, p0, Lcom/google/common/util/concurrent/v;->c:Ljava/lang/Object;

    check-cast v0, LY5/k;

    iget-object v0, v0, LY5/k;->p:LY5/i;

    iget-object p0, p0, Lcom/google/common/util/concurrent/v;->b:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/wearable/internal/zzi;

    invoke-virtual {v0, p0}, LY5/i;->onEntityUpdate(LY5/j;)V

    return-void

    :pswitch_5
    iget-object v0, p0, Lcom/google/common/util/concurrent/v;->c:Ljava/lang/Object;

    check-cast v0, LY5/k;

    iget-object v0, v0, LY5/k;->p:LY5/i;

    iget-object p0, p0, Lcom/google/common/util/concurrent/v;->b:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/wearable/internal/zzl;

    invoke-virtual {v0, p0}, LY5/i;->onNotificationReceived(LY5/l;)V

    return-void

    :pswitch_6
    iget-object v0, p0, Lcom/google/common/util/concurrent/v;->c:Ljava/lang/Object;

    check-cast v0, LY5/k;

    iget-object v0, v0, LY5/k;->p:LY5/i;

    iget-object p0, p0, Lcom/google/common/util/concurrent/v;->b:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/wearable/internal/zzao;

    invoke-virtual {v0, p0}, LY5/i;->onCapabilityChanged(LY5/a;)V

    return-void

    :pswitch_7
    iget-object v0, p0, Lcom/google/common/util/concurrent/v;->c:Ljava/lang/Object;

    check-cast v0, LY5/k;

    iget-object v0, v0, LY5/k;->p:LY5/i;

    iget-object p0, p0, Lcom/google/common/util/concurrent/v;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, LY5/i;->onConnectedNodes(Ljava/util/List;)V

    return-void

    :pswitch_8
    iget-object v0, p0, Lcom/google/common/util/concurrent/v;->c:Ljava/lang/Object;

    check-cast v0, LY5/k;

    iget-object v0, v0, LY5/k;->p:LY5/i;

    iget-object p0, p0, Lcom/google/common/util/concurrent/v;->b:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/wearable/internal/zzfx;

    invoke-virtual {v0, p0}, LY5/i;->onMessageReceived(LY5/e;)V

    return-void

    :pswitch_9
    new-instance v0, LY5/c;

    iget-object v1, p0, Lcom/google/common/util/concurrent/v;->b:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/common/data/DataHolder;

    invoke-direct {v0, v1}, LY5/c;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    :try_start_3
    iget-object p0, p0, Lcom/google/common/util/concurrent/v;->c:Ljava/lang/Object;

    check-cast p0, LY5/k;

    iget-object p0, p0, LY5/k;->p:LY5/i;

    invoke-virtual {p0, v0}, LY5/i;->onDataChanged(LY5/c;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-virtual {v0}, LY5/c;->release()V

    return-void

    :catchall_1
    move-exception p0

    invoke-virtual {v0}, LY5/c;->release()V

    throw p0

    :pswitch_a
    sget-object v0, Ldb/r;->a:Ldb/r;

    iget-object v1, p0, Lcom/google/common/util/concurrent/v;->b:Ljava/lang/Object;

    check-cast v1, LXc/f;

    check-cast v1, LXc/e;

    iget-object p0, p0, Lcom/google/common/util/concurrent/v;->c:Ljava/lang/Object;

    check-cast p0, LXc/b;

    invoke-virtual {v1, p0, v0}, LXc/e;->g(Ljava/lang/Object;Ljava/lang/Object;)I

    return-void

    :pswitch_b
    iget-object v0, p0, Lcom/google/common/util/concurrent/v;->c:Ljava/lang/Object;

    check-cast v0, LV3/c;

    iget-boolean v1, v0, LV3/c;->d:Z

    if-eqz v1, :cond_2

    new-instance v1, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectNetwork()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyDeath()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    :cond_2
    :try_start_4
    iget-object p0, p0, Lcom/google/common/util/concurrent/v;->b:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p0

    iget-object v0, v0, LV3/c;->c:LV3/d;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x6

    const-string v1, "GlideExecutor"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Request threw uncaught throwable"

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_2
    return-void

    :cond_4
    :pswitch_c
    :try_start_5
    iget-object v0, p0, Lcom/google/common/util/concurrent/v;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v0

    sget-object v3, Lib/i;->a:Lib/i;

    invoke-static {v3, v0}, LNc/E;->s(Lib/h;Ljava/lang/Throwable;)V

    :goto_3
    iget-object v0, p0, Lcom/google/common/util/concurrent/v;->c:Ljava/lang/Object;

    check-cast v0, LUc/j;

    invoke-virtual {v0}, LUc/j;->K()Ljava/lang/Runnable;

    move-result-object v3

    if-nez v3, :cond_5

    goto :goto_4

    :cond_5
    iput-object v3, p0, Lcom/google/common/util/concurrent/v;->b:Ljava/lang/Object;

    add-int/2addr v2, v1

    const/16 v3, 0x10

    if-lt v2, v3, :cond_4

    iget-object v3, v0, LUc/j;->b:LNc/x;

    invoke-virtual {v3, v0}, LNc/x;->H(Lib/h;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v3, v0, p0}, LNc/x;->v(Lib/h;Ljava/lang/Runnable;)V

    :goto_4
    return-void

    :pswitch_d
    iget-object v1, p0, Lcom/google/common/util/concurrent/v;->b:Ljava/lang/Object;

    check-cast v1, LK0/m;

    iget-object v2, v1, LK0/h;->a:Ljava/lang/Object;

    instance-of v2, v2, LK0/a;

    iget-object p0, p0, Lcom/google/common/util/concurrent/v;->c:Ljava/lang/Object;

    check-cast p0, LNc/k;

    if-eqz v2, :cond_6

    invoke-virtual {p0, v0}, LNc/k;->i(Ljava/lang/Throwable;)Z

    goto :goto_5

    :cond_6
    :try_start_6
    invoke-static {v1}, LG5/k2;->i(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, LNc/k;->resumeWith(Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_5

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-static {v0}, LG5/A2;->c(Ljava/lang/Throwable;)Ldb/l;

    move-result-object v0

    invoke-virtual {p0, v0}, LNc/k;->resumeWith(Ljava/lang/Object;)V

    :goto_5
    return-void

    :pswitch_e
    iget-object v0, p0, Lcom/google/common/util/concurrent/v;->b:Ljava/lang/Object;

    check-cast v0, LR5/p;

    :try_start_7
    iget-object p0, p0, Lcom/google/common/util/concurrent/v;->c:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/Callable;

    invoke-interface {p0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, LR5/p;->p(Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_8

    :catchall_4
    move-exception p0

    goto :goto_6

    :catch_2
    move-exception p0

    goto :goto_7

    :goto_6
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, LR5/p;->o(Ljava/lang/Exception;)V

    goto :goto_8

    :goto_7
    invoke-virtual {v0, p0}, LR5/p;->o(Ljava/lang/Exception;)V

    :goto_8
    return-void

    :pswitch_f
    iget-object v0, p0, Lcom/google/common/util/concurrent/v;->c:Ljava/lang/Object;

    check-cast v0, LR5/l;

    :try_start_8
    iget-object v1, v0, LR5/l;->b:Ljava/lang/Object;

    check-cast v1, LR5/g;

    iget-object p0, p0, Lcom/google/common/util/concurrent/v;->b:Ljava/lang/Object;

    check-cast p0, LR5/h;

    invoke-virtual {p0}, LR5/h;->i()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v1, p0}, LR5/g;->a(Ljava/lang/Object;)LR5/p;

    move-result-object p0
    :try_end_8
    .catch LR5/f; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/util/concurrent/CancellationException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    if-nez p0, :cond_7

    new-instance p0, Ljava/lang/NullPointerException;

    const-string v1, "Continuation returned null"

    invoke-direct {p0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, LR5/l;->onFailure(Ljava/lang/Exception;)V

    goto :goto_b

    :cond_7
    sget-object v1, LR5/j;->b:LR5/n;

    invoke-virtual {p0, v1, v0}, LR5/p;->f(Ljava/util/concurrent/Executor;LR5/e;)LR5/p;

    invoke-virtual {p0, v1, v0}, LR5/p;->d(Ljava/util/concurrent/Executor;LR5/d;)LR5/p;

    new-instance v2, LR5/l;

    invoke-direct {v2, v1, v0}, LR5/l;-><init>(LR5/n;LR5/b;)V

    iget-object v0, p0, LR5/p;->b:Lcom/bumptech/glide/manager/o;

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/manager/o;->h(LR5/m;)V

    invoke-virtual {p0}, LR5/p;->t()V

    goto :goto_b

    :catch_3
    move-exception p0

    goto :goto_9

    :catch_4
    move-exception p0

    goto :goto_a

    :goto_9
    invoke-virtual {v0, p0}, LR5/l;->onFailure(Ljava/lang/Exception;)V

    goto :goto_b

    :catch_5
    invoke-virtual {v0}, LR5/l;->h()V

    goto :goto_b

    :goto_a
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Exception;

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljava/lang/Exception;

    invoke-virtual {v0, p0}, LR5/l;->onFailure(Ljava/lang/Exception;)V

    goto :goto_b

    :cond_8
    invoke-virtual {v0, p0}, LR5/l;->onFailure(Ljava/lang/Exception;)V

    :goto_b
    return-void

    :pswitch_10
    iget-object v0, p0, Lcom/google/common/util/concurrent/v;->c:Ljava/lang/Object;

    check-cast v0, LR5/l;

    iget-object v0, v0, LR5/l;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_9
    iget-object v1, p0, Lcom/google/common/util/concurrent/v;->c:Ljava/lang/Object;

    check-cast v1, LR5/l;

    iget-object v1, v1, LR5/l;->d:Ljava/lang/Object;

    check-cast v1, LR5/e;

    if-eqz v1, :cond_9

    iget-object p0, p0, Lcom/google/common/util/concurrent/v;->b:Ljava/lang/Object;

    check-cast p0, LR5/h;

    invoke-virtual {p0}, LR5/h;->i()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v1, p0}, LR5/e;->onSuccess(Ljava/lang/Object;)V

    goto :goto_c

    :catchall_5
    move-exception p0

    goto :goto_d

    :cond_9
    :goto_c
    monitor-exit v0

    return-void

    :goto_d
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    throw p0

    :pswitch_11
    iget-object v0, p0, Lcom/google/common/util/concurrent/v;->c:Ljava/lang/Object;

    check-cast v0, LR5/l;

    iget-object v0, v0, LR5/l;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_a
    iget-object v1, p0, Lcom/google/common/util/concurrent/v;->c:Ljava/lang/Object;

    check-cast v1, LR5/l;

    iget-object v1, v1, LR5/l;->d:Ljava/lang/Object;

    check-cast v1, LR5/d;

    if-eqz v1, :cond_a

    iget-object p0, p0, Lcom/google/common/util/concurrent/v;->b:Ljava/lang/Object;

    check-cast p0, LR5/h;

    invoke-virtual {p0}, LR5/h;->h()Ljava/lang/Exception;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/common/internal/o;->f(Ljava/lang/Object;)V

    invoke-interface {v1, p0}, LR5/d;->onFailure(Ljava/lang/Exception;)V

    goto :goto_e

    :catchall_6
    move-exception p0

    goto :goto_f

    :cond_a
    :goto_e
    monitor-exit v0

    return-void

    :goto_f
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    throw p0

    :pswitch_12
    iget-object v0, p0, Lcom/google/common/util/concurrent/v;->c:Ljava/lang/Object;

    check-cast v0, LR5/l;

    iget-object v0, v0, LR5/l;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_b
    iget-object v1, p0, Lcom/google/common/util/concurrent/v;->c:Ljava/lang/Object;

    check-cast v1, LR5/l;

    iget-object v1, v1, LR5/l;->d:Ljava/lang/Object;

    check-cast v1, LR5/c;

    if-eqz v1, :cond_b

    iget-object p0, p0, Lcom/google/common/util/concurrent/v;->b:Ljava/lang/Object;

    check-cast p0, LR5/h;

    invoke-interface {v1, p0}, LR5/c;->onComplete(LR5/h;)V

    goto :goto_10

    :catchall_7
    move-exception p0

    goto :goto_11

    :cond_b
    :goto_10
    monitor-exit v0

    return-void

    :goto_11
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    throw p0

    :pswitch_13
    iget-object v0, p0, Lcom/google/common/util/concurrent/v;->c:Ljava/lang/Object;

    check-cast v0, LR5/k;

    :try_start_c
    iget-object v1, v0, LR5/k;->c:LR5/a;

    iget-object p0, p0, Lcom/google/common/util/concurrent/v;->b:Ljava/lang/Object;

    check-cast p0, LR5/h;

    invoke-interface {v1, p0}, LR5/a;->m(LR5/h;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LR5/h;
    :try_end_c
    .catch LR5/f; {:try_start_c .. :try_end_c} :catch_7
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6

    if-nez p0, :cond_c

    new-instance p0, Ljava/lang/NullPointerException;

    const-string v1, "Continuation returned null"

    invoke-direct {p0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, LR5/k;->onFailure(Ljava/lang/Exception;)V

    goto :goto_14

    :cond_c
    sget-object v1, LR5/j;->b:LR5/n;

    invoke-virtual {p0, v1, v0}, LR5/h;->f(Ljava/util/concurrent/Executor;LR5/e;)LR5/p;

    invoke-virtual {p0, v1, v0}, LR5/h;->d(Ljava/util/concurrent/Executor;LR5/d;)LR5/p;

    check-cast p0, LR5/p;

    new-instance v2, LR5/l;

    invoke-direct {v2, v1, v0}, LR5/l;-><init>(LR5/n;LR5/b;)V

    iget-object v0, p0, LR5/p;->b:Lcom/bumptech/glide/manager/o;

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/manager/o;->h(LR5/m;)V

    invoke-virtual {p0}, LR5/p;->t()V

    goto :goto_14

    :catch_6
    move-exception p0

    goto :goto_12

    :catch_7
    move-exception p0

    goto :goto_13

    :goto_12
    iget-object v0, v0, LR5/k;->d:LR5/p;

    invoke-virtual {v0, p0}, LR5/p;->o(Ljava/lang/Exception;)V

    goto :goto_14

    :goto_13
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Exception;

    if-eqz v1, :cond_d

    iget-object v0, v0, LR5/k;->d:LR5/p;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljava/lang/Exception;

    invoke-virtual {v0, p0}, LR5/p;->o(Ljava/lang/Exception;)V

    goto :goto_14

    :cond_d
    iget-object v0, v0, LR5/k;->d:LR5/p;

    invoke-virtual {v0, p0}, LR5/p;->o(Ljava/lang/Exception;)V

    :goto_14
    return-void

    :pswitch_14
    iget-object v0, p0, Lcom/google/common/util/concurrent/v;->b:Ljava/lang/Object;

    check-cast v0, LR5/h;

    check-cast v0, LR5/p;

    iget-boolean v0, v0, LR5/p;->d:Z

    if-eqz v0, :cond_e

    iget-object p0, p0, Lcom/google/common/util/concurrent/v;->c:Ljava/lang/Object;

    check-cast p0, LR5/k;

    iget-object p0, p0, LR5/k;->d:LR5/p;

    invoke-virtual {p0}, LR5/p;->q()V

    goto :goto_17

    :cond_e
    :try_start_d
    iget-object v0, p0, Lcom/google/common/util/concurrent/v;->c:Ljava/lang/Object;

    check-cast v0, LR5/k;

    iget-object v0, v0, LR5/k;->c:LR5/a;

    iget-object v1, p0, Lcom/google/common/util/concurrent/v;->b:Ljava/lang/Object;

    check-cast v1, LR5/h;

    invoke-interface {v0, v1}, LR5/a;->m(LR5/h;)Ljava/lang/Object;

    move-result-object v0
    :try_end_d
    .catch LR5/f; {:try_start_d .. :try_end_d} :catch_9
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_8

    iget-object p0, p0, Lcom/google/common/util/concurrent/v;->c:Ljava/lang/Object;

    check-cast p0, LR5/k;

    iget-object p0, p0, LR5/k;->d:LR5/p;

    invoke-virtual {p0, v0}, LR5/p;->p(Ljava/lang/Object;)V

    goto :goto_17

    :catch_8
    move-exception v0

    goto :goto_15

    :catch_9
    move-exception v0

    goto :goto_16

    :goto_15
    iget-object p0, p0, Lcom/google/common/util/concurrent/v;->c:Ljava/lang/Object;

    check-cast p0, LR5/k;

    iget-object p0, p0, LR5/k;->d:LR5/p;

    invoke-virtual {p0, v0}, LR5/p;->o(Ljava/lang/Exception;)V

    goto :goto_17

    :goto_16
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Exception;

    if-eqz v1, :cond_f

    iget-object p0, p0, Lcom/google/common/util/concurrent/v;->c:Ljava/lang/Object;

    check-cast p0, LR5/k;

    iget-object p0, p0, LR5/k;->d:LR5/p;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    invoke-virtual {p0, v0}, LR5/p;->o(Ljava/lang/Exception;)V

    goto :goto_17

    :cond_f
    iget-object p0, p0, Lcom/google/common/util/concurrent/v;->c:Ljava/lang/Object;

    check-cast p0, LR5/k;

    iget-object p0, p0, LR5/k;->d:LR5/p;

    invoke-virtual {p0, v0}, LR5/p;->o(Ljava/lang/Exception;)V

    :goto_17
    return-void

    :pswitch_15
    const-class v3, Ljava/lang/Throwable;

    iget-object v4, p0, Lcom/google/common/util/concurrent/v;->b:Ljava/lang/Object;

    check-cast v4, Lcom/samsung/android/scloud/lib/setting/e;

    iget-object v5, v4, Lcom/samsung/android/scloud/lib/setting/e;->e:Ljava/lang/Object;

    check-cast v5, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Thread;

    if-nez v5, :cond_10

    goto :goto_18

    :cond_10
    move v1, v2

    :goto_18
    invoke-static {v1}, Lcom/google/android/gms/common/internal/o;->i(Z)V

    iget-object p0, p0, Lcom/google/common/util/concurrent/v;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Runnable;

    :try_start_e
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    iget-object p0, v4, Lcom/samsung/android/scloud/lib/setting/e;->e:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-virtual {v4}, Lcom/samsung/android/scloud/lib/setting/e;->s()V

    return-void

    :catchall_8
    move-exception p0

    :try_start_f
    iget-object v1, v4, Lcom/samsung/android/scloud/lib/setting/e;->e:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-virtual {v4}, Lcom/samsung/android/scloud/lib/setting/e;->s()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_9

    goto :goto_19

    :catchall_9
    move-exception v0

    :try_start_10
    const-string v1, "addSuppressed"

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_a

    :catch_a
    :goto_19
    throw p0

    :pswitch_16
    iget-object v3, p0, Lcom/google/common/util/concurrent/v;->b:Ljava/lang/Object;

    check-cast v3, LU7/e;

    iget-object v4, v3, LU7/e;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v4

    if-ltz v4, :cond_11

    goto :goto_1a

    :cond_11
    move v1, v2

    :goto_1a
    invoke-static {v1}, Lcom/google/android/gms/common/internal/o;->i(Z)V

    if-nez v4, :cond_13

    iget-object v1, v3, LU7/e;->a:Lcom/samsung/android/scloud/lib/setting/e;

    iget-object v1, v1, Lcom/samsung/android/scloud/lib/setting/e;->e:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/common/internal/o;->i(Z)V

    iget-object v1, v3, LU7/e;->d:Lcom/google/mlkit/nl/languageid/bundled/internal/ThickLanguageIdentifier;

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Lcom/google/mlkit/nl/languageid/bundled/internal/ThickLanguageIdentifier;->c()V

    iput-object v0, v3, LU7/e;->d:Lcom/google/mlkit/nl/languageid/bundled/internal/ThickLanguageIdentifier;

    :cond_12
    iget-object v1, v3, LU7/e;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_13
    sget-object v1, LE5/n;->a:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    sget-object v1, LE5/u;->a:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    iget-object p0, p0, Lcom/google/common/util/concurrent/v;->c:Ljava/lang/Object;

    check-cast p0, LR5/i;

    invoke-virtual {p0, v0}, LR5/i;->b(Ljava/lang/Object;)V

    return-void

    :pswitch_17
    iget-object v0, p0, Lcom/google/common/util/concurrent/v;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/Callable;

    iget-object p0, p0, Lcom/google/common/util/concurrent/v;->c:Ljava/lang/Object;

    check-cast p0, LR5/i;

    :try_start_11
    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0
    :try_end_11
    .catch LM7/a; {:try_start_11 .. :try_end_11} :catch_c
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_b

    invoke-virtual {p0, v0}, LR5/i;->b(Ljava/lang/Object;)V

    goto :goto_1b

    :catch_b
    move-exception v0

    new-instance v1, LM7/a;

    const-string v2, "Internal error has occurred when executing ML Kit tasks"

    invoke-direct {v1, v2, v0}, LM7/a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1}, LR5/i;->a(Ljava/lang/Exception;)V

    goto :goto_1b

    :catch_c
    move-exception v0

    invoke-virtual {p0, v0}, LR5/i;->a(Ljava/lang/Exception;)V

    :goto_1b
    return-void

    :pswitch_18
    iget-object v0, p0, Lcom/google/common/util/concurrent/v;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/ref/ReferenceQueue;

    :catch_d
    :goto_1c
    iget-object v1, p0, Lcom/google/common/util/concurrent/v;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_15

    :try_start_12
    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->remove()Ljava/lang/ref/Reference;

    move-result-object v1

    check-cast v1, LQ7/j;

    iget-object v2, v1, LQ7/j;->a:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    goto :goto_1c

    :cond_14
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->clear()V

    iget-object v1, v1, LQ7/j;->b:LQ7/i;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_12
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_12} :catch_d

    goto :goto_1c

    :cond_15
    return-void

    :pswitch_19
    iget-object v0, p0, Lcom/google/common/util/concurrent/v;->b:Ljava/lang/Object;

    check-cast v0, LNc/k;

    iget-object p0, p0, Lcom/google/common/util/concurrent/v;->c:Ljava/lang/Object;

    check-cast p0, LOc/b;

    invoke-virtual {v0, p0}, LNc/k;->B(LNc/x;)V

    return-void

    :pswitch_1a
    iget-object v0, p0, Lcom/google/common/util/concurrent/v;->c:Ljava/lang/Object;

    check-cast v0, LNc/k;

    iget-object p0, p0, Lcom/google/common/util/concurrent/v;->b:Ljava/lang/Object;

    check-cast p0, LNc/a0;

    invoke-virtual {v0, p0}, LNc/k;->B(LNc/x;)V

    return-void

    :pswitch_1b
    :try_start_13
    iget-object v0, p0, Lcom/google/common/util/concurrent/v;->c:Ljava/lang/Object;

    check-cast v0, LN3/c;

    iget-object v0, v0, LN3/c;->b:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object p0, p0, Lcom/google/common/util/concurrent/v;->b:Ljava/lang/Object;

    check-cast p0, LN3/p;

    invoke-interface {v0, p0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_13
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_13} :catch_e

    goto :goto_1d

    :catch_e
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    :goto_1d
    return-void

    :pswitch_1c
    iget-object v1, p0, Lcom/google/common/util/concurrent/v;->b:Ljava/lang/Object;

    check-cast v1, Lcom/google/common/util/concurrent/y;

    instance-of v2, v1, LU6/a;

    iget-object p0, p0, Lcom/google/common/util/concurrent/v;->c:Ljava/lang/Object;

    check-cast p0, Lcom/google/common/util/concurrent/u;

    if-eqz v2, :cond_17

    move-object v2, v1

    check-cast v2, LU6/a;

    check-cast v2, Lcom/google/common/util/concurrent/o;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v3, v2, Lcom/google/common/util/concurrent/g;

    if-eqz v3, :cond_16

    iget-object v2, v2, Lcom/google/common/util/concurrent/o;->a:Ljava/lang/Object;

    instance-of v3, v2, Lcom/google/common/util/concurrent/b;

    if-eqz v3, :cond_16

    check-cast v2, Lcom/google/common/util/concurrent/b;

    iget-object v0, v2, Lcom/google/common/util/concurrent/b;->a:Ljava/lang/Throwable;

    :cond_16
    if-eqz v0, :cond_17

    invoke-interface {p0, v0}, Lcom/google/common/util/concurrent/u;->onFailure(Ljava/lang/Throwable;)V

    goto :goto_1e

    :cond_17
    :try_start_14
    invoke-interface {v1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-static {v1}, LG5/k2;->i(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0
    :try_end_14
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_14 .. :try_end_14} :catch_10
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_f
    .catch Ljava/lang/Error; {:try_start_14 .. :try_end_14} :catch_f

    invoke-interface {p0, v0}, Lcom/google/common/util/concurrent/u;->onSuccess(Ljava/lang/Object;)V

    goto :goto_1e

    :cond_18
    :try_start_15
    new-instance v0, Ljava/lang/IllegalStateException;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Future was expected to be done: %s"

    invoke-static {v2, v1}, Lcom/google/common/base/C;->p(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_15
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_15 .. :try_end_15} :catch_10
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_15} :catch_f
    .catch Ljava/lang/Error; {:try_start_15 .. :try_end_15} :catch_f

    :catch_f
    move-exception v0

    invoke-interface {p0, v0}, Lcom/google/common/util/concurrent/u;->onFailure(Ljava/lang/Throwable;)V

    goto :goto_1e

    :catch_10
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/google/common/util/concurrent/u;->onFailure(Ljava/lang/Throwable;)V

    :goto_1e
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
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

    iget v0, p0, Lcom/google/common/util/concurrent/v;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    new-instance v0, LZ3/x;

    const-class v1, Lcom/google/common/util/concurrent/v;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, LZ3/x;-><init>(Ljava/lang/String;)V

    new-instance v1, LZ3/x;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, LZ3/x;-><init>(I)V

    iget-object v2, v0, LZ3/x;->d:Ljava/lang/Object;

    check-cast v2, LZ3/x;

    iput-object v1, v2, LZ3/x;->d:Ljava/lang/Object;

    iput-object v1, v0, LZ3/x;->d:Ljava/lang/Object;

    iget-object p0, p0, Lcom/google/common/util/concurrent/v;->c:Ljava/lang/Object;

    check-cast p0, Lcom/google/common/util/concurrent/u;

    iput-object p0, v1, LZ3/x;->c:Ljava/lang/Object;

    invoke-virtual {v0}, LZ3/x;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
