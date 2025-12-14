.class public abstract LG5/o;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lo3/e;


# direct methods
.method public static final a(Lx1/r;ILY1/k;La0/m;I)V
    .locals 10

    check-cast p3, La0/q;

    const v0, 0x3f35334c

    invoke-virtual {p3, v0}, La0/q;->S(I)La0/q;

    and-int/lit8 v0, p4, 0xe

    if-nez v0, :cond_1

    invoke-virtual {p3, p0}, La0/q;->e(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, p4

    goto :goto_1

    :cond_1
    move v0, p4

    :goto_1
    and-int/lit8 v1, p4, 0x70

    if-nez v1, :cond_2

    or-int/lit8 v0, v0, 0x10

    :cond_2
    and-int/lit16 v1, p4, 0x380

    if-nez v1, :cond_4

    invoke-virtual {p3, p2}, La0/q;->g(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x100

    goto :goto_2

    :cond_3
    const/16 v1, 0x80

    :goto_2
    or-int/2addr v0, v1

    :cond_4
    and-int/lit16 v0, v0, 0x2db

    const/16 v1, 0x92

    if-ne v0, v1, :cond_6

    invoke-virtual {p3}, La0/q;->x()Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {p3}, La0/q;->K()V

    :goto_3
    move v6, p1

    goto/16 :goto_8

    :cond_6
    :goto_4
    invoke-virtual {p3}, La0/q;->M()V

    and-int/lit8 v0, p4, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    invoke-virtual {p3}, La0/q;->w()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_5

    :cond_7
    invoke-virtual {p3}, La0/q;->K()V

    goto :goto_6

    :cond_8
    :goto_5
    move p1, v1

    :goto_6
    invoke-virtual {p3}, La0/q;->q()V

    sget-object v0, LB1/c;->a:LB1/c;

    new-instance v2, LK1/c;

    const/4 v3, 0x1

    invoke-direct {v2, p1, v3}, LK1/c;-><init>(II)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, LB1/k;

    invoke-direct {v5, v4}, LB1/k;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {p2, v5}, LY1/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, LB1/i;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v4, v2}, LB1/i;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Li0/a;

    const v4, 0x6835facb

    invoke-direct {v2, v4, v3, v5}, Li0/a;-><init>(IZLdb/b;)V

    const v4, 0x227c4e56

    invoke-virtual {p3, v4}, La0/q;->R(I)V

    const v4, -0x20ad3f64

    invoke-virtual {p3, v4}, La0/q;->R(I)V

    iget-object v4, p3, La0/q;->a:LJ2/i0;

    instance-of v4, v4, Lx1/b;

    if-eqz v4, :cond_b

    invoke-virtual {p3}, La0/q;->O()V

    iget-boolean v4, p3, La0/q;->O:Z

    if-eqz v4, :cond_9

    invoke-virtual {p3, v0}, La0/q;->k(Lsb/a;)V

    goto :goto_7

    :cond_9
    invoke-virtual {p3}, La0/q;->d0()V

    :goto_7
    sget-object v0, LB1/d;->b:LB1/d;

    invoke-static {p3, p0, v0}, La0/d;->M(La0/m;Ljava/lang/Object;Lsb/n;)V

    new-instance v0, LK1/a;

    invoke-direct {v0, p1}, LK1/a;-><init>(I)V

    sget-object v4, LB1/d;->c:LB1/d;

    invoke-static {p3, v0, v4}, La0/d;->M(La0/m;Ljava/lang/Object;Lsb/n;)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, p3, v0}, Li0/a;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p3, v3}, La0/q;->p(Z)V

    invoke-virtual {p3, v1}, La0/q;->p(Z)V

    invoke-virtual {p3, v1}, La0/q;->p(Z)V

    goto :goto_3

    :goto_8
    invoke-virtual {p3}, La0/q;->r()La0/i0;

    move-result-object p1

    if-eqz p1, :cond_a

    new-instance p3, LB1/e;

    const/4 v9, 0x0

    move-object v4, p3

    move-object v5, p0

    move-object v7, p2

    move v8, p4

    invoke-direct/range {v4 .. v9}, LB1/e;-><init>(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p3, p1, La0/i0;->d:Lsb/n;

    :cond_a
    return-void

    :cond_b
    invoke-static {}, La0/d;->B()V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final b(JLK1/c;Li0/a;La0/m;I)V
    .locals 8

    check-cast p4, La0/q;

    const v0, -0x7820d166

    invoke-virtual {p4, v0}, La0/q;->S(I)La0/q;

    and-int/lit8 v0, p5, 0xe

    if-nez v0, :cond_1

    invoke-virtual {p4, p0, p1}, La0/q;->d(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, p5

    goto :goto_1

    :cond_1
    move v0, p5

    :goto_1
    and-int/lit8 v1, p5, 0x70

    if-nez v1, :cond_3

    invoke-virtual {p4, p2}, La0/q;->e(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x20

    goto :goto_2

    :cond_2
    const/16 v1, 0x10

    :goto_2
    or-int/2addr v0, v1

    :cond_3
    and-int/lit16 v1, p5, 0x380

    if-nez v1, :cond_5

    invoke-virtual {p4, p3}, La0/q;->g(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x100

    goto :goto_3

    :cond_4
    const/16 v1, 0x80

    :goto_3
    or-int/2addr v0, v1

    :cond_5
    and-int/lit16 v1, v0, 0x2db

    const/16 v2, 0x92

    if-ne v1, v2, :cond_7

    invoke-virtual {p4}, La0/q;->x()Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {p4}, La0/q;->K()V

    goto :goto_6

    :cond_7
    :goto_4
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const v2, -0x58b3f9ff

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p4, v1, v2, v4, v3}, La0/q;->L(Ljava/lang/Object;ILjava/lang/Object;I)V

    sget-object v1, LB1/f;->a:LB1/f;

    const v2, 0x227c4e56

    invoke-virtual {p4, v2}, La0/q;->R(I)V

    and-int/lit16 v0, v0, 0x380

    const v2, -0x20ad3f64

    invoke-virtual {p4, v2}, La0/q;->R(I)V

    iget-object v2, p4, La0/q;->a:LJ2/i0;

    instance-of v2, v2, Lx1/b;

    if-eqz v2, :cond_a

    invoke-virtual {p4}, La0/q;->O()V

    iget-boolean v2, p4, La0/q;->O:Z

    if-eqz v2, :cond_8

    invoke-virtual {p4, v1}, La0/q;->k(Lsb/a;)V

    goto :goto_5

    :cond_8
    invoke-virtual {p4}, La0/q;->d0()V

    :goto_5
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sget-object v2, LB1/d;->d:LB1/d;

    invoke-static {p4, v1, v2}, La0/d;->M(La0/m;Ljava/lang/Object;Lsb/n;)V

    sget-object v1, LB1/d;->e:LB1/d;

    invoke-static {p4, p2, v1}, La0/d;->M(La0/m;Ljava/lang/Object;Lsb/n;)V

    shr-int/lit8 v0, v0, 0x6

    and-int/lit8 v0, v0, 0xe

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, p4, v0}, Li0/a;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    invoke-virtual {p4, v0}, La0/q;->p(Z)V

    invoke-virtual {p4, v3}, La0/q;->p(Z)V

    invoke-virtual {p4, v3}, La0/q;->p(Z)V

    invoke-virtual {p4, v3}, La0/q;->p(Z)V

    :goto_6
    invoke-virtual {p4}, La0/q;->r()La0/i0;

    move-result-object p4

    if-eqz p4, :cond_9

    new-instance v7, Lz1/V0;

    const/4 v6, 0x2

    move-object v0, v7

    move-wide v1, p0

    move-object v3, p2

    move-object v4, p3

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lz1/V0;-><init>(JLjava/lang/Object;Lsb/n;II)V

    iput-object v7, p4, La0/i0;->d:Lsb/n;

    :cond_9
    return-void

    :cond_a
    invoke-static {}, La0/d;->B()V

    throw v4
.end method

.method public static final c(Landroidx/work/impl/WorkDatabase;Lf3/c;Lg3/j;)V
    .locals 6

    const-string v0, "workDatabase"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configuration"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "continuation"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    filled-new-array {p2}, [Lg3/j;

    move-result-object p2

    invoke-static {p2}, Lfb/o;->i([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p2

    const/4 v0, 0x0

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {p2}, Lfb/t;->t(Ljava/util/AbstractList;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg3/j;

    iget-object v3, v2, Lg3/j;->g:Ljava/util/List;

    const-string v4, "current.work"

    invoke-static {v3, v4}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Iterable;

    instance-of v4, v3, Ljava/util/Collection;

    if-eqz v4, :cond_1

    move-object v4, v3

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v0

    goto :goto_2

    :cond_1
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v0

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lf3/G;

    iget-object v5, v5, Lf3/G;->b:Lo3/q;

    iget-object v5, v5, Lo3/q;->j:Lf3/f;

    invoke-virtual {v5}, Lf3/f;->a()Z

    move-result v5

    if-eqz v5, :cond_2

    add-int/lit8 v4, v4, 0x1

    if-ltz v4, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {}, Lfb/o;->k()V

    const/4 p0, 0x0

    throw p0

    :cond_4
    :goto_2
    add-int/2addr v1, v4

    iget-object v2, v2, Lg3/j;->j:Ljava/util/List;

    if-eqz v2, :cond_0

    check-cast v2, Ljava/util/Collection;

    invoke-interface {p2, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_5
    if-nez v1, :cond_6

    return-void

    :cond_6
    invoke-virtual {p0}, Landroidx/work/impl/WorkDatabase;->h()Lo3/r;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p2, LJ2/d0;->i:Ljava/util/TreeMap;

    const-string p2, "Select COUNT(*) FROM workspec WHERE LENGTH(content_uri_triggers)<>0 AND state NOT IN (2, 3, 5)"

    invoke-static {v0, p2}, LG5/z3;->a(ILjava/lang/String;)LJ2/d0;

    move-result-object p2

    iget-object p0, p0, Lo3/r;->a:Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {p0}, LJ2/U;->assertNotSuspendingTransaction()V

    invoke-static {p0, p2, v0}, LA/b;->k(LJ2/U;LT2/g;Z)Landroid/database/Cursor;

    move-result-object p0

    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_7
    :goto_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {p2}, LJ2/d0;->a()V

    add-int p0, v0, v1

    iget p1, p1, Lf3/c;->j:I

    if-gt p0, p1, :cond_8

    return-void

    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p2, "Too many workers with contentUriTriggers are enqueued:\ncontentUriTrigger workers limit: "

    const-string v2, ";\nalready enqueued count: "

    const-string v3, ";\ncurrent enqueue operation count: "

    invoke-static {p1, v0, p2, v2, v3}, Lcom/sec/android/app/sbrowser/autofill/password/k;->l(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ".\nTo address this issue you can: \n1. enqueue less workers or batch some of workers with content uri triggers together;\n2. increase limit via Configuration.Builder.setContentUriTriggerWorkersLimit;\nPlease beware that workers with content uri triggers immediately occupy slots in JobScheduler so no updates to content uris are missed."

    invoke-static {p1, v1, p2}, LB/e;->p(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_4
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {p2}, LJ2/d0;->a()V

    throw p1
.end method

.method public static d(Landroid/content/Context;)Z
    .locals 1

    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    invoke-virtual {p0}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result p0

    return p0
.end method
