.class public abstract Lp3/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    iput p1, p0, Lp3/e;->a:I

    packed-switch p1, :pswitch_data_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lo3/c;

    const/16 v0, 0xb

    invoke-direct {p1, v0}, Lo3/c;-><init>(I)V

    iput-object p1, p0, Lp3/e;->b:Ljava/lang/Object;

    return-void

    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lq3/j;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp3/e;->b:Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Lg3/n;Ljava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lg3/n;->c:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->h()Lo3/r;

    move-result-object v1

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->b()Lo3/c;

    move-result-object v0

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_2

    invoke-virtual {v2}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Lo3/r;->j(Ljava/lang/String;)Lf3/E;

    move-result-object v5

    sget-object v6, Lf3/E;->SUCCEEDED:Lf3/E;

    if-eq v5, v6, :cond_1

    sget-object v6, Lf3/E;->FAILED:Lf3/E;

    if-eq v5, v6, :cond_1

    iget-object v5, v1, Lo3/r;->a:Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v5}, LJ2/U;->assertNotSuspendingTransaction()V

    iget-object v6, v1, Lo3/r;->f:Lo3/h;

    invoke-virtual {v6}, LJ2/i0;->a()LT2/h;

    move-result-object v7

    if-nez v3, :cond_0

    invoke-interface {v7, v4}, LT2/f;->l(I)V

    goto :goto_1

    :cond_0
    invoke-interface {v7, v4, v3}, LT2/f;->U(ILjava/lang/String;)V

    :goto_1
    invoke-virtual {v5}, LJ2/U;->beginTransaction()V

    :try_start_0
    invoke-interface {v7}, LT2/h;->u()I

    invoke-virtual {v5}, LJ2/U;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v5}, LJ2/U;->endTransaction()V

    invoke-virtual {v6, v7}, LJ2/i0;->r(LT2/h;)V

    goto :goto_2

    :catchall_0
    move-exception p0

    invoke-virtual {v5}, LJ2/U;->endTransaction()V

    invoke-virtual {v6, v7}, LJ2/i0;->r(LT2/h;)V

    throw p0

    :cond_1
    :goto_2
    invoke-virtual {v0, v3}, Lo3/c;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lg3/n;->f:Lg3/d;

    const-string v1, "Processor cancelling "

    iget-object v2, v0, Lg3/d;->k:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    invoke-static {}, Lf3/u;->d()Lf3/u;

    move-result-object v3

    sget-object v5, Lg3/d;->l:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v5, v1}, Lf3/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lg3/d;->i:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, p1}, Lg3/d;->b(Ljava/lang/String;)Lg3/s;

    move-result-object v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {p1, v0, v4}, Lg3/d;->d(Ljava/lang/String;Lg3/s;I)Z

    iget-object p0, p0, Lg3/n;->e:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg3/f;

    invoke-interface {v0, p1}, Lg3/f;->b(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    return-void

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method


# virtual methods
.method public abstract b()V
.end method

.method public abstract c()Ljava/util/List;
.end method

.method public final run()V
    .locals 2

    iget v0, p0, Lp3/e;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lp3/e;->b:Ljava/lang/Object;

    check-cast v0, Lq3/j;

    :try_start_0
    invoke-virtual {p0}, Lp3/e;->c()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Lq3/j;->j(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {v0, p0}, Lq3/j;->k(Ljava/lang/Throwable;)Z

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lp3/e;->b:Ljava/lang/Object;

    check-cast v0, Lo3/c;

    :try_start_1
    invoke-virtual {p0}, Lp3/e;->b()V

    sget-object p0, Lf3/B;->W:Lf3/A;

    invoke-virtual {v0, p0}, Lo3/c;->h(LG5/a3;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    new-instance v1, Lf3/y;

    invoke-direct {v1, p0}, Lf3/y;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lo3/c;->h(LG5/a3;)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
