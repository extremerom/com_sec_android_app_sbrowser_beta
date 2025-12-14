.class public final LRc/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQc/i;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(IILjava/lang/Object;)V
    .locals 0

    iput p2, p0, LRc/r;->a:I

    iput-object p3, p0, LRc/r;->c:Ljava/lang/Object;

    iput p1, p0, LRc/r;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lib/c;)Ljava/lang/Object;
    .locals 5

    iget v0, p0, LRc/r;->a:I

    packed-switch v0, :pswitch_data_0

    instance-of v0, p2, Lv2/l0;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lv2/l0;

    iget v1, v0, Lv2/l0;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lv2/l0;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lv2/l0;

    invoke-direct {v0, p0, p2}, Lv2/l0;-><init>(LRc/r;Lib/c;)V

    :goto_0
    iget-object p2, v0, Lv2/l0;->a:Ljava/lang/Object;

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v0, Lv2/l0;->b:I

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

    check-cast p1, Lv2/C1;

    new-instance p2, Lv2/G;

    iget v2, p0, LRc/r;->b:I

    invoke-direct {p2, v2, p1}, Lv2/G;-><init>(ILv2/C1;)V

    iput v3, v0, Lv2/l0;->b:I

    iget-object p0, p0, LRc/r;->c:Ljava/lang/Object;

    check-cast p0, LQc/i;

    invoke-interface {p0, p2, v0}, LQc/i;->emit(Ljava/lang/Object;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    goto :goto_2

    :cond_3
    :goto_1
    sget-object v1, Ldb/r;->a:Ldb/r;

    :goto_2
    return-object v1

    :pswitch_0
    instance-of v0, p2, LRc/q;

    if-eqz v0, :cond_4

    move-object v0, p2

    check-cast v0, LRc/q;

    iget v1, v0, LRc/q;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_4

    sub-int/2addr v1, v2

    iput v1, v0, LRc/q;->c:I

    goto :goto_3

    :cond_4
    new-instance v0, LRc/q;

    invoke-direct {v0, p0, p2}, LRc/q;-><init>(LRc/r;Lib/c;)V

    :goto_3
    iget-object p2, v0, LRc/q;->a:Ljava/lang/Object;

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v0, LRc/q;->c:I

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
    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_4

    :cond_7
    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    new-instance p2, Lfb/z;

    iget v2, p0, LRc/r;->b:I

    invoke-direct {p2, v2, p1}, Lfb/z;-><init>(ILjava/lang/Object;)V

    iput v4, v0, LRc/q;->c:I

    iget-object p0, p0, LRc/r;->c:Ljava/lang/Object;

    check-cast p0, LPc/i;

    invoke-interface {p0, v0, p2}, LPc/B;->g(Lib/c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_8

    goto :goto_6

    :cond_8
    :goto_4
    iput v3, v0, LRc/q;->c:I

    invoke-static {v0}, LNc/E;->N(Lkb/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_9

    goto :goto_6

    :cond_9
    :goto_5
    sget-object v1, Ldb/r;->a:Ldb/r;

    :goto_6
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
