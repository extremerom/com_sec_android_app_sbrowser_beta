.class public final LJ2/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQc/i;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, LJ2/u;->a:I

    iput-object p2, p0, LJ2/u;->b:Ljava/lang/Object;

    iput-object p3, p0, LJ2/u;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(LQc/i;Lsb/n;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, LJ2/u;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LJ2/u;->b:Ljava/lang/Object;

    check-cast p2, Lkb/i;

    iput-object p2, p0, LJ2/u;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/io/Serializable;LQc/i;I)V
    .locals 0

    iput p3, p0, LJ2/u;->a:I

    iput-object p1, p0, LJ2/u;->c:Ljava/lang/Object;

    iput-object p2, p0, LJ2/u;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(ILib/c;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p2, LQc/t0;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, LQc/t0;

    iget v1, v0, LQc/t0;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, LQc/t0;->c:I

    goto :goto_0

    :cond_0
    new-instance v0, LQc/t0;

    invoke-direct {v0, p0, p2}, LQc/t0;-><init>(LJ2/u;Lib/c;)V

    :goto_0
    iget-object p2, v0, LQc/t0;->a:Ljava/lang/Object;

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v0, LQc/t0;->c:I

    sget-object v3, Ldb/r;->a:Ldb/r;

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    if-lez p1, :cond_3

    iget-object p1, p0, LJ2/u;->c:Ljava/lang/Object;

    check-cast p1, Ltb/s;

    iget-boolean p2, p1, Ltb/s;->a:Z

    if-nez p2, :cond_3

    iput-boolean v4, p1, Ltb/s;->a:Z

    sget-object p1, LQc/p0;->START:LQc/p0;

    iput v4, v0, LQc/t0;->c:I

    iget-object p0, p0, LJ2/u;->b:Ljava/lang/Object;

    check-cast p0, LQc/i;

    invoke-interface {p0, p1, v0}, LQc/i;->emit(Ljava/lang/Object;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    return-object v3
.end method

.method public final emit(Ljava/lang/Object;Lib/c;)Ljava/lang/Object;
    .locals 9

    iget v0, p0, LJ2/u;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lv2/a0;

    sget-object v0, Landroid/os/Build;->ID:Ljava/lang/String;

    const-string v1, "Paging"

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Collected "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "message"

    invoke-static {v0, v3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    iget-object v0, p0, LJ2/u;->b:Ljava/lang/Object;

    check-cast v0, Lv2/e;

    iget-object v1, v0, Lv2/e;->a:Lib/h;

    new-instance v3, Lv2/V0;

    iget-object p0, p0, LJ2/u;->c:Ljava/lang/Object;

    check-cast p0, Lv2/M0;

    invoke-direct {v3, p1, v0, p0, v2}, Lv2/V0;-><init>(Lv2/a0;Lv2/e;Lv2/M0;Lib/c;)V

    invoke-static {v1, v3, p2}, LNc/E;->K(Lib/h;Lsb/n;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    if-ne p0, p1, :cond_2

    goto :goto_1

    :cond_2
    sget-object p0, Ldb/r;->a:Ldb/r;

    :goto_1
    return-object p0

    :pswitch_0
    check-cast p1, Lv2/G;

    iget-object v0, p0, LJ2/u;->b:Ljava/lang/Object;

    check-cast v0, Lv2/C0;

    iget-object p0, p0, LJ2/u;->c:Ljava/lang/Object;

    check-cast p0, Lv2/P;

    invoke-static {v0, p0, p1, p2}, Lv2/C0;->b(Lv2/C0;Lv2/P;Lv2/G;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    if-ne p0, p1, :cond_3

    goto :goto_2

    :cond_3
    sget-object p0, Ldb/r;->a:Ldb/r;

    :goto_2
    return-object p0

    :pswitch_1
    check-cast p1, Lk3/c;

    iget-object p2, p0, LJ2/u;->c:Ljava/lang/Object;

    check-cast p2, Lo3/q;

    iget-object p0, p0, LJ2/u;->b:Ljava/lang/Object;

    check-cast p0, Lk3/e;

    invoke-interface {p0, p2, p1}, Lk3/e;->e(Lo3/q;Lk3/c;)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_2
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1, p2}, LJ2/u;->b(ILib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_3
    instance-of v0, p2, LQc/Y;

    if-eqz v0, :cond_4

    move-object v0, p2

    check-cast v0, LQc/Y;

    iget v1, v0, LQc/Y;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_4

    sub-int/2addr v1, v2

    iput v1, v0, LQc/Y;->b:I

    goto :goto_3

    :cond_4
    new-instance v0, LQc/Y;

    invoke-direct {v0, p0, p2}, LQc/Y;-><init>(LJ2/u;Lib/c;)V

    :goto_3
    iget-object p2, v0, LQc/Y;->a:Ljava/lang/Object;

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v0, LQc/Y;->b:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_7

    if-eq v2, v4, :cond_6

    if-ne v2, v3, :cond_5

    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_5

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    iget-object p0, v0, LQc/Y;->e:LQc/i;

    iget-object p1, v0, LQc/Y;->d:Ljava/lang/Object;

    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_4

    :cond_7
    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    iput-object p1, v0, LQc/Y;->d:Ljava/lang/Object;

    iget-object p2, p0, LJ2/u;->b:Ljava/lang/Object;

    check-cast p2, LQc/i;

    iput-object p2, v0, LQc/Y;->e:LQc/i;

    iput v4, v0, LQc/Y;->b:I

    iget-object p0, p0, LJ2/u;->c:Ljava/lang/Object;

    check-cast p0, Lkb/i;

    invoke-interface {p0, p1, v0}, Lsb/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_8

    goto :goto_6

    :cond_8
    move-object p0, p2

    :goto_4
    const/4 p2, 0x0

    iput-object p2, v0, LQc/Y;->d:Ljava/lang/Object;

    iput-object p2, v0, LQc/Y;->e:LQc/i;

    iput v3, v0, LQc/Y;->b:I

    invoke-interface {p0, p1, v0}, LQc/i;->emit(Ljava/lang/Object;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_9

    goto :goto_6

    :cond_9
    :goto_5
    sget-object v1, Ldb/r;->a:Ldb/r;

    :goto_6
    return-object v1

    :pswitch_4
    instance-of v0, p2, LQc/H;

    if-eqz v0, :cond_a

    move-object v0, p2

    check-cast v0, LQc/H;

    iget v1, v0, LQc/H;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_a

    sub-int/2addr v1, v2

    iput v1, v0, LQc/H;->c:I

    goto :goto_7

    :cond_a
    new-instance v0, LQc/H;

    invoke-direct {v0, p0, p2}, LQc/H;-><init>(LJ2/u;Lib/c;)V

    :goto_7
    iget-object p2, v0, LQc/H;->b:Ljava/lang/Object;

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v0, LQc/H;->c:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_d

    if-eq v2, v4, :cond_c

    if-ne v2, v3, :cond_b

    iget-object p0, v0, LQc/H;->a:LJ2/u;

    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_9

    :cond_b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    iget-object p1, v0, LQc/H;->e:Ljava/lang/Object;

    iget-object p0, v0, LQc/H;->a:LJ2/u;

    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_8

    :cond_d
    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    iput-object p0, v0, LQc/H;->a:LJ2/u;

    iput-object p1, v0, LQc/H;->e:Ljava/lang/Object;

    iput v4, v0, LQc/H;->c:I

    iget-object p2, p0, LJ2/u;->c:Ljava/lang/Object;

    check-cast p2, Lv2/j;

    invoke-virtual {p2, p1, v0}, Lv2/j;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_e

    goto :goto_a

    :cond_e
    :goto_8
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_f

    iget-object p2, p0, LJ2/u;->b:Ljava/lang/Object;

    check-cast p2, LQc/i;

    iput-object p0, v0, LQc/H;->a:LJ2/u;

    const/4 v2, 0x0

    iput-object v2, v0, LQc/H;->e:Ljava/lang/Object;

    iput v3, v0, LQc/H;->c:I

    invoke-interface {p2, p1, v0}, LQc/i;->emit(Ljava/lang/Object;Lib/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_10

    goto :goto_a

    :cond_f
    const/4 v4, 0x0

    :cond_10
    :goto_9
    if-eqz v4, :cond_11

    sget-object v1, Ldb/r;->a:Ldb/r;

    :goto_a
    return-object v1

    :cond_11
    new-instance p1, LRc/a;

    invoke-direct {p1, p0}, LRc/a;-><init>(Ljava/lang/Object;)V

    throw p1

    :pswitch_5
    instance-of v0, p2, LQc/B;

    if-eqz v0, :cond_12

    move-object v0, p2

    check-cast v0, LQc/B;

    iget v1, v0, LQc/B;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_12

    sub-int/2addr v1, v2

    iput v1, v0, LQc/B;->d:I

    goto :goto_b

    :cond_12
    new-instance v0, LQc/B;

    invoke-direct {v0, p0, p2}, LQc/B;-><init>(LJ2/u;Lib/c;)V

    :goto_b
    iget-object p2, v0, LQc/B;->b:Ljava/lang/Object;

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v0, LQc/B;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_14

    if-ne v2, v3, :cond_13

    iget-object p0, v0, LQc/B;->a:LJ2/u;

    :try_start_0
    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_c

    :catchall_0
    move-exception p1

    goto :goto_e

    :cond_13
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_14
    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    :try_start_1
    iget-object p2, p0, LJ2/u;->b:Ljava/lang/Object;

    check-cast p2, LQc/i;

    iput-object p0, v0, LQc/B;->a:LJ2/u;

    iput v3, v0, LQc/B;->d:I

    invoke-interface {p2, p1, v0}, LQc/i;->emit(Ljava/lang/Object;Lib/c;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p0, v1, :cond_15

    goto :goto_d

    :cond_15
    :goto_c
    sget-object v1, Ldb/r;->a:Ldb/r;

    :goto_d
    return-object v1

    :goto_e
    iget-object p0, p0, LJ2/u;->c:Ljava/lang/Object;

    check-cast p0, Ltb/w;

    iput-object p1, p0, Ltb/w;->a:Ljava/lang/Object;

    throw p1

    :pswitch_6
    instance-of v0, p2, LJ2/t;

    if-eqz v0, :cond_16

    move-object v0, p2

    check-cast v0, LJ2/t;

    iget v1, v0, LJ2/t;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_16

    sub-int/2addr v1, v2

    iput v1, v0, LJ2/t;->b:I

    goto :goto_f

    :cond_16
    new-instance v0, LJ2/t;

    invoke-direct {v0, p0, p2}, LJ2/t;-><init>(LJ2/u;Lib/c;)V

    :goto_f
    iget-object p2, v0, LJ2/t;->a:Ljava/lang/Object;

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v0, LJ2/t;->b:I

    const/4 v3, 0x1

    if-eqz v2, :cond_18

    if-ne v2, v3, :cond_17

    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_12

    :cond_17
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_18
    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    check-cast p1, Ljava/util/Set;

    new-instance p2, Lgb/h;

    invoke-direct {p2}, Lgb/h;-><init>()V

    iget-object v2, p0, LJ2/u;->c:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    array-length v4, v2

    const/4 v5, 0x0

    :goto_10
    if-ge v5, v4, :cond_1b

    aget-object v6, v2, v5

    move-object v7, p1

    check-cast v7, Ljava/lang/Iterable;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_19
    :goto_11
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v6, v8, v3}, LKc/r;->i(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_19

    invoke-virtual {p2, v6}, Lgb/h;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_1a
    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    :cond_1b
    invoke-static {p2}, Lfb/F;->a(Lgb/h;)Lgb/h;

    move-result-object p1

    iget-object p2, p1, Lgb/h;->a:Lgb/f;

    invoke-virtual {p2}, Lgb/f;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1c

    const/4 p1, 0x0

    :cond_1c
    if-eqz p1, :cond_1d

    iput v3, v0, LJ2/t;->b:I

    iget-object p0, p0, LJ2/u;->b:Ljava/lang/Object;

    check-cast p0, LQc/i;

    invoke-interface {p0, p1, v0}, LQc/i;->emit(Ljava/lang/Object;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_1d

    goto :goto_13

    :cond_1d
    :goto_12
    sget-object v1, Ldb/r;->a:Ldb/r;

    :goto_13
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
