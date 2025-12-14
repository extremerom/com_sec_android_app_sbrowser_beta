.class public final LQc/b0;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/o;


# instance fields
.field public final synthetic a:I

.field public b:I

.field public synthetic c:LQc/i;

.field public synthetic d:[Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lib/c;Ldb/b;I)V
    .locals 0

    iput p3, p0, LQc/b0;->a:I

    iput-object p2, p0, LQc/b0;->e:Ljava/lang/Object;

    const/4 p2, 0x3

    invoke-direct {p0, p2, p1}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method

.method public constructor <init>(Lsb/o;Lib/c;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, LQc/b0;->a:I

    iput-object p1, p0, LQc/b0;->e:Ljava/lang/Object;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, LQc/b0;->a:I

    check-cast p1, LQc/i;

    check-cast p2, [Ljava/lang/Object;

    check-cast p3, Lib/c;

    packed-switch v0, :pswitch_data_0

    new-instance v0, LQc/b0;

    iget-object p0, p0, LQc/b0;->e:Ljava/lang/Object;

    invoke-direct {v0, p0, p3}, LQc/b0;-><init>(Lsb/o;Lib/c;)V

    iput-object p1, v0, LQc/b0;->c:LQc/i;

    iput-object p2, v0, LQc/b0;->d:[Ljava/lang/Object;

    sget-object p0, Ldb/r;->a:Ldb/r;

    invoke-virtual {v0, p0}, LQc/b0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_0
    new-instance v0, LQc/b0;

    iget-object p0, p0, LQc/b0;->e:Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-direct {v0, p3, p0, v1}, LQc/b0;-><init>(Lib/c;Ldb/b;I)V

    iput-object p1, v0, LQc/b0;->c:LQc/i;

    iput-object p2, v0, LQc/b0;->d:[Ljava/lang/Object;

    sget-object p0, Ldb/r;->a:Ldb/r;

    invoke-virtual {v0, p0}, LQc/b0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_1
    new-instance v0, LQc/b0;

    iget-object p0, p0, LQc/b0;->e:Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-direct {v0, p3, p0, v1}, LQc/b0;-><init>(Lib/c;Ldb/b;I)V

    iput-object p1, v0, LQc/b0;->c:LQc/i;

    iput-object p2, v0, LQc/b0;->d:[Ljava/lang/Object;

    sget-object p0, Ldb/r;->a:Ldb/r;

    invoke-virtual {v0, p0}, LQc/b0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    iget v0, p0, LQc/b0;->a:I

    packed-switch v0, :pswitch_data_0

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, LQc/b0;->b:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object v1, p0, LQc/b0;->c:LQc/i;

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object v1, p0, LQc/b0;->c:LQc/i;

    iget-object p1, p0, LQc/b0;->d:[Ljava/lang/Object;

    const/4 v4, 0x0

    aget-object v4, p1, v4

    aget-object p1, p1, v3

    iput-object v1, p0, LQc/b0;->c:LQc/i;

    iput v3, p0, LQc/b0;->b:I

    iget-object v3, p0, LQc/b0;->e:Ljava/lang/Object;

    invoke-interface {v3, v4, p1, p0}, Lsb/o;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    goto :goto_2

    :cond_3
    :goto_0
    const/4 v3, 0x0

    iput-object v3, p0, LQc/b0;->c:LQc/i;

    iput v2, p0, LQc/b0;->b:I

    invoke-interface {v1, p1, p0}, LQc/i;->emit(Ljava/lang/Object;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    sget-object v0, Ldb/r;->a:Ldb/r;

    :goto_2
    return-object v0

    :pswitch_0
    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, LQc/b0;->b:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_7

    if-eq v1, v3, :cond_6

    if-ne v1, v2, :cond_5

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_4

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    iget-object v1, p0, LQc/b0;->c:LQc/i;

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_3

    :cond_7
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object v1, p0, LQc/b0;->c:LQc/i;

    iget-object p1, p0, LQc/b0;->d:[Ljava/lang/Object;

    const/4 v4, 0x0

    aget-object v6, p1, v4

    aget-object v7, p1, v3

    aget-object v8, p1, v2

    const/4 v4, 0x3

    aget-object v9, p1, v4

    iput-object v1, p0, LQc/b0;->c:LQc/i;

    iput v3, p0, LQc/b0;->b:I

    iget-object v5, p0, LQc/b0;->e:Ljava/lang/Object;

    move-object v10, p0

    invoke-interface/range {v5 .. v10}, Lsb/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_8

    goto :goto_5

    :cond_8
    :goto_3
    const/4 v3, 0x0

    iput-object v3, p0, LQc/b0;->c:LQc/i;

    iput v2, p0, LQc/b0;->b:I

    invoke-interface {v1, p1, p0}, LQc/i;->emit(Ljava/lang/Object;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_9

    goto :goto_5

    :cond_9
    :goto_4
    sget-object v0, Ldb/r;->a:Ldb/r;

    :goto_5
    return-object v0

    :pswitch_1
    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, LQc/b0;->b:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_c

    if-eq v1, v3, :cond_b

    if-ne v1, v2, :cond_a

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_7

    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    iget-object v1, p0, LQc/b0;->c:LQc/i;

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_6

    :cond_c
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object v1, p0, LQc/b0;->c:LQc/i;

    iget-object p1, p0, LQc/b0;->d:[Ljava/lang/Object;

    const/4 v4, 0x0

    aget-object v4, p1, v4

    aget-object v5, p1, v3

    aget-object p1, p1, v2

    iput-object v1, p0, LQc/b0;->c:LQc/i;

    iput v3, p0, LQc/b0;->b:I

    iget-object v3, p0, LQc/b0;->e:Ljava/lang/Object;

    invoke-interface {v3, v4, v5, p1, p0}, Lsb/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_d

    goto :goto_8

    :cond_d
    :goto_6
    const/4 v3, 0x0

    iput-object v3, p0, LQc/b0;->c:LQc/i;

    iput v2, p0, LQc/b0;->b:I

    invoke-interface {v1, p1, p0}, LQc/i;->emit(Ljava/lang/Object;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_e

    goto :goto_8

    :cond_e
    :goto_7
    sget-object v0, Ldb/r;->a:Ldb/r;

    :goto_8
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
