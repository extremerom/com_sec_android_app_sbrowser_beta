.class public final Lg3/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final s:Ljava/lang/String;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/String;

.field public final c:LZ3/x;

.field public final d:Lo3/q;

.field public e:Lf3/t;

.field public final f:Lr3/a;

.field public g:Lf3/s;

.field public final h:Lf3/c;

.field public final i:Lf3/w;

.field public final j:Lg3/d;

.field public final k:Landroidx/work/impl/WorkDatabase;

.field public final l:Lo3/r;

.field public final m:Lo3/c;

.field public final n:Ljava/util/ArrayList;

.field public o:Ljava/lang/String;

.field public final p:Lq3/j;

.field public final q:Lq3/j;

.field public volatile r:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "WorkerWrapper"

    invoke-static {v0}, Lf3/u;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lg3/s;->s:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(LB0/M;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lf3/p;

    sget-object v1, Lf3/i;->c:Lf3/i;

    invoke-direct {v0, v1}, Lf3/p;-><init>(Lf3/i;)V

    iput-object v0, p0, Lg3/s;->g:Lf3/s;

    new-instance v0, Lq3/j;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lg3/s;->p:Lq3/j;

    new-instance v0, Lq3/j;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lg3/s;->q:Lq3/j;

    const/16 v0, -0x100

    iput v0, p0, Lg3/s;->r:I

    iget-object v0, p1, LB0/M;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lg3/s;->a:Landroid/content/Context;

    iget-object v0, p1, LB0/M;->d:Ljava/lang/Object;

    check-cast v0, Lr3/a;

    iput-object v0, p0, Lg3/s;->f:Lr3/a;

    iget-object v0, p1, LB0/M;->c:Ljava/lang/Object;

    check-cast v0, Lg3/d;

    iput-object v0, p0, Lg3/s;->j:Lg3/d;

    iget-object v0, p1, LB0/M;->g:Ljava/lang/Object;

    check-cast v0, Lo3/q;

    iput-object v0, p0, Lg3/s;->d:Lo3/q;

    iget-object v0, v0, Lo3/q;->a:Ljava/lang/String;

    iput-object v0, p0, Lg3/s;->b:Ljava/lang/String;

    iget-object v0, p1, LB0/M;->i:Ljava/lang/Object;

    check-cast v0, LZ3/x;

    iput-object v0, p0, Lg3/s;->c:LZ3/x;

    const/4 v0, 0x0

    iput-object v0, p0, Lg3/s;->e:Lf3/t;

    iget-object v0, p1, LB0/M;->e:Ljava/lang/Object;

    check-cast v0, Lf3/c;

    iput-object v0, p0, Lg3/s;->h:Lf3/c;

    iget-object v0, v0, Lf3/c;->c:Lf3/w;

    iput-object v0, p0, Lg3/s;->i:Lf3/w;

    iget-object v0, p1, LB0/M;->f:Ljava/lang/Object;

    check-cast v0, Landroidx/work/impl/WorkDatabase;

    iput-object v0, p0, Lg3/s;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->h()Lo3/r;

    move-result-object v1

    iput-object v1, p0, Lg3/s;->l:Lo3/r;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->b()Lo3/c;

    move-result-object v0

    iput-object v0, p0, Lg3/s;->m:Lo3/c;

    iget-object p1, p1, LB0/M;->h:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    iput-object p1, p0, Lg3/s;->n:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a(Lf3/s;)V
    .locals 11

    instance-of v0, p1, Lf3/r;

    iget-object v1, p0, Lg3/s;->d:Lo3/q;

    sget-object v2, Lg3/s;->s:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-static {}, Lf3/u;->d()Lf3/u;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Worker result SUCCESS for "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lg3/s;->o:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lf3/u;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lo3/q;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lg3/s;->d()V

    goto/16 :goto_2

    :cond_0
    iget-object p1, p0, Lg3/s;->m:Lo3/c;

    iget-object v0, p0, Lg3/s;->b:Ljava/lang/String;

    iget-object v1, p0, Lg3/s;->l:Lo3/r;

    iget-object v3, p0, Lg3/s;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v3}, LJ2/U;->beginTransaction()V

    const/4 v4, 0x0

    :try_start_0
    sget-object v5, Lf3/E;->SUCCEEDED:Lf3/E;

    invoke-virtual {v1, v5, v0}, Lo3/r;->s(Lf3/E;Ljava/lang/String;)V

    iget-object v5, p0, Lg3/s;->g:Lf3/s;

    check-cast v5, Lf3/r;

    iget-object v5, v5, Lf3/r;->a:Lf3/i;

    invoke-virtual {v1, v0, v5}, Lo3/r;->r(Ljava/lang/String;Lf3/i;)V

    iget-object v5, p0, Lg3/s;->i:Lf3/w;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {p1, v0}, Lo3/c;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v1, v7}, Lo3/r;->j(Ljava/lang/String;)Lf3/E;

    move-result-object v8

    sget-object v9, Lf3/E;->BLOCKED:Lf3/E;

    if-ne v8, v9, :cond_1

    invoke-virtual {p1, v7}, Lo3/c;->e(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-static {}, Lf3/u;->d()Lf3/u;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Setting status to enqueued for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v2, v9}, Lf3/u;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v8, Lf3/E;->ENQUEUED:Lf3/E;

    invoke-virtual {v1, v8, v7}, Lo3/r;->s(Lf3/E;Ljava/lang/String;)V

    invoke-virtual {v1, v5, v6, v7}, Lo3/r;->q(JLjava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, LJ2/U;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v3}, LJ2/U;->endTransaction()V

    invoke-virtual {p0, v4}, Lg3/s;->e(Z)V

    goto :goto_2

    :goto_1
    invoke-virtual {v3}, LJ2/U;->endTransaction()V

    invoke-virtual {p0, v4}, Lg3/s;->e(Z)V

    throw p1

    :cond_3
    instance-of p1, p1, Lf3/q;

    if-eqz p1, :cond_4

    invoke-static {}, Lf3/u;->d()Lf3/u;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Worker result RETRY for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lg3/s;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lf3/u;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lg3/s;->c()V

    goto :goto_2

    :cond_4
    invoke-static {}, Lf3/u;->d()Lf3/u;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Worker result FAILURE for "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lg3/s;->o:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lf3/u;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lo3/q;->d()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lg3/s;->d()V

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lg3/s;->g()V

    :goto_2
    return-void
