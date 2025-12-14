.class public final LQc/X;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQc/i;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:LQc/i;


# direct methods
.method public synthetic constructor <init>(LQc/i;I)V
    .locals 0

    iput p2, p0, LQc/X;->a:I

    iput-object p1, p0, LQc/X;->b:LQc/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lib/c;)Ljava/lang/Object;
    .locals 8

    iget v0, p0, LQc/X;->a:I

    packed-switch v0, :pswitch_data_0

    instance-of v0, p2, Lv2/t;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lv2/t;

    iget v1, v0, Lv2/t;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lv2/t;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lv2/t;

    invoke-direct {v0, p0, p2}, Lv2/t;-><init>(LQc/X;Lib/c;)V

    :goto_0
    iget-object p2, v0, Lv2/t;->a:Ljava/lang/Object;

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v0, Lv2/t;->b:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    check-cast p1, Ldb/j;

    iget-object p1, p1, Ldb/j;->b:Ljava/lang/Object;

    if-eqz p1, :cond_3

    iput v3, v0, Lv2/t;->b:I

    iget-object p0, p0, LQc/X;->b:LQc/i;

    invoke-interface {p0, p1, v0}, LQc/i;->emit(Ljava/lang/Object;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    goto :goto_2

    :cond_3
    :goto_1
    sget-object v1, Ldb/r;->a:Ldb/r;

    :goto_2
    return-object v1

    :pswitch_0
    instance-of v0, p2, Lv2/p;

    if-eqz v0, :cond_4

    move-object v0, p2

    check-cast v0, Lv2/p;

    iget v1, v0, Lv2/p;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_4

    sub-int/2addr v1, v2

    iput v1, v0, Lv2/p;->b:I

    goto :goto_3

    :cond_4
    new-instance v0, Lv2/p;

    invoke-direct {v0, p0, p2}, Lv2/p;-><init>(LQc/X;Lib/c;)V

    :goto_3
    iget-object p2, v0, Lv2/p;->a:Ljava/lang/Object;

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v0, Lv2/p;->b:I

    const/4 v3, 0x1

    if-eqz v2, :cond_6

    if-ne v2, v3, :cond_5

    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_4

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    check-cast p1, Lv2/T;

    new-instance p2, Lv2/M0;

    iget-object v2, p1, Lv2/T;->b:LA7/c;

    iget-object v2, v2, LA7/c;->e:Ljava/lang/Object;

    check-cast v2, LQc/k;

    new-instance v4, Lv2/Q;

    const/4 v5, 0x0

    invoke-direct {v4, p1, v5}, Lv2/Q;-><init>(Lv2/T;Lib/c;)V

    new-instance v6, LQc/y;

    invoke-direct {v6, v4, v2}, LQc/y;-><init>(Lsb/n;LQc/h;)V

    new-instance v2, Lv2/S;

    invoke-direct {v2, p1, v5}, Lv2/S;-><init>(Lv2/T;Lib/c;)V

    new-instance v4, LQc/w;

    invoke-direct {v4, v6, v2}, LQc/w;-><init>(LQc/y;Lsb/o;)V

    iget-object v2, p1, Lv2/T;->a:Lv2/M0;

    iget-object v5, v2, Lv2/M0;->b:Lo3/e;

    new-instance v6, LA4/a;

    const/16 v7, 0x18

    invoke-direct {v6, v7, p1}, LA4/a;-><init>(ILjava/lang/Object;)V

    iget-object p1, v2, Lv2/M0;->c:LB3/c;

    invoke-direct {p2, v4, v5, p1, v6}, Lv2/M0;-><init>(LQc/h;Lo3/e;LB3/c;Lsb/a;)V

    iput v3, v0, Lv2/p;->b:I

    iget-object p0, p0, LQc/X;->b:LQc/i;

    invoke-interface {p0, p2, v0}, LQc/i;->emit(Ljava/lang/Object;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_7

    goto :goto_5

    :cond_7
    :goto_4
    sget-object v1, Ldb/r;->a:Ldb/r;

    :goto_5
    return-object v1

    :pswitch_1
    instance-of v0, p2, Lm1/t;

    if-eqz v0, :cond_8

    move-object v0, p2

    check-cast v0, Lm1/t;

    iget v1, v0, Lm1/t;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_8

    sub-int/2addr v1, v2

    iput v1, v0, Lm1/t;->b:I

    goto :goto_6

    :cond_8
    new-instance v0, Lm1/t;

    invoke-direct {v0, p0, p2}, Lm1/t;-><init>(LQc/X;Lib/c;)V

    :goto_6
    iget-object p2, v0, Lm1/t;->a:Ljava/lang/Object;

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v0, Lm1/t;->b:I

    const/4 v3, 0x1

    if-eqz v2, :cond_a

    if-ne v2, v3, :cond_9

    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_7

    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    check-cast p1, Lm1/H;

    instance-of p2, p1, Lm1/j;

    if-nez p2, :cond_f

    instance-of p2, p1, Lm1/i;

    if-nez p2, :cond_e

    instance-of p2, p1, Lm1/c;

    if-eqz p2, :cond_c

    check-cast p1, Lm1/c;

    iget-object p1, p1, Lm1/c;->a:Ljava/lang/Object;

    iput v3, v0, Lm1/t;->b:I

    iget-object p0, p0, LQc/X;->b:LQc/i;

    invoke-interface {p0, p1, v0}, LQc/i;->emit(Ljava/lang/Object;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_b

    goto :goto_8

    :cond_b
    :goto_7
    sget-object v1, Ldb/r;->a:Ldb/r;

    :goto_8
    return-object v1

    :cond_c
    instance-of p0, p1, Lm1/I;

    if-eqz p0, :cond_d

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This is a bug in DataStore. Please file a bug at: https://issuetracker.google.com/issues/new?component=907884&template=1466542"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    new-instance p0, LI5/b;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_e
    check-cast p1, Lm1/i;

    iget-object p0, p1, Lm1/i;->a:Ljava/lang/Throwable;

    throw p0

    :cond_f
    check-cast p1, Lm1/j;

    iget-object p0, p1, Lm1/j;->a:Ljava/lang/Throwable;

    throw p0

    :pswitch_2
    instance-of v0, p2, LQc/W;

    if-eqz v0, :cond_10

    move-object v0, p2

    check-cast v0, LQc/W;

    iget v1, v0, LQc/W;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_10

    sub-int/2addr v1, v2

    iput v1, v0, LQc/W;->b:I

    goto :goto_9

    :cond_10
    new-instance v0, LQc/W;

    invoke-direct {v0, p0, p2}, LQc/W;-><init>(LQc/X;Lib/c;)V

    :goto_9
    iget-object p2, v0, LQc/W;->a:Ljava/lang/Object;

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v0, LQc/W;->b:I

    const/4 v3, 0x1

    if-eqz v2, :cond_12

    if-ne v2, v3, :cond_11

    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_a

    :cond_11
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_12
    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    if-eqz p1, :cond_13

    iput v3, v0, LQc/W;->b:I

    iget-object p0, p0, LQc/X;->b:LQc/i;

    invoke-interface {p0, p1, v0}, LQc/i;->emit(Ljava/lang/Object;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_13

    goto :goto_b

    :cond_13
    :goto_a
    sget-object v1, Ldb/r;->a:Ldb/r;

    :goto_b
    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
