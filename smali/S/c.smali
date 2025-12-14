.class public final LS/c;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public a:I

.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:LS/e;

.field public final synthetic d:LNc/j0;


# direct methods
.method public constructor <init>(LS/e;LNc/j0;Lib/c;)V
    .locals 0

    iput-object p1, p0, LS/c;->c:LS/e;

    iput-object p2, p0, LS/c;->d:LNc/j0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 2

    new-instance v0, LS/c;

    iget-object v1, p0, LS/c;->c:LS/e;

    iget-object p0, p0, LS/c;->d:LNc/j0;

    invoke-direct {v0, v1, p0, p2}, LS/c;-><init>(LS/e;LNc/j0;Lib/c;)V

    iput-object p1, v0, LS/c;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LS/N;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, LS/c;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, LS/c;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, LS/c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, LS/c;->a:I

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

    iget-object p1, p0, LS/c;->b:Ljava/lang/Object;

    check-cast p1, LS/N;

    iget-object v1, p0, LS/c;->c:LS/e;

    iget-object v3, v1, LS/e;->l:LS/p0;

    invoke-static {v1}, LS/e;->b(LS/e;)F

    move-result v4

    iput v4, v3, LS/p0;->d:F

    new-instance v3, LPc/e;

    iget-object v4, p0, LS/c;->d:LNc/j0;

    const/4 v5, 0x1

    invoke-direct {v3, v1, v5, p1, v4}, LPc/e;-><init>(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)V

    new-instance p1, LA4/a;

    const/16 v4, 0x9

    invoke-direct {p1, v4, v1}, LA4/a;-><init>(ILjava/lang/Object;)V

    iput v2, p0, LS/c;->a:I

    iget-object v1, v1, LS/e;->l:LS/p0;

    invoke-virtual {v1, v3, p1, p0}, LS/p0;->a(LPc/e;LA4/a;Lkb/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
