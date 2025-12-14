.class public final LJ2/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQc/h;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, LJ2/v;->a:I

    iput-object p2, p0, LJ2/v;->b:Ljava/lang/Object;

    iput-object p3, p0, LJ2/v;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final collect(LQc/i;Lib/c;)Ljava/lang/Object;
    .locals 5

    iget v0, p0, LJ2/v;->a:I

    packed-switch v0, :pswitch_data_0

    sget-object v0, LQc/d0;->a:LQc/d0;

    new-instance v1, LQc/I;

    const/4 v2, 0x0

    iget-object v3, p0, LJ2/v;->c:Ljava/lang/Object;

    check-cast v3, Lsb/r;

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, LQc/I;-><init>(Lib/c;Ljava/lang/Object;I)V

    iget-object p0, p0, LJ2/v;->b:Ljava/lang/Object;

    check-cast p0, [LQc/h;

    invoke-static {p1, p2, v0, v1, p0}, LRc/c;->a(LQc/i;Lib/c;Lsb/a;Lsb/o;[LQc/h;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Ldb/r;->a:Ldb/r;

    :goto_0
    return-object p0

    :pswitch_0
    instance-of v0, p2, LQc/G;

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, LQc/G;

    iget v1, v0, LQc/G;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_1

    sub-int/2addr v1, v2

    iput v1, v0, LQc/G;->b:I

    goto :goto_1

    :cond_1
    new-instance v0, LQc/G;

    invoke-direct {v0, p0, p2}, LQc/G;-><init>(LJ2/v;Lib/c;)V

    :goto_1
    iget-object p2, v0, LQc/G;->a:Ljava/lang/Object;

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v0, LQc/G;->b:I

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    if-ne v2, v3, :cond_2

    iget-object p0, v0, LQc/G;->d:LJ2/u;

    :try_start_0
    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V
    :try_end_0
    .catch LRc/a; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p2, p0, LJ2/v;->b:Ljava/lang/Object;

    check-cast p2, LQc/F0;

    new-instance v2, LJ2/u;

    iget-object p0, p0, LJ2/v;->c:Ljava/lang/Object;

    check-cast p0, Lv2/j;

    const/4 v4, 0x2

    invoke-direct {v2, p0, p1, v4}, LJ2/u;-><init>(Ljava/io/Serializable;LQc/i;I)V

    :try_start_1
    iput-object v2, v0, LQc/G;->d:LJ2/u;

    iput v3, v0, LQc/G;->b:I

    invoke-virtual {p2, v2, v0}, LQc/F0;->collect(LQc/i;Lib/c;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catch LRc/a; {:try_start_1 .. :try_end_1} :catch_1

    if-ne p0, v1, :cond_4

    goto :goto_4

    :catch_1
    move-exception p1

    move-object p0, v2

    :goto_2
    iget-object p2, p1, LRc/a;->a:Ljava/lang/Object;

    if-ne p2, p0, :cond_5

    :cond_4
    :goto_3
    sget-object v1, Ldb/r;->a:Ldb/r;

    :goto_4
    return-object v1

    :cond_5
    throw p1

    :pswitch_1
    new-instance v0, Ltb/s;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, LL2/k;

    iget-object v2, p0, LJ2/v;->c:Ljava/lang/Object;

    check-cast v2, LQc/w0;

    invoke-direct {v1, v0, p1, v2}, LL2/k;-><init>(Ltb/s;LQc/i;Lsb/n;)V

    iget-object p0, p0, LJ2/v;->b:Ljava/lang/Object;

    check-cast p0, LRc/n;

    invoke-virtual {p0, v1, p2}, LRc/i;->collect(LQc/i;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    if-ne p0, p1, :cond_6

    goto :goto_5

    :cond_6
    sget-object p0, Ldb/r;->a:Ldb/r;

    :goto_5
    return-object p0

    :pswitch_2
    new-instance v0, LJ2/u;

    iget-object v1, p0, LJ2/v;->c:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v2, p1, v1}, LJ2/u;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object p0, p0, LJ2/v;->b:Ljava/lang/Object;

    check-cast p0, LQc/m0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, v0, p2}, LQc/m0;->k(LQc/m0;LQc/i;Lib/c;)Ljb/a;

    move-result-object p0

    sget-object p1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    if-ne p0, p1, :cond_7

    goto :goto_6

    :cond_7
    sget-object p0, Ldb/r;->a:Ldb/r;

    :goto_6
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
