.class public final LL2/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQc/i;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(LQc/i;LJ2/U;Lsb/k;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, LL2/k;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LL2/k;->b:Ljava/lang/Object;

    iput-object p2, p0, LL2/k;->c:Ljava/lang/Object;

    iput-object p3, p0, LL2/k;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(LQc/i;Lib/h;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, LL2/k;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, LL2/k;->b:Ljava/lang/Object;

    invoke-static {p2}, LUc/a;->m(Lib/h;)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p0, LL2/k;->c:Ljava/lang/Object;

    new-instance p2, LRc/N;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, LRc/N;-><init>(LQc/i;Lib/c;)V

    iput-object p2, p0, LL2/k;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/io/Serializable;LQc/i;I)V
    .locals 0

    iput p4, p0, LL2/k;->a:I

    iput-object p1, p0, LL2/k;->c:Ljava/lang/Object;

    iput-object p2, p0, LL2/k;->d:Ljava/lang/Object;

    iput-object p3, p0, LL2/k;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ltb/s;LQc/i;Lsb/n;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, LL2/k;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LL2/k;->c:Ljava/lang/Object;

    iput-object p2, p0, LL2/k;->b:Ljava/lang/Object;

    check-cast p3, Lkb/i;

    iput-object p3, p0, LL2/k;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ltb/w;Lsb/o;LQc/i;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, LL2/k;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LL2/k;->c:Ljava/lang/Object;

    check-cast p2, Lkb/i;

    iput-object p2, p0, LL2/k;->d:Ljava/lang/Object;

    iput-object p3, p0, LL2/k;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lib/c;)Ljava/lang/Object;
    .locals 8

    iget v0, p0, LL2/k;->a:I

    packed-switch v0, :pswitch_data_0

    instance-of v0, p2, Lv2/B;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lv2/B;

    iget v1, v0, Lv2/B;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lv2/B;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lv2/B;

    invoke-direct {v0, p0, p2}, Lv2/B;-><init>(LL2/k;Lib/c;)V

    :goto_0
    iget-object p2, v0, Lv2/B;->c:Ljava/lang/Object;

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v0, Lv2/B;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v0, Lv2/B;->b:Ltb/w;

    iget-object p1, v0, Lv2/B;->a:LL2/k;

    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p2, p0, LL2/k;->c:Ljava/lang/Object;

    check-cast p2, Ltb/w;

    iget-object v2, p2, Ltb/w;->a:Ljava/lang/Object;

    iput-object p0, v0, Lv2/B;->a:LL2/k;

    iput-object p2, v0, Lv2/B;->b:Ltb/w;

    iput v4, v0, Lv2/B;->e:I

    iget-object v4, p0, LL2/k;->d:Ljava/lang/Object;

    check-cast v4, LQc/I;

    invoke-virtual {v4, v2, p1, v0}, LQc/I;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    goto :goto_3

    :cond_4
    move-object v7, p1

    move-object p1, p0

    move-object p0, p2

    move-object p2, v7

    :goto_1
    iput-object p2, p0, Ltb/w;->a:Ljava/lang/Object;

    iget-object p0, p1, LL2/k;->b:Ljava/lang/Object;

    check-cast p0, LQc/i;

    iget-object p1, p1, LL2/k;->c:Ljava/lang/Object;

    check-cast p1, Ltb/w;

    iget-object p1, p1, Ltb/w;->a:Ljava/lang/Object;

    const/4 p2, 0x0

    iput-object p2, v0, Lv2/B;->a:LL2/k;

    iput-object p2, v0, Lv2/B;->b:Ltb/w;

    iput v3, v0, Lv2/B;->e:I

    invoke-interface {p0, p1, v0}, LQc/i;->emit(Ljava/lang/Object;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_5

    goto :goto_3

    :cond_5
    :goto_2
    sget-object v1, Ldb/r;->a:Ldb/r;

    :goto_3
    return-object v1

    :pswitch_0
    instance-of v0, p2, Lv2/z;

    if-eqz v0, :cond_6

    move-object v0, p2

    check-cast v0, Lv2/z;

    iget v1, v0, Lv2/z;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_6

    sub-int/2addr v1, v2

    iput v1, v0, Lv2/z;->e:I

    goto :goto_4

    :cond_6
    new-instance v0, Lv2/z;

    invoke-direct {v0, p0, p2}, Lv2/z;-><init>(LL2/k;Lib/c;)V

    :goto_4
    iget-object p2, v0, Lv2/z;->c:Ljava/lang/Object;

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v0, Lv2/z;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_9

    if-eq v2, v4, :cond_8

    if-ne v2, v3, :cond_7

    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_7

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    iget-object p0, v0, Lv2/z;->b:Ltb/w;

    iget-object p1, v0, Lv2/z;->a:LL2/k;

    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_5

    :cond_9
    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p2, p0, LL2/k;->c:Ljava/lang/Object;

    check-cast p2, Ltb/w;

    iget-object v2, p2, Ltb/w;->a:Ljava/lang/Object;

    sget-object v5, Lv2/F;->a:Ljava/lang/Object;

    if-ne v2, v5, :cond_a

    goto :goto_6

    :cond_a
    iput-object p0, v0, Lv2/z;->a:LL2/k;

    iput-object p2, v0, Lv2/z;->b:Ltb/w;

    iput v4, v0, Lv2/z;->e:I

    iget-object v4, p0, LL2/k;->d:Ljava/lang/Object;

    check-cast v4, Lkb/i;

    invoke-interface {v4, v2, p1, v0}, Lsb/o;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_b

    goto :goto_8

    :cond_b
    move-object v7, p1

    move-object p1, p0

    move-object p0, p2

    move-object p2, v7

    :goto_5
    move-object v7, p2

    move-object p2, p0

    move-object p0, p1

    move-object p1, v7

    :goto_6
    iput-object p1, p2, Ltb/w;->a:Ljava/lang/Object;

    iget-object p1, p0, LL2/k;->b:Ljava/lang/Object;

    check-cast p1, LQc/i;

    iget-object p0, p0, LL2/k;->c:Ljava/lang/Object;

    check-cast p0, Ltb/w;

    iget-object p0, p0, Ltb/w;->a:Ljava/lang/Object;

    const/4 p2, 0x0

    iput-object p2, v0, Lv2/z;->a:LL2/k;

    iput-object p2, v0, Lv2/z;->b:Ltb/w;

    iput v3, v0, Lv2/z;->e:I

    invoke-interface {p1, p0, v0}, LQc/i;->emit(Ljava/lang/Object;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_c

    goto :goto_8

    :cond_c
    :goto_7
    sget-object v1, Ldb/r;->a:Ldb/r;

    :goto_8
    return-object v1

    :pswitch_1
    iget-object v0, p0, LL2/k;->b:Ljava/lang/Object;

    check-cast v0, Lib/h;

    iget-object v1, p0, LL2/k;->c:Ljava/lang/Object;

    iget-object p0, p0, LL2/k;->d:Ljava/lang/Object;

    check-cast p0, LRc/N;

    invoke-static {v0, p1, v1, p0, p2}, LRc/c;->c(Lib/h;Ljava/lang/Object;Ljava/lang/Object;Lsb/n;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    if-ne p0, p1, :cond_d

    goto :goto_9

    :cond_d
    sget-object p0, Ldb/r;->a:Ldb/r;

    :goto_9
    return-object p0

    :pswitch_2
    instance-of v0, p2, LQc/F;

    if-eqz v0, :cond_e

    move-object v0, p2

    check-cast v0, LQc/F;

    iget v1, v0, LQc/F;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_e

    sub-int/2addr v1, v2

    iput v1, v0, LQc/F;->e:I

    goto :goto_a

    :cond_e
    new-instance v0, LQc/F;

    invoke-direct {v0, p0, p2}, LQc/F;-><init>(LL2/k;Lib/c;)V

    :goto_a
    iget-object p2, v0, LQc/F;->c:Ljava/lang/Object;

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v0, LQc/F;->e:I

    sget-object v3, Ldb/r;->a:Ldb/r;

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v2, :cond_12

    if-eq v2, v6, :cond_11

    if-eq v2, v5, :cond_10

    if-ne v2, v4, :cond_f

    goto :goto_b

    :cond_f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_10
    iget-object p1, v0, LQc/F;->b:Ljava/lang/Object;

    iget-object p0, v0, LQc/F;->a:LL2/k;

    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_d

    :cond_11
    :goto_b
    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_c

    :cond_12
    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p2, p0, LL2/k;->c:Ljava/lang/Object;

    check-cast p2, Ltb/s;

    iget-boolean p2, p2, Ltb/s;->a:Z

    if-eqz p2, :cond_14

    iput v6, v0, LQc/F;->e:I

    iget-object p0, p0, LL2/k;->b:Ljava/lang/Object;

    check-cast p0, LQc/i;

    invoke-interface {p0, p1, v0}, LQc/i;->emit(Ljava/lang/Object;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_13

    goto :goto_e

    :cond_13
    :goto_c
    move-object v1, v3

    goto :goto_e

    :cond_14
    iput-object p0, v0, LQc/F;->a:LL2/k;

    iput-object p1, v0, LQc/F;->b:Ljava/lang/Object;

    iput v5, v0, LQc/F;->e:I

    iget-object p2, p0, LL2/k;->d:Ljava/lang/Object;

    check-cast p2, Lkb/i;

    invoke-interface {p2, p1, v0}, Lsb/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_15

    goto :goto_e

    :cond_15
    :goto_d
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_13

    iget-object p2, p0, LL2/k;->c:Ljava/lang/Object;

    check-cast p2, Ltb/s;

    iput-boolean v6, p2, Ltb/s;->a:Z

    const/4 p2, 0x0

    iput-object p2, v0, LQc/F;->a:LL2/k;

    iput-object p2, v0, LQc/F;->b:Ljava/lang/Object;

    iput v4, v0, LQc/F;->e:I

    iget-object p0, p0, LL2/k;->b:Ljava/lang/Object;

    check-cast p0, LQc/i;

    invoke-interface {p0, p1, v0}, LQc/i;->emit(Ljava/lang/Object;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_13

    :goto_e
    return-object v1

    :pswitch_3
    instance-of v0, p2, LQc/f;

    if-eqz v0, :cond_16

    move-object v0, p2

    check-cast v0, LQc/f;

    iget v1, v0, LQc/f;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_16

    sub-int/2addr v1, v2

    iput v1, v0, LQc/f;->c:I

    goto :goto_f

    :cond_16
    new-instance v0, LQc/f;

    invoke-direct {v0, p0, p2}, LQc/f;-><init>(LL2/k;Lib/c;)V

    :goto_f
    iget-object p2, v0, LQc/f;->a:Ljava/lang/Object;

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v0, LQc/f;->c:I

    sget-object v3, Ldb/r;->a:Ldb/r;

    const/4 v4, 0x1

    if-eqz v2, :cond_18

    if-ne v2, v4, :cond_17

    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_10

    :cond_17
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_18
    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p2, p0, LL2/k;->c:Ljava/lang/Object;

    check-cast p2, LQc/g;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p2, p0, LL2/k;->d:Ljava/lang/Object;

    check-cast p2, Ltb/w;

    iget-object v2, p2, Ltb/w;->a:Ljava/lang/Object;

    sget-object v5, LRc/c;->b:LQ6/i;

    if-eq v2, v5, :cond_1a

    sget-object v5, LQc/t;->a:LQc/t;

    invoke-virtual {v5, v2, p1}, LQc/t;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_19

    goto :goto_11

    :cond_19
    :goto_10
    move-object v1, v3

    goto :goto_12

    :cond_1a
    :goto_11
    iput-object p1, p2, Ltb/w;->a:Ljava/lang/Object;

    iput v4, v0, LQc/f;->c:I

    iget-object p0, p0, LL2/k;->b:Ljava/lang/Object;

    check-cast p0, LQc/i;

    invoke-interface {p0, p1, v0}, LQc/i;->emit(Ljava/lang/Object;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_19

    :goto_12
    return-object v1

    :pswitch_4
    instance-of v0, p2, LL2/j;

    if-eqz v0, :cond_1b

    move-object v0, p2

    check-cast v0, LL2/j;

    iget v1, v0, LL2/j;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_1b

    sub-int/2addr v1, v2

    iput v1, v0, LL2/j;->b:I

    goto :goto_13

    :cond_1b
    new-instance v0, LL2/j;

    invoke-direct {v0, p0, p2}, LL2/j;-><init>(LL2/k;Lib/c;)V

    :goto_13
    iget-object p2, v0, LL2/j;->a:Ljava/lang/Object;

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v0, LL2/j;->b:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_1e

    if-eq v2, v4, :cond_1d

    if-ne v2, v3, :cond_1c

    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_15

    :cond_1c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1d
    iget-object p0, v0, LL2/j;->c:LQc/i;

    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_14

    :cond_1e
    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    check-cast p1, Ljava/util/Set;

    iget-object p1, p0, LL2/k;->b:Ljava/lang/Object;

    check-cast p1, LQc/i;

    iput-object p1, v0, LL2/j;->c:LQc/i;

    iput v4, v0, LL2/j;->b:I

    iget-object p2, p0, LL2/k;->d:Ljava/lang/Object;

    check-cast p2, Lsb/k;

    iget-object p0, p0, LL2/k;->c:Ljava/lang/Object;

    check-cast p0, LJ2/U;

    const/4 v2, 0x0

    invoke-static {p0, v0, p2, v4, v2}, LA/b;->i(LJ2/U;Lib/c;Lsb/k;ZZ)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_1f

    goto :goto_16

    :cond_1f
    move-object p0, p1

    :goto_14
    const/4 p1, 0x0

    iput-object p1, v0, LL2/j;->c:LQc/i;

    iput v3, v0, LL2/j;->b:I

    invoke-interface {p0, p2, v0}, LQc/i;->emit(Ljava/lang/Object;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_20

    goto :goto_16

    :cond_20
    :goto_15
    sget-object v1, Ldb/r;->a:Ldb/r;

    :goto_16
    return-object v1

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