.end method

.method public final b()V
    .locals 3

    invoke-virtual {p0}, Lg3/s;->h()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lg3/s;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, LJ2/U;->beginTransaction()V

    :try_start_0
    iget-object v0, p0, Lg3/s;->l:Lo3/r;

    iget-object v1, p0, Lg3/s;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lo3/r;->j(Ljava/lang/String;)Lf3/E;

    move-result-object v0

    iget-object v1, p0, Lg3/s;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->g()Lo3/n;

    move-result-object v1

    iget-object v2, p0, Lg3/s;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lo3/n;->r(Ljava/lang/String;)V

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lg3/s;->e(Z)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    sget-object v1, Lf3/E;->RUNNING:Lf3/E;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lg3/s;->g:Lf3/s;

    invoke-virtual {p0, v0}, Lg3/s;->a(Lf3/s;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lf3/E;->a()Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, -0x200

    iput v0, p0, Lg3/s;->r:I

    invoke-virtual {p0}, Lg3/s;->c()V

    :cond_2
    :goto_0
    iget-object v0, p0, Lg3/s;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, LJ2/U;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lg3/s;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {p0}, LJ2/U;->endTransaction()V

    goto :goto_2

    :goto_1
    iget-object p0, p0, Lg3/s;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {p0}, LJ2/U;->endTransaction()V

    throw v0

    :cond_3
    :goto_2
    return-void
.end method

.method public final c()V
    .locals 6

    iget-object v0, p0, Lg3/s;->b:Ljava/lang/String;

    iget-object v1, p0, Lg3/s;->l:Lo3/r;

    iget-object v2, p0, Lg3/s;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v2}, LJ2/U;->beginTransaction()V

    const/4 v3, 0x1

    :try_start_0
    sget-object v4, Lf3/E;->ENQUEUED:Lf3/E;

    invoke-virtual {v1, v4, v0}, Lo3/r;->s(Lf3/E;Ljava/lang/String;)V

    iget-object v4, p0, Lg3/s;->i:Lf3/w;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5, v0}, Lo3/r;->q(JLjava/lang/String;)V

    iget-object v4, p0, Lg3/s;->d:Lo3/q;

    iget v4, v4, Lo3/q;->v:I

    invoke-virtual {v1, v4, v0}, Lo3/r;->p(ILjava/lang/String;)V

    const-wide/16 v4, -0x1

    invoke-virtual {v1, v4, v5, v0}, Lo3/r;->o(JLjava/lang/String;)V

    invoke-virtual {v2}, LJ2/U;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, LJ2/U;->endTransaction()V

    invoke-virtual {p0, v3}, Lg3/s;->e(Z)V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v2}, LJ2/U;->endTransaction()V

    invoke-virtual {p0, v3}, Lg3/s;->e(Z)V

    throw v0
