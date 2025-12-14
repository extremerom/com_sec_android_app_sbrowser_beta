.class public final LB0/a;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, LB0/a;->a:I

    iput-object p2, p0, LB0/a;->b:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method

.method private final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Lk0/l;

    sget-object v0, Lk0/n;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget v1, Lk0/n;->d:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lk0/n;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    iget-object p0, p0, LB0/a;->b:Ljava/lang/Object;

    check-cast p0, Lsb/k;

    new-instance v0, Lk0/f;

    invoke-direct {v0, v1, p1, p0}, Lk0/f;-><init>(ILk0/l;Lsb/k;)V

    return-object v0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ljava/lang/Throwable;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, LB0/a;->b:Ljava/lang/Object;

    check-cast v0, Lm1/G;

    iget-object v0, v0, Lm1/G;->g:LQc/A0;

    new-instance v1, Lm1/i;

    invoke-direct {v1, p1}, Lm1/i;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x0

    invoke-virtual {v0, p1, v1}, LQc/A0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    :goto_0
    sget-object p1, Lm1/G;->k:Ljava/lang/Object;

    iget-object p0, p0, LB0/a;->b:Ljava/lang/Object;

    check-cast p0, Lm1/G;

    monitor-enter p1

    :try_start_0
    sget-object v0, Lm1/G;->j:Ljava/util/LinkedHashSet;

    invoke-virtual {p0}, Lm1/G;->c()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget v3, p0, LB0/a;->a:I

    packed-switch v3, :pswitch_data_0

    const-string v0, "it"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LB0/a;->b:Ljava/lang/Object;

    check-cast p0, Lm9/k;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p0, p1}, Lm9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_0
    const-string v0, "it"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LB0/a;->b:Ljava/lang/Object;

    check-cast p0, Lm9/k;

    check-cast p1, Landroid/graphics/PointF;

    invoke-virtual {p0, p1}, Lm9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_1
    invoke-direct {p0, p1}, LB0/a;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-direct {p0, p1}, LB0/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_3
    iget-object p0, p0, LB0/a;->b:Ljava/lang/Object;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsb/k;

    invoke-interface {v3, p1}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_4
    check-cast p1, Ljava/io/IOException;

    const-string v0, "it"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lid/b;->a:[B

    iget-object p0, p0, LB0/a;->b:Ljava/lang/Object;

    check-cast p0, Ljd/g;

    iput-boolean v2, p0, Ljd/g;->i:Z

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_5
    iget-object p0, p0, LB0/a;->b:Ljava/lang/Object;

    check-cast p0, Lj0/h;

    iget-object p0, p0, Lj0/h;->c:Lj0/k;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lj0/k;->d(Ljava/lang/Object;)Z

    move-result v2

    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_6
    check-cast p1, Ljava/lang/Throwable;

    iget-object p0, p0, LB0/a;->b:Ljava/lang/Object;

    check-cast p0, Lf3/o;

    if-nez p1, :cond_3

    iget-object p0, p0, Lf3/o;->a:Lq3/j;

    invoke-virtual {p0}, Lq3/h;->isDone()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Failed requirement."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-eqz v0, :cond_4

    iget-object p0, p0, Lf3/o;->a:Lq3/j;

    invoke-virtual {p0, v2}, Lq3/h;->cancel(Z)Z

    goto :goto_2

    :cond_4
    iget-object p0, p0, Lf3/o;->a:Lq3/j;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    move-object p1, v0

    :goto_1
    invoke-virtual {p0, p1}, Lq3/j;->k(Ljava/lang/Throwable;)Z

    :goto_2
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_7
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, LB0/a;->b:Ljava/lang/Object;

    check-cast p0, Ldd/h;

    iget-object v1, p0, Ldd/h;->e:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ldd/h;->h(I)Lbd/d;

    move-result-object p0

    invoke-interface {p0}, Lbd/d;->i()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_8
    check-cast p1, Ljava/lang/Throwable;

    iget-object p0, p0, LB0/a;->b:Ljava/lang/Object;

    check-cast p0, LNc/j0;

    invoke-interface {p0, v0}, LNc/j0;->a(Ljava/util/concurrent/CancellationException;)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_9
    check-cast p1, Ljava/lang/Throwable;

    const-string p1, "GWT:InteractiveFrameClock"

    iget-object v1, p0, LB0/a;->b:Ljava/lang/Object;

    check-cast v1, Lc2/j;

    iget v1, v1, Lc2/j;->b:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Resetting frame rate to baseline at "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "hz"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "msg"

    invoke-static {v1, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Le7/a;->a:Ljava/lang/String;

    const-string v3, " "

    invoke-static {v2, v3, v1, p1}, Lw2/j;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, LB0/a;->b:Ljava/lang/Object;

    check-cast p0, Lc2/j;

    iget-object p1, p0, Lc2/j;->g:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget v1, p0, Lc2/j;->b:I

    iput v1, p0, Lc2/j;->h:I

    iput-object v0, p0, Lc2/j;->j:LNc/k;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0

    :pswitch_a
    iget-object p0, p0, LB0/a;->b:Ljava/lang/Object;

    check-cast p0, La0/u;

    invoke-virtual {p0, p1}, La0/u;->w(Ljava/lang/Object;)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_b
    check-cast p1, Ljava/lang/Throwable;

    const-string v1, "Recomposer effect job completed"

    invoke-static {v1, p1}, LNc/E;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/concurrent/CancellationException;

    move-result-object v1

    iget-object p0, p0, LB0/a;->b:Ljava/lang/Object;

    check-cast p0, La0/p0;

    iget-object v2, p0, La0/p0;->c:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    iget-object v3, p0, La0/p0;->d:LNc/j0;

    if-eqz v3, :cond_8

    iget-object v4, p0, La0/p0;->s:LQc/A0;

    sget-object v5, La0/j0;->ShuttingDown:La0/j0;

    invoke-virtual {v4, v5}, LQc/A0;->j(Ljava/lang/Object;)V

    iget-boolean v4, p0, La0/p0;->q:Z

    if-nez v4, :cond_6

    invoke-interface {v3, v1}, LNc/j0;->a(Ljava/util/concurrent/CancellationException;)V

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_6

    :cond_6
    iget-object v1, p0, La0/p0;->p:LNc/k;

    if-eqz v1, :cond_7

    goto :goto_4

    :cond_7
    :goto_3
    move-object v1, v0

    :goto_4
    iput-object v0, p0, La0/p0;->p:LNc/k;

    new-instance v0, LC1/j;

    const/16 v4, 0xd

    invoke-direct {v0, v4, p0, p1}, LC1/j;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, v0}, LNc/j0;->q(Lsb/k;)LNc/P;

    move-object v0, v1

    goto :goto_5

    :cond_8
    iput-object v1, p0, La0/p0;->e:Ljava/lang/Throwable;

    iget-object p0, p0, La0/p0;->s:LQc/A0;

    sget-object p1, La0/j0;->ShutDown:La0/j0;

    invoke-virtual {p0, p1}, LQc/A0;->j(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_5
    monitor-exit v2

    if-eqz v0, :cond_9

    sget-object p0, Ldb/r;->a:Ldb/r;

    invoke-virtual {v0, p0}, LNc/k;->resumeWith(Ljava/lang/Object;)V

    :cond_9
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :goto_6
    monitor-exit v2

    throw p0

    :pswitch_c
    check-cast p1, Ljava/lang/Throwable;

    sget-object p1, La0/B;->b:Landroid/view/Choreographer;

    iget-object p0, p0, LB0/a;->b:Ljava/lang/Object;

    check-cast p0, La0/A;

    invoke-virtual {p1, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_d
    check-cast p1, Ljava/lang/Throwable;

    iget-object p0, p0, LB0/a;->b:Ljava/lang/Object;

    check-cast p0, LYc/i;

    invoke-virtual {p0}, LYc/i;->e()V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_e
    const-string v0, "needle"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LB0/a;->b:Ljava/lang/Object;

    check-cast p0, LV/t;

    iget-object p0, p0, LV/t;->a:LW/a;

    invoke-virtual {p0}, LW/a;->getItemCount()I

    move-result v0

    :goto_7
    if-ge v1, v0, :cond_b

    invoke-virtual {p0, v1}, LW/a;->c(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, p1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    goto :goto_8

    :cond_a
    add-int/2addr v1, v2

    goto :goto_7

    :cond_b
    const/4 v1, -0x1

    :goto_8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_f
    check-cast p1, La0/H;

    const-string v0, "$this$DisposableEffect"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, LW/f;

    iget-object p0, p0, LB0/a;->b:Ljava/lang/Object;

    check-cast p0, LW/l;

    invoke-direct {p1, v2, p0}, LW/f;-><init>(ILjava/lang/Object;)V

    return-object p1

    :pswitch_10
    check-cast p1, La0/H;

    const-string v0, "$this$DisposableEffect"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, LW/f;

    iget-object p0, p0, LB0/a;->b:Ljava/lang/Object;

    check-cast p0, LW/g;

    invoke-direct {p1, v1, p0}, LW/f;-><init>(ILjava/lang/Object;)V

    return-object p1

    :pswitch_11
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    neg-float p1, p1

    const/4 v0, 0x0

    cmpg-float v3, p1, v0

    iget-object p0, p0, LB0/a;->b:Ljava/lang/Object;

    check-cast p0, LV/J;

    if-gez v3, :cond_c

    invoke-virtual {p0}, LV/J;->c()Z

    move-result v3

    if-eqz v3, :cond_d

    :cond_c
    cmpl-float v3, p1, v0

    if-lez v3, :cond_e

    invoke-virtual {p0}, LV/J;->b()Z

    move-result v3

    if-nez v3, :cond_e

    :cond_d
    move p1, v0

    goto/16 :goto_c

    :cond_e
    iget v3, p0, LV/J;->d:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x3f000000    # 0.5f

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_18

    iget v3, p0, LV/J;->d:F

    add-float/2addr v3, p1

    iput v3, p0, LV/J;->d:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v4

    if-lez v3, :cond_16

    iget v3, p0, LV/J;->d:F

    iget-object v5, p0, LV/J;->k:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v5}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/node/a;

    if-eqz v5, :cond_f

    invoke-virtual {v5}, Landroidx/compose/ui/node/a;->f()V

    :cond_f
    iget-boolean v5, p0, LV/J;->g:Z

    if-eqz v5, :cond_16

    iget v6, p0, LV/J;->d:F

    sub-float/2addr v3, v6

    if-nez v5, :cond_10

    goto/16 :goto_b

    :cond_10
    iget-object v5, p0, LV/J;->b:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v5}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LV/z;

    invoke-interface {v5}, LV/z;->d()Ljava/util/List;

    move-result-object v6

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_16

    cmpg-float v3, v3, v0

    if-gez v3, :cond_11

    move v1, v2

    :cond_11
    if-eqz v1, :cond_12

    invoke-interface {v5}, LV/z;->d()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lfb/n;->K(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LV/D;

    iget v3, v3, LV/D;->a:I

    add-int/2addr v3, v2

    goto :goto_9

    :cond_12
    invoke-interface {v5}, LV/z;->d()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lfb/n;->C(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LV/D;

    iget v3, v3, LV/D;->a:I

    sub-int/2addr v3, v2

    :goto_9
    iget v6, p0, LV/J;->h:I

    if-eq v3, v6, :cond_16

    if-ltz v3, :cond_16

    invoke-interface {v5}, LV/z;->c()I

    move-result v5

    if-ge v3, v5, :cond_16

    iget-boolean v5, p0, LV/J;->j:Z

    if-eq v5, v1, :cond_13

    iget-object v5, p0, LV/J;->i:LW/n;

    if-eqz v5, :cond_13

    invoke-interface {v5}, LW/n;->cancel()V

    :cond_13
    iput-boolean v1, p0, LV/J;->j:Z

    iput v3, p0, LV/J;->h:I

    iget-object v1, p0, LV/J;->o:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LH0/a;

    iget-wide v5, v1, LH0/a;->a:J

    iget-object v1, p0, LV/J;->s:LG5/J2;

    iget-object v1, v1, LG5/J2;->a:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LW/p;

    if-eqz v1, :cond_14

    new-instance v7, LW/o;

    invoke-direct {v7, v3, v5, v6}, LW/o;-><init>(IJ)V

    iget-object v3, v1, LW/p;->e:Lc0/d;

    invoke-virtual {v3, v7}, Lc0/d;->c(Ljava/lang/Object;)V

    iget-boolean v3, v1, LW/p;->h:Z

    if-nez v3, :cond_15

    iput-boolean v2, v1, LW/p;->h:Z

    iget-object v2, v1, LW/p;->d:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_a

    :cond_14
    sget-object v7, LW/c;->a:LW/c;

    :cond_15
    :goto_a
    iput-object v7, p0, LV/J;->i:LW/n;

    :cond_16
    :goto_b
    iget v1, p0, LV/J;->d:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v4

    if-gtz v1, :cond_17

    goto :goto_c

    :cond_17
    iget v1, p0, LV/J;->d:F

    sub-float/2addr p1, v1

    iput v0, p0, LV/J;->d:F

    :goto_c
    neg-float p0, p1

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :cond_18
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "entered drag with non-zero pending scroll: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, LV/J;->d:F

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_12
    check-cast p1, Ljava/lang/Throwable;

    iget-object p0, p0, LB0/a;->b:Ljava/lang/Object;

    check-cast p0, LK0/m;

    invoke-virtual {p0, v1}, LK0/h;->cancel(Z)Z

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_13
    check-cast p1, Lz0/j;

    iget-object p0, p0, LB0/a;->b:Ljava/lang/Object;

    check-cast p0, LS/e;

    iput-object p1, p0, LS/e;->g:Lz0/j;

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_14
    check-cast p1, Ljava/lang/Throwable;

    iget-object p0, p0, LB0/a;->b:Ljava/lang/Object;

    check-cast p0, LNc/m0;

    invoke-virtual {p0}, LNc/t0;->b()Z

    move-result p1

    if-eqz p1, :cond_19

    new-instance p1, LRc/a;

    invoke-direct {p1, p0}, LRc/a;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, LNc/t0;->C(Ljava/util/concurrent/CancellationException;)V

    :cond_19
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_15
    check-cast p1, LH0/j;

    iget-wide v3, p1, LH0/j;->a:J

    invoke-static {v3, v4}, LG5/V2;->h(J)J

    move-result-wide v5

    iget-object p0, p0, LB0/a;->b:Ljava/lang/Object;

    check-cast p0, LR/d;

    iget-wide v7, p0, LR/d;->o:J

    sget p1, Lr0/d;->d:I

    cmp-long p1, v5, v7

    if-nez p1, :cond_1a

    move v1, v2

    :cond_1a
    invoke-static {v3, v4}, LG5/V2;->h(J)J

    move-result-wide v5

    iput-wide v5, p0, LR/d;->o:J

    if-nez v1, :cond_1b

    const/16 p1, 0x20

    shr-long v5, v3, p1

    long-to-int p1, v5

    const-wide v5, 0xffffffffL

    and-long v2, v3, v5

    long-to-int v0, v2

    iget-object v2, p0, LR/d;->c:Landroid/widget/EdgeEffect;

    invoke-virtual {v2, p1, v0}, Landroid/widget/EdgeEffect;->setSize(II)V

    iget-object v2, p0, LR/d;->d:Landroid/widget/EdgeEffect;

    invoke-virtual {v2, p1, v0}, Landroid/widget/EdgeEffect;->setSize(II)V

    iget-object v2, p0, LR/d;->e:Landroid/widget/EdgeEffect;

    invoke-virtual {v2, v0, p1}, Landroid/widget/EdgeEffect;->setSize(II)V

    iget-object v2, p0, LR/d;->f:Landroid/widget/EdgeEffect;

    invoke-virtual {v2, v0, p1}, Landroid/widget/EdgeEffect;->setSize(II)V

    iget-object v2, p0, LR/d;->h:Landroid/widget/EdgeEffect;

    invoke-virtual {v2, p1, v0}, Landroid/widget/EdgeEffect;->setSize(II)V

    iget-object v2, p0, LR/d;->i:Landroid/widget/EdgeEffect;

    invoke-virtual {v2, p1, v0}, Landroid/widget/EdgeEffect;->setSize(II)V

    iget-object v2, p0, LR/d;->j:Landroid/widget/EdgeEffect;

    invoke-virtual {v2, v0, p1}, Landroid/widget/EdgeEffect;->setSize(II)V

    iget-object v2, p0, LR/d;->k:Landroid/widget/EdgeEffect;

    invoke-virtual {v2, v0, p1}, Landroid/widget/EdgeEffect;->setSize(II)V

    :cond_1b
    if-nez v1, :cond_1c

    invoke-virtual {p0}, LR/d;->f()V

    invoke-virtual {p0}, LR/d;->e()V

    :cond_1c
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_16
    check-cast p1, LH0/b;

    iget-object p0, p0, LB0/a;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/ui/node/a;

    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/a;->z(LH0/b;)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_17
    check-cast p1, LE0/j;

    iget-object v0, p1, LE0/j;->a:LE0/g;

    new-instance v1, LE0/j;

    iget v3, p1, LE0/j;->b:I

    iget v4, p1, LE0/j;->c:I

    iget-object p1, p1, LE0/j;->d:Ljava/lang/Object;

    invoke-direct {v1, v0, v3, v4, p1}, LE0/j;-><init>(LE0/g;IILjava/lang/Object;)V

    iget-object p0, p0, LB0/a;->b:Ljava/lang/Object;

    check-cast p0, Lo3/t;

    iget-object p1, p0, Lo3/t;->b:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/auth/j;

    new-instance v0, LC1/j;

    invoke-direct {v0, v2, p0, v1}, LC1/j;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object p0, p1, Lcom/google/android/gms/internal/auth/j;->a:Ljava/lang/Object;

    check-cast p0, Lz7/d;

    monitor-enter p0

    :try_start_2
    iget-object v2, p1, Lcom/google/android/gms/internal/auth/j;->b:Ljava/lang/Object;

    check-cast v2, LD0/b;

    invoke-virtual {v2, v1}, LD0/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LE0/k;

    if-eqz v2, :cond_1e

    iget-boolean v3, v2, LE0/k;->b:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v3, :cond_1d

    monitor-exit p0

    goto :goto_f

    :cond_1d
    :try_start_3
    iget-object v2, p1, Lcom/google/android/gms/internal/auth/j;->b:Ljava/lang/Object;

    check-cast v2, LD0/b;

    invoke-virtual {v2, v1}, LD0/b;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LE0/k;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_d

    :catchall_2
    move-exception p1

    goto :goto_11

    :cond_1e
    :goto_d
    monitor-exit p0

    :try_start_4
    new-instance p0, LC1/j;

    const/4 v2, 0x2

    invoke-direct {p0, v2, p1, v1}, LC1/j;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, p0}, LC1/j;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, LE0/k;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    iget-object p0, p1, Lcom/google/android/gms/internal/auth/j;->a:Ljava/lang/Object;

    check-cast p0, Lz7/d;

    monitor-enter p0

    :try_start_5
    iget-object v0, p1, Lcom/google/android/gms/internal/auth/j;->b:Ljava/lang/Object;

    check-cast v0, LD0/b;

    invoke-virtual {v0, v1}, LD0/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1f

    iget-boolean v0, v2, LE0/k;->b:Z

    if-eqz v0, :cond_1f

    iget-object p1, p1, Lcom/google/android/gms/internal/auth/j;->b:Ljava/lang/Object;

    check-cast p1, LD0/b;

    invoke-virtual {p1, v1, v2}, LD0/b;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_e

    :catchall_3
    move-exception p1

    goto :goto_10

    :cond_1f
    :goto_e
    monitor-exit p0

    :goto_f
    iget-object p0, v2, LE0/k;->a:Ljava/lang/Object;

    return-object p0

    :goto_10
    monitor-exit p0

    throw p1

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Could not load font"

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :goto_11
    monitor-exit p0

    throw p1

    :pswitch_18
    check-cast p1, Lz4/b;

    const-string v0, "$this$appFunctionDocument"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LB0/a;->b:Ljava/lang/Object;

    check-cast p0, Landroid/app/PendingIntent;

    sget-object v0, Lz4/c;->c:Lz4/c;

    const-string v0, "property/androidAppfunctionsReturnValue"

    iget-object p1, p1, Lz4/b;->b:Landroid/os/Bundle;

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_19
    check-cast p1, Lz4/b;

    const-string v0, "$this$appFunctionDocument"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LB0/a;->b:Ljava/lang/Object;

    check-cast p0, Landroid/widget/RemoteViews;

    sget-object v0, Lz4/c;->c:Lz4/c;

    const-string v0, "property/androidAppfunctionsReturnValue"

    iget-object p1, p1, Lz4/b;->b:Landroid/os/Bundle;

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_1a
    check-cast p1, Ls0/a;

    iget-object p0, p0, LB0/a;->b:Ljava/lang/Object;

    check-cast p0, LB0/O;

    iget-object p1, p0, LB0/O;->i:Landroidx/compose/ui/node/a;

    iget-object p1, p1, Landroidx/compose/ui/node/a;->s:LB0/G;

    iget-object p1, p1, LB0/G;->m:LB0/F;

    iget-boolean p1, p1, LB0/F;->l:Z

    if-nez p1, :cond_20

    iput-boolean v2, p0, LB0/O;->u:Z

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :cond_20
    iget-object p0, p0, LB0/O;->i:Landroidx/compose/ui/node/a;

    invoke-static {p0}, LB0/d;->o(Landroidx/compose/ui/node/a;)LB0/P;

    throw v0

    :pswitch_1b
    check-cast p1, Lm0/k;

    iget-object p0, p0, LB0/a;->b:Ljava/lang/Object;

    check-cast p0, Lc0/d;

    invoke-virtual {p0, p1}, Lc0/d;->c(Ljava/lang/Object;)V

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :pswitch_1c
    check-cast p1, LB0/b;

    invoke-interface {p1}, LB0/b;->k()Z

    move-result v0

    if-nez v0, :cond_21

    goto/16 :goto_15

    :cond_21
    invoke-interface {p1}, LB0/b;->a()LB0/z;

    move-result-object v0

    iget-boolean v0, v0, LB0/z;->b:Z

    if-eqz v0, :cond_22

    invoke-interface {p1}, LB0/b;->i()V

    :cond_22
    invoke-interface {p1}, LB0/b;->a()LB0/z;

    move-result-object v0

    iget-object v0, v0, LB0/z;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    iget-object v2, p0, LB0/a;->b:Ljava/lang/Object;

    check-cast v2, LB0/z;

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lz0/i;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-interface {p1}, LB0/b;->n()LB0/m;

    move-result-object v4

    invoke-static {v2, v3, v1, v4}, LB0/z;->a(LB0/z;Lz0/i;ILB0/O;)V

    goto :goto_12

    :cond_23
    invoke-interface {p1}, LB0/b;->n()LB0/m;

    move-result-object p0

    iget-object p0, p0, LB0/O;->k:LB0/O;

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    :goto_13
    iget-object p1, v2, LB0/z;->a:Lz0/G;

    invoke-interface {p1}, LB0/b;->n()LB0/m;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_25

    invoke-virtual {v2, p0}, LB0/z;->b(LB0/O;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_14
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz0/i;

    invoke-virtual {v2, p0, v0}, LB0/z;->c(LB0/O;Lz0/i;)I

    move-result v1

    invoke-static {v2, v0, v1, p0}, LB0/z;->a(LB0/z;Lz0/i;ILB0/O;)V

    goto :goto_14

    :cond_24
    iget-object p0, p0, LB0/O;->k:LB0/O;

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    goto :goto_13

    :cond_25
    :goto_15
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

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
