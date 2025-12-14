.class public final La0/m0;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public a:Lk0/g;

.field public b:I

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:La0/p0;

.field public final synthetic e:La0/o0;

.field public final synthetic f:La0/W;


# direct methods
.method public constructor <init>(La0/p0;La0/o0;La0/W;Lib/c;)V
    .locals 0

    iput-object p1, p0, La0/m0;->d:La0/p0;

    iput-object p2, p0, La0/m0;->e:La0/o0;

    iput-object p3, p0, La0/m0;->f:La0/W;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 3

    new-instance v0, La0/m0;

    iget-object v1, p0, La0/m0;->e:La0/o0;

    iget-object v2, p0, La0/m0;->f:La0/W;

    iget-object p0, p0, La0/m0;->d:La0/p0;

    invoke-direct {v0, p0, v1, v2, p2}, La0/m0;-><init>(La0/p0;La0/o0;La0/W;Lib/c;)V

    iput-object p1, v0, La0/m0;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LNc/B;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, La0/m0;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, La0/m0;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, La0/m0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    const/4 v0, 0x1

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, p0, La0/m0;->b:I

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    if-ne v2, v0, :cond_0

    iget-object v0, p0, La0/m0;->a:Lk0/g;

    iget-object v1, p0, La0/m0;->c:Ljava/lang/Object;

    check-cast v1, LNc/j0;

    :try_start_0
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_3

    :catchall_0
    move-exception p1

    goto/16 :goto_6

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p1, p0, La0/m0;->c:Ljava/lang/Object;

    check-cast p1, LNc/B;

    invoke-interface {p1}, LNc/B;->v()Lib/h;

    move-result-object p1

    invoke-static {p1}, LNc/E;->q(Lib/h;)LNc/j0;

    move-result-object p1

    iget-object v2, p0, La0/m0;->d:La0/p0;

    iget-object v4, v2, La0/p0;->c:Ljava/lang/Object;

    monitor-enter v4

    :try_start_1
    iget-object v5, v2, La0/p0;->e:Ljava/lang/Throwable;

    if-nez v5, :cond_c

    iget-object v5, v2, La0/p0;->s:LQc/A0;

    invoke-virtual {v5}, LQc/A0;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, La0/j0;

    sget-object v6, La0/j0;->ShuttingDown:La0/j0;

    invoke-virtual {v5, v6}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v5

    if-lez v5, :cond_b

    iget-object v5, v2, La0/p0;->d:LNc/j0;

    if-nez v5, :cond_a

    iput-object p1, v2, La0/p0;->d:LNc/j0;

    invoke-virtual {v2}, La0/p0;->t()LNc/j;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    monitor-exit v4

    new-instance v2, LB1/h;

    iget-object v4, p0, La0/m0;->d:La0/p0;

    const/4 v5, 0x5

    invoke-direct {v2, v5, v4}, LB1/h;-><init>(ILjava/lang/Object;)V

    sget-object v4, Lk0/n;->a:LZ3/x;

    sget-object v4, Lk0/m;->c:Lk0/m;

    invoke-static {v4}, Lk0/n;->f(Lsb/k;)Ljava/lang/Object;

    sget-object v4, Lk0/n;->b:Ljava/lang/Object;

    monitor-enter v4

    :try_start_2
    sget-object v5, Lk0/n;->g:Ljava/lang/Object;

    check-cast v5, Ljava/util/Collection;

    invoke-static {v5, v2}, Lfb/n;->S(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v5

    sput-object v5, Lk0/n;->g:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    monitor-exit v4

    new-instance v4, Lk0/g;

    invoke-direct {v4, v2}, Lk0/g;-><init>(Lsb/n;)V

    sget-object v2, La0/p0;->w:LQc/A0;

    iget-object v2, p0, La0/m0;->d:La0/p0;

    iget-object v2, v2, La0/p0;->v:La0/V;

    :cond_2
    sget-object v5, La0/p0;->w:LQc/A0;

    invoke-virtual {v5}, LQc/A0;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ld0/b;

    move-object v7, v6

    check-cast v7, Lg0/b;

    iget-object v8, v7, Lg0/b;->c:Lf0/c;

    invoke-virtual {v8, v2}, Lf0/c;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v7}, Lfb/a;->isEmpty()Z

    move-result v9

    sget-object v10, Lh0/b;->a:Lh0/b;

    if-eqz v9, :cond_4

    new-instance v7, Lg0/a;

    invoke-direct {v7, v10, v10}, Lg0/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v2, v7}, Lf0/c;->a(Ljava/lang/Object;Lg0/a;)Lf0/c;

    move-result-object v7

    new-instance v8, Lg0/b;

    invoke-direct {v8, v2, v2, v7}, Lg0/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lf0/c;)V

    move-object v7, v8

    goto :goto_0

    :cond_4
    iget-object v9, v7, Lg0/b;->b:Ljava/lang/Object;

    invoke-virtual {v8, v9}, Lf0/c;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11}, Ltb/k;->c(Ljava/lang/Object;)V

    check-cast v11, Lg0/a;

    new-instance v12, Lg0/a;

    iget-object v11, v11, Lg0/a;->a:Ljava/lang/Object;

    invoke-direct {v12, v11, v2}, Lg0/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v9, v12}, Lf0/c;->a(Ljava/lang/Object;Lg0/a;)Lf0/c;

    move-result-object v8

    new-instance v11, Lg0/a;

    invoke-direct {v11, v9, v10}, Lg0/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v2, v11}, Lf0/c;->a(Ljava/lang/Object;Lg0/a;)Lf0/c;

    move-result-object v8

    new-instance v9, Lg0/b;

    iget-object v7, v7, Lg0/b;->a:Ljava/lang/Object;

    invoke-direct {v9, v7, v2, v8}, Lg0/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lf0/c;)V

    move-object v7, v9

    :goto_0
    if-eq v6, v7, :cond_5

    invoke-virtual {v5, v6, v7}, LQc/A0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_5
    :try_start_3
    iget-object v2, p0, La0/m0;->d:La0/p0;

    iget-object v5, v2, La0/p0;->c:Ljava/lang/Object;

    monitor-enter v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v2}, La0/p0;->w()Ljava/util/List;

    move-result-object v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    monitor-exit v5

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_6

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, La0/u;

    invoke-virtual {v7}, La0/u;->q()V

    add-int/2addr v6, v0

    goto :goto_1

    :goto_2
    move-object v1, p1

    move-object p1, v0

    move-object v0, v4

    goto :goto_6

    :catchall_1
    move-exception v0

    goto :goto_2

    :cond_6
    new-instance v2, La0/l0;

    iget-object v5, p0, La0/m0;->e:La0/o0;

    iget-object v6, p0, La0/m0;->f:La0/W;

    invoke-direct {v2, v5, v6, v3}, La0/l0;-><init>(La0/o0;La0/W;Lib/c;)V

    iput-object p1, p0, La0/m0;->c:Ljava/lang/Object;

    iput-object v4, p0, La0/m0;->a:Lk0/g;

    iput v0, p0, La0/m0;->b:I

    invoke-static {v2, p0}, LNc/E;->j(Lsb/n;Lib/c;)Ljava/lang/Object;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-ne v0, v1, :cond_7

    return-object v1

    :cond_7
    move-object v1, p1

    move-object v0, v4

    :goto_3
    invoke-virtual {v0}, Lk0/g;->a()V

    iget-object p1, p0, La0/m0;->d:La0/p0;

    iget-object v0, p1, La0/p0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_6
    iget-object v2, p1, La0/p0;->d:LNc/j0;

    if-ne v2, v1, :cond_8

    iput-object v3, p1, La0/p0;->d:LNc/j0;

    goto :goto_4

    :catchall_2
    move-exception p0

    goto :goto_5

    :cond_8
    :goto_4
    invoke-virtual {p1}, La0/p0;->t()LNc/j;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    monitor-exit v0

    sget-object p1, La0/p0;->w:LQc/A0;

    iget-object p0, p0, La0/m0;->d:La0/p0;

    iget-object p0, p0, La0/p0;->v:La0/V;

    invoke-static {p0}, La0/V;->b(La0/V;)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :goto_5
    monitor-exit v0

    throw p0

    :catchall_3
    move-exception v0

    :try_start_7
    monitor-exit v5

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :goto_6
    invoke-virtual {v0}, Lk0/g;->a()V

    iget-object v0, p0, La0/m0;->d:La0/p0;

    iget-object v2, v0, La0/p0;->c:Ljava/lang/Object;

    monitor-enter v2

    :try_start_8
    iget-object v4, v0, La0/p0;->d:LNc/j0;

    if-ne v4, v1, :cond_9

    iput-object v3, v0, La0/p0;->d:LNc/j0;

    goto :goto_7

    :catchall_4
    move-exception p0

    goto :goto_8

    :cond_9
    :goto_7
    invoke-virtual {v0}, La0/p0;->t()LNc/j;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    monitor-exit v2

    sget-object v0, La0/p0;->w:LQc/A0;

    iget-object p0, p0, La0/m0;->d:La0/p0;

    iget-object p0, p0, La0/p0;->v:La0/V;

    invoke-static {p0}, La0/V;->b(La0/V;)V

    throw p1

    :goto_8
    monitor-exit v2

    throw p0

    :catchall_5
    move-exception p0

    monitor-exit v4

    throw p0

    :catchall_6
    move-exception p0

    goto :goto_9

    :cond_a
    :try_start_9
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Recomposer already running"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Recomposer shut down"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    throw v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    :goto_9
    monitor-exit v4

    throw p0
.end method