.end method

.method public final d()V
    .locals 8

    iget-object v0, p0, Lg3/s;->b:Ljava/lang/String;

    iget-object v1, p0, Lg3/s;->l:Lo3/r;

    iget-object v2, p0, Lg3/s;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v2}, LJ2/U;->beginTransaction()V

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lg3/s;->i:Lf3/w;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5, v0}, Lo3/r;->q(JLjava/lang/String;)V

    sget-object v4, Lf3/E;->ENQUEUED:Lf3/E;

    invoke-virtual {v1, v4, v0}, Lo3/r;->s(Lf3/E;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v4, v1, Lo3/r;->a:Landroidx/work/impl/WorkDatabase_Impl;

    :try_start_1
    invoke-virtual {v4}, LJ2/U;->assertNotSuspendingTransaction()V

    iget-object v5, v1, Lo3/r;->k:Lo3/h;

    invoke-virtual {v5}, LJ2/i0;->a()LT2/h;

    move-result-object v6

    const/4 v7, 0x1

    if-nez v0, :cond_0

    invoke-interface {v6, v7}, LT2/f;->l(I)V

    goto :goto_0

    :cond_0
    invoke-interface {v6, v7, v0}, LT2/f;->U(ILjava/lang/String;)V

    :goto_0
    invoke-virtual {v4}, LJ2/U;->beginTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {v6}, LT2/h;->u()I

    invoke-virtual {v4}, LJ2/U;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-virtual {v4}, LJ2/U;->endTransaction()V

    invoke-virtual {v5, v6}, LJ2/i0;->r(LT2/h;)V

    iget-object v5, p0, Lg3/s;->d:Lo3/q;

    iget v5, v5, Lo3/q;->v:I

    invoke-virtual {v1, v5, v0}, Lo3/r;->p(ILjava/lang/String;)V

    invoke-virtual {v4}, LJ2/U;->assertNotSuspendingTransaction()V

    iget-object v5, v1, Lo3/r;->g:Lo3/h;

    invoke-virtual {v5}, LJ2/i0;->a()LT2/h;

    move-result-object v6

    if-nez v0, :cond_1

    invoke-interface {v6, v7}, LT2/f;->l(I)V

    goto :goto_1

    :cond_1
    invoke-interface {v6, v7, v0}, LT2/f;->U(ILjava/lang/String;)V

    :goto_1
    invoke-virtual {v4}, LJ2/U;->beginTransaction()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-interface {v6}, LT2/h;->u()I

    invoke-virtual {v4}, LJ2/U;->setTransactionSuccessful()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-virtual {v4}, LJ2/U;->endTransaction()V

    invoke-virtual {v5, v6}, LJ2/i0;->r(LT2/h;)V

    const-wide/16 v4, -0x1

    invoke-virtual {v1, v4, v5, v0}, Lo3/r;->o(JLjava/lang/String;)V

    invoke-virtual {v2}, LJ2/U;->setTransactionSuccessful()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-virtual {v2}, LJ2/U;->endTransaction()V

    invoke-virtual {p0, v3}, Lg3/s;->e(Z)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    :try_start_6
    invoke-virtual {v4}, LJ2/U;->endTransaction()V

    invoke-virtual {v5, v6}, LJ2/i0;->r(LT2/h;)V

    throw v0

    :catchall_2
    move-exception v0

    invoke-virtual {v4}, LJ2/U;->endTransaction()V

    invoke-virtual {v5, v6}, LJ2/i0;->r(LT2/h;)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_2
    invoke-virtual {v2}, LJ2/U;->endTransaction()V

    invoke-virtual {p0, v3}, Lg3/s;->e(Z)V

    throw v0
.end method

.method public final e(Z)V
    .locals 4

    iget-object v0, p0, Lg3/s;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, LJ2/U;->beginTransaction()V

    :try_start_0
    iget-object v0, p0, Lg3/s;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->h()Lo3/r;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, LJ2/d0;->i:Ljava/util/TreeMap;

    const-string v1, "SELECT COUNT(*) > 0 FROM workspec WHERE state NOT IN (2, 3, 5) LIMIT 1"

    const/4 v2, 0x0

    invoke-static {v2, v1}, LG5/z3;->a(ILjava/lang/String;)LJ2/d0;

    move-result-object v1

    iget-object v0, v0, Lo3/r;->a:Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v0}, LJ2/U;->assertNotSuspendingTransaction()V

    invoke-static {v0, v1, v2}, LA/b;->k(LJ2/U;LT2/g;Z)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    move v3, v2

    :goto_0
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v1}, LJ2/d0;->a()V

    if-nez v3, :cond_1

    iget-object v0, p0, Lg3/s;->a:Landroid/content/Context;

    const-class v1, Landroidx/work/impl/background/systemalarm/RescheduleReceiver;

    invoke-static {v0, v1, v2}, Lp3/l;->a(Landroid/content/Context;Ljava/lang/Class;Z)V

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :cond_1
    :goto_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lg3/s;->l:Lo3/r;

    sget-object v1, Lf3/E;->ENQUEUED:Lf3/E;

    iget-object v2, p0, Lg3/s;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lo3/r;->s(Lf3/E;Ljava/lang/String;)V

    iget-object v0, p0, Lg3/s;->l:Lo3/r;

    iget-object v1, p0, Lg3/s;->b:Ljava/lang/String;

    iget v2, p0, Lg3/s;->r:I

    invoke-virtual {v0, v2, v1}, Lo3/r;->t(ILjava/lang/String;)V

    iget-object v0, p0, Lg3/s;->l:Lo3/r;

    iget-object v1, p0, Lg3/s;->b:Ljava/lang/String;

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v2, v3, v1}, Lo3/r;->o(JLjava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lg3/s;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, LJ2/U;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v0, p0, Lg3/s;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, LJ2/U;->endTransaction()V

    iget-object p0, p0, Lg3/s;->p:Lq3/j;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lq3/j;->j(Ljava/lang/Object;)Z

    return-void

    :goto_2
    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v1}, LJ2/d0;->a()V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_3
    iget-object p0, p0, Lg3/s;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {p0}, LJ2/U;->endTransaction()V

    throw p1
