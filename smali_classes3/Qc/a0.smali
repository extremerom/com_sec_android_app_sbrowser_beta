.class public final LQc/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQc/i;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ltb/u;

.field public final synthetic c:LQc/i;


# direct methods
.method public constructor <init>(LQc/i;Ltb/u;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, LQc/a0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LQc/a0;->c:LQc/i;

    iput-object p2, p0, LQc/a0;->b:Ltb/u;

    return-void
.end method

.method public constructor <init>(Ltb/u;LQc/i;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, LQc/a0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LQc/a0;->b:Ltb/u;

    iput-object p2, p0, LQc/a0;->c:LQc/i;

    return-void
.end method


# virtual methods
.method public b(Lfb/z;Lib/c;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p2, Lv2/k;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lv2/k;

    iget v1, v0, Lv2/k;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lv2/k;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lv2/k;

    invoke-direct {v0, p0, p2}, Lv2/k;-><init>(LQc/a0;Lib/c;)V

    :goto_0
    iget-object p2, v0, Lv2/k;->c:Ljava/lang/Object;

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v0, Lv2/k;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lv2/k;->b:Lfb/z;

    iget-object p0, v0, Lv2/k;->a:LQc/a0;

    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    invoke-static {p1}, Ltb/k;->c(Ljava/lang/Object;)V

    iget-object p2, p0, LQc/a0;->b:Ltb/u;

    iget p2, p2, Ltb/u;->a:I

    iget v2, p1, Lfb/z;->a:I

    if-le v2, p2, :cond_4

    iput-object p0, v0, Lv2/k;->a:LQc/a0;

    iput-object p1, v0, Lv2/k;->b:Lfb/z;

    iput v3, v0, Lv2/k;->e:I

    iget-object p2, p0, LQc/a0;->c:LQc/i;

    iget-object v2, p1, Lfb/z;->b:Ljava/lang/Object;

    invoke-interface {p2, v2, v0}, LQc/i;->emit(Ljava/lang/Object;Lib/c;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    iget-object p0, p0, LQc/a0;->b:Ltb/u;

    iget p1, p1, Lfb/z;->a:I

    iput p1, p0, Ltb/u;->a:I

    :cond_4
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method public final emit(Ljava/lang/Object;Lib/c;)Ljava/lang/Object;
    .locals 6

    iget v0, p0, LQc/a0;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lfb/z;

    invoke-virtual {p0, p1, p2}, LQc/a0;->b(Lfb/z;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_0
    instance-of v0, p2, LQc/Z;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, LQc/Z;

    iget v1, v0, LQc/Z;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, LQc/Z;->c:I

    goto :goto_0

    :cond_0
    new-instance v0, LQc/Z;

    invoke-direct {v0, p0, p2}, LQc/Z;-><init>(LQc/a0;Lib/c;)V

    :goto_0
    iget-object p2, v0, LQc/Z;->a:Ljava/lang/Object;

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v0, LQc/Z;->c:I

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

    new-instance p2, Lfb/z;

    iget-object v2, p0, LQc/a0;->b:Ltb/u;

    iget v4, v2, Ltb/u;->a:I

    add-int/lit8 v5, v4, 0x1

    iput v5, v2, Ltb/u;->a:I

    if-ltz v4, :cond_4

    invoke-direct {p2, v4, p1}, Lfb/z;-><init>(ILjava/lang/Object;)V

    iput v3, v0, LQc/Z;->c:I

    iget-object p0, p0, LQc/a0;->c:LQc/i;

    invoke-interface {p0, p2, v0}, LQc/i;->emit(Ljava/lang/Object;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    goto :goto_2

    :cond_3
    :goto_1
    sget-object v1, Ldb/r;->a:Ldb/r;

    :goto_2
    return-object v1

    :cond_4
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "Index overflow has happened"

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
