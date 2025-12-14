.class public final La0/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La0/r;


# instance fields
.field public final a:La0/s;

.field public final b:LJ2/i0;

.field public final c:Ljava/util/concurrent/atomic/AtomicReference;

.field public final d:Ljava/lang/Object;

.field public final e:LN/u;

.field public final f:La0/w0;

.field public final g:LB3/c;

.field public final h:LN/v;

.field public final i:LN/v;

.field public final j:LB3/c;

.field public final k:Lb0/a;

.field public final l:Lb0/a;

.field public final m:LB3/c;

.field public n:LB3/c;

.field public o:Z

.field public final p:La0/x;

.field public final q:La0/q;

.field public r:Z


# direct methods
.method public constructor <init>(La0/s;LJ2/i0;)V
    .locals 10

    const/16 v0, 0xe

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La0/u;->a:La0/s;

    iput-object p2, p0, La0/u;->b:LJ2/i0;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, La0/u;->c:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, La0/u;->d:Ljava/lang/Object;

    new-instance v1, LN/v;

    invoke-direct {v1}, LN/v;-><init>()V

    new-instance v6, LN/u;

    invoke-direct {v6, v1}, LN/u;-><init>(LN/v;)V

    iput-object v6, p0, La0/u;->e:LN/u;

    new-instance v5, La0/w0;

    invoke-direct {v5}, La0/w0;-><init>()V

    invoke-virtual {p1}, La0/s;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, LN/q;

    invoke-direct {v1}, LN/q;-><init>()V

    iput-object v1, v5, La0/w0;->j:LN/q;

    :cond_0
    invoke-virtual {p1}, La0/s;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v5, La0/w0;->i:Ljava/util/HashMap;

    :cond_1
    iput-object v5, p0, La0/u;->f:La0/w0;

    new-instance v1, LB3/c;

    invoke-direct {v1, v0}, LB3/c;-><init>(I)V

    iput-object v1, p0, La0/u;->g:LB3/c;

    new-instance v1, LN/v;

    invoke-direct {v1}, LN/v;-><init>()V

    iput-object v1, p0, La0/u;->h:LN/v;

    new-instance v1, LN/v;

    invoke-direct {v1}, LN/v;-><init>()V

    iput-object v1, p0, La0/u;->i:LN/v;

    new-instance v1, LB3/c;

    invoke-direct {v1, v0}, LB3/c;-><init>(I)V

    iput-object v1, p0, La0/u;->j:LB3/c;

    new-instance v7, Lb0/a;

    invoke-direct {v7}, Lb0/a;-><init>()V

    iput-object v7, p0, La0/u;->k:Lb0/a;

    new-instance v8, Lb0/a;

    invoke-direct {v8}, Lb0/a;-><init>()V

    iput-object v8, p0, La0/u;->l:Lb0/a;

    new-instance v1, LB3/c;

    invoke-direct {v1, v0}, LB3/c;-><init>(I)V

    iput-object v1, p0, La0/u;->m:LB3/c;

    new-instance v1, LB3/c;

    invoke-direct {v1, v0}, LB3/c;-><init>(I)V

    iput-object v1, p0, La0/u;->n:LB3/c;

    new-instance v0, La0/x;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v0, La0/x;->a:Z

    iput-object v0, p0, La0/u;->p:La0/x;

    new-instance v0, La0/q;

    move-object v2, v0

    move-object v3, p2

    move-object v4, p1

    move-object v9, p0

    invoke-direct/range {v2 .. v9}, La0/q;-><init>(LJ2/i0;La0/s;La0/w0;LN/u;Lb0/a;Lb0/a;La0/u;)V

    invoke-virtual {p1, v0}, La0/s;->k(La0/q;)V

    iput-object v0, p0, La0/u;->q:La0/q;

    instance-of p0, p1, La0/p0;

    sget p0, La0/i;->a:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    iget-object v0, p0, La0/u;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, La0/u;->q:La0/q;

    iget-boolean v2, v1, La0/q;->E:Z

    const/4 v3, 0x0

    if-nez v2, :cond_6

    iget-boolean v2, p0, La0/u;->r:Z

    if-nez v2, :cond_5

    const/4 v2, 0x1

    iput-boolean v2, p0, La0/u;->r:Z

    sget v4, La0/i;->a:I

    iget-object v1, v1, La0/q;->K:Lb0/a;

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, La0/u;->f(Lb0/a;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_4

    :cond_0
    :goto_0
    iget-object v1, p0, La0/u;->f:La0/w0;

    iget v1, v1, La0/w0;->b:I

    const/4 v4, 0x0

    if-lez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v4

    :goto_1
    if-nez v1, :cond_2

    iget-object v5, p0, La0/u;->e:LN/u;

    iget-object v5, v5, LN/u;->a:LN/v;

    invoke-virtual {v5}, LN/v;->g()Z

    move-result v5

    if-nez v5, :cond_4

    :cond_2
    new-instance v5, LB0/M;

    iget-object v6, p0, La0/u;->e:LN/u;

    invoke-direct {v5, v6}, LB0/M;-><init>(LN/u;)V

    if-eqz v1, :cond_3

    iget-object v1, p0, La0/u;->f:La0/w0;

    invoke-virtual {v1}, La0/w0;->m()La0/y0;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {v1, v5}, La0/d;->J(La0/y0;LB0/M;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v1, v2}, La0/y0;->e(Z)V

    iget-object v1, p0, La0/u;->b:LJ2/i0;

    invoke-virtual {v1}, LJ2/i0;->b()V

    iget-object v1, p0, La0/u;->b:LJ2/i0;

    invoke-virtual {v1}, LJ2/i0;->p()V

    invoke-virtual {v5}, LB0/M;->h()V

    goto :goto_2

    :catchall_1
    move-exception p0

    invoke-virtual {v1, v4}, La0/y0;->e(Z)V

    throw p0

    :cond_3
    :goto_2
    invoke-virtual {v5}, LB0/M;->g()V

    :cond_4
    iget-object v1, p0, La0/u;->q:La0/q;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "Compose:Composer.dispose"

    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v2, v1, La0/q;->b:La0/s;

    invoke-virtual {v2, v1}, La0/s;->n(La0/m;)V

    iget-object v2, v1, La0/q;->D:La0/J0;

    iget-object v2, v2, La0/J0;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, v1, La0/q;->r:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, v1, La0/q;->e:Lb0/a;

    iget-object v2, v2, Lb0/a;->b:Lb0/D;

    invoke-virtual {v2}, Lb0/D;->f()V

    iput-object v3, v1, La0/q;->u:LX4/i;

    iget-object v1, v1, La0/q;->a:LJ2/i0;

    invoke-virtual {v1}, LJ2/i0;->b()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_3

    :catchall_2
    move-exception p0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_5
    :goto_3
    monitor-exit v0

    iget-object v0, p0, La0/u;->a:La0/s;

    invoke-virtual {v0, p0}, La0/s;->o(La0/u;)V

    return-void

    :cond_6
    :try_start_5
    const-string p0, "Composition is disposed while composing. If dispose is triggered by a call in @Composable function, consider wrapping it with SideEffect block."

    invoke-static {p0}, La0/d;->O(Ljava/lang/String;)V

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_4
    monitor-exit v0

    throw p0
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, La0/u;->c:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v0, p0, La0/u;->k:Lb0/a;

    iget-object v0, v0, Lb0/a;->b:Lb0/D;

    invoke-virtual {v0}, Lb0/D;->f()V

    iget-object v0, p0, La0/u;->l:Lb0/a;

    iget-object v0, v0, Lb0/a;->b:Lb0/D;

    invoke-virtual {v0}, Lb0/D;->f()V

    iget-object p0, p0, La0/u;->e:LN/u;

    iget-object v0, p0, LN/u;->a:LN/v;

    invoke-virtual {v0}, LN/v;->g()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, LN/u;->a:LN/v;

    invoke-virtual {v0}, LN/v;->g()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Compose:abandons"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, LN/u;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    move-object v0, p0

    check-cast v0, LJc/j;

    invoke-virtual {v0}, LJc/j;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, LJc/j;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La0/q0;

    invoke-virtual {v0}, LJc/j;->remove()V

    invoke-interface {v1}, La0/q0;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_2

    :goto_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0

    :cond_1
    :goto_2
    return-void
.end method

.method public final c(Ljava/lang/Object;Z)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, La0/u;->g:LB3/c;

    iget-object v2, v2, LB3/c;->a:Ljava/lang/Object;

    check-cast v2, LN/s;

    invoke-virtual {v2, v1}, LN/s;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_6

    instance-of v3, v2, LN/v;

    iget-object v4, v0, La0/u;->h:LN/v;

    iget-object v5, v0, La0/u;->i:LN/v;

    iget-object v0, v0, La0/u;->m:LB3/c;

    if-eqz v3, :cond_4

    check-cast v2, LN/v;

    iget-object v3, v2, LN/v;->b:[Ljava/lang/Object;

    iget-object v2, v2, LN/v;->a:[J

    array-length v6, v2

    add-int/lit8 v6, v6, -0x2

    if-ltz v6, :cond_6

    const/4 v8, 0x0

    :goto_0
    aget-wide v9, v2, v8

    not-long v11, v9

    const/4 v13, 0x7

    shl-long/2addr v11, v13

    and-long/2addr v11, v9

    const-wide v13, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v11, v13

    cmp-long v11, v11, v13

    if-eqz v11, :cond_3

    sub-int v11, v8, v6

    not-int v11, v11

    ushr-int/lit8 v11, v11, 0x1f

    const/16 v12, 0x8

    rsub-int/lit8 v11, v11, 0x8

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v11, :cond_2

    const-wide/16 v14, 0xff

    and-long/2addr v14, v9

    const-wide/16 v16, 0x80

    cmp-long v14, v14, v16

    if-gez v14, :cond_1

    shl-int/lit8 v14, v8, 0x3

    add-int/2addr v14, v13

    aget-object v14, v3, v14

    check-cast v14, La0/i0;

    invoke-virtual {v0, v1, v14}, LB3/c;->s(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1

    invoke-virtual {v14, v1}, La0/i0;->c(Ljava/lang/Object;)La0/O;

    move-result-object v15

    sget-object v7, La0/O;->IGNORED:La0/O;

    if-eq v15, v7, :cond_1

    iget-object v7, v14, La0/i0;->g:LN/s;

    if-eqz v7, :cond_0

    if-nez p2, :cond_0

    invoke-virtual {v5, v14}, LN/v;->a(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_0
    invoke-virtual {v4, v14}, LN/v;->a(Ljava/lang/Object;)Z

    :cond_1
    :goto_2
    shr-long/2addr v9, v12

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_2
    if-ne v11, v12, :cond_6

    :cond_3
    if-eq v8, v6, :cond_6

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_4
    check-cast v2, La0/i0;

    invoke-virtual {v0, v1, v2}, LB3/c;->s(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {v2, v1}, La0/i0;->c(Ljava/lang/Object;)La0/O;

    move-result-object v0

    sget-object v1, La0/O;->IGNORED:La0/O;

    if-eq v0, v1, :cond_6

    iget-object v0, v2, La0/i0;->g:LN/s;

    if-eqz v0, :cond_5

    if-nez p2, :cond_5

    invoke-virtual {v5, v2}, LN/v;->a(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    invoke-virtual {v4, v2}, LN/v;->a(Ljava/lang/Object;)Z

    :cond_6
    :goto_3
    return-void
.end method

.method public final d(Ljava/util/Set;Z)V
    .locals 32

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    instance-of v3, v1, Lc0/f;

    iget-object v4, v0, La0/u;->j:LB3/c;

    const/4 v10, 0x7

    const-wide v11, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    const/16 v14, 0x8

    if-eqz v3, :cond_a

    check-cast v1, Lc0/f;

    iget-object v1, v1, Lc0/f;->a:LN/v;

    iget-object v3, v1, LN/v;->b:[Ljava/lang/Object;

    iget-object v1, v1, LN/v;->a:[J

    array-length v15, v1

    add-int/lit8 v15, v15, -0x2

    if-ltz v15, :cond_11

    const/4 v13, 0x0

    :goto_0
    aget-wide v5, v1, v13

    not-long v8, v5

    shl-long v7, v8, v10

    and-long/2addr v7, v5

    and-long/2addr v7, v11

    cmp-long v7, v7, v11

    if-eqz v7, :cond_9

    sub-int v7, v13, v15

    not-int v7, v7

    ushr-int/lit8 v7, v7, 0x1f

    rsub-int/lit8 v7, v7, 0x8

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_8

    const-wide/16 v19, 0xff

    and-long v21, v5, v19

    const-wide/16 v17, 0x80

    cmp-long v9, v21, v17

    if-gez v9, :cond_7

    shl-int/lit8 v9, v13, 0x3

    add-int/2addr v9, v8

    aget-object v9, v3, v9

    instance-of v14, v9, La0/i0;

    if-eqz v14, :cond_1

    check-cast v9, La0/i0;

    const/4 v14, 0x0

    invoke-virtual {v9, v14}, La0/i0;->c(Ljava/lang/Object;)La0/O;

    :cond_0
    move-object/from16 p1, v3

    move-object/from16 v24, v4

    move/from16 v25, v7

    move/from16 v26, v8

    goto/16 :goto_4

    :cond_1
    invoke-virtual {v0, v9, v2}, La0/u;->c(Ljava/lang/Object;Z)V

    iget-object v14, v4, LB3/c;->a:Ljava/lang/Object;

    check-cast v14, LN/s;

    invoke-virtual {v14, v9}, LN/s;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_0

    instance-of v14, v9, LN/v;

    if-eqz v14, :cond_5

    check-cast v9, LN/v;

    iget-object v14, v9, LN/v;->b:[Ljava/lang/Object;

    iget-object v9, v9, LN/v;->a:[J

    array-length v11, v9

    add-int/lit8 v11, v11, -0x2

    if-ltz v11, :cond_0

    move-object/from16 p1, v3

    move-object/from16 v24, v4

    const/4 v12, 0x0

    :goto_2
    aget-wide v3, v9, v12

    move/from16 v25, v7

    move/from16 v26, v8

    not-long v7, v3

    shl-long/2addr v7, v10

    and-long/2addr v7, v3

    const-wide v22, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long v7, v7, v22

    cmp-long v7, v7, v22

    if-eqz v7, :cond_4

    sub-int v7, v12, v11

    not-int v7, v7

    ushr-int/lit8 v7, v7, 0x1f

    const/16 v8, 0x8

    rsub-int/lit8 v7, v7, 0x8

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v7, :cond_3

    const-wide/16 v19, 0xff

    and-long v27, v3, v19

    const-wide/16 v17, 0x80

    cmp-long v27, v27, v17

    if-gez v27, :cond_2

    shl-int/lit8 v27, v12, 0x3

    add-int v27, v27, v8

    aget-object v27, v14, v27

    move-object/from16 v10, v27

    check-cast v10, La0/E;

    invoke-virtual {v0, v10, v2}, La0/u;->c(Ljava/lang/Object;Z)V

    :cond_2
    const/16 v10, 0x8

    shr-long/2addr v3, v10

    add-int/lit8 v8, v8, 0x1

    const/4 v10, 0x7

    goto :goto_3

    :cond_3
    const/16 v10, 0x8

    if-ne v7, v10, :cond_6

    :cond_4
    if-eq v12, v11, :cond_6

    add-int/lit8 v12, v12, 0x1

    move/from16 v7, v25

    move/from16 v8, v26

    const/4 v10, 0x7

    goto :goto_2

    :cond_5
    move-object/from16 p1, v3

    move-object/from16 v24, v4

    move/from16 v25, v7

    move/from16 v26, v8

    check-cast v9, La0/E;

    invoke-virtual {v0, v9, v2}, La0/u;->c(Ljava/lang/Object;Z)V

    :cond_6
    :goto_4
    const/16 v3, 0x8

    goto :goto_5

    :cond_7
    move-object/from16 p1, v3

    move-object/from16 v24, v4

    move/from16 v25, v7

    move/from16 v26, v8

    move v3, v14

    :goto_5
    shr-long/2addr v5, v3

    add-int/lit8 v8, v26, 0x1

    move v14, v3

    move-object/from16 v4, v24

    move/from16 v7, v25

    const/4 v10, 0x7

    const-wide v11, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    move-object/from16 v3, p1

    goto/16 :goto_1

    :cond_8
    move-object/from16 p1, v3

    move-object/from16 v24, v4

    move v3, v14

    move v14, v7

    if-ne v14, v3, :cond_11

    goto :goto_6

    :cond_9
    move-object/from16 p1, v3

    move-object/from16 v24, v4

    :goto_6
    if-eq v13, v15, :cond_11

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v3, p1

    move-object/from16 v4, v24

    const/4 v10, 0x7

    const-wide v11, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    const/16 v14, 0x8

    goto/16 :goto_0

    :cond_a
    move-object/from16 v24, v4

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, La0/i0;

    if-eqz v4, :cond_b

    check-cast v3, La0/i0;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, La0/i0;->c(Ljava/lang/Object;)La0/O;

    move-object/from16 v5, v24

    goto :goto_a

    :cond_b
    const/4 v4, 0x0

    invoke-virtual {v0, v3, v2}, La0/u;->c(Ljava/lang/Object;Z)V

    move-object/from16 v5, v24

    iget-object v6, v5, LB3/c;->a:Ljava/lang/Object;

    check-cast v6, LN/s;

    invoke-virtual {v6, v3}, LN/s;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_10

    instance-of v6, v3, LN/v;

    if-eqz v6, :cond_f

    check-cast v3, LN/v;

    iget-object v6, v3, LN/v;->b:[Ljava/lang/Object;

    iget-object v3, v3, LN/v;->a:[J

    array-length v7, v3

    add-int/lit8 v7, v7, -0x2

    if-ltz v7, :cond_10

    const/4 v8, 0x0

    :goto_8
    aget-wide v9, v3, v8

    not-long v11, v9

    const/4 v13, 0x7

    shl-long/2addr v11, v13

    and-long/2addr v11, v9

    const-wide v13, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v11, v13

    cmp-long v11, v11, v13

    if-eqz v11, :cond_e

    sub-int v11, v8, v7

    not-int v11, v11

    ushr-int/lit8 v11, v11, 0x1f

    const/16 v12, 0x8

    rsub-int/lit8 v14, v11, 0x8

    const/4 v11, 0x0

    :goto_9
    if-ge v11, v14, :cond_d

    const-wide/16 v12, 0xff

    and-long v24, v9, v12

    const-wide/16 v12, 0x80

    cmp-long v15, v24, v12

    if-gez v15, :cond_c

    shl-int/lit8 v12, v8, 0x3

    add-int/2addr v12, v11

    aget-object v12, v6, v12

    check-cast v12, La0/E;

    invoke-virtual {v0, v12, v2}, La0/u;->c(Ljava/lang/Object;Z)V

    :cond_c
    const/16 v12, 0x8

    shr-long/2addr v9, v12

    add-int/lit8 v11, v11, 0x1

    goto :goto_9

    :cond_d
    const/16 v12, 0x8

    if-ne v14, v12, :cond_10

    :cond_e
    if-eq v8, v7, :cond_10

    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    :cond_f
    check-cast v3, La0/E;

    invoke-virtual {v0, v3, v2}, La0/u;->c(Ljava/lang/Object;Z)V

    :cond_10
    :goto_a
    move-object/from16 v24, v5

    goto :goto_7

    :cond_11
    const-string v3, "null cannot be cast to non-null type Scope of androidx.compose.runtime.collection.ScopeMap.removeScopeIf$lambda$2"

    const-string v4, "null cannot be cast to non-null type androidx.collection.MutableScatterSet<Scope of androidx.compose.runtime.collection.ScopeMap.removeScopeIf$lambda$2>"

    iget-object v5, v0, La0/u;->g:LB3/c;

    iget-object v6, v0, La0/u;->h:LN/v;

    if-eqz v2, :cond_21

    iget-object v2, v0, La0/u;->i:LN/v;

    invoke-virtual {v2}, LN/v;->h()Z

    move-result v7

    if-eqz v7, :cond_21

    iget-object v5, v5, LB3/c;->a:Ljava/lang/Object;

    check-cast v5, LN/s;

    iget-object v7, v5, LN/s;->a:[J

    array-length v8, v7

    add-int/lit8 v8, v8, -0x2

    if-ltz v8, :cond_20

    const/4 v9, 0x0

    :goto_b
    aget-wide v10, v7, v9

    not-long v12, v10

    const/4 v14, 0x7

    shl-long/2addr v12, v14

    and-long/2addr v12, v10

    const-wide v14, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v12, v14

    cmp-long v12, v12, v14

    if-eqz v12, :cond_1f

    sub-int v12, v9, v8

    not-int v12, v12

    ushr-int/lit8 v12, v12, 0x1f

    const/16 v13, 0x8

    rsub-int/lit8 v14, v12, 0x8

    const/4 v12, 0x0

    :goto_c
    if-ge v12, v14, :cond_1e

    const-wide/16 v19, 0xff

    and-long v24, v10, v19

    const-wide/16 v16, 0x80

    cmp-long v13, v24, v16

    if-gez v13, :cond_1d

    shl-int/lit8 v13, v9, 0x3

    add-int/2addr v13, v12

    iget-object v15, v5, LN/s;->b:[Ljava/lang/Object;

    aget-object v15, v15, v13

    iget-object v15, v5, LN/s;->c:[Ljava/lang/Object;

    aget-object v15, v15, v13

    instance-of v1, v15, LN/v;

    if-eqz v1, :cond_19

    invoke-static {v15, v4}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v15, LN/v;

    iget-object v1, v15, LN/v;->b:[Ljava/lang/Object;

    iget-object v0, v15, LN/v;->a:[J

    move-object/from16 v16, v7

    array-length v7, v0

    add-int/lit8 v7, v7, -0x2

    move-object/from16 v24, v4

    move/from16 p2, v8

    move/from16 v25, v9

    if-ltz v7, :cond_17

    const/4 v4, 0x0

    :goto_d
    aget-wide v8, v0, v4

    move-wide/from16 v26, v10

    not-long v10, v8

    const/16 v28, 0x7

    shl-long v10, v10, v28

    and-long/2addr v10, v8

    const-wide v22, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long v10, v10, v22

    cmp-long v10, v10, v22

    if-eqz v10, :cond_16

    sub-int v10, v4, v7

    not-int v10, v10

    ushr-int/lit8 v10, v10, 0x1f

    const/16 v11, 0x8

    rsub-int/lit8 v10, v10, 0x8

    const/4 v11, 0x0

    :goto_e
    if-ge v11, v10, :cond_15

    const-wide/16 v19, 0xff

    and-long v29, v8, v19

    const-wide/16 v17, 0x80

    cmp-long v29, v29, v17

    if-gez v29, :cond_14

    shl-int/lit8 v29, v4, 0x3

    move-object/from16 v30, v0

    add-int v0, v29, v11

    aget-object v29, v1, v0

    move-object/from16 v31, v1

    move-object/from16 v1, v29

    check-cast v1, La0/i0;

    invoke-virtual {v2, v1}, LN/v;->c(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_12

    invoke-virtual {v6, v1}, LN/v;->c(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    :cond_12
    invoke-virtual {v15, v0}, LN/v;->k(I)V

    :cond_13
    :goto_f
    const/16 v0, 0x8

    goto :goto_10

    :cond_14
    move-object/from16 v30, v0

    move-object/from16 v31, v1

    goto :goto_f

    :goto_10
    shr-long/2addr v8, v0

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    goto :goto_e

    :cond_15
    move-object/from16 v30, v0

    move-object/from16 v31, v1

    const/16 v0, 0x8

    if-ne v10, v0, :cond_18

    goto :goto_11

    :cond_16
    move-object/from16 v30, v0

    move-object/from16 v31, v1

    :goto_11
    if-eq v4, v7, :cond_18

    add-int/lit8 v4, v4, 0x1

    move-wide/from16 v10, v26

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    goto :goto_d

    :cond_17
    move-wide/from16 v26, v10

    :cond_18
    invoke-virtual {v15}, LN/v;->g()Z

    move-result v0

    goto :goto_13

    :cond_19
    move-object/from16 v24, v4

    move-object/from16 v16, v7

    move/from16 p2, v8

    move/from16 v25, v9

    move-wide/from16 v26, v10

    invoke-static {v15, v3}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v15, La0/i0;

    invoke-virtual {v2, v15}, LN/v;->c(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-virtual {v6, v15}, LN/v;->c(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_12

    :cond_1a
    const/4 v0, 0x0

    goto :goto_13

    :cond_1b
    :goto_12
    const/4 v0, 0x1

    :goto_13
    if-eqz v0, :cond_1c

    invoke-virtual {v5, v13}, LN/s;->g(I)Ljava/lang/Object;

    :cond_1c
    :goto_14
    const/16 v0, 0x8

    goto :goto_15

    :cond_1d
    move-object/from16 v24, v4

    move-object/from16 v16, v7

    move/from16 p2, v8

    move/from16 v25, v9

    move-wide/from16 v26, v10

    goto :goto_14

    :goto_15
    shr-long v10, v26, v0

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    move/from16 v8, p2

    move-object/from16 v7, v16

    move-object/from16 v4, v24

    move/from16 v9, v25

    goto/16 :goto_c

    :cond_1e
    move-object/from16 v24, v4

    move-object/from16 v16, v7

    move/from16 p2, v8

    move/from16 v25, v9

    const/16 v0, 0x8

    if-ne v14, v0, :cond_20

    move/from16 v8, p2

    move/from16 v0, v25

    goto :goto_16

    :cond_1f
    move-object/from16 v24, v4

    move-object/from16 v16, v7

    move v0, v9

    :goto_16
    if-eq v0, v8, :cond_20

    add-int/lit8 v9, v0, 0x1

    move-object/from16 v0, p0

    move-object/from16 v7, v16

    move-object/from16 v4, v24

    goto/16 :goto_b

    :cond_20
    invoke-virtual {v2}, LN/v;->b()V

    invoke-virtual/range {p0 .. p0}, La0/u;->i()V

    goto/16 :goto_24

    :cond_21
    move-object/from16 v24, v4

    invoke-virtual {v6}, LN/v;->h()Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, v5, LB3/c;->a:Ljava/lang/Object;

    check-cast v0, LN/s;

    iget-object v1, v0, LN/s;->a:[J

    array-length v2, v1

    add-int/lit8 v2, v2, -0x2

    if-ltz v2, :cond_2f

    const/4 v4, 0x0

    :goto_17
    aget-wide v7, v1, v4

    not-long v9, v7

    const/4 v5, 0x7

    shl-long/2addr v9, v5

    and-long/2addr v9, v7

    const-wide v11, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v9, v11

    cmp-long v5, v9, v11

    if-eqz v5, :cond_2e

    sub-int v5, v4, v2

    not-int v5, v5

    ushr-int/lit8 v5, v5, 0x1f

    const/16 v9, 0x8

    rsub-int/lit8 v14, v5, 0x8

    const/4 v5, 0x0

    :goto_18
    if-ge v5, v14, :cond_2d

    const-wide/16 v9, 0xff

    and-long v11, v7, v9

    const-wide/16 v9, 0x80

    cmp-long v11, v11, v9

    if-gez v11, :cond_22

    const/4 v9, 0x1

    goto :goto_19

    :cond_22
    const/4 v9, 0x0

    :goto_19
    if-eqz v9, :cond_2c

    shl-int/lit8 v9, v4, 0x3

    add-int/2addr v9, v5

    iget-object v10, v0, LN/s;->b:[Ljava/lang/Object;

    aget-object v10, v10, v9

    iget-object v10, v0, LN/s;->c:[Ljava/lang/Object;

    aget-object v10, v10, v9

    instance-of v11, v10, LN/v;

    if-eqz v11, :cond_2a

    move-object/from16 v11, v24

    invoke-static {v10, v11}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v10, LN/v;

    iget-object v12, v10, LN/v;->b:[Ljava/lang/Object;

    iget-object v13, v10, LN/v;->a:[J

    array-length v15, v13

    add-int/lit8 v15, v15, -0x2

    move-object/from16 v16, v1

    move/from16 p2, v4

    move/from16 v24, v5

    if-ltz v15, :cond_28

    const/4 v1, 0x0

    :goto_1a
    aget-wide v4, v13, v1

    move-object/from16 v26, v13

    move/from16 v25, v14

    not-long v13, v4

    const/16 v27, 0x7

    shl-long v13, v13, v27

    and-long/2addr v13, v4

    const-wide v22, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long v13, v13, v22

    cmp-long v13, v13, v22

    if-eqz v13, :cond_27

    sub-int v13, v1, v15

    not-int v13, v13

    ushr-int/lit8 v13, v13, 0x1f

    const/16 v14, 0x8

    rsub-int/lit8 v13, v13, 0x8

    const/4 v14, 0x0

    :goto_1b
    if-ge v14, v13, :cond_26

    const-wide/16 v19, 0xff

    and-long v28, v4, v19

    const-wide/16 v17, 0x80

    cmp-long v28, v28, v17

    if-gez v28, :cond_23

    const/16 v28, 0x1

    goto :goto_1c

    :cond_23
    const/16 v28, 0x0

    :goto_1c
    if-eqz v28, :cond_25

    shl-int/lit8 v28, v1, 0x3

    move-object/from16 v29, v11

    add-int v11, v28, v14

    aget-object v28, v12, v11

    move-object/from16 v30, v12

    move-object/from16 v12, v28

    check-cast v12, La0/i0;

    invoke-virtual {v6, v12}, LN/v;->c(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_24

    invoke-virtual {v10, v11}, LN/v;->k(I)V

    :cond_24
    :goto_1d
    const/16 v11, 0x8

    goto :goto_1e

    :cond_25
    move-object/from16 v29, v11

    move-object/from16 v30, v12

    goto :goto_1d

    :goto_1e
    shr-long/2addr v4, v11

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v11, v29

    move-object/from16 v12, v30

    goto :goto_1b

    :cond_26
    move-object/from16 v29, v11

    move-object/from16 v30, v12

    const/16 v11, 0x8

    const-wide/16 v17, 0x80

    const-wide/16 v19, 0xff

    if-ne v13, v11, :cond_29

    goto :goto_1f

    :cond_27
    move-object/from16 v29, v11

    move-object/from16 v30, v12

    const-wide/16 v17, 0x80

    const-wide/16 v19, 0xff

    :goto_1f
    if-eq v1, v15, :cond_29

    add-int/lit8 v1, v1, 0x1

    move/from16 v14, v25

    move-object/from16 v13, v26

    move-object/from16 v11, v29

    move-object/from16 v12, v30

    goto :goto_1a

    :cond_28
    move-object/from16 v29, v11

    move/from16 v25, v14

    const-wide/16 v17, 0x80

    const-wide/16 v19, 0xff

    const-wide v22, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    const/16 v27, 0x7

    :cond_29
    invoke-virtual {v10}, LN/v;->g()Z

    move-result v1

    goto :goto_20

    :cond_2a
    move-object/from16 v16, v1

    move/from16 p2, v4

    move/from16 v25, v14

    move-object/from16 v29, v24

    const-wide/16 v17, 0x80

    const-wide/16 v19, 0xff

    const-wide v22, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    const/16 v27, 0x7

    move/from16 v24, v5

    invoke-static {v10, v3}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v10, La0/i0;

    invoke-virtual {v6, v10}, LN/v;->c(Ljava/lang/Object;)Z

    move-result v1

    :goto_20
    if-eqz v1, :cond_2b

    invoke-virtual {v0, v9}, LN/s;->g(I)Ljava/lang/Object;

    :cond_2b
    :goto_21
    const/16 v1, 0x8

    goto :goto_22

    :cond_2c
    move-object/from16 v16, v1

    move/from16 p2, v4

    move/from16 v25, v14

    move-object/from16 v29, v24

    const-wide/16 v17, 0x80

    const-wide/16 v19, 0xff

    const-wide v22, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    const/16 v27, 0x7

    move/from16 v24, v5

    goto :goto_21

    :goto_22
    shr-long/2addr v7, v1

    add-int/lit8 v5, v24, 0x1

    move/from16 v4, p2

    move-object/from16 v1, v16

    move/from16 v14, v25

    move-object/from16 v24, v29

    goto/16 :goto_18

    :cond_2d
    move-object/from16 v16, v1

    move/from16 p2, v4

    move-object/from16 v29, v24

    const/16 v1, 0x8

    const-wide/16 v17, 0x80

    const-wide/16 v19, 0xff

    const-wide v22, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    const/16 v27, 0x7

    if-ne v14, v1, :cond_2f

    move/from16 v4, p2

    goto :goto_23

    :cond_2e
    move-object/from16 v16, v1

    move-object/from16 v29, v24

    const/16 v1, 0x8

    const-wide/16 v17, 0x80

    const-wide/16 v19, 0xff

    const-wide v22, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    const/16 v27, 0x7

    :goto_23
    if-eq v4, v2, :cond_2f

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v1, v16

    move-object/from16 v24, v29

    goto/16 :goto_17

    :cond_2f
    invoke-virtual/range {p0 .. p0}, La0/u;->i()V

    invoke-virtual {v6}, LN/v;->b()V

    :cond_30
    :goto_24
    return-void
.end method

.method public final e()V
    .locals 5

    iget-object v0, p0, La0/u;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, La0/u;->k:Lb0/a;

    invoke-virtual {p0, v1}, La0/u;->f(Lb0/a;)V

    invoke-virtual {p0}, La0/u;->n()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    iget-object v2, p0, La0/u;->e:LN/u;

    iget-object v2, v2, LN/u;->a:LN/v;

    invoke-virtual {v2}, LN/v;->g()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, La0/u;->e:LN/u;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, v2, LN/u;->a:LN/v;

    invoke-virtual {v3}, LN/v;->g()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "Compose:abandons"

    invoke-static {v3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-virtual {v2}, LN/u;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    move-object v3, v2

    check-cast v3, LJc/j;

    iget-object v3, v3, LJc/j;->c:Ljava/lang/Object;

    check-cast v3, LJc/m;

    invoke-virtual {v3}, LJc/m;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, LJc/j;

    iget-object v3, v3, LJc/j;->c:Ljava/lang/Object;

    check-cast v3, LJc/m;

    invoke-virtual {v3}, LJc/m;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, La0/q0;

    move-object v4, v2

    check-cast v4, LJc/j;

    invoke-virtual {v4}, LJc/j;->remove()V

    invoke-interface {v3}, La0/q0;->b()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    goto :goto_1

    :cond_0
    :try_start_3
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_2

    :goto_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v1

    :catchall_2
    move-exception p0

    goto :goto_4

    :catch_0
    move-exception v1

    goto :goto_3

    :cond_1
    :goto_2
    throw v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_3
    :try_start_4
    invoke-virtual {p0}, La0/u;->b()V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :goto_4
    monitor-exit v0

    throw p0
.end method

.method public final f(Lb0/a;)V
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, La0/u;->b:LJ2/i0;

    iget-object v3, v0, La0/u;->l:Lb0/a;

    new-instance v4, LB0/M;

    iget-object v5, v0, La0/u;->e:LN/u;

    invoke-direct {v4, v5}, LB0/M;-><init>(LN/u;)V

    :try_start_0
    iget-object v5, v1, Lb0/a;->b:Lb0/D;

    invoke-virtual {v5}, Lb0/D;->h()Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-eqz v5, :cond_1

    iget-object v0, v3, Lb0/a;->b:Lb0/D;

    invoke-virtual {v0}, Lb0/D;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v4}, LB0/M;->g()V

    :cond_0
    return-void

    :cond_1
    :try_start_1
    const-string v5, "Compose:applyChanges"

    invoke-static {v5}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    :try_start_2
    iget-object v5, v0, La0/u;->f:La0/w0;

    invoke-virtual {v5}, La0/w0;->m()La0/y0;

    move-result-object v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    const/4 v6, 0x0

    :try_start_3
    iget-object v1, v1, Lb0/a;->b:Lb0/D;

    invoke-virtual {v1, v2, v5, v4}, Lb0/D;->g(LJ2/i0;La0/y0;LB0/M;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    const/4 v1, 0x1

    :try_start_4
    invoke-virtual {v5, v1}, La0/y0;->e(Z)V

    invoke-virtual {v2}, LJ2/i0;->p()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    :try_start_5
    invoke-static {}, Landroid/os/Trace;->endSection()V

    invoke-virtual {v4}, LB0/M;->h()V

    iget-object v2, v4, LB0/M;->e:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "Compose:sideeffects"

    invoke-static {v5}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :try_start_6
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v7, v6

    :goto_0
    if-ge v7, v5, :cond_2

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lsb/a;

    invoke-interface {v8}, Lsb/a;->invoke()Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_2

    :goto_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0

    :cond_3
    :goto_2
    iget-boolean v2, v0, La0/u;->o:Z

    if-eqz v2, :cond_12

    const-string v2, "Compose:unobserve"

    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :try_start_8
    iput-boolean v6, v0, La0/u;->o:Z

    iget-object v2, v0, La0/u;->g:LB3/c;

    iget-object v2, v2, LB3/c;->a:Ljava/lang/Object;

    check-cast v2, LN/s;

    iget-object v5, v2, LN/s;->a:[J

    array-length v7, v5

    add-int/lit8 v7, v7, -0x2

    if-ltz v7, :cond_10

    move v8, v6

    :goto_3
    aget-wide v9, v5, v8

    not-long v11, v9

    const/4 v13, 0x7

    shl-long/2addr v11, v13

    and-long/2addr v11, v9

    const-wide v14, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v11, v14

    cmp-long v11, v11, v14

    if-eqz v11, :cond_f

    sub-int v11, v8, v7

    not-int v11, v11

    ushr-int/lit8 v11, v11, 0x1f

    const/16 v12, 0x8

    rsub-int/lit8 v11, v11, 0x8

    move v1, v6

    :goto_4
    if-ge v1, v11, :cond_e

    const-wide/16 v16, 0xff

    and-long v18, v9, v16

    const-wide/16 v20, 0x80

    cmp-long v18, v18, v20

    if-gez v18, :cond_d

    shl-int/lit8 v18, v8, 0x3

    add-int v6, v18, v1

    iget-object v12, v2, LN/s;->b:[Ljava/lang/Object;

    aget-object v12, v12, v6

    iget-object v12, v2, LN/s;->c:[Ljava/lang/Object;

    aget-object v12, v12, v6

    instance-of v14, v12, LN/v;

    if-eqz v14, :cond_a

    const-string v14, "null cannot be cast to non-null type androidx.collection.MutableScatterSet<Scope of androidx.compose.runtime.collection.ScopeMap.removeScopeIf$lambda$2>"

    invoke-static {v12, v14}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v12, LN/v;

    iget-object v14, v12, LN/v;->b:[Ljava/lang/Object;

    iget-object v15, v12, LN/v;->a:[J

    array-length v13, v15
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    add-int/lit8 v13, v13, -0x2

    move-object/from16 v25, v4

    move-object/from16 v26, v5

    if-ltz v13, :cond_8

    const/4 v0, 0x0

    :goto_5
    :try_start_9
    aget-wide v4, v15, v0

    move/from16 v27, v7

    move/from16 v28, v8

    not-long v7, v4

    const/16 v24, 0x7

    shl-long v7, v7, v24

    and-long/2addr v7, v4

    const-wide v22, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long v7, v7, v22

    cmp-long v7, v7, v22

    if-eqz v7, :cond_7

    sub-int v7, v0, v13

    not-int v7, v7

    ushr-int/lit8 v7, v7, 0x1f

    const/16 v8, 0x8

    rsub-int/lit8 v7, v7, 0x8

    const/4 v8, 0x0

    :goto_6
    if-ge v8, v7, :cond_6

    and-long v29, v4, v16

    cmp-long v29, v29, v20

    if-gez v29, :cond_5

    shl-int/lit8 v29, v0, 0x3

    move-object/from16 v30, v15

    add-int v15, v29, v8

    aget-object v29, v14, v15

    check-cast v29, La0/i0;

    invoke-virtual/range {v29 .. v29}, La0/i0;->b()Z

    move-result v29

    if-nez v29, :cond_4

    invoke-virtual {v12, v15}, LN/v;->k(I)V

    goto :goto_7

    :catchall_1
    move-exception v0

    goto/16 :goto_d

    :cond_4
    :goto_7
    const/16 v15, 0x8

    goto :goto_8

    :cond_5
    move-object/from16 v30, v15

    goto :goto_7

    :goto_8
    shr-long/2addr v4, v15

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v15, v30

    goto :goto_6

    :cond_6
    move-object/from16 v30, v15

    const/16 v15, 0x8

    if-ne v7, v15, :cond_9

    goto :goto_9

    :cond_7
    move-object/from16 v30, v15

    :goto_9
    if-eq v0, v13, :cond_9

    add-int/lit8 v0, v0, 0x1

    move/from16 v7, v27

    move/from16 v8, v28

    move-object/from16 v15, v30

    goto :goto_5

    :cond_8
    move/from16 v27, v7

    move/from16 v28, v8

    const-wide v22, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    const/16 v24, 0x7

    :cond_9
    invoke-virtual {v12}, LN/v;->g()Z

    move-result v0

    goto :goto_a

    :catchall_2
    move-exception v0

    move-object/from16 v25, v4

    goto/16 :goto_d

    :cond_a
    move-object/from16 v25, v4

    move-object/from16 v26, v5

    move/from16 v27, v7

    move/from16 v28, v8

    move/from16 v24, v13

    const-wide v22, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    const-string v0, "null cannot be cast to non-null type Scope of androidx.compose.runtime.collection.ScopeMap.removeScopeIf$lambda$2"

    invoke-static {v12, v0}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v12, La0/i0;

    invoke-virtual {v12}, La0/i0;->b()Z

    move-result v0

    if-nez v0, :cond_b

    const/4 v0, 0x1

    goto :goto_a

    :cond_b
    const/4 v0, 0x0

    :goto_a
    if-eqz v0, :cond_c

    invoke-virtual {v2, v6}, LN/s;->g(I)Ljava/lang/Object;

    :cond_c
    const/16 v0, 0x8

    goto :goto_b

    :cond_d
    move-object/from16 v25, v4

    move-object/from16 v26, v5

    move/from16 v27, v7

    move/from16 v28, v8

    move/from16 v24, v13

    move-wide/from16 v22, v14

    move v0, v12

    :goto_b
    shr-long/2addr v9, v0

    add-int/lit8 v1, v1, 0x1

    move v12, v0

    move-wide/from16 v14, v22

    move/from16 v13, v24

    move-object/from16 v4, v25

    move-object/from16 v5, v26

    move/from16 v7, v27

    move/from16 v8, v28

    const/4 v6, 0x0

    move-object/from16 v0, p0

    goto/16 :goto_4

    :cond_e
    move-object/from16 v25, v4

    move-object/from16 v26, v5

    move/from16 v27, v7

    move/from16 v28, v8

    move v0, v12

    if-ne v11, v0, :cond_11

    move/from16 v7, v27

    move/from16 v6, v28

    goto :goto_c

    :cond_f
    move-object/from16 v25, v4

    move-object/from16 v26, v5

    move v6, v8

    :goto_c
    if-eq v6, v7, :cond_11

    add-int/lit8 v8, v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v4, v25

    move-object/from16 v5, v26

    const/4 v1, 0x1

    const/4 v6, 0x0

    goto/16 :goto_3

    :cond_10
    move-object/from16 v25, v4

    :cond_11
    invoke-virtual/range {p0 .. p0}, La0/u;->i()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_e

    :goto_d
    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :catchall_3
    move-exception v0

    goto :goto_12

    :catchall_4
    move-exception v0

    move-object/from16 v25, v4

    goto :goto_12

    :cond_12
    move-object/from16 v25, v4

    :goto_e
    iget-object v0, v3, Lb0/a;->b:Lb0/D;

    invoke-virtual {v0}, Lb0/D;->h()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual/range {v25 .. v25}, LB0/M;->g()V

    :cond_13
    return-void

    :catchall_5
    move-exception v0

    move-object/from16 v25, v4

    goto :goto_11

    :goto_f
    const/4 v1, 0x0

    goto :goto_10

    :catchall_6
    move-exception v0

    move-object/from16 v25, v4

    goto :goto_f

    :goto_10
    :try_start_b
    invoke-virtual {v5, v1}, La0/y0;->e(Z)V

    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    :catchall_7
    move-exception v0

    :goto_11
    :try_start_c
    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :goto_12
    iget-object v1, v3, Lb0/a;->b:Lb0/D;

    invoke-virtual {v1}, Lb0/D;->h()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual/range {v25 .. v25}, LB0/M;->g()V

    :cond_14
    throw v0
.end method

.method public final g()V
    .locals 5

    iget-object v0, p0, La0/u;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, La0/u;->l:Lb0/a;

    iget-object v1, v1, Lb0/a;->b:Lb0/D;

    invoke-virtual {v1}, Lb0/D;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, La0/u;->l:Lb0/a;

    invoke-virtual {p0, v1}, La0/u;->f(Lb0/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    :try_start_1
    iget-object v2, p0, La0/u;->e:LN/u;

    iget-object v2, v2, LN/u;->a:LN/v;

    invoke-virtual {v2}, LN/v;->g()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, La0/u;->e:LN/u;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, v2, LN/u;->a:LN/v;

    invoke-virtual {v3}, LN/v;->g()Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "Compose:abandons"

    invoke-static {v3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-virtual {v2}, LN/u;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    move-object v3, v2

    check-cast v3, LJc/j;

    iget-object v3, v3, LJc/j;->c:Ljava/lang/Object;

    check-cast v3, LJc/m;

    invoke-virtual {v3}, LJc/m;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v2

    check-cast v3, LJc/j;

    iget-object v3, v3, LJc/j;->c:Ljava/lang/Object;

    check-cast v3, LJc/m;

    invoke-virtual {v3}, LJc/m;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, La0/q0;

    move-object v4, v2

    check-cast v4, LJc/j;

    invoke-virtual {v4}, LJc/j;->remove()V

    invoke-interface {v3}, La0/q0;->b()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v1

    goto :goto_3

    :cond_1
    :try_start_3
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_4

    :goto_3
    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v1

    :catchall_2
    move-exception p0

    goto :goto_6

    :catch_0
    move-exception v1

    goto :goto_5

    :cond_2
    :goto_4
    throw v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_5
    :try_start_4
    invoke-virtual {p0}, La0/u;->b()V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :goto_6
    monitor-exit v0

    throw p0
.end method

.method public final h()V
    .locals 5

    iget-object v0, p0, La0/u;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, La0/u;->q:La0/q;

    const/4 v2, 0x0

    iput-object v2, v1, La0/q;->u:LX4/i;

    iget-object v1, p0, La0/u;->e:LN/u;

    iget-object v1, v1, LN/u;->a:LN/v;

    invoke-virtual {v1}, LN/v;->g()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, La0/u;->e:LN/u;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v1, LN/u;->a:LN/v;

    invoke-virtual {v2}, LN/v;->g()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "Compose:abandons"

    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v1}, LN/u;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    move-object v2, v1

    check-cast v2, LJc/j;

    invoke-virtual {v2}, LJc/j;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, LJc/j;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, La0/q0;

    invoke-virtual {v2}, LJc/j;->remove()V

    invoke-interface {v3}, La0/q0;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :try_start_2
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_2

    :goto_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v1

    goto :goto_3

    :cond_1
    :goto_2
    monitor-exit v0

    return-void

    :goto_3
    :try_start_3
    iget-object v2, p0, La0/u;->e:LN/u;

    iget-object v2, v2, LN/u;->a:LN/v;

    invoke-virtual {v2}, LN/v;->g()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, La0/u;->e:LN/u;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, v2, LN/u;->a:LN/v;

    invoke-virtual {v3}, LN/v;->g()Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "Compose:abandons"

    invoke-static {v3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :try_start_4
    invoke-virtual {v2}, LN/u;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    move-object v3, v2

    check-cast v3, LJc/j;

    invoke-virtual {v3}, LJc/j;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, LJc/j;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, La0/q0;

    invoke-virtual {v3}, LJc/j;->remove()V

    invoke-interface {v4}, La0/q0;->b()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v1

    goto :goto_5

    :cond_2
    :try_start_5
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_6

    :goto_5
    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v1

    :catchall_3
    move-exception p0

    goto :goto_8

    :catch_0
    move-exception v1

    goto :goto_7

    :cond_3
    :goto_6
    throw v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :goto_7
    :try_start_6
    invoke-virtual {p0}, La0/u;->b()V

    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :goto_8
    monitor-exit v0

    throw p0
.end method

.method public final i()V
    .locals 32

    move-object/from16 v0, p0

    iget-object v1, v0, La0/u;->j:LB3/c;

    iget-object v1, v1, LB3/c;->a:Ljava/lang/Object;

    check-cast v1, LN/s;

    iget-object v2, v1, LN/s;->a:[J

    array-length v3, v2

    add-int/lit8 v3, v3, -0x2

    const-wide/16 v8, 0xff

    const/4 v10, 0x7

    const-wide v11, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    const/16 v13, 0x8

    if-ltz v3, :cond_b

    const/4 v14, 0x0

    :goto_0
    aget-wide v4, v2, v14

    not-long v6, v4

    shl-long/2addr v6, v10

    and-long/2addr v6, v4

    and-long/2addr v6, v11

    cmp-long v6, v6, v11

    if-eqz v6, :cond_c

    sub-int v6, v14, v3

    not-int v6, v6

    ushr-int/lit8 v6, v6, 0x1f

    rsub-int/lit8 v6, v6, 0x8

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_a

    and-long v18, v4, v8

    const-wide/16 v16, 0x80

    cmp-long v18, v18, v16

    if-gez v18, :cond_9

    shl-int/lit8 v18, v14, 0x3

    add-int v15, v18, v7

    iget-object v8, v1, LN/s;->b:[Ljava/lang/Object;

    aget-object v8, v8, v15

    iget-object v8, v1, LN/s;->c:[Ljava/lang/Object;

    aget-object v8, v8, v15

    instance-of v9, v8, LN/v;

    iget-object v13, v0, La0/u;->g:LB3/c;

    if-eqz v9, :cond_6

    const-string v9, "null cannot be cast to non-null type androidx.collection.MutableScatterSet<Scope of androidx.compose.runtime.collection.ScopeMap.removeScopeIf$lambda$2>"

    invoke-static {v8, v9}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, LN/v;

    iget-object v9, v8, LN/v;->b:[Ljava/lang/Object;

    iget-object v11, v8, LN/v;->a:[J

    array-length v12, v11

    add-int/lit8 v12, v12, -0x2

    move-object/from16 v25, v2

    move/from16 v26, v3

    if-ltz v12, :cond_4

    const/4 v10, 0x0

    :goto_2
    aget-wide v2, v11, v10

    move/from16 v27, v6

    move/from16 v28, v7

    not-long v6, v2

    const/16 v24, 0x7

    shl-long v6, v6, v24

    and-long/2addr v6, v2

    const-wide v22, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long v6, v6, v22

    cmp-long v6, v6, v22

    if-eqz v6, :cond_3

    sub-int v6, v10, v12

    not-int v6, v6

    ushr-int/lit8 v6, v6, 0x1f

    const/16 v7, 0x8

    rsub-int/lit8 v6, v6, 0x8

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v6, :cond_2

    const-wide/16 v20, 0xff

    and-long v29, v2, v20

    const-wide/16 v16, 0x80

    cmp-long v29, v29, v16

    if-gez v29, :cond_1

    shl-int/lit8 v29, v10, 0x3

    move-object/from16 v30, v11

    add-int v11, v29, v7

    aget-object v29, v9, v11

    move-object/from16 v31, v9

    move-object/from16 v9, v29

    check-cast v9, La0/E;

    iget-object v0, v13, LB3/c;->a:Ljava/lang/Object;

    check-cast v0, LN/s;

    invoke-virtual {v0, v9}, LN/s;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v8, v11}, LN/v;->k(I)V

    :cond_0
    :goto_4
    const/16 v0, 0x8

    goto :goto_5

    :cond_1
    move-object/from16 v31, v9

    move-object/from16 v30, v11

    goto :goto_4

    :goto_5
    shr-long/2addr v2, v0

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    move-object/from16 v11, v30

    move-object/from16 v9, v31

    goto :goto_3

    :cond_2
    move-object/from16 v31, v9

    move-object/from16 v30, v11

    const/16 v0, 0x8

    if-ne v6, v0, :cond_5

    goto :goto_6

    :cond_3
    move-object/from16 v31, v9

    move-object/from16 v30, v11

    :goto_6
    if-eq v10, v12, :cond_5

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    move/from16 v6, v27

    move/from16 v7, v28

    move-object/from16 v11, v30

    move-object/from16 v9, v31

    goto :goto_2

    :cond_4
    move/from16 v27, v6

    move/from16 v28, v7

    :cond_5
    invoke-virtual {v8}, LN/v;->g()Z

    move-result v0

    goto :goto_7

    :cond_6
    move-object/from16 v25, v2

    move/from16 v26, v3

    move/from16 v27, v6

    move/from16 v28, v7

    const-string v0, "null cannot be cast to non-null type Scope of androidx.compose.runtime.collection.ScopeMap.removeScopeIf$lambda$2"

    invoke-static {v8, v0}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, La0/E;

    iget-object v0, v13, LB3/c;->a:Ljava/lang/Object;

    check-cast v0, LN/s;

    invoke-virtual {v0, v8}, LN/s;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_7

    :cond_7
    const/4 v0, 0x0

    :goto_7
    if-eqz v0, :cond_8

    invoke-virtual {v1, v15}, LN/s;->g(I)Ljava/lang/Object;

    :cond_8
    const/16 v0, 0x8

    goto :goto_8

    :cond_9
    move-object/from16 v25, v2

    move/from16 v26, v3

    move/from16 v27, v6

    move/from16 v28, v7

    move v0, v13

    :goto_8
    shr-long/2addr v4, v0

    add-int/lit8 v7, v28, 0x1

    move v13, v0

    move-object/from16 v2, v25

    move/from16 v3, v26

    move/from16 v6, v27

    const-wide/16 v8, 0xff

    const/4 v10, 0x7

    const-wide v11, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    move-object/from16 v0, p0

    goto/16 :goto_1

    :cond_a
    move-object/from16 v25, v2

    move/from16 v26, v3

    move v0, v13

    move v13, v6

    if-ne v13, v0, :cond_b

    move/from16 v3, v26

    goto :goto_9

    :cond_b
    move-object/from16 v0, p0

    goto :goto_a

    :cond_c
    move-object/from16 v25, v2

    :goto_9
    if-eq v14, v3, :cond_b

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, v25

    const-wide/16 v8, 0xff

    const/4 v10, 0x7

    const-wide v11, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    const/16 v13, 0x8

    goto/16 :goto_0

    :goto_a
    iget-object v0, v0, La0/u;->i:LN/v;

    invoke-virtual {v0}, LN/v;->h()Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v1, v0, LN/v;->b:[Ljava/lang/Object;

    iget-object v2, v0, LN/v;->a:[J

    array-length v3, v2

    add-int/lit8 v3, v3, -0x2

    if-ltz v3, :cond_12

    const/4 v4, 0x0

    :goto_b
    aget-wide v5, v2, v4

    not-long v7, v5

    const/4 v9, 0x7

    shl-long/2addr v7, v9

    and-long/2addr v7, v5

    const-wide v10, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v7, v10

    cmp-long v7, v7, v10

    if-eqz v7, :cond_11

    sub-int v7, v4, v3

    not-int v7, v7

    ushr-int/lit8 v7, v7, 0x1f

    const/16 v8, 0x8

    rsub-int/lit8 v13, v7, 0x8

    const/4 v7, 0x0

    :goto_c
    if-ge v7, v13, :cond_10

    const-wide/16 v14, 0xff

    and-long v20, v5, v14

    const-wide/16 v16, 0x80

    cmp-long v8, v20, v16

    if-gez v8, :cond_d

    const/4 v8, 0x1

    goto :goto_d

    :cond_d
    const/4 v8, 0x0

    :goto_d
    if-eqz v8, :cond_f

    shl-int/lit8 v8, v4, 0x3

    add-int/2addr v8, v7

    aget-object v12, v1, v8

    check-cast v12, La0/i0;

    iget-object v12, v12, La0/i0;->g:LN/s;

    if-eqz v12, :cond_e

    const/4 v12, 0x1

    goto :goto_e

    :cond_e
    const/4 v12, 0x0

    :goto_e
    if-nez v12, :cond_f

    invoke-virtual {v0, v8}, LN/v;->k(I)V

    :cond_f
    const/16 v8, 0x8

    shr-long/2addr v5, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_c

    :cond_10
    const/16 v8, 0x8

    const-wide/16 v14, 0xff

    const-wide/16 v16, 0x80

    if-ne v13, v8, :cond_12

    goto :goto_f

    :cond_11
    const/16 v8, 0x8

    const-wide/16 v14, 0xff

    const-wide/16 v16, 0x80

    :goto_f
    if-eq v4, v3, :cond_12

    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    :cond_12
    return-void
.end method

.method public final j(Lsb/n;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, La0/u;->d:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0}, La0/u;->m()V

    iget-object v1, p0, La0/u;->n:LB3/c;

    new-instance v2, LB3/c;

    const/16 v3, 0xe

    invoke-direct {v2, v3}, LB3/c;-><init>(I)V

    iput-object v2, p0, La0/u;->n:LB3/c;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {p0}, La0/u;->s()V

    iget-object v2, p0, La0/u;->q:La0/q;

    iget-object v3, v2, La0/q;->e:Lb0/a;

    iget-object v3, v3, Lb0/a;->b:Lb0/D;

    invoke-virtual {v3}, Lb0/D;->h()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v1, p1}, La0/q;->m(LB3/c;Lsb/n;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :try_start_4
    const-string p1, "Expected applyChanges() to have been called"

    invoke-static {p1}, La0/d;->t(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_5
    iput-object v1, p0, La0/u;->n:LB3/c;

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_0
    :try_start_6
    monitor-exit v0

    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_1
    :try_start_7
    iget-object v0, p0, La0/u;->e:LN/u;

    iget-object v0, v0, LN/u;->a:LN/v;

    invoke-virtual {v0}, LN/v;->g()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, La0/u;->e:LN/u;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, v0, LN/u;->a:LN/v;

    invoke-virtual {v1}, LN/v;->g()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "Compose:abandons"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    :try_start_8
    invoke-virtual {v0}, LN/u;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    move-object v1, v0

    check-cast v1, LJc/j;

    iget-object v1, v1, LJc/j;->c:Ljava/lang/Object;

    check-cast v1, LJc/m;

    invoke-virtual {v1}, LJc/m;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, LJc/j;

    iget-object v1, v1, LJc/j;->c:Ljava/lang/Object;

    check-cast v1, LJc/m;

    invoke-virtual {v1}, LJc/m;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La0/q0;

    move-object v2, v0

    check-cast v2, LJc/j;

    invoke-virtual {v2}, LJc/j;->remove()V

    invoke-interface {v1}, La0/q0;->b()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p1

    goto :goto_3

    :cond_1
    :try_start_9
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_4

    :goto_3
    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p1

    :catch_1
    move-exception p1

    goto :goto_5

    :cond_2
    :goto_4
    throw p1
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    :goto_5
    invoke-virtual {p0}, La0/u;->b()V

    throw p1
.end method

.method public final k(Lsb/n;)V
    .locals 1

    iget-boolean v0, p0, La0/u;->r:Z

    if-nez v0, :cond_0

    iget-object v0, p0, La0/u;->a:La0/s;

    invoke-virtual {v0, p0, p1}, La0/s;->a(La0/u;Lsb/n;)V

    return-void

    :cond_0
    const-string p0, "The composition is disposed"

    invoke-static {p0}, La0/d;->O(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final l()V
    .locals 6

    iget-object v0, p0, La0/u;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, La0/u;->f:La0/w0;

    iget v1, v1, La0/w0;->b:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-nez v1, :cond_1

    iget-object v4, p0, La0/u;->e:LN/u;

    iget-object v4, v4, LN/u;->a:LN/v;

    invoke-virtual {v4}, LN/v;->g()Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_1
    :goto_1
    const-string v4, "Compose:deactivate"

    invoke-static {v4}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v4, LB0/M;

    iget-object v5, p0, La0/u;->e:LN/u;

    invoke-direct {v4, v5}, LB0/M;-><init>(LN/u;)V

    if-eqz v1, :cond_2

    iget-object v1, p0, La0/u;->f:La0/w0;

    invoke-virtual {v1}, La0/w0;->m()La0/y0;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {v1, v4}, La0/d;->x(La0/y0;LB0/M;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-virtual {v1, v3}, La0/y0;->e(Z)V

    iget-object v1, p0, La0/u;->b:LJ2/i0;

    invoke-virtual {v1}, LJ2/i0;->p()V

    invoke-virtual {v4}, LB0/M;->h()V

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_3

    :catchall_2
    move-exception p0

    invoke-virtual {v1, v2}, La0/y0;->e(Z)V

    throw p0

    :cond_2
    :goto_2
    invoke-virtual {v4}, LB0/M;->g()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-static {}, Landroid/os/Trace;->endSection()V

    :cond_3
    iget-object v1, p0, La0/u;->g:LB3/c;

    invoke-virtual {v1}, LB3/c;->k()V

    iget-object v1, p0, La0/u;->j:LB3/c;

    invoke-virtual {v1}, LB3/c;->k()V

    iget-object v1, p0, La0/u;->n:LB3/c;

    invoke-virtual {v1}, LB3/c;->k()V

    iget-object v1, p0, La0/u;->k:Lb0/a;

    iget-object v1, v1, Lb0/a;->b:Lb0/D;

    invoke-virtual {v1}, Lb0/D;->f()V

    iget-object v1, p0, La0/u;->l:Lb0/a;

    iget-object v1, v1, Lb0/a;->b:Lb0/D;

    invoke-virtual {v1}, Lb0/D;->f()V

    iget-object p0, p0, La0/u;->q:La0/q;

    iget-object v1, p0, La0/q;->D:La0/J0;

    iget-object v1, v1, La0/J0;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, La0/q;->r:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, La0/q;->e:Lb0/a;

    iget-object v1, v1, Lb0/a;->b:Lb0/D;

    invoke-virtual {v1}, Lb0/D;->f()V

    const/4 v1, 0x0

    iput-object v1, p0, La0/q;->u:LX4/i;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v0

    return-void

    :goto_3
    :try_start_5
    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_4
    monitor-exit v0

    throw p0
.end method

.method public final m()V
    .locals 5

    iget-object v0, p0, La0/u;->c:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, La0/d;->g:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_2

    instance-of v1, v2, Ljava/util/Set;

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    check-cast v2, Ljava/util/Set;

    invoke-virtual {p0, v2, v4}, La0/u;->d(Ljava/util/Set;Z)V

    goto :goto_1

    :cond_0
    instance-of v1, v2, [Ljava/lang/Object;

    if-eqz v1, :cond_1

    check-cast v2, [Ljava/util/Set;

    array-length v0, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v3, v2, v1

    invoke-virtual {p0, v3, v4}, La0/u;->d(Ljava/util/Set;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "corrupt pendingModifications drain: "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, La0/d;->u(Ljava/lang/String;)V

    throw v3

    :cond_2
    const-string p0, "pending composition has not been applied"

    invoke-static {p0}, La0/d;->u(Ljava/lang/String;)V

    throw v3

    :cond_3
    :goto_1
    return-void
.end method

.method public final n()V
    .locals 5

    iget-object v0, p0, La0/u;->c:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, La0/d;->g:Ljava/lang/Object;

    invoke-static {v2, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    instance-of v3, v2, Ljava/util/Set;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    check-cast v2, Ljava/util/Set;

    invoke-virtual {p0, v2, v4}, La0/u;->d(Ljava/util/Set;Z)V

    goto :goto_1

    :cond_0
    instance-of v3, v2, [Ljava/lang/Object;

    if-eqz v3, :cond_1

    check-cast v2, [Ljava/util/Set;

    array-length v0, v2

    move v1, v4

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v3, v2, v1

    invoke-virtual {p0, v3, v4}, La0/u;->d(Ljava/util/Set;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    const-string p0, "calling recordModificationsOf and applyChanges concurrently is not supported"

    invoke-static {p0}, La0/d;->u(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "corrupt pendingModifications drain: "

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, La0/d;->u(Ljava/lang/String;)V

    throw v1

    :cond_3
    :goto_1
    return-void
.end method

.method public final o(Ljava/util/ArrayList;)V
    .locals 3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_2

    const/4 v0, 0x1

    invoke-static {v0}, La0/d;->K(Z)V

    :try_start_0
    iget-object v0, p0, La0/u;->q:La0/q;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v0, p1}, La0/q;->y(Ljava/util/ArrayList;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, La0/q;->h()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, La0/q;->a()V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    iget-object v0, p0, La0/u;->e:LN/u;

    :try_start_3
    iget-object v1, v0, LN/u;->a:LN/v;

    invoke-virtual {v1}, LN/v;->g()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, v0, LN/u;->a:LN/v;

    invoke-virtual {v1}, LN/v;->g()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "Compose:abandons"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :try_start_4
    invoke-virtual {v0}, LN/u;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    move-object v1, v0

    check-cast v1, LJc/j;

    invoke-virtual {v1}, LJc/j;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, LJc/j;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La0/q0;

    invoke-virtual {v1}, LJc/j;->remove()V

    invoke-interface {v2}, La0/q0;->b()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p1

    goto :goto_1

    :cond_0
    :try_start_5
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_2

    :goto_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p1

    :cond_1
    :goto_2
    throw p1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception p1

    invoke-virtual {p0}, La0/u;->b()V

    throw p1

    :cond_2
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ldb/j;

    iget-object p0, p0, Ldb/j;->a:Ljava/lang/Object;

    check-cast p0, La0/Y;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    throw p0
.end method

.method public final p(La0/i0;Ljava/lang/Object;)La0/O;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget v3, v1, La0/i0;->a:I

    and-int/lit8 v4, v3, 0x2

    if-eqz v4, :cond_0

    or-int/lit8 v3, v3, 0x4

    iput v3, v1, La0/i0;->a:I

    :cond_0
    iget-object v3, v1, La0/i0;->c:La0/c;

    if-eqz v3, :cond_11

    invoke-virtual {v3}, La0/c;->a()Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_7

    :cond_1
    iget-object v4, v0, La0/u;->f:La0/w0;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, La0/c;->a()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, v4, La0/w0;->h:Ljava/util/ArrayList;

    iget v6, v3, La0/c;->a:I

    iget v7, v4, La0/w0;->b:I

    invoke-static {v5, v6, v7}, La0/d;->L(Ljava/util/ArrayList;II)I

    move-result v5

    if-ltz v5, :cond_2

    iget-object v4, v4, La0/w0;->h:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_3

    iget-object v0, v0, La0/u;->d:Ljava/lang/Object;

    monitor-enter v0

    monitor-exit v0

    sget-object v0, La0/O;->IGNORED:La0/O;

    return-object v0

    :cond_3
    iget-object v3, v1, La0/i0;->d:Lsb/n;

    if-eqz v3, :cond_10

    iget-object v3, v0, La0/u;->d:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v4, v0, La0/u;->q:La0/q;

    iget-boolean v5, v4, La0/q;->E:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_4

    invoke-virtual {v4, v1, v2}, La0/q;->W(La0/i0;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x1

    goto :goto_1

    :cond_4
    move v4, v6

    :goto_1
    if-eqz v4, :cond_5

    sget-object v0, La0/O;->IMMINENT:La0/O;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    goto/16 :goto_5

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :cond_5
    :try_start_1
    invoke-virtual/range {p0 .. p0}, La0/u;->s()V

    if-nez v2, :cond_7

    iget-object v2, v0, La0/u;->n:LB3/c;

    sget-object v4, La0/V;->e:La0/V;

    iget-object v2, v2, LB3/c;->a:Ljava/lang/Object;

    check-cast v2, LN/s;

    invoke-virtual {v2, v1}, LN/s;->c(Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_6

    not-int v5, v5

    :cond_6
    iget-object v6, v2, LN/s;->b:[Ljava/lang/Object;

    aput-object v1, v6, v5

    iget-object v1, v2, LN/s;->c:[Ljava/lang/Object;

    aput-object v4, v1, v5

    goto/16 :goto_4

    :cond_7
    instance-of v4, v2, La0/E;

    if-nez v4, :cond_9

    iget-object v2, v0, La0/u;->n:LB3/c;

    sget-object v4, La0/V;->e:La0/V;

    iget-object v2, v2, LB3/c;->a:Ljava/lang/Object;

    check-cast v2, LN/s;

    invoke-virtual {v2, v1}, LN/s;->c(Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_8

    not-int v5, v5

    :cond_8
    iget-object v6, v2, LN/s;->b:[Ljava/lang/Object;

    aput-object v1, v6, v5

    iget-object v1, v2, LN/s;->c:[Ljava/lang/Object;

    aput-object v4, v1, v5

    goto :goto_4

    :cond_9
    iget-object v4, v0, La0/u;->n:LB3/c;

    iget-object v4, v4, LB3/c;->a:Ljava/lang/Object;

    check-cast v4, LN/s;

    invoke-virtual {v4, v1}, LN/s;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_e

    instance-of v5, v4, LN/v;

    if-eqz v5, :cond_d

    check-cast v4, LN/v;

    iget-object v5, v4, LN/v;->b:[Ljava/lang/Object;

    iget-object v4, v4, LN/v;->a:[J

    array-length v7, v4

    add-int/lit8 v7, v7, -0x2

    if-ltz v7, :cond_e

    move v8, v6

    :goto_2
    aget-wide v9, v4, v8

    not-long v11, v9

    const/4 v13, 0x7

    shl-long/2addr v11, v13

    and-long/2addr v11, v9

    const-wide v13, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v11, v13

    cmp-long v11, v11, v13

    if-eqz v11, :cond_c

    sub-int v11, v8, v7

    not-int v11, v11

    ushr-int/lit8 v11, v11, 0x1f

    const/16 v12, 0x8

    rsub-int/lit8 v11, v11, 0x8

    move v13, v6

    :goto_3
    if-ge v13, v11, :cond_b

    const-wide/16 v14, 0xff

    and-long/2addr v14, v9

    const-wide/16 v16, 0x80

    cmp-long v14, v14, v16

    if-gez v14, :cond_a

    shl-int/lit8 v14, v8, 0x3

    add-int/2addr v14, v13

    aget-object v14, v5, v14

    sget-object v15, La0/V;->e:La0/V;

    if-ne v14, v15, :cond_a

    goto :goto_4

    :cond_a
    shr-long/2addr v9, v12

    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_b
    if-ne v11, v12, :cond_e

    :cond_c
    if-eq v8, v7, :cond_e

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_d
    sget-object v5, La0/V;->e:La0/V;

    if-ne v4, v5, :cond_e

    goto :goto_4

    :cond_e
    iget-object v4, v0, La0/u;->n:LB3/c;

    invoke-virtual {v4, v1, v2}, LB3/c;->f(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_4
    monitor-exit v3

    iget-object v1, v0, La0/u;->a:La0/s;

    invoke-virtual {v1, v0}, La0/s;->i(La0/u;)V

    iget-object v0, v0, La0/u;->q:La0/q;

    iget-boolean v0, v0, La0/q;->E:Z

    if-eqz v0, :cond_f

    sget-object v0, La0/O;->DEFERRED:La0/O;

    goto :goto_5

    :cond_f
    sget-object v0, La0/O;->SCHEDULED:La0/O;

    :goto_5
    return-object v0

    :goto_6
    monitor-exit v3

    throw v0

    :cond_10
    sget-object v0, La0/O;->IGNORED:La0/O;

    return-object v0

    :cond_11
    :goto_7
    sget-object v0, La0/O;->IGNORED:La0/O;

    return-object v0
.end method

.method public final q()V
    .locals 6

    iget-object v0, p0, La0/u;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, La0/u;->f:La0/w0;

    iget-object p0, p0, La0/w0;->c:[Ljava/lang/Object;

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    instance-of v4, v3, La0/i0;

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    check-cast v3, La0/i0;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    move-object v3, v5

    :goto_1
    if-eqz v3, :cond_1

    iget-object v4, v3, La0/i0;->b:La0/u;

    if-eqz v4, :cond_1

    invoke-virtual {v4, v3, v5}, La0/u;->p(La0/i0;Ljava/lang/Object;)La0/O;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0

    throw p0
.end method

.method public final r(Ljava/lang/Object;)V
    .locals 14

    iget-object v0, p0, La0/u;->g:LB3/c;

    iget-object v0, v0, LB3/c;->a:Ljava/lang/Object;

    check-cast v0, LN/s;

    invoke-virtual {v0, p1}, LN/s;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    instance-of v1, v0, LN/v;

    iget-object p0, p0, La0/u;->m:LB3/c;

    if-eqz v1, :cond_3

    check-cast v0, LN/v;

    iget-object v1, v0, LN/v;->b:[Ljava/lang/Object;

    iget-object v0, v0, LN/v;->a:[J

    array-length v2, v0

    add-int/lit8 v2, v2, -0x2

    if-ltz v2, :cond_4

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    aget-wide v5, v0, v4

    not-long v7, v5

    const/4 v9, 0x7

    shl-long/2addr v7, v9

    and-long/2addr v7, v5

    const-wide v9, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v7, v9

    cmp-long v7, v7, v9

    if-eqz v7, :cond_2

    sub-int v7, v4, v2

    not-int v7, v7

    ushr-int/lit8 v7, v7, 0x1f

    const/16 v8, 0x8

    rsub-int/lit8 v7, v7, 0x8

    move v9, v3

    :goto_1
    if-ge v9, v7, :cond_1

    const-wide/16 v10, 0xff

    and-long/2addr v10, v5

    const-wide/16 v12, 0x80

    cmp-long v10, v10, v12

    if-gez v10, :cond_0

    shl-int/lit8 v10, v4, 0x3

    add-int/2addr v10, v9

    aget-object v10, v1, v10

    check-cast v10, La0/i0;

    invoke-virtual {v10, p1}, La0/i0;->c(Ljava/lang/Object;)La0/O;

    move-result-object v11

    sget-object v12, La0/O;->IMMINENT:La0/O;

    if-ne v11, v12, :cond_0

    invoke-virtual {p0, p1, v10}, LB3/c;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    shr-long/2addr v5, v8

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    if-ne v7, v8, :cond_4

    :cond_2
    if-eq v4, v2, :cond_4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    check-cast v0, La0/i0;

    invoke-virtual {v0, p1}, La0/i0;->c(Ljava/lang/Object;)La0/O;

    move-result-object v1

    sget-object v2, La0/O;->IMMINENT:La0/O;

    if-ne v1, v2, :cond_4

    invoke-virtual {p0, p1, v0}, LB3/c;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    return-void
.end method

.method public final s()V
    .locals 1

    iget-object v0, p0, La0/u;->p:La0/x;

    iget-boolean v0, v0, La0/x;->a:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, La0/u;->a:La0/s;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    invoke-static {p0, p0}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public final t(Ljava/util/Set;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    instance-of v2, v1, Lc0/f;

    iget-object v3, v0, La0/u;->j:LB3/c;

    iget-object v0, v0, La0/u;->g:LB3/c;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_4

    check-cast v1, Lc0/f;

    iget-object v1, v1, Lc0/f;->a:LN/v;

    iget-object v2, v1, LN/v;->b:[Ljava/lang/Object;

    iget-object v1, v1, LN/v;->a:[J

    array-length v6, v1

    add-int/lit8 v6, v6, -0x2

    if-ltz v6, :cond_7

    move v7, v4

    :goto_0
    aget-wide v8, v1, v7

    not-long v10, v8

    const/4 v12, 0x7

    shl-long/2addr v10, v12

    and-long/2addr v10, v8

    const-wide v12, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v10, v12

    cmp-long v10, v10, v12

    if-eqz v10, :cond_3

    sub-int v10, v7, v6

    not-int v10, v10

    ushr-int/lit8 v10, v10, 0x1f

    const/16 v11, 0x8

    rsub-int/lit8 v10, v10, 0x8

    move v12, v4

    :goto_1
    if-ge v12, v10, :cond_2

    const-wide/16 v13, 0xff

    and-long/2addr v13, v8

    const-wide/16 v15, 0x80

    cmp-long v13, v13, v15

    if-gez v13, :cond_1

    shl-int/lit8 v13, v7, 0x3

    add-int/2addr v13, v12

    aget-object v13, v2, v13

    iget-object v14, v0, LB3/c;->a:Ljava/lang/Object;

    check-cast v14, LN/s;

    invoke-virtual {v14, v13}, LN/s;->a(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    iget-object v14, v3, LB3/c;->a:Ljava/lang/Object;

    check-cast v14, LN/s;

    invoke-virtual {v14, v13}, LN/s;->a(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    :cond_0
    return v5

    :cond_1
    shr-long/2addr v8, v11

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_2
    if-ne v10, v11, :cond_7

    :cond_3
    if-eq v7, v6, :cond_7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_4
    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    iget-object v6, v0, LB3/c;->a:Ljava/lang/Object;

    check-cast v6, LN/s;

    invoke-virtual {v6, v2}, LN/s;->a(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    iget-object v6, v3, LB3/c;->a:Ljava/lang/Object;

    check-cast v6, LN/s;

    invoke-virtual {v6, v2}, LN/s;->a(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_6
    return v5

    :cond_7
    return v4
.end method

.method public final u()Z
    .locals 5

    iget-object v0, p0, La0/u;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, La0/u;->m()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v1, p0, La0/u;->n:LB3/c;

    new-instance v2, LB3/c;

    const/16 v3, 0xe

    invoke-direct {v2, v3}, LB3/c;-><init>(I)V

    iput-object v2, p0, La0/u;->n:LB3/c;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0}, La0/u;->s()V

    iget-object v2, p0, La0/u;->q:La0/q;

    invoke-virtual {v2, v1}, La0/q;->B(LB3/c;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, La0/u;->n()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v2

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return v2

    :goto_1
    :try_start_3
    iput-object v1, p0, La0/u;->n:LB3/c;

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    :try_start_4
    iget-object v2, p0, La0/u;->e:LN/u;

    iget-object v2, v2, LN/u;->a:LN/v;

    invoke-virtual {v2}, LN/v;->g()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, La0/u;->e:LN/u;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, v2, LN/u;->a:LN/v;

    invoke-virtual {v3}, LN/v;->g()Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "Compose:abandons"

    invoke-static {v3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    invoke-virtual {v2}, LN/u;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    move-object v3, v2

    check-cast v3, LJc/j;

    iget-object v3, v3, LJc/j;->c:Ljava/lang/Object;

    check-cast v3, LJc/m;

    invoke-virtual {v3}, LJc/m;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v2

    check-cast v3, LJc/j;

    iget-object v3, v3, LJc/j;->c:Ljava/lang/Object;

    check-cast v3, LJc/m;

    invoke-virtual {v3}, LJc/m;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, La0/q0;

    move-object v4, v2

    check-cast v4, LJc/j;

    invoke-virtual {v4}, LJc/j;->remove()V

    invoke-interface {v3}, La0/q0;->b()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v1

    goto :goto_4

    :cond_1
    :try_start_6
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_5

    :goto_4
    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v1

    :catchall_2
    move-exception p0

    goto :goto_7

    :catch_1
    move-exception v1

    goto :goto_6

    :cond_2
    :goto_5
    throw v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :goto_6
    :try_start_7
    invoke-virtual {p0}, La0/u;->b()V

    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :goto_7
    monitor-exit v0

    throw p0
.end method

.method public final v(Lc0/f;)V
    .locals 4

    :goto_0
    iget-object v0, p0, La0/u;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v2, v1

    goto :goto_1

    :cond_0
    sget-object v2, La0/d;->g:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    :goto_1
    if-eqz v2, :cond_1

    move-object v2, p1

    goto :goto_2

    :cond_1
    instance-of v2, v0, Ljava/util/Set;

    if-eqz v2, :cond_2

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/util/Set;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    aput-object p1, v2, v1

    goto :goto_2

    :cond_2
    instance-of v1, v0, [Ljava/lang/Object;

    if-eqz v1, :cond_6

    const-string v1, "null cannot be cast to non-null type kotlin.Array<kotlin.collections.Set<kotlin.Any>>"

    invoke-static {v0, v1}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v0

    check-cast v1, [Ljava/util/Set;

    const-string v2, "<this>"

    invoke-static {v1, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v2, v1

    add-int/lit8 v3, v2, 0x1

    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    aput-object p1, v1, v2

    move-object v2, v1

    :goto_2
    iget-object v1, p0, La0/u;->c:Ljava/util/concurrent/atomic/AtomicReference;

    :cond_3
    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    if-nez v0, :cond_4

    iget-object p1, p0, La0/u;->d:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    invoke-virtual {p0}, La0/u;->n()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    goto :goto_3

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0

    :cond_4
    :goto_3
    return-void

    :cond_5
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v0, :cond_3

    goto :goto_0

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "corrupt pendingModifications: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, La0/u;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final w(Ljava/lang/Object;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, La0/u;->q:La0/q;

    iget v3, v2, La0/q;->z:I

    if-lez v3, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-virtual {v2}, La0/q;->v()La0/i0;

    move-result-object v2

    if-eqz v2, :cond_d

    iget v3, v2, La0/i0;->a:I

    const/4 v4, 0x1

    or-int/2addr v3, v4

    iput v3, v2, La0/i0;->a:I

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v3, v2, La0/i0;->f:LN/r;

    if-nez v3, :cond_2

    new-instance v3, LN/r;

    invoke-direct {v3}, LN/r;-><init>()V

    iput-object v3, v2, La0/i0;->f:LN/r;

    :cond_2
    iget v5, v2, La0/i0;->e:I

    invoke-virtual {v3, v1}, LN/r;->b(Ljava/lang/Object;)I

    move-result v6

    if-gez v6, :cond_3

    not-int v6, v6

    const/4 v7, -0x1

    goto :goto_0

    :cond_3
    iget-object v7, v3, LN/r;->c:[I

    aget v7, v7, v6

    :goto_0
    iget-object v8, v3, LN/r;->b:[Ljava/lang/Object;

    aput-object v1, v8, v6

    iget-object v3, v3, LN/r;->c:[I

    aput v5, v3, v6

    iget v3, v2, La0/i0;->e:I

    if-ne v7, v3, :cond_4

    goto/16 :goto_5

    :cond_4
    :goto_1
    instance-of v3, v1, Lk0/s;

    if-eqz v3, :cond_5

    move-object v3, v1

    check-cast v3, Lk0/s;

    invoke-virtual {v3, v4}, Lk0/s;->b(I)V

    :cond_5
    iget-object v3, v0, La0/u;->g:LB3/c;

    invoke-virtual {v3, v1, v2}, LB3/c;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    instance-of v3, v1, La0/E;

    if-eqz v3, :cond_d

    move-object v3, v1

    check-cast v3, La0/E;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lk0/n;->k()Lk0/h;

    move-result-object v5

    iget-object v6, v3, La0/E;->c:La0/C;

    invoke-static {v6, v5}, Lk0/n;->j(Lk0/t;Lk0/h;)Lk0/t;

    move-result-object v6

    check-cast v6, La0/C;

    iget-object v7, v3, La0/E;->b:LA1/d;

    const/4 v8, 0x0

    invoke-virtual {v3, v6, v5, v8, v7}, La0/E;->c(La0/C;Lk0/h;ZLA1/d;)La0/C;

    move-result-object v5

    iget-object v0, v0, La0/u;->j:LB3/c;

    invoke-virtual {v0, v1}, LB3/c;->t(Ljava/lang/Object;)V

    iget-object v6, v5, La0/C;->e:LN/r;

    iget-object v7, v6, LN/r;->b:[Ljava/lang/Object;

    iget-object v6, v6, LN/r;->a:[J

    array-length v9, v6

    add-int/lit8 v9, v9, -0x2

    if-ltz v9, :cond_a

    move v10, v8

    :goto_2
    aget-wide v11, v6, v10

    not-long v13, v11

    const/4 v15, 0x7

    shl-long/2addr v13, v15

    and-long/2addr v13, v11

    const-wide v15, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v13, v15

    cmp-long v13, v13, v15

    if-eqz v13, :cond_9

    sub-int v13, v10, v9

    not-int v13, v13

    ushr-int/lit8 v13, v13, 0x1f

    const/16 v14, 0x8

    rsub-int/lit8 v13, v13, 0x8

    move v15, v8

    :goto_3
    if-ge v15, v13, :cond_8

    const-wide/16 v16, 0xff

    and-long v16, v11, v16

    const-wide/16 v18, 0x80

    cmp-long v16, v16, v18

    if-gez v16, :cond_7

    shl-int/lit8 v16, v10, 0x3

    add-int v16, v16, v15

    aget-object v16, v7, v16

    move-object/from16 v8, v16

    check-cast v8, Lk0/r;

    instance-of v14, v8, Lk0/s;

    if-eqz v14, :cond_6

    move-object v14, v8

    check-cast v14, Lk0/s;

    invoke-virtual {v14, v4}, Lk0/s;->b(I)V

    :cond_6
    invoke-virtual {v0, v8, v1}, LB3/c;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v8, 0x8

    goto :goto_4

    :cond_7
    move v8, v14

    :goto_4
    shr-long/2addr v11, v8

    add-int/lit8 v15, v15, 0x1

    move v14, v8

    const/4 v8, 0x0

    goto :goto_3

    :cond_8
    move v8, v14

    if-ne v13, v8, :cond_a

    :cond_9
    if-eq v10, v9, :cond_a

    add-int/lit8 v10, v10, 0x1

    const/4 v8, 0x0

    goto :goto_2

    :cond_a
    iget-object v0, v5, La0/C;->f:Ljava/lang/Object;

    iget-object v1, v2, La0/i0;->g:LN/s;

    if-nez v1, :cond_b

    new-instance v1, LN/s;

    invoke-direct {v1}, LN/s;-><init>()V

    iput-object v1, v2, La0/i0;->g:LN/s;

    :cond_b
    invoke-virtual {v1, v3}, LN/s;->c(Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_c

    not-int v2, v2

    :cond_c
    iget-object v4, v1, LN/s;->b:[Ljava/lang/Object;

    aput-object v3, v4, v2

    iget-object v1, v1, LN/s;->c:[Ljava/lang/Object;

    aput-object v0, v1, v2

    :cond_d
    :goto_5
    return-void
.end method

.method public final x(Ljava/lang/Object;)V
    .locals 14

    iget-object v0, p0, La0/u;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, La0/u;->r(Ljava/lang/Object;)V

    iget-object v1, p0, La0/u;->j:LB3/c;

    iget-object v1, v1, LB3/c;->a:Ljava/lang/Object;

    check-cast v1, LN/s;

    invoke-virtual {v1, p1}, LN/s;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    instance-of v1, p1, LN/v;

    if-eqz v1, :cond_3

    check-cast p1, LN/v;

    iget-object v1, p1, LN/v;->b:[Ljava/lang/Object;

    iget-object p1, p1, LN/v;->a:[J

    array-length v2, p1

    add-int/lit8 v2, v2, -0x2

    if-ltz v2, :cond_4

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    aget-wide v5, p1, v4

    not-long v7, v5

    const/4 v9, 0x7

    shl-long/2addr v7, v9

    and-long/2addr v7, v5

    const-wide v9, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v7, v9

    cmp-long v7, v7, v9

    if-eqz v7, :cond_2

    sub-int v7, v4, v2

    not-int v7, v7

    ushr-int/lit8 v7, v7, 0x1f

    const/16 v8, 0x8

    rsub-int/lit8 v7, v7, 0x8

    move v9, v3

    :goto_1
    if-ge v9, v7, :cond_1

    const-wide/16 v10, 0xff

    and-long/2addr v10, v5

    const-wide/16 v12, 0x80

    cmp-long v10, v10, v12

    if-gez v10, :cond_0

    shl-int/lit8 v10, v4, 0x3

    add-int/2addr v10, v9

    aget-object v10, v1, v10

    check-cast v10, La0/E;

    invoke-virtual {p0, v10}, La0/u;->r(Ljava/lang/Object;)V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    :goto_2
    shr-long/2addr v5, v8

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    if-ne v7, v8, :cond_4

    :cond_2
    if-eq v4, v2, :cond_4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    check-cast p1, La0/E;

    invoke-virtual {p0, p1}, La0/u;->r(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0

    throw p0
.end method
