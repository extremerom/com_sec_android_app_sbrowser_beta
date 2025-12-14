.class public final Lm1/r;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public a:I

.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lm1/G;


# direct methods
.method public constructor <init>(Lm1/G;Lib/c;)V
    .locals 0

    iput-object p1, p0, Lm1/r;->c:Lm1/G;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 1

    new-instance v0, Lm1/r;

    iget-object p0, p0, Lm1/r;->c:Lm1/G;

    invoke-direct {v0, p0, p2}, Lm1/r;-><init>(Lm1/G;Lib/c;)V

    iput-object p1, v0, Lm1/r;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lm1/o;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, Lm1/r;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, Lm1/r;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, Lm1/r;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, Lm1/r;->a:I

    sget-object v2, Ldb/r;->a:Ldb/r;

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_4

    :cond_2
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p1, p0, Lm1/r;->b:Ljava/lang/Object;

    check-cast p1, Lm1/o;

    instance-of v1, p1, Lm1/m;

    iget-object v5, p0, Lm1/r;->c:Lm1/G;

    if-eqz v1, :cond_8

    check-cast p1, Lm1/m;

    iput v4, p0, Lm1/r;->a:I

    iget-object v1, v5, Lm1/G;->g:LQc/A0;

    invoke-virtual {v1}, LQc/A0;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lm1/H;

    instance-of v3, v1, Lm1/c;

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    instance-of v3, v1, Lm1/j;

    if-eqz v3, :cond_5

    iget-object p1, p1, Lm1/m;->a:Lm1/H;

    if-ne v1, p1, :cond_4

    invoke-virtual {v5, p0}, Lm1/G;->f(Lkb/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_4

    goto :goto_3

    :cond_4
    :goto_1
    move-object p0, v2

    goto :goto_3

    :cond_5
    sget-object p1, Lm1/I;->a:Lm1/I;

    invoke-static {v1, p1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {v5, p0}, Lm1/G;->f(Lkb/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_4

    goto :goto_3

    :cond_6
    instance-of p0, v1, Lm1/i;

    if-nez p0, :cond_7

    :goto_2
    goto :goto_1

    :goto_3
    if-ne p0, v0, :cond_9

    return-object v0

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Can\'t read in final state."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    instance-of v1, p1, Lm1/n;

    if-eqz v1, :cond_9

    check-cast p1, Lm1/n;

    iput v3, p0, Lm1/r;->a:I

    invoke-static {v5, p1, p0}, Lm1/G;->b(Lm1/G;Lm1/n;Lkb/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_9

    return-object v0

    :cond_9
    :goto_4
    return-object v2
.end method
