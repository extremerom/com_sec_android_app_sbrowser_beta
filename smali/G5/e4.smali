.class public final synthetic LG5/e4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p5, p0, LG5/e4;->a:I

    iput-object p1, p0, LG5/e4;->b:Ljava/lang/Object;

    iput-object p2, p0, LG5/e4;->c:Ljava/lang/Object;

    iput-object p3, p0, LG5/e4;->d:Ljava/lang/Object;

    iput-object p4, p0, LG5/e4;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IZ)V
    .locals 0

    iput p5, p0, LG5/e4;->a:I

    iput-object p1, p0, LG5/e4;->e:Ljava/lang/Object;

    iput-object p2, p0, LG5/e4;->b:Ljava/lang/Object;

    iput-object p3, p0, LG5/e4;->c:Ljava/lang/Object;

    iput-object p4, p0, LG5/e4;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget v2, p0, LG5/e4;->a:I

    packed-switch v2, :pswitch_data_0

    iget-object v0, p0, LG5/e4;->c:Ljava/lang/Object;

    check-cast v0, Lt3/j;

    iget-object v2, v0, Lt3/j;->p:LQ6/k;

    :try_start_0
    iget-object v3, p0, LG5/e4;->b:Ljava/lang/Object;

    check-cast v3, Lcom/google/common/util/concurrent/y;

    invoke-interface {v3}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lt3/c;

    invoke-interface {v3}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    iput-object v4, v0, Lt3/j;->b:Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-interface {v4, v2, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catch_0
    move-exception v4

    :try_start_2
    iget-object v5, v0, Lt3/j;->a:Lq3/j;

    invoke-virtual {v5, v4}, Lq3/j;->k(Ljava/lang/Throwable;)Z

    iget-object v4, v0, Lt3/j;->b:Landroid/os/IBinder;
    :try_end_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz v4, :cond_0

    :try_start_3
    invoke-interface {v4, v2, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_3
    .catch Ljava/util/NoSuchElementException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2

    :catch_1
    :cond_0
    :goto_0
    :try_start_4
    iget-object v1, p0, LG5/e4;->e:Ljava/lang/Object;

    check-cast v1, Lt3/i;

    iget-object v1, v1, Lt3/i;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lc5/A;

    const/16 v4, 0xe

    invoke-direct {v2, v4, p0, v3}, Lc5/A;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_4
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception p0

    invoke-static {}, Lf3/u;->d()Lf3/u;

    move-result-object v1

    sget-object v2, Lt3/i;->e:Ljava/lang/String;

    const-string v3, "Unable to bind to service"

    invoke-virtual {v1, v2, v3, p0}, Lf3/u;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v0, p0}, Lt3/g;->a(Lt3/f;Ljava/lang/Throwable;)V

    :goto_1
    return-void

    :pswitch_0
    iget-object v1, p0, LG5/e4;->d:Ljava/lang/Object;

    check-cast v1, Lq3/j;

    const-string v2, "Ignoring setProgressAsync(...). WorkSpec ("

    iget-object v3, p0, LG5/e4;->b:Ljava/lang/Object;

    check-cast v3, Ljava/util/UUID;

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lf3/u;->d()Lf3/u;

    move-result-object v5

    sget-object v6, Lp3/t;->b:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Updating progress for "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, LG5/e4;->c:Ljava/lang/Object;

    check-cast v3, Lf3/i;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lf3/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, LG5/e4;->e:Ljava/lang/Object;

    check-cast p0, Lp3/t;

    iget-object p0, p0, Lp3/t;->a:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {p0}, LJ2/U;->beginTransaction()V

    :try_start_5
    invoke-virtual {p0}, Landroidx/work/impl/WorkDatabase;->h()Lo3/r;

    move-result-object v5

    invoke-virtual {v5, v4}, Lo3/r;->m(Ljava/lang/String;)Lo3/q;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v5, v5, Lo3/q;->b:Lf3/E;

    sget-object v7, Lf3/E;->RUNNING:Lf3/E;

    if-ne v5, v7, :cond_1

    new-instance v2, Lo3/m;

    invoke-direct {v2, v4, v3}, Lo3/m;-><init>(Ljava/lang/String;Lf3/i;)V

    invoke-virtual {p0}, Landroidx/work/impl/WorkDatabase;->g()Lo3/n;

    move-result-object v3

    iget-object v4, v3, Lo3/n;->a:Ljava/lang/Object;

    check-cast v4, Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v4}, LJ2/U;->assertNotSuspendingTransaction()V

    invoke-virtual {v4}, LJ2/U;->beginTransaction()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    iget-object v3, v3, Lo3/n;->b:Ljava/lang/Object;

    check-cast v3, Lo3/b;

    invoke-virtual {v3, v2}, Lo3/b;->x(Ljava/lang/Object;)V

    invoke-virtual {v4}, LJ2/U;->setTransactionSuccessful()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    invoke-virtual {v4}, LJ2/U;->endTransaction()V

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-virtual {v4}, LJ2/U;->endTransaction()V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_4

    :cond_1
    invoke-static {}, Lf3/u;->d()Lf3/u;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") is not in a RUNNING state."

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v6, v2}, Lf3/u;->g(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    invoke-virtual {v1, v0}, Lq3/j;->j(Ljava/lang/Object;)Z

    invoke-virtual {p0}, LJ2/U;->setTransactionSuccessful()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :goto_3
    invoke-virtual {p0}, LJ2/U;->endTransaction()V

    goto :goto_5

    :cond_2
    :try_start_8
    const-string v0, "Calls to setProgressAsync() must complete before a ListenableWorker signals completion of work by returning an instance of Result."

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :goto_4
    :try_start_9
    invoke-static {}, Lf3/u;->d()Lf3/u;

    move-result-object v2

    sget-object v3, Lp3/t;->b:Ljava/lang/String;

    const-string v4, "Error updating Worker progress"

    invoke-virtual {v2, v3, v4, v0}, Lf3/u;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v0}, Lq3/j;->k(Ljava/lang/Throwable;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_3

    :goto_5
    return-void

    :catchall_2
    move-exception v0

    invoke-virtual {p0}, LJ2/U;->endTransaction()V

    throw v0

    :pswitch_1
    iget-object v0, p0, LG5/e4;->c:Ljava/lang/Object;

    check-cast v0, Lf1/l0;

    iget-object v1, p0, LG5/e4;->d:Ljava/lang/Object;

    check-cast v1, Lf1/c0;

    iget-object v2, p0, LG5/e4;->b:Ljava/lang/Object;

    check-cast v2, Landroid/view/View;

    invoke-static {v2, v0, v1}, Lf1/h0;->h(Landroid/view/View;Lf1/l0;Lf1/c0;)V

    iget-object p0, p0, LG5/e4;->e:Ljava/lang/Object;

    check-cast p0, Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :pswitch_2
    iget-object v1, p0, LG5/e4;->c:Ljava/lang/Object;

    check-cast v1, LNc/k;

    :try_start_a
    iget-object v2, p0, LG5/e4;->b:Ljava/lang/Object;

    check-cast v2, Lib/h;

    sget-object v3, Lib/d;->a:Lib/d;

    invoke-interface {v2, v3}, Lib/h;->minusKey(Lib/g;)Lib/h;

    move-result-object v2

    new-instance v3, LJ2/V;

    iget-object v4, p0, LG5/e4;->d:Ljava/lang/Object;

    check-cast v4, LJ2/U;

    iget-object p0, p0, LG5/e4;->e:Ljava/lang/Object;

    check-cast p0, LJ2/W;

    invoke-direct {v3, v4, v1, p0, v0}, LJ2/V;-><init>(LJ2/U;LNc/k;LJ2/W;Lib/c;)V

    invoke-static {v2, v3}, LNc/E;->D(Lib/h;Lsb/n;)Ljava/lang/Object;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_6

    :catchall_3
    move-exception p0

    invoke-virtual {v1, p0}, LNc/k;->i(Ljava/lang/Throwable;)Z

    :goto_6
    return-void

    :pswitch_3
    iget-object v0, p0, LG5/e4;->b:Ljava/lang/Object;

    check-cast v0, LG5/f4;

    iget-object v2, p0, LG5/e4;->c:Ljava/lang/Object;

    check-cast v2, LG5/g4;

    iget-object v3, p0, LG5/e4;->d:Ljava/lang/Object;

    check-cast v3, LG5/O2;

    iget-object p0, p0, LG5/e4;->e:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v2, LG5/g4;->c:Ljava/lang/Object;

    check-cast v4, Lo3/i;

    iput-object v3, v4, Lo3/i;->b:Ljava/lang/Object;

    iget-object v3, v4, Lo3/i;->a:Ljava/lang/Object;

    check-cast v3, LG5/J3;

    if-eqz v3, :cond_3

    sget v4, LG5/j3;->a:I

    iget-object v3, v3, LG5/J3;->d:Ljava/lang/String;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    const-string v3, "NA"

    :cond_4
    new-instance v4, LG5/I3;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iget-object v5, v0, LG5/f4;->a:Ljava/lang/String;

    iput-object v5, v4, LG5/I3;->a:Ljava/lang/String;

    iget-object v5, v0, LG5/f4;->b:Ljava/lang/String;

    iput-object v5, v4, LG5/I3;->b:Ljava/lang/String;

    const-class v5, LG5/f4;

    monitor-enter v5

    :try_start_b
    sget-object v6, LG5/f4;->j:LG5/o4;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    if-eqz v6, :cond_5

    monitor-exit v5

    goto :goto_a

    :cond_5
    :try_start_c
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v6

    new-instance v7, Lb1/e;

    new-instance v8, Lb1/f;

    invoke-direct {v8, v6}, Lb1/f;-><init>(Landroid/os/LocaleList;)V

    invoke-direct {v7, v8}, Lb1/e;-><init>(Lb1/f;)V

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    move-object v8, v6

    move v6, v1

    :goto_7
    iget-object v9, v7, Lb1/e;->a:Lb1/f;

    iget-object v9, v9, Lb1/f;->a:Landroid/os/LocaleList;

    invoke-virtual {v9}, Landroid/os/LocaleList;->size()I

    move-result v9

    if-ge v1, v9, :cond_9

    iget-object v9, v7, Lb1/e;->a:Lb1/f;

    iget-object v9, v9, Lb1/f;->a:Landroid/os/LocaleList;

    invoke-virtual {v9, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v9

    sget-object v10, LQ7/c;->a:Lcom/google/android/gms/internal/auth/j;

    invoke-virtual {v9}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v10, v6, 0x1

    array-length v11, v8

    if-ge v11, v10, :cond_8

    shr-int/lit8 v12, v11, 0x1

    add-int/2addr v11, v12

    add-int/lit8 v11, v11, 0x1

    if-ge v11, v10, :cond_6

    invoke-static {v6}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v11

    add-int/2addr v11, v11

    :cond_6
    if-gez v11, :cond_7

    const v11, 0x7fffffff

    :cond_7
    invoke-static {v8, v11}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v8

    :cond_8
    aput-object v9, v8, v6

    add-int/lit8 v1, v1, 0x1

    move v6, v10

    goto :goto_7

    :cond_9
    sget-object v1, LG5/m4;->b:LG5/k4;

    if-nez v6, :cond_a

    sget-object v1, LG5/o4;->e:LG5/o4;

    :goto_8
    move-object v6, v1

    goto :goto_9

    :cond_a
    new-instance v1, LG5/o4;

    invoke-direct {v1, v6, v8}, LG5/o4;-><init>(I[Ljava/lang/Object;)V

    goto :goto_8

    :goto_9
    sput-object v6, LG5/f4;->j:LG5/o4;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    monitor-exit v5

    :goto_a
    iput-object v6, v4, LG5/I3;->e:LG5/o4;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v1, v4, LG5/I3;->h:Ljava/lang/Boolean;

    iput-object v3, v4, LG5/I3;->d:Ljava/lang/String;

    iput-object p0, v4, LG5/I3;->c:Ljava/lang/String;

    iget-object p0, v0, LG5/f4;->f:LR5/p;

    invoke-virtual {p0}, LR5/p;->l()Z

    move-result p0

    if-eqz p0, :cond_b

    iget-object p0, v0, LG5/f4;->f:LR5/p;

    invoke-virtual {p0}, LR5/p;->i()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_b

    :cond_b
    iget-object p0, v0, LG5/f4;->d:LQ7/h;

    invoke-virtual {p0}, LQ7/h;->a()Ljava/lang/String;

    move-result-object p0

    :goto_b
    iput-object p0, v4, LG5/I3;->f:Ljava/lang/String;

    const/16 p0, 0xa

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, v4, LG5/I3;->j:Ljava/lang/Integer;

    iget p0, v0, LG5/f4;->h:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, v4, LG5/I3;->k:Ljava/lang/Integer;

    iput-object v4, v2, LG5/g4;->d:Ljava/lang/Object;

    iget-object p0, v0, LG5/f4;->c:LG5/d4;

    invoke-virtual {p0, v2}, LG5/d4;->a(LG5/g4;)V

    return-void

    :catchall_4
    move-exception p0

    :try_start_d
    monitor-exit v5
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
