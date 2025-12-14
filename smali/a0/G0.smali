.class public final La0/G0;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public a:I

.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lib/h;

.field public final synthetic d:LQc/h;


# direct methods
.method public constructor <init>(Lib/h;LQc/h;Lib/c;)V
    .locals 0

    iput-object p1, p0, La0/G0;->c:Lib/h;

    iput-object p2, p0, La0/G0;->d:LQc/h;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 2

    new-instance v0, La0/G0;

    iget-object v1, p0, La0/G0;->c:Lib/h;

    iget-object p0, p0, La0/G0;->d:LQc/h;

    invoke-direct {v0, v1, p0, p2}, La0/G0;-><init>(Lib/h;LQc/h;Lib/c;)V

    iput-object p1, v0, La0/G0;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, La0/f0;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, La0/G0;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, La0/G0;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, La0/G0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, La0/G0;->a:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p1, p0, La0/G0;->b:Ljava/lang/Object;

    check-cast p1, La0/f0;

    sget-object v1, Lib/i;->a:Lib/i;

    iget-object v4, p0, La0/G0;->c:Lib/h;

    invoke-static {v4, v1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    iget-object v5, p0, La0/G0;->d:LQc/h;

    if-eqz v1, :cond_3

    new-instance v1, La0/E0;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, La0/E0;-><init>(La0/f0;I)V

    iput v3, p0, La0/G0;->a:I

    invoke-interface {v5, v1, p0}, LQc/h;->collect(LQc/i;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_4

    return-object v0

    :cond_3
    new-instance v1, La0/F0;

    const/4 v3, 0x0

    invoke-direct {v1, v5, p1, v3}, La0/F0;-><init>(LQc/h;La0/f0;Lib/c;)V

    iput v2, p0, La0/G0;->a:I

    invoke-static {v4, v1, p0}, LNc/E;->K(Lib/h;Lsb/n;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_4

    return-object v0

    :cond_4
    :goto_1
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
