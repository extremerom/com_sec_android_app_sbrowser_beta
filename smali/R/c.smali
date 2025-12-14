.class public final LR/c;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public a:I

.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:LR/d;


# direct methods
.method public constructor <init>(LR/d;Lib/c;)V
    .locals 0

    iput-object p1, p0, LR/c;->c:LR/d;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 1

    new-instance v0, LR/c;

    iget-object p0, p0, LR/c;->c:LR/d;

    invoke-direct {v0, p0, p2}, LR/c;-><init>(LR/d;Lib/c;)V

    iput-object p1, v0, LR/c;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lx0/k;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, LR/c;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, LR/c;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, LR/c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, LR/c;->a:I

    sget-object v2, Ldb/r;->a:Ldb/r;

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p1, p0, LR/c;->b:Ljava/lang/Object;

    check-cast p1, Lx0/k;

    new-instance v1, LR/b;

    iget-object v4, p0, LR/c;->c:LR/d;

    const/4 v5, 0x0

    invoke-direct {v1, v4, v5}, LR/b;-><init>(LR/d;Lib/c;)V

    iput v3, p0, LR/c;->a:I

    invoke-interface {p0}, Lib/c;->getContext()Lib/h;

    move-result-object v3

    new-instance v4, LS/G;

    invoke-direct {v4, v3, v1, v5}, LS/G;-><init>(Lib/h;LR/b;Lib/c;)V

    invoke-virtual {p1, v4, p0}, Lx0/k;->y(Lsb/n;Lkb/i;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    goto :goto_0

    :cond_2
    move-object p0, v2

    :goto_0
    if-ne p0, v0, :cond_3

    return-object v0

    :cond_3
    :goto_1
    return-object v2
.end method