.end method

.method public final f()V
    .locals 6

    iget-object v0, p0, Lg3/s;->l:Lo3/r;

    iget-object v1, p0, Lg3/s;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lo3/r;->j(Ljava/lang/String;)Lf3/E;

    move-result-object v0

    sget-object v2, Lf3/E;->RUNNING:Lf3/E;

    const-string v3, "Status for "

    sget-object v4, Lg3/s;->s:Ljava/lang/String;

    if-ne v0, v2, :cond_0

    invoke-static {}, Lf3/u;->d()Lf3/u;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is RUNNING; not doing any work and rescheduling for later execution"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lf3/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lg3/s;->e(Z)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lf3/u;->d()Lf3/u;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " ; not doing any work"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Lf3/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lg3/s;->e(Z)V

    :goto_0
    return-void
.end method

.method public final g()V
    .locals 8

    iget-object v0, p0, Lg3/s;->b:Ljava/lang/String;

    iget-object v1, p0, Lg3/s;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, LJ2/U;->beginTransaction()V

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-virtual {v3}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v5, p0, Lg3/s;->l:Lo3/r;

    if-nez v4, :cond_1

    :try_start_1
    invoke-virtual {v3}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Lo3/r;->j(Ljava/lang/String;)Lf3/E;

    move-result-object v6

    sget-object v7, Lf3/E;->CANCELLED:Lf3/E;

    if-eq v6, v7, :cond_0

    sget-object v6, Lf3/E;->FAILED:Lf3/E;

    invoke-virtual {v5, v6, v4}, Lo3/r;->s(Lf3/E;Ljava/lang/String;)V

    :cond_0
    iget-object v5, p0, Lg3/s;->m:Lo3/c;

    invoke-virtual {v5, v4}, Lo3/c;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lg3/s;->g:Lf3/s;

    check-cast v3, Lf3/p;

    iget-object v3, v3, Lf3/p;->a:Lf3/i;

    iget-object v4, p0, Lg3/s;->d:Lo3/q;

    iget v4, v4, Lo3/q;->v:I

    invoke-virtual {v5, v4, v0}, Lo3/r;->p(ILjava/lang/String;)V

    invoke-virtual {v5, v0, v3}, Lo3/r;->r(Ljava/lang/String;Lf3/i;)V

    invoke-virtual {v1}, LJ2/U;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, LJ2/U;->endTransaction()V

    invoke-virtual {p0, v2}, Lg3/s;->e(Z)V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, LJ2/U;->endTransaction()V

    invoke-virtual {p0, v2}, Lg3/s;->e(Z)V

    throw v0
