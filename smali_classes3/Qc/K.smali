.class public final LQc/K;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQc/i;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, LQc/K;->a:I

    iput-object p2, p0, LQc/K;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(LPc/B;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, LQc/K;->a:I

    const-string v0, "channel"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LQc/K;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public b(Lfb/z;Lib/c;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p2, Lv2/m;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lv2/m;

    iget v1, v0, Lv2/m;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lv2/m;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lv2/m;

    invoke-direct {v0, p0, p2}, Lv2/m;-><init>(LQc/K;Lib/c;)V

    :goto_0
    iget-object p2, v0, Lv2/m;->c:Ljava/lang/Object;

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v0, Lv2/m;->e:I

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
    iget-object p1, v0, Lv2/m;->b:Lfb/z;

    iget-object p0, v0, Lv2/m;->a:LQc/K;

    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p2, p0, LQc/K;->b:Ljava/lang/Object;

    check-cast p2, LA7/c;

    iget-object p2, p2, LA7/c;->a:Ljava/lang/Object;

    check-cast p2, LQc/m0;

    iput-object p0, v0, Lv2/m;->a:LQc/K;

    iput-object p1, v0, Lv2/m;->b:Lfb/z;

    iput v4, v0, Lv2/m;->e:I

    invoke-virtual {p2, p1, v0}, LQc/m0;->emit(Ljava/lang/Object;Lib/c;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    iget-object p0, p0, LQc/K;->b:Ljava/lang/Object;

    check-cast p0, LA7/c;

    iget-object p0, p0, LA7/c;->b:Ljava/lang/Object;

    check-cast p0, LG5/g4;

    const/4 p2, 0x0

    iput-object p2, v0, Lv2/m;->a:LQc/K;

    iput-object p2, v0, Lv2/m;->b:Lfb/z;

    iput v3, v0, Lv2/m;->e:I

    invoke-virtual {p0, p1, v0}, LG5/g4;->k(Lfb/z;Lkb/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_5

    return-object v1

    :cond_5
    :goto_2
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method public c(Lv2/a0;Lib/c;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p2, Lv2/p0;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lv2/p0;

    iget v1, v0, Lv2/p0;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lv2/p0;->c:I

    goto :goto_0

    :cond_0
    new-instance v0, Lv2/p0;

    invoke-direct {v0, p0, p2}, Lv2/p0;-><init>(LQc/K;Lib/c;)V

    :goto_0
    iget-object p2, v0, Lv2/p0;->a:Ljava/lang/Object;

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v0, Lv2/p0;->c:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V
    :try_end_0
    .catch LPc/s; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    :try_start_1
    iget-object p0, p0, LQc/K;->b:Ljava/lang/Object;

    check-cast p0, Lv2/q1;

    iput v3, v0, Lv2/p0;->c:I

    iget-object p0, p0, Lv2/q1;->a:LPc/i;

    invoke-interface {p0, v0, p1}, LPc/B;->g(Lib/c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catch LPc/s; {:try_start_1 .. :try_end_1} :catch_0

    if-ne p0, v1, :cond_3

    return-object v1

    :catch_0
    :cond_3
    :goto_1
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method public final emit(Ljava/lang/Object;Lib/c;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, LQc/K;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ldb/r;

    iget-object p0, p0, LQc/K;->b:Ljava/lang/Object;

    check-cast p0, LPc/i;

    invoke-interface {p0, p1}, LPc/B;->k(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_0
    check-cast p1, Lv2/a0;

    invoke-virtual {p0, p1, p2}, LQc/K;->c(Lv2/a0;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_1
    iget-object p0, p0, LQc/K;->b:Ljava/lang/Object;

    check-cast p0, LPc/B;

    invoke-interface {p0, p2, p1}, LPc/B;->g(Lib/c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Ldb/r;->a:Ldb/r;

    :goto_0
    return-object p0

    :pswitch_2
    check-cast p1, Lfb/z;

    invoke-virtual {p0, p1, p2}, LQc/K;->b(Lfb/z;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p1, Lzb/d;

    iget-object p0, p0, LQc/K;->b:Ljava/lang/Object;

    check-cast p0, La0/a0;

    invoke-interface {p0, p1}, La0/a0;->setValue(Ljava/lang/Object;)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_4
    iget-object p2, p0, LQc/K;->b:Ljava/lang/Object;

    check-cast p2, Ltb/w;

    iput-object p1, p2, Ltb/w;->a:Ljava/lang/Object;

    new-instance p1, LRc/a;

    invoke-direct {p1, p0}, LRc/a;-><init>(Ljava/lang/Object;)V

    throw p1

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
