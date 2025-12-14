.class public final LQc/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQc/h;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, LQc/k;->a:I

    iput-object p2, p0, LQc/k;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lsb/n;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, LQc/k;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p1, Lkb/i;

    iput-object p1, p0, LQc/k;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final collect(LQc/i;Lib/c;)Ljava/lang/Object;
    .locals 6

    iget v0, p0, LQc/k;->a:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, LQc/X;

    const/4 v1, 0x3

    invoke-direct {v0, p1, v1}, LQc/X;-><init>(LQc/i;I)V

    iget-object p0, p0, LQc/k;->b:Ljava/lang/Object;

    check-cast p0, LQc/A0;

    invoke-virtual {p0, v0, p2}, LQc/A0;->collect(LQc/i;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Ldb/r;->a:Ldb/r;

    :goto_0
    return-object p0

    :pswitch_0
    new-instance v0, LQc/X;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, LQc/X;-><init>(LQc/i;I)V

    iget-object p0, p0, LQc/k;->b:Ljava/lang/Object;

    check-cast p0, LQc/k;

    invoke-virtual {p0, v0, p2}, LQc/k;->collect(LQc/i;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    if-ne p0, p1, :cond_1

    goto :goto_1

    :cond_1
    sget-object p0, Ldb/r;->a:Ldb/r;

    :goto_1
    return-object p0

    :pswitch_1
    new-instance v0, LA4/a;

    iget-object p0, p0, LQc/k;->b:Ljava/lang/Object;

    check-cast p0, [LQc/h;

    const/16 v1, 0x15

    invoke-direct {v0, v1, p0}, LA4/a;-><init>(ILjava/lang/Object;)V

    new-instance v1, LC1/q;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, LC1/q;-><init>(ILib/c;I)V

    invoke-static {p1, p2, v0, v1, p0}, LRc/c;->a(LQc/i;Lib/c;Lsb/a;Lsb/o;[LQc/h;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    if-ne p0, p1, :cond_2

    goto :goto_2

    :cond_2
    sget-object p0, Ldb/r;->a:Ldb/r;

    :goto_2
    return-object p0

    :pswitch_2
    new-instance v0, LRc/C;

    iget-object p0, p0, LQc/k;->b:Ljava/lang/Object;

    check-cast p0, LQc/s;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, LRc/C;-><init>(LQc/s;LQc/i;Lib/c;)V

    new-instance p0, LNc/D0;

    invoke-interface {p2}, Lib/c;->getContext()Lib/h;

    move-result-object p1

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v1}, LNc/D0;-><init>(Lib/h;Lib/c;I)V

    invoke-static {p0, p0, v0}, LG5/X2;->e(LUc/w;LUc/w;Lsb/n;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    if-ne p0, p1, :cond_3

    goto :goto_3

    :cond_3
    sget-object p0, Ldb/r;->a:Ldb/r;

    :goto_3
    return-object p0

    :pswitch_3
    instance-of v0, p2, LQc/a;

    if-eqz v0, :cond_4

    move-object v0, p2

    check-cast v0, LQc/a;

    iget v1, v0, LQc/a;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_4

    sub-int/2addr v1, v2

    iput v1, v0, LQc/a;->d:I

    goto :goto_4

    :cond_4
    new-instance v0, LQc/a;

    invoke-direct {v0, p0, p2}, LQc/a;-><init>(LQc/k;Lib/c;)V

    :goto_4
    iget-object p2, v0, LQc/a;->b:Ljava/lang/Object;

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v0, LQc/a;->d:I

    sget-object v3, Ldb/r;->a:Ldb/r;

    const/4 v4, 0x1

    if-eqz v2, :cond_6

    if-ne v2, v4, :cond_5

    iget-object p0, v0, LQc/a;->a:LRc/H;

    :try_start_0
    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception p1

    goto :goto_9

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    new-instance p2, LRc/H;

    invoke-interface {v0}, Lib/c;->getContext()Lib/h;

    move-result-object v2

    invoke-direct {p2, p1, v2}, LRc/H;-><init>(LQc/i;Lib/h;)V

    :try_start_1
    iput-object p2, v0, LQc/a;->a:LRc/H;

    iput v4, v0, LQc/a;->d:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object p0, p0, LQc/k;->b:Ljava/lang/Object;

    check-cast p0, Lkb/i;

    invoke-interface {p0, p2, v0}, Lsb/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne p0, v1, :cond_7

    goto :goto_5

    :cond_7
    move-object p0, v3

    :goto_5
    if-ne p0, v1, :cond_8

    goto :goto_7

    :cond_8
    move-object p0, p2

    :goto_6
    invoke-virtual {p0}, Lkb/c;->releaseIntercepted()V

    move-object v1, v3

    :goto_7
    return-object v1

    :catchall_1
    move-exception p0

    move-object p1, p0

    :goto_8
    move-object p0, p2

    goto :goto_9

    :catchall_2
    move-exception p1

    goto :goto_8

    :goto_9
    invoke-virtual {p0}, Lkb/c;->releaseIntercepted()V

    throw p1

    :pswitch_4
    new-instance v0, LQc/X;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, LQc/X;-><init>(LQc/i;I)V

    iget-object p0, p0, LQc/k;->b:Ljava/lang/Object;

    check-cast p0, LQc/h;

    invoke-interface {p0, v0, p2}, LQc/h;->collect(LQc/i;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    if-ne p0, p1, :cond_9

    goto :goto_a

    :cond_9
    sget-object p0, Ldb/r;->a:Ldb/r;

    :goto_a
    return-object p0

    :pswitch_5
    iget-object p0, p0, LQc/k;->b:Ljava/lang/Object;

    check-cast p0, LQc/p0;

    invoke-interface {p1, p0, p2}, LQc/i;->emit(Ljava/lang/Object;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    if-ne p0, p1, :cond_a

    goto :goto_b

    :cond_a
    sget-object p0, Ldb/r;->a:Ldb/r;

    :goto_b
    return-object p0

    :pswitch_6
    instance-of v0, p2, LQc/j;

    if-eqz v0, :cond_b

    move-object v0, p2

    check-cast v0, LQc/j;

    iget v1, v0, LQc/j;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_b

    sub-int/2addr v1, v2

    iput v1, v0, LQc/j;->b:I

    goto :goto_c

    :cond_b
    new-instance v0, LQc/j;

    invoke-direct {v0, p0, p2}, LQc/j;-><init>(LQc/k;Lib/c;)V

    :goto_c
    iget-object p2, v0, LQc/j;->a:Ljava/lang/Object;

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v0, LQc/j;->b:I

    const/4 v3, 0x1

    if-eqz v2, :cond_d

    if-ne v2, v3, :cond_c

    iget p0, v0, LQc/j;->g:I

    iget p1, v0, LQc/j;->f:I

    iget-object v2, v0, LQc/j;->e:LQc/i;

    iget-object v4, v0, LQc/j;->d:LQc/k;

    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    move-object p2, v2

    goto :goto_e

    :cond_c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p2, p0, LQc/k;->b:Ljava/lang/Object;

    check-cast p2, [Ljava/lang/Object;

    array-length p2, p2

    const/4 v2, 0x0

    move-object v5, p1

    move-object p1, p0

    move p0, p2

    move-object p2, v5

    :goto_d
    if-ge v2, p0, :cond_f

    iget-object v4, p1, LQc/k;->b:Ljava/lang/Object;

    check-cast v4, [Ljava/lang/Object;

    aget-object v4, v4, v2

    iput-object p1, v0, LQc/j;->d:LQc/k;

    iput-object p2, v0, LQc/j;->e:LQc/i;

    iput v2, v0, LQc/j;->f:I

    iput p0, v0, LQc/j;->g:I

    iput v3, v0, LQc/j;->b:I

    invoke-interface {p2, v4, v0}, LQc/i;->emit(Ljava/lang/Object;Lib/c;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_e

    goto :goto_f

    :cond_e
    move-object v4, p1

    move p1, v2

    :goto_e
    add-int/lit8 v2, p1, 0x1

    move-object p1, v4

    goto :goto_d

    :cond_f
    sget-object v1, Ldb/r;->a:Ldb/r;

    :goto_f
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