.end method

.method public final h()Z
    .locals 5

    iget v0, p0, Lg3/s;->r:I

    const/16 v1, -0x100

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    invoke-static {}, Lf3/u;->d()Lf3/u;

    move-result-object v0

    sget-object v1, Lg3/s;->s:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Work interrupted for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lg3/s;->o:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lf3/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lg3/s;->l:Lo3/r;

    iget-object v1, p0, Lg3/s;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lo3/r;->j(Ljava/lang/String;)Lf3/E;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0, v2}, Lg3/s;->e(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lf3/E;->a()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lg3/s;->e(Z)V

    :goto_0
    return v1

    :cond_1
    return v2
.end method

.method public final run()V
    .locals 23

    move-object/from16 v1, p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Work [ id="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lg3/s;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", tags={ "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lg3/s;->n:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x1

    move v7, v6

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    if-eqz v7, :cond_0

    move v7, v9

    goto :goto_1

    :cond_0
    const-string v9, ", "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v5, " } ]"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lg3/s;->o:Ljava/lang/String;

    iget-object v5, v1, Lg3/s;->d:Lo3/q;

    const-string v0, "Delaying execution for "

    invoke-virtual/range {p0 .. p0}, Lg3/s;->h()Z

    move-result v7

    if-eqz v7, :cond_2

    goto/16 :goto_b

    :cond_2
    iget-object v7, v1, Lg3/s;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v7}, LJ2/U;->beginTransaction()V

    :try_start_0
    iget-object v8, v5, Lo3/q;->b:Lf3/E;

    sget-object v10, Lf3/E;->ENQUEUED:Lf3/E;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v11, v5, Lo3/q;->c:Ljava/lang/String;

    sget-object v12, Lg3/s;->s:Ljava/lang/String;

    if-eq v8, v10, :cond_3

    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lg3/s;->f()V

    invoke-virtual {v7}, LJ2/U;->setTransactionSuccessful()V

    invoke-static {}, Lf3/u;->d()Lf3/u;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is not in ENQUEUED state. Nothing more to do"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v12, v1}, Lf3/u;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    invoke-virtual {v7}, LJ2/U;->endTransaction()V

    goto/16 :goto_b

    :catchall_0
    move-exception v0

    goto/16 :goto_e

    :cond_3
    :try_start_2
    invoke-virtual {v5}, Lo3/q;->d()Z

    move-result v8

    if-nez v8, :cond_5

    iget-object v8, v5, Lo3/q;->b:Lf3/E;

    if-ne v8, v10, :cond_4

    iget v8, v5, Lo3/q;->k:I

    if-lez v8, :cond_4

    move v8, v6

    goto :goto_3

    :cond_4
    move v8, v9

    :goto_3
    if-eqz v8, :cond_6

    :cond_5
    iget-object v8, v1, Lg3/s;->i:Lf3/w;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-virtual {v5}, Lo3/q;->a()J

    move-result-wide v15

    cmp-long v8, v13, v15

    if-gez v8, :cond_6

    invoke-static {}, Lf3/u;->d()Lf3/u;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " because it is being executed before schedule."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v12, v0}, Lf3/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Lg3/s;->e(Z)V

    invoke-virtual {v7}, LJ2/U;->setTransactionSuccessful()V

    goto :goto_2

    :cond_6
    invoke-virtual {v7}, LJ2/U;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v7}, LJ2/U;->endTransaction()V

    invoke-virtual {v5}, Lo3/q;->d()Z

    move-result v0

    iget-object v8, v1, Lg3/s;->l:Lo3/r;

    iget-object v10, v1, Lg3/s;->h:Lf3/c;

    if-eqz v0, :cond_7

    iget-object v0, v5, Lo3/q;->e:Lf3/i;

    goto/16 :goto_8

    :cond_7
    iget-object v0, v10, Lf3/c;->e:Lf3/w;

    iget-object v13, v5, Lo3/q;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "className"

    invoke-static {v13, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lf3/n;->a:Ljava/lang/String;

    const/4 v14, 0x0

    :try_start_3
    invoke-static {v13}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v15, "null cannot be cast to non-null type androidx.work.InputMerger"

    invoke-static {v0, v15}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lf3/m;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    invoke-static {}, Lf3/u;->d()Lf3/u;

    move-result-object v15

    const-string v14, "Trouble instantiating "

    invoke-virtual {v14, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    sget-object v14, Lf3/n;->a:Ljava/lang/String;

    invoke-virtual {v15, v14, v13, v0}, Lf3/u;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_4
    if-nez v0, :cond_8

    invoke-static {}, Lf3/u;->d()Lf3/u;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not create Input Merger "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v5, Lo3/q;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v12, v2}, Lf3/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lg3/s;->g()V

    goto/16 :goto_b

    :cond_8
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    iget-object v14, v5, Lo3/q;->e:Lf3/i;

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v14, LJ2/d0;->i:Ljava/util/TreeMap;

    const-string v14, "SELECT output FROM workspec WHERE id IN\n             (SELECT prerequisite_id FROM dependency WHERE work_spec_id=?)"

    invoke-static {v6, v14}, LG5/z3;->a(ILjava/lang/String;)LJ2/d0;

    move-result-object v14

    if-nez v3, :cond_9

    invoke-virtual {v14, v6}, LJ2/d0;->l(I)V

    goto :goto_5

    :cond_9
    invoke-virtual {v14, v6, v3}, LJ2/d0;->U(ILjava/lang/String;)V

    :goto_5
    iget-object v15, v8, Lo3/r;->a:Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v15}, LJ2/U;->assertNotSuspendingTransaction()V

    invoke-static {v15, v14, v9}, LA/b;->k(LJ2/U;LT2/g;Z)Landroid/database/Cursor;

    move-result-object v15

    :try_start_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    :goto_6
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v15, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_a

    const/4 v6, 0x0

    goto :goto_7

    :cond_a
    invoke-interface {v15, v9}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    :goto_7
    invoke-static {v6}, Lf3/i;->a([B)Lf3/i;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception v0

    goto/16 :goto_d

    :cond_b
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    invoke-virtual {v14}, LJ2/d0;->a()V

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0, v13}, Lf3/m;->a(Ljava/util/ArrayList;)Lf3/i;

    move-result-object v0

    :goto_8
    new-instance v2, Landroidx/work/WorkerParameters;

    invoke-static {v3}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v6

    iget v13, v5, Lo3/q;->k:I

    iget-object v14, v10, Lf3/c;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v15, Lp3/t;

    new-instance v15, Lp3/s;

    iget-object v9, v1, Lg3/s;->j:Lg3/d;

    move-object/from16 v17, v3

    iget-object v3, v1, Lg3/s;->f:Lr3/a;

    invoke-direct {v15, v7, v9, v3}, Lp3/s;-><init>(Landroidx/work/impl/WorkDatabase;Ln3/a;Lr3/a;)V

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v6, v2, Landroidx/work/WorkerParameters;->a:Ljava/util/UUID;

    iput-object v0, v2, Landroidx/work/WorkerParameters;->b:Lf3/i;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, v2, Landroidx/work/WorkerParameters;->c:Ljava/util/HashSet;

    iget-object v0, v1, Lg3/s;->c:LZ3/x;

    iput-object v0, v2, Landroidx/work/WorkerParameters;->d:LZ3/x;

    iput v13, v2, Landroidx/work/WorkerParameters;->e:I

    iget v0, v5, Lo3/q;->t:I

    iput v0, v2, Landroidx/work/WorkerParameters;->i:I

    iput-object v14, v2, Landroidx/work/WorkerParameters;->f:Ljava/util/concurrent/ExecutorService;

    iput-object v3, v2, Landroidx/work/WorkerParameters;->g:Lr3/a;

    iget-object v0, v10, Lf3/c;->d:Lf3/H;

    iput-object v0, v2, Landroidx/work/WorkerParameters;->h:Lf3/H;

    iget-object v4, v1, Lg3/s;->e:Lf3/t;

    if-nez v4, :cond_c

    iget-object v4, v1, Lg3/s;->a:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v11, v2}, Lf3/H;->a(Landroid/content/Context;Ljava/lang/String;Landroidx/work/WorkerParameters;)Lf3/t;

    move-result-object v0

    iput-object v0, v1, Lg3/s;->e:Lf3/t;

    :cond_c
    iget-object v0, v1, Lg3/s;->e:Lf3/t;

    if-nez v0, :cond_d

    invoke-static {}, Lf3/u;->d()Lf3/u;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not create Worker "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v12, v2}, Lf3/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lg3/s;->g()V

    goto/16 :goto_b

    :cond_d
    iget-boolean v2, v0, Lf3/t;->d:Z

    if-eqz v2, :cond_e

    invoke-static {}, Lf3/u;->d()Lf3/u;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Received an already-used Worker "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "; Worker Factory should return new instances"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v12, v2}, Lf3/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lg3/s;->g()V

    goto/16 :goto_b

    :cond_e
    const/4 v2, 0x1

    iput-boolean v2, v0, Lf3/t;->d:Z

    invoke-virtual {v7}, LJ2/U;->beginTransaction()V

    move-object/from16 v2, v17

    :try_start_5
    invoke-virtual {v8, v2}, Lo3/r;->j(Ljava/lang/String;)Lf3/E;

    move-result-object v0

    sget-object v4, Lf3/E;->ENQUEUED:Lf3/E;

    if-ne v0, v4, :cond_10

    sget-object v0, Lf3/E;->RUNNING:Lf3/E;

    invoke-virtual {v8, v0, v2}, Lo3/r;->s(Lf3/E;Ljava/lang/String;)V

    iget-object v4, v8, Lo3/r;->a:Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v4}, LJ2/U;->assertNotSuspendingTransaction()V

    iget-object v5, v8, Lo3/r;->j:Lo3/h;

    invoke-virtual {v5}, LJ2/i0;->a()LT2/h;

    move-result-object v6

    if-nez v2, :cond_f

    const/4 v9, 0x1

    invoke-interface {v6, v9}, LT2/f;->l(I)V

    goto :goto_9

    :cond_f
    const/4 v9, 0x1

    invoke-interface {v6, v9, v2}, LT2/f;->U(ILjava/lang/String;)V

    :goto_9
    invoke-virtual {v4}, LJ2/U;->beginTransaction()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    invoke-interface {v6}, LT2/h;->u()I

    invoke-virtual {v4}, LJ2/U;->setTransactionSuccessful()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :try_start_7
    invoke-virtual {v4}, LJ2/U;->endTransaction()V

    invoke-virtual {v5, v6}, LJ2/i0;->r(LT2/h;)V

    const/16 v0, -0x100

    invoke-virtual {v8, v0, v2}, Lo3/r;->t(ILjava/lang/String;)V

    move v6, v9

    goto :goto_a

    :catchall_2
    move-exception v0

    goto :goto_c

    :catchall_3
    move-exception v0

    invoke-virtual {v4}, LJ2/U;->endTransaction()V

    invoke-virtual {v5, v6}, LJ2/i0;->r(LT2/h;)V

    throw v0

    :cond_10
    const/4 v6, 0x0

    :goto_a
    invoke-virtual {v7}, LJ2/U;->setTransactionSuccessful()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    invoke-virtual {v7}, LJ2/U;->endTransaction()V

    if-eqz v6, :cond_12

    invoke-virtual/range {p0 .. p0}, Lg3/s;->h()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_b

    :cond_11
    new-instance v0, Lp3/r;

    iget-object v2, v1, Lg3/s;->e:Lf3/t;

    iget-object v4, v1, Lg3/s;->a:Landroid/content/Context;

    iget-object v5, v1, Lg3/s;->d:Lo3/q;

    iget-object v6, v1, Lg3/s;->f:Lr3/a;

    move-object/from16 v17, v0

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    move-object/from16 v20, v2

    move-object/from16 v21, v15

    move-object/from16 v22, v6

    invoke-direct/range {v17 .. v22}, Lp3/r;-><init>(Landroid/content/Context;Lo3/q;Lf3/t;Lp3/s;Lr3/a;)V

    iget-object v2, v3, Lr3/a;->d:LH4/s;

    invoke-virtual {v2, v0}, LH4/s;->execute(Ljava/lang/Runnable;)V

    new-instance v2, Lcom/sec/android/app/sbrowser/widget/a;

    iget-object v0, v0, Lp3/r;->a:Lq3/j;

    const/4 v4, 0x6

    invoke-direct {v2, v4, v1, v0}, Lcom/sec/android/app/sbrowser/widget/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    new-instance v5, LR5/n;

    const/4 v6, 0x4

    invoke-direct {v5, v6}, LR5/n;-><init>(I)V

    iget-object v6, v1, Lg3/s;->q:Lq3/j;

    invoke-virtual {v6, v2, v5}, Lq3/h;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    new-instance v2, Lc5/A;

    invoke-direct {v2, v4, v1, v0}, Lc5/A;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object v4, v3, Lr3/a;->d:LH4/s;

    invoke-virtual {v0, v2, v4}, Lq3/h;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    iget-object v0, v1, Lg3/s;->o:Ljava/lang/String;

    new-instance v2, Lc5/A;

    const/4 v4, 0x7

    invoke-direct {v2, v4, v1, v0}, Lc5/A;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, v3, Lr3/a;->a:LJ2/k0;

    invoke-virtual {v6, v2, v0}, Lq3/h;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto :goto_b

    :cond_12
    invoke-virtual/range {p0 .. p0}, Lg3/s;->f()V

    :goto_b
    return-void

    :goto_c
    invoke-virtual {v7}, LJ2/U;->endTransaction()V

    throw v0

    :goto_d
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    invoke-virtual {v14}, LJ2/d0;->a()V

    throw v0

    :goto_e
    invoke-virtual {v7}, LJ2/U;->endTransaction()V

    throw v0
.end method
