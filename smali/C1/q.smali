.class public final LC1/q;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/o;


# instance fields
.field public final synthetic a:I

.field public b:I

.field public synthetic c:Ljava/lang/Object;

.field public synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILib/c;I)V
    .locals 0

    iput p3, p0, LC1/q;->a:I

    invoke-direct {p0, p1, p2}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Lib/c;I)V
    .locals 0

    iput p3, p0, LC1/q;->a:I

    iput-object p1, p0, LC1/q;->d:Ljava/lang/Object;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, LC1/q;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lc2/w;

    check-cast p2, Lz1/p;

    check-cast p3, Lib/c;

    new-instance p1, LC1/q;

    iget-object p0, p0, LC1/q;->d:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    const/4 v0, 0x5

    invoke-direct {p1, p0, p3, v0}, LC1/q;-><init>(Ljava/lang/Object;Lib/c;I)V

    iput-object p2, p1, LC1/q;->c:Ljava/lang/Object;

    sget-object p0, Ldb/r;->a:Ldb/r;

    invoke-virtual {p1, p0}, LC1/q;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Lc2/w;

    check-cast p2, Lz1/p;

    check-cast p3, Lib/c;

    new-instance p1, LC1/q;

    iget-object p0, p0, LC1/q;->d:Ljava/lang/Object;

    check-cast p0, Landroid/os/Bundle;

    const/4 v0, 0x4

    invoke-direct {p1, p0, p3, v0}, LC1/q;-><init>(Ljava/lang/Object;Lib/c;I)V

    iput-object p2, p1, LC1/q;->c:Ljava/lang/Object;

    sget-object p0, Ldb/r;->a:Ldb/r;

    invoke-virtual {p1, p0}, LC1/q;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p1, Lv2/T;

    check-cast p2, Lv2/T;

    check-cast p3, Lib/c;

    new-instance p0, LC1/q;

    const/4 v0, 0x3

    const/4 v1, 0x3

    invoke-direct {p0, v0, p3, v1}, LC1/q;-><init>(ILib/c;I)V

    iput-object p1, p0, LC1/q;->c:Ljava/lang/Object;

    iput-object p2, p0, LC1/q;->d:Ljava/lang/Object;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, LC1/q;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p1, LQc/i;

    check-cast p2, [Ljava/lang/Object;

    check-cast p3, Lib/c;

    new-instance p0, LC1/q;

    const/4 v0, 0x3

    const/4 v1, 0x2

    invoke-direct {p0, v0, p3, v1}, LC1/q;-><init>(ILib/c;I)V

    iput-object p1, p0, LC1/q;->c:Ljava/lang/Object;

    iput-object p2, p0, LC1/q;->d:Ljava/lang/Object;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, LC1/q;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p1, Lc2/w;

    check-cast p2, LC1/s;

    check-cast p3, Lib/c;

    new-instance p1, LC1/q;

    iget-object p0, p0, LC1/q;->d:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    const/4 v0, 0x1

    invoke-direct {p1, p0, p3, v0}, LC1/q;-><init>(Ljava/lang/Object;Lib/c;I)V

    iput-object p2, p1, LC1/q;->c:Ljava/lang/Object;

    sget-object p0, Ldb/r;->a:Ldb/r;

    invoke-virtual {p1, p0}, LC1/q;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast p1, Lc2/w;

    check-cast p2, LC1/s;

    check-cast p3, Lib/c;

    new-instance p1, LC1/q;

    iget-object p0, p0, LC1/q;->d:Ljava/lang/Object;

    check-cast p0, Landroid/os/Bundle;

    const/4 v0, 0x0

    invoke-direct {p1, p0, p3, v0}, LC1/q;-><init>(Ljava/lang/Object;Lib/c;I)V

    iput-object p2, p1, LC1/q;->c:Ljava/lang/Object;

    sget-object p0, Ldb/r;->a:Ldb/r;

    invoke-virtual {p1, p0}, LC1/q;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget v0, p0, LC1/q;->a:I

    packed-switch v0, :pswitch_data_0

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, LC1/q;->b:I

    sget-object v2, Ldb/r;->a:Ldb/r;

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p1, p0, LC1/q;->c:Ljava/lang/Object;

    check-cast p1, Lz1/p;

    iput v3, p0, LC1/q;->b:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lz1/f;

    iget-object v3, p0, LC1/q;->d:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-direct {v1, v3}, Lz1/f;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, p0}, Lc2/m;->i(Ljava/lang/Object;Lkb/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    goto :goto_0

    :cond_2
    move-object p0, v2

    :goto_0
    if-ne p0, v0, :cond_3

    goto :goto_2

    :cond_3
    :goto_1
    move-object v0, v2

    :goto_2
    return-object v0

    :pswitch_0
    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, LC1/q;->b:I

    sget-object v2, Ldb/r;->a:Ldb/r;

    const/4 v3, 0x1

    if-eqz v1, :cond_5

    if-ne v1, v3, :cond_4

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_4

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p1, p0, LC1/q;->c:Ljava/lang/Object;

    check-cast p1, Lz1/p;

    iput v3, p0, LC1/q;->b:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lz1/g;

    iget-object v3, p0, LC1/q;->d:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    invoke-direct {v1, v3}, Lz1/g;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p1, v1, p0}, Lc2/m;->i(Ljava/lang/Object;Lkb/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_6

    goto :goto_3

    :cond_6
    move-object p0, v2

    :goto_3
    if-ne p0, v0, :cond_7

    goto :goto_5

    :cond_7
    :goto_4
    move-object v0, v2

    :goto_5
    return-object v0

    :pswitch_1
    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, LC1/q;->b:I

    const/4 v2, 0x1

    if-eqz v1, :cond_9

    if-ne v1, v2, :cond_8

    iget-object p0, p0, LC1/q;->c:Ljava/lang/Object;

    check-cast p0, Lv2/T;

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    move-object v0, p0

    goto :goto_6

    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p1, p0, LC1/q;->c:Ljava/lang/Object;

    check-cast p1, Lv2/T;

    iget-object v1, p0, LC1/q;->d:Ljava/lang/Object;

    check-cast v1, Lv2/T;

    iput-object v1, p0, LC1/q;->c:Ljava/lang/Object;

    iput v2, p0, LC1/q;->b:I

    iget-object p0, p1, Lv2/T;->b:LA7/c;

    iget-object p0, p0, LA7/c;->d:Ljava/lang/Object;

    check-cast p0, LNc/C0;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, LNc/t0;->a(Ljava/util/concurrent/CancellationException;)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    if-ne p0, v0, :cond_a

    goto :goto_6

    :cond_a
    move-object v0, v1

    :goto_6
    return-object v0

    :pswitch_2
    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, LC1/q;->b:I

    const/4 v2, 0x1

    if-eqz v1, :cond_c

    if-ne v1, v2, :cond_b

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_a

    :cond_b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p1, p0, LC1/q;->c:Ljava/lang/Object;

    check-cast p1, LQc/i;

    iget-object v1, p0, LC1/q;->d:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Lk3/c;

    array-length v3, v1

    const/4 v4, 0x0

    :goto_7
    sget-object v5, Lk3/a;->a:Lk3/a;

    if-ge v4, v3, :cond_e

    aget-object v6, v1, v4

    invoke-static {v6, v5}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_d

    goto :goto_8

    :cond_d
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_e
    const/4 v6, 0x0

    :goto_8
    if-nez v6, :cond_f

    goto :goto_9

    :cond_f
    move-object v5, v6

    :goto_9
    iput v2, p0, LC1/q;->b:I

    invoke-interface {p1, v5, p0}, LQc/i;->emit(Ljava/lang/Object;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_10

    goto :goto_b

    :cond_10
    :goto_a
    sget-object v0, Ldb/r;->a:Ldb/r;

    :goto_b
    return-object v0

    :pswitch_3
    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, LC1/q;->b:I

    sget-object v2, Ldb/r;->a:Ldb/r;

    const/4 v3, 0x1

    if-eqz v1, :cond_12

    if-ne v1, v3, :cond_11

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_e

    :cond_11
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_12
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p1, p0, LC1/q;->c:Ljava/lang/Object;

    check-cast p1, LC1/s;

    iput v3, p0, LC1/q;->b:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Le7/a;->a:Ljava/lang/String;

    const-string v3, " runLambda"

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "GWT:MultiProcessSession"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p1, LC1/s;->g:Lz1/p;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lz1/f;

    iget-object v3, p0, LC1/q;->d:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-direct {v1, v3}, Lz1/f;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, p0}, Lc2/m;->i(Ljava/lang/Object;Lkb/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_13

    goto :goto_c

    :cond_13
    move-object p0, v2

    :goto_c
    if-ne p0, v0, :cond_14

    goto :goto_d

    :cond_14
    move-object p0, v2

    :goto_d
    if-ne p0, v0, :cond_15

    goto :goto_f

    :cond_15
    :goto_e
    move-object v0, v2

    :goto_f
    return-object v0

    :pswitch_4
    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, LC1/q;->b:I

    sget-object v2, Ldb/r;->a:Ldb/r;

    const/4 v3, 0x1

    if-eqz v1, :cond_17

    if-ne v1, v3, :cond_16

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_12

    :cond_16
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_17
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p1, p0, LC1/q;->c:Ljava/lang/Object;

    check-cast p1, LC1/s;

    iget-object v1, p0, LC1/q;->d:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    if-nez v1, :cond_18

    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    :cond_18
    invoke-static {v1}, Ltb/k;->c(Ljava/lang/Object;)V

    iput v3, p0, LC1/q;->b:I

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "updateAppWidgetOptions-"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p1, Lc2/m;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "msg"

    invoke-static {v3, v4}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Le7/a;->a:Ljava/lang/String;

    const-string v5, " "

    const-string v6, "GWT:MultiProcessSession"

    invoke-static {v4, v5, v3, v6}, Lw2/j;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p1, LC1/s;->g:Lz1/p;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lz1/g;

    invoke-direct {v3, v1}, Lz1/g;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p1, v3, p0}, Lc2/m;->i(Ljava/lang/Object;Lkb/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_19

    goto :goto_10

    :cond_19
    move-object p0, v2

    :goto_10
    if-ne p0, v0, :cond_1a

    goto :goto_11

    :cond_1a
    move-object p0, v2

    :goto_11
    if-ne p0, v0, :cond_1b

    goto :goto_13

    :cond_1b
    :goto_12
    move-object v0, v2

    :goto_13
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
