.class public final LC1/j;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, LC1/j;->a:I

    iput-object p2, p0, LC1/j;->b:Ljava/lang/Object;

    iput-object p3, p0, LC1/j;->c:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget v0, p0, LC1/j;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Throwable;

    iget-object v0, p0, LC1/j;->b:Ljava/lang/Object;

    check-cast v0, LK0/i;

    if-eqz p1, :cond_1

    instance-of p0, p1, Ljava/util/concurrent/CancellationException;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p0, :cond_0

    iput-boolean v2, v0, LK0/i;->d:Z

    iget-object p0, v0, LK0/i;->b:LK0/l;

    if-eqz p0, :cond_2

    iget-object p0, p0, LK0/l;->b:LK0/k;

    invoke-virtual {p0, v2}, LK0/h;->cancel(Z)Z

    move-result p0

    if-eqz p0, :cond_2

    iput-object v1, v0, LK0/i;->a:Ljava/lang/Object;

    iput-object v1, v0, LK0/i;->b:LK0/l;

    iput-object v1, v0, LK0/i;->c:LK0/m;

    goto :goto_0

    :cond_0
    iput-boolean v2, v0, LK0/i;->d:Z

    iget-object p0, v0, LK0/i;->b:LK0/l;

    if-eqz p0, :cond_2

    iget-object p0, p0, LK0/l;->b:LK0/k;

    invoke-virtual {p0, p1}, LK0/h;->n(Ljava/lang/Throwable;)Z

    move-result p0

    if-eqz p0, :cond_2

    iput-object v1, v0, LK0/i;->a:Ljava/lang/Object;

    iput-object v1, v0, LK0/i;->b:LK0/l;

    iput-object v1, v0, LK0/i;->c:LK0/m;

    goto :goto_0

    :cond_1
    iget-object p0, p0, LC1/j;->c:Ljava/lang/Object;

    check-cast p0, LNc/I;

    invoke-virtual {p0}, LNc/t0;->K()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, LK0/i;->a(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_0
    check-cast p1, Lv2/s;

    if-eqz p1, :cond_3

    iget-object v0, p1, Lv2/s;->d:Lv2/O;

    if-nez v0, :cond_4

    :cond_3
    sget-object v0, Lv2/O;->d:Lv2/O;

    :cond_4
    if-eqz p1, :cond_5

    iget-object v1, p1, Lv2/s;->e:Lv2/O;

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, LC1/j;->b:Ljava/lang/Object;

    check-cast v2, Lv2/P;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lv2/M;->c:Lv2/M;

    const-string v4, "loadType"

    invoke-static {v2, v4}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lv2/N;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v4, v2

    const/4 v4, 0x1

    const/4 v5, 0x3

    const/4 v6, 0x0

    if-eq v2, v4, :cond_8

    const/4 v4, 0x2

    if-eq v2, v4, :cond_7

    if-ne v2, v5, :cond_6

    const/4 v2, 0x6

    invoke-static {v0, v3, v6, v6, v2}, Lv2/O;->a(Lv2/O;Lv2/M;Lv2/M;Lv2/M;I)Lv2/O;

    move-result-object v0

    goto :goto_2

    :cond_6
    new-instance p0, LI5/b;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_7
    const/4 v2, 0x5

    invoke-static {v0, v6, v3, v6, v2}, Lv2/O;->a(Lv2/O;Lv2/M;Lv2/M;Lv2/M;I)Lv2/O;

    move-result-object v0

    goto :goto_2

    :cond_8
    invoke-static {v0, v6, v6, v3, v5}, Lv2/O;->a(Lv2/O;Lv2/M;Lv2/M;Lv2/M;I)Lv2/O;

    move-result-object v0

    :goto_2
    iget-object p0, p0, LC1/j;->c:Ljava/lang/Object;

    check-cast p0, LZ3/x;

    invoke-static {p0, p1, v0, v1}, LZ3/x;->j(LZ3/x;Lv2/s;Lv2/O;Lv2/O;)Lv2/s;

    move-result-object p0

    return-object p0

    :pswitch_1
    move-object v0, p1

    check-cast v0, Lz0/F;

    iget-object p1, p0, LC1/j;->c:Ljava/lang/Object;

    check-cast p1, Ls0/h;

    iget-object v4, p1, Ls0/h;->A:Lm9/g;

    iget-object p0, p0, LC1/j;->b:Ljava/lang/Object;

    move-object v1, p0

    check-cast v1, Lz0/G;

    const/4 v2, 0x0

    const/4 v5, 0x4

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lz0/F;->f(Lz0/F;Lz0/G;IILm9/g;I)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_2
    check-cast p1, Landroid/animation/ValueAnimator;

    const-string v0, "it"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LC1/j;->b:Ljava/lang/Object;

    check-cast v0, Ltb/v;

    iget-wide v0, v0, Ltb/v;->a:J

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p0, p0, LC1/j;->c:Ljava/lang/Object;

    check-cast p0, Ltb/w;

    iget-object p0, p0, Ltb/w;->a:Ljava/lang/Object;

    check-cast p0, Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_3
    move-object v0, p1

    check-cast v0, Ljava/lang/Throwable;

    iget-object p1, p0, LC1/j;->b:Ljava/lang/Object;

    check-cast p1, LB0/a;

    invoke-virtual {p1, v0}, LB0/a;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, LC1/j;->c:Ljava/lang/Object;

    move-object v1, p0

    check-cast v1, Lo3/i;

    iget-object p0, v1, Lo3/i;->c:Ljava/lang/Object;

    check-cast p0, LPc/i;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v0}, LPc/i;->h(ZLjava/lang/Throwable;)Z

    :cond_9
    iget-object p0, v1, Lo3/i;->c:Ljava/lang/Object;

    check-cast p0, LPc/i;

    invoke-virtual {p0}, LPc/i;->n()Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, LPc/o;

    const/4 v2, 0x0

    if-nez p1, :cond_a

    goto :goto_3

    :cond_a
    move-object p0, v2

    :goto_3
    sget-object p1, Ldb/r;->a:Ldb/r;

    if-nez p0, :cond_b

    goto :goto_4

    :cond_b
    sget-object v2, Lm1/q;->a:Lm1/q;

    invoke-virtual {v2, p0, v0}, Lm1/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, p1

    :goto_4
    if-nez v2, :cond_9

    return-object p1

    :pswitch_4
    check-cast p1, Ljava/io/IOException;

    const-string v0, "it"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, LC1/j;->b:Ljava/lang/Object;

    check-cast p1, Ljd/g;

    iget-object p0, p0, LC1/j;->c:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/scloud/lib/setting/e;

    monitor-enter p1

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/scloud/lib/setting/e;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0

    :pswitch_5
    iget-object v0, p0, LC1/j;->c:Ljava/lang/Object;

    check-cast v0, Lsb/k;

    invoke-interface {v0, p1}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object p0, p0, LC1/j;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/lifecycle/W;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/X;->setValue(Ljava/lang/Object;)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_6
    iget-object v0, p0, LC1/j;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/lifecycle/W;

    invoke-virtual {v0}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object v1

    iget-object p0, p0, LC1/j;->c:Ljava/lang/Object;

    check-cast p0, Ltb/s;

    iget-boolean v2, p0, Ltb/s;->a:Z

    if-nez v2, :cond_d

    if-nez v1, :cond_c

    if-nez p1, :cond_d

    :cond_c
    if-eqz v1, :cond_e

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    :cond_d
    const/4 v1, 0x0

    iput-boolean v1, p0, Ltb/s;->a:Z

    invoke-virtual {v0, p1}, Landroidx/lifecycle/X;->setValue(Ljava/lang/Object;)V

    :cond_e
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_7
    iget-object v0, p0, LC1/j;->b:Ljava/lang/Object;

    check-cast v0, La0/u;

    invoke-virtual {v0, p1}, La0/u;->x(Ljava/lang/Object;)V

    iget-object p0, p0, LC1/j;->c:Ljava/lang/Object;

    check-cast p0, LN/v;

    if-eqz p0, :cond_f

    invoke-virtual {p0, p1}, LN/v;->a(Ljava/lang/Object;)Z

    :cond_f
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_8
    check-cast p1, Ljava/lang/Throwable;

    iget-object v0, p0, LC1/j;->b:Ljava/lang/Object;

    check-cast v0, La0/p0;

    iget-object v1, v0, La0/p0;->c:Ljava/lang/Object;

    iget-object p0, p0, LC1/j;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Throwable;

    monitor-enter v1

    const/4 v2, 0x0

    if-eqz p0, :cond_11

    if-eqz p1, :cond_12

    :try_start_1
    instance-of v3, p1, Ljava/util/concurrent/CancellationException;

    if-nez v3, :cond_10

    goto :goto_5

    :cond_10
    move-object p1, v2

    :goto_5
    if-eqz p1, :cond_12

    invoke-static {p0, p1}, LG5/y2;->b(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_6

    :catchall_1
    move-exception p0

    goto :goto_7

    :cond_11
    move-object p0, v2

    :cond_12
    :goto_6
    iput-object p0, v0, La0/p0;->e:Ljava/lang/Throwable;

    iget-object p0, v0, La0/p0;->s:LQc/A0;

    sget-object p1, La0/j0;->ShutDown:La0/j0;

    invoke-virtual {p0, p1}, LQc/A0;->j(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v1

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :goto_7
    monitor-exit v1

    throw p0

    :pswitch_9
    check-cast p1, Ljava/lang/Throwable;

    iget-object p1, p0, LC1/j;->b:Ljava/lang/Object;

    check-cast p1, La0/g;

    iget-object v0, p1, La0/g;->b:Ljava/lang/Object;

    iget-object p0, p0, LC1/j;->c:Ljava/lang/Object;

    check-cast p0, La0/f;

    monitor-enter v0

    :try_start_2
    iget-object v1, p1, La0/g;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p0, p1, La0/g;->d:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_13

    iget-object p0, p1, La0/g;->f:La0/e;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_8

    :catchall_2
    move-exception p0

    goto :goto_9

    :cond_13
    :goto_8
    monitor-exit v0

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :goto_9
    monitor-exit v0

    throw p0

    :pswitch_a
    check-cast p1, La0/H;

    const-string v0, "$this$DisposableEffect"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, LC1/j;->b:Ljava/lang/Object;

    check-cast p1, LW/y;

    iget-object v0, p1, LW/y;->c:Ljava/util/LinkedHashSet;

    iget-object p0, p0, LC1/j;->c:Ljava/lang/Object;

    invoke-interface {v0, p0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    new-instance v0, LS/x;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1, p0}, LS/x;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :pswitch_b
    check-cast p1, Lz0/F;

    const-string v0, "$this$invoke"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LC1/j;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_a
    iget-object v3, p0, LC1/j;->c:Ljava/lang/Object;

    check-cast v3, LV/D;

    if-ge v2, v1, :cond_15

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LV/D;

    if-eq v4, v3, :cond_14

    invoke-virtual {v4, p1}, LV/D;->c(Lz0/F;)V

    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_15
    if-eqz v3, :cond_16

    invoke-virtual {v3, p1}, LV/D;->c(Lz0/F;)V

    :cond_16
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_c
    check-cast p1, Ljava/lang/Throwable;

    iget-object p1, p0, LC1/j;->b:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/CompletableFuture;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CompletableFuture;->cancel(Z)Z

    iget-object p0, p0, LC1/j;->c:Ljava/lang/Object;

    check-cast p0, LSc/a;

    const/4 p1, 0x0

    iput-object p1, p0, LSc/a;->cont:Lib/c;

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_d
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    iget-object p1, p0, LC1/j;->b:Ljava/lang/Object;

    check-cast p1, LS/p0;

    iget v0, p1, LS/p0;->d:F

    const/4 v1, 0x0

    iput v1, p1, LS/p0;->d:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iget-object p0, p0, LC1/j;->c:Ljava/lang/Object;

    check-cast p0, Lsb/k;

    invoke-interface {p0, p1}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_e
    check-cast p1, Lr0/b;

    iget-wide v0, p1, Lr0/b;->a:J

    iget-object p1, p0, LC1/j;->b:Ljava/lang/Object;

    check-cast p1, LS/k0;

    iget-boolean v2, p1, LS/k0;->b:Z

    const/high16 v3, -0x40800000    # -1.0f

    if-eqz v2, :cond_17

    invoke-static {v0, v1, v3}, Lr0/b;->e(JF)J

    move-result-wide v0

    :cond_17
    const/4 v2, 0x2

    iget-object p0, p0, LC1/j;->c:Ljava/lang/Object;

    check-cast p0, LS/N;

    invoke-virtual {p1, p0, v0, v1, v2}, LS/k0;->a(LS/N;JI)J

    move-result-wide v0

    iget-boolean p0, p1, LS/k0;->b:Z

    if-eqz p0, :cond_18

    invoke-static {v0, v1, v3}, Lr0/b;->e(JF)J

    move-result-wide v0

    :cond_18
    new-instance p0, Lr0/b;

    invoke-direct {p0, v0, v1}, Lr0/b;-><init>(J)V

    return-object p0

    :pswitch_f
    check-cast p1, La0/H;

    const-string v0, "$this$DisposableEffect"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, LS/x;

    iget-object v0, p0, LC1/j;->b:Ljava/lang/Object;

    check-cast v0, La0/a0;

    iget-object p0, p0, LC1/j;->c:Ljava/lang/Object;

    check-cast p0, LP7/c;

    const/4 v1, 0x0

    invoke-direct {p1, v1, v0, p0}, LS/x;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :pswitch_10
    check-cast p1, LQ/g;

    const-string v0, "$this$animate"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, LQ/g;->e:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, LC1/j;->c:Ljava/lang/Object;

    check-cast v1, LA7/h;

    iget-object v1, v1, LA7/h;->b:Ljava/lang/Object;

    check-cast v1, Ltb/m;

    iget-object p1, p1, LQ/g;->f:LQ/m;

    invoke-interface {v1, p1}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object p0, p0, LC1/j;->b:Ljava/lang/Object;

    check-cast p0, LB1/i;

    invoke-virtual {p0, v0, p1}, LB1/i;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_11
    check-cast p1, Ljava/lang/Throwable;

    iget-object p1, p0, LC1/j;->b:Ljava/lang/Object;

    check-cast p1, LOc/b;

    iget-object p1, p1, LOc/b;->b:Landroid/os/Handler;

    iget-object p0, p0, LC1/j;->c:Ljava/lang/Object;

    check-cast p0, Lcom/google/common/util/concurrent/v;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_12
    check-cast p1, Lm0/m;

    iget-object v0, p0, LC1/j;->c:Ljava/lang/Object;

    check-cast v0, Lm0/m;

    invoke-interface {p1, v0}, Lm0/m;->g(Lm0/m;)Lm0/m;

    move-result-object p1

    iget-object p0, p0, LC1/j;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/ui/node/a;

    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/a;->B(Lm0/m;)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_13
    check-cast p1, LE0/k;

    iget-object v0, p0, LC1/j;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/auth/j;

    iget-object v1, v0, Lcom/google/android/gms/internal/auth/j;->a:Ljava/lang/Object;

    check-cast v1, Lz7/d;

    iget-object p0, p0, LC1/j;->c:Ljava/lang/Object;

    check-cast p0, LE0/j;

    monitor-enter v1

    :try_start_3
    iget-boolean v2, p1, LE0/k;->b:Z

    if-eqz v2, :cond_19

    iget-object v0, v0, Lcom/google/android/gms/internal/auth/j;->b:Ljava/lang/Object;

    check-cast v0, LD0/b;

    invoke-virtual {v0, p0, p1}, LD0/b;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    :catchall_3
    move-exception p0

    goto :goto_c

    :cond_19
    iget-object p1, v0, Lcom/google/android/gms/internal/auth/j;->b:Ljava/lang/Object;

    check-cast p1, LD0/b;

    invoke-virtual {p1, p0}, LD0/b;->c(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :goto_b
    monitor-exit v1

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :goto_c
    monitor-exit v1

    throw p0

    :pswitch_14
    check-cast p1, Lsb/k;

    iget-object p1, p0, LC1/j;->b:Ljava/lang/Object;

    check-cast p1, Lo3/t;

    iget-object v0, p1, Lo3/t;->c:Ljava/lang/Object;

    check-cast v0, LE0/f;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, LC1/j;->c:Ljava/lang/Object;

    check-cast p0, LE0/j;

    iget-object p1, p1, Lo3/t;->d:Ljava/lang/Object;

    check-cast p1, LF6/e;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x0

    iget v0, p0, LE0/j;->b:I

    invoke-static {v0, p1}, LG5/i2;->d(II)Z

    move-result p1

    const/4 v1, 0x1

    iget-object p0, p0, LE0/j;->a:LE0/g;

    if-eqz p1, :cond_1a

    sget-object p1, LE0/g;->b:LE0/g;

    invoke-static {p0, p1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a

    sget-object p0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    goto :goto_d

    :cond_1a
    sget-object p1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iget p0, p0, LE0/g;->a:I

    invoke-static {v0, v1}, LG5/i2;->d(II)Z

    move-result v0

    invoke-static {p1, p0, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p0

    :goto_d
    new-instance p1, LE0/k;

    invoke-direct {p1, p0, v1}, LE0/k;-><init>(Ljava/lang/Object;Z)V

    return-object p1

    :pswitch_15
    const-string v0, "it"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, LC1/i;

    iget-object v0, p0, LC1/j;->c:Ljava/lang/Object;

    check-cast v0, Lc2/j;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, LC1/i;-><init>(Lc2/j;Lib/c;)V

    iget-object p0, p0, LC1/j;->b:Ljava/lang/Object;

    check-cast p0, LNc/B;

    const/4 v0, 0x3

    invoke-static {p0, v1, v1, p1, v0}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
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
