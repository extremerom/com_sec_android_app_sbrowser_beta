.class public final La0/D0;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public a:I

.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lsb/n;

.field public final synthetic d:La0/a0;


# direct methods
.method public constructor <init>(Lsb/n;La0/a0;Lib/c;)V
    .locals 0

    iput-object p1, p0, La0/D0;->c:Lsb/n;

    iput-object p2, p0, La0/D0;->d:La0/a0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 2

    new-instance v0, La0/D0;

    iget-object v1, p0, La0/D0;->c:Lsb/n;

    iget-object p0, p0, La0/D0;->d:La0/a0;

    invoke-direct {v0, v1, p0, p2}, La0/D0;-><init>(Lsb/n;La0/a0;Lib/c;)V

    iput-object p1, v0, La0/D0;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LNc/B;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, La0/D0;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, La0/D0;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, La0/D0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, La0/D0;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p1, p0, La0/D0;->b:Ljava/lang/Object;

    check-cast p1, LNc/B;

    new-instance v1, La0/f0;

    iget-object v3, p0, La0/D0;->d:La0/a0;

    invoke-interface {p1}, LNc/B;->v()Lib/h;

    move-result-object p1

    invoke-direct {v1, v3, p1}, La0/f0;-><init>(La0/a0;Lib/h;)V

    iput v2, p0, La0/D0;->a:I

    iget-object p1, p0, La0/D0;->c:Lsb/n;

    invoke-interface {p1, v1, p0}, Lsb/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
