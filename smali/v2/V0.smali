.class public final Lv2/V0;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public a:I

.field public final synthetic b:Lv2/a0;

.field public final synthetic c:Lv2/e;

.field public final synthetic d:Lv2/M0;


# direct methods
.method public constructor <init>(Lv2/a0;Lv2/e;Lv2/M0;Lib/c;)V
    .locals 0

    iput-object p1, p0, Lv2/V0;->b:Lv2/a0;

    iput-object p2, p0, Lv2/V0;->c:Lv2/e;

    iput-object p3, p0, Lv2/V0;->d:Lv2/M0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 2

    new-instance p1, Lv2/V0;

    iget-object v0, p0, Lv2/V0;->c:Lv2/e;

    iget-object v1, p0, Lv2/V0;->d:Lv2/M0;

    iget-object p0, p0, Lv2/V0;->b:Lv2/a0;

    invoke-direct {p1, p0, v0, v1, p2}, Lv2/V0;-><init>(Lv2/a0;Lv2/e;Lv2/M0;Lib/c;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LNc/B;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, Lv2/V0;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, Lv2/V0;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, Lv2/V0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v9, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v0, p0, Lv2/V0;->a:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto/16 :goto_8

    :pswitch_1
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_2
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_3
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_4
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto/16 :goto_9

    :pswitch_5
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object v0, p0, Lv2/V0;->b:Lv2/a0;

    instance-of v2, v0, Lv2/Y;

    if-eqz v2, :cond_0

    move-object v3, v0

    check-cast v3, Lv2/Y;

    iget-object v4, v3, Lv2/Y;->a:Lv2/P;

    sget-object v5, Lv2/P;->REFRESH:Lv2/P;

    if-ne v4, v5, :cond_0

    iget-object v0, p0, Lv2/V0;->c:Lv2/e;

    iget-object v1, v3, Lv2/Y;->b:Ljava/util/List;

    iget v2, v3, Lv2/Y;->c:I

    iget v4, v3, Lv2/Y;->d:I

    iget-object v5, v3, Lv2/Y;->e:Lv2/O;

    iget-object v6, v3, Lv2/Y;->f:Lv2/O;

    iget-object v3, p0, Lv2/V0;->d:Lv2/M0;

    iget-object v7, v3, Lv2/M0;->c:LB3/c;

    const/4 v3, 0x2

    iput v3, p0, Lv2/V0;->a:I

    const/4 v8, 0x1

    move v3, v4

    move v4, v8

    move-object v8, p0

    invoke-static/range {v0 .. v8}, Lv2/e;->a(Lv2/e;Ljava/util/List;IIZLv2/O;Lv2/O;LB3/c;Lkb/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v9, :cond_13

    return-object v9

    :cond_0
    if-eqz v2, :cond_f

    iget-object v0, p0, Lv2/V0;->c:Lv2/e;

    iget-object v0, v0, Lv2/e;->j:LQc/A0;

    invoke-virtual {v0}, LQc/A0;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    iput v0, p0, Lv2/V0;->a:I

    invoke-static {p0}, LNc/E;->N(Lkb/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v9, :cond_1

    return-object v9

    :cond_1
    :goto_0
    iget-object v0, p0, Lv2/V0;->c:Lv2/e;

    iget-object v2, v0, Lv2/e;->d:Lv2/J0;

    iget-object v3, p0, Lv2/V0;->b:Lv2/a0;

    invoke-virtual {v2, v3}, Lv2/J0;->f(Lv2/a0;)Lv2/F;

    move-result-object v2

    const/4 v3, 0x4

    iput v3, p0, Lv2/V0;->a:I

    invoke-virtual {v0, v2, p0}, Lv2/e;->c(Lv2/F;Lkb/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v9, :cond_2

    return-object v9

    :cond_2
    :goto_1
    iget-object v0, p0, Lv2/V0;->c:Lv2/e;

    iget-object v0, v0, Lv2/e;->e:LZ3/x;

    iget-object v2, p0, Lv2/V0;->b:Lv2/a0;

    check-cast v2, Lv2/Y;

    iget-object v3, v2, Lv2/Y;->e:Lv2/O;

    iget-object v2, v2, Lv2/Y;->f:Lv2/O;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "sourceLoadStates"

    invoke-static {v3, v4}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, LPc/e;

    const/16 v5, 0x8

    invoke-direct {v4, v0, v5, v3, v2}, LPc/e;-><init>(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v4}, LZ3/x;->p(Lsb/k;)V

    iget-object v0, p0, Lv2/V0;->c:Lv2/e;

    iget-object v0, v0, Lv2/e;->e:LZ3/x;

    iget-object v0, v0, LZ3/x;->d:Ljava/lang/Object;

    check-cast v0, LQc/h0;

    iget-object v0, v0, LQc/h0;->a:LQc/A0;

    invoke-virtual {v0}, LQc/A0;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv2/s;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lv2/s;->d:Lv2/O;

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_e

    iget-object v2, v0, Lv2/O;->b:LEc/g;

    iget-boolean v2, v2, LEc/g;->a:Z

    iget-object v0, v0, Lv2/O;->c:LEc/g;

    iget-boolean v0, v0, LEc/g;->a:Z

    iget-object v3, p0, Lv2/V0;->b:Lv2/a0;

    check-cast v3, Lv2/Y;

    iget-object v4, v3, Lv2/Y;->a:Lv2/P;

    sget-object v5, Lv2/P;->PREPEND:Lv2/P;

    const/4 v6, 0x1

    if-ne v4, v5, :cond_4

    if-nez v2, :cond_5

    :cond_4
    sget-object v2, Lv2/P;->APPEND:Lv2/P;

    if-ne v4, v2, :cond_6

    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    move v0, v1

    goto :goto_4

    :cond_6
    :goto_3
    move v0, v6

    :goto_4
    iget-object v2, v3, Lv2/Y;->b:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    instance-of v3, v2, Ljava/util/Collection;

    if-eqz v3, :cond_7

    move-object v3, v2

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_5

    :cond_7
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lv2/x1;

    iget-object v3, v3, Lv2/x1;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_8

    move v6, v1

    :cond_9
    :goto_5
    if-nez v0, :cond_a

    iget-object v0, p0, Lv2/V0;->c:Lv2/e;

    iput-boolean v1, v0, Lv2/e;->h:Z

    goto/16 :goto_9

    :cond_a
    iget-object v0, p0, Lv2/V0;->c:Lv2/e;

    iget-boolean v0, v0, Lv2/e;->h:Z

    if-nez v0, :cond_b

    if-eqz v6, :cond_13

    :cond_b
    if-nez v6, :cond_d

    iget-object v0, p0, Lv2/V0;->c:Lv2/e;

    iget v0, v0, Lv2/e;->i:I

    iget-object v2, p0, Lv2/V0;->c:Lv2/e;

    iget-object v3, v2, Lv2/e;->d:Lv2/J0;

    iget v3, v3, Lv2/J0;->c:I

    if-lt v0, v3, :cond_d

    iget v0, v2, Lv2/e;->i:I

    iget-object v2, p0, Lv2/V0;->c:Lv2/e;

    iget-object v3, v2, Lv2/e;->d:Lv2/J0;

    iget v4, v3, Lv2/J0;->c:I

    iget v3, v3, Lv2/J0;->b:I

    add-int/2addr v4, v3

    if-le v0, v4, :cond_c

    goto :goto_6

    :cond_c
    iput-boolean v1, v2, Lv2/e;->h:Z

    goto/16 :goto_9

    :cond_d
    :goto_6
    iget-object v0, p0, Lv2/V0;->c:Lv2/e;

    iget-object v1, v0, Lv2/e;->b:LB3/c;

    if-eqz v1, :cond_13

    iget-object v2, v0, Lv2/e;->d:Lv2/J0;

    iget v0, v0, Lv2/e;->i:I

    invoke-virtual {v2, v0}, Lv2/J0;->a(I)Lv2/z1;

    move-result-object v0

    invoke-virtual {v1, v0}, LB3/c;->e(Lv2/C1;)V

    goto/16 :goto_9

    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "PagingDataPresenter.combinedLoadStatesCollection.stateFlow should not hold null CombinedLoadStates after Insert event."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    instance-of v2, v0, Lv2/X;

    if-eqz v2, :cond_12

    iget-object v0, p0, Lv2/V0;->c:Lv2/e;

    iget-object v0, v0, Lv2/e;->j:LQc/A0;

    invoke-virtual {v0}, LQc/A0;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x5

    iput v0, p0, Lv2/V0;->a:I

    invoke-static {p0}, LNc/E;->N(Lkb/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v9, :cond_10

    return-object v9

    :cond_10
    :goto_7
    iget-object v0, p0, Lv2/V0;->c:Lv2/e;

    iget-object v2, v0, Lv2/e;->d:Lv2/J0;

    iget-object v3, p0, Lv2/V0;->b:Lv2/a0;

    invoke-virtual {v2, v3}, Lv2/J0;->f(Lv2/a0;)Lv2/F;

    move-result-object v2

    const/4 v3, 0x6

    iput v3, p0, Lv2/V0;->a:I

    invoke-virtual {v0, v2, p0}, Lv2/e;->c(Lv2/F;Lkb/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v9, :cond_11

    return-object v9

    :cond_11
    :goto_8
    iget-object v0, p0, Lv2/V0;->c:Lv2/e;

    iget-object v0, v0, Lv2/e;->e:LZ3/x;

    iget-object v2, p0, Lv2/V0;->b:Lv2/a0;

    check-cast v2, Lv2/X;

    iget-object v2, v2, Lv2/X;->a:Lv2/P;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "type"

    invoke-static {v2, v3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, LC1/j;

    const/16 v4, 0x15

    invoke-direct {v3, v4, v2, v0}, LC1/j;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, LZ3/x;->p(Lsb/k;)V

    iget-object v0, p0, Lv2/V0;->c:Lv2/e;

    iput-boolean v1, v0, Lv2/e;->h:Z

    goto :goto_9

    :cond_12
    instance-of v1, v0, Lv2/Z;

    if-eqz v1, :cond_13

    iget-object v1, p0, Lv2/V0;->c:Lv2/e;

    iget-object v1, v1, Lv2/e;->e:LZ3/x;

    check-cast v0, Lv2/Z;

    iget-object v2, v0, Lv2/Z;->a:Lv2/O;

    iget-object v0, v0, Lv2/Z;->b:Lv2/O;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, LPc/e;

    const/16 v4, 0x8

    invoke-direct {v3, v1, v4, v2, v0}, LPc/e;-><init>(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, LZ3/x;->p(Lsb/k;)V

    :cond_13
    :goto_9
    iget-object v0, p0, Lv2/V0;->b:Lv2/a0;

    instance-of v1, v0, Lv2/Y;

    if-nez v1, :cond_14

    instance-of v0, v0, Lv2/X;

    if-nez v0, :cond_14

    goto :goto_b

    :cond_14
    iget-object v0, p0, Lv2/V0;->c:Lv2/e;

    iget-object v0, v0, Lv2/e;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsb/a;

    invoke-interface {v1}, Lsb/a;->invoke()Ljava/lang/Object;

    goto :goto_a

    :cond_15
    :goto_b
    sget-object v0, Ldb/r;->a:Ldb/r;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
