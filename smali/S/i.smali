.class public final LS/i;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public a:I

.field public final synthetic b:Lo3/i;

.field public final synthetic c:LR/s;

.field public final synthetic d:Lsb/n;


# direct methods
.method public constructor <init>(Lo3/i;LR/s;Lsb/n;Lib/c;)V
    .locals 0

    iput-object p1, p0, LS/i;->b:Lo3/i;

    iput-object p2, p0, LS/i;->c:LR/s;

    iput-object p3, p0, LS/i;->d:Lsb/n;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 2

    new-instance p1, LS/i;

    iget-object v0, p0, LS/i;->c:LR/s;

    iget-object v1, p0, LS/i;->d:Lsb/n;

    iget-object p0, p0, LS/i;->b:Lo3/i;

    invoke-direct {p1, p0, v0, v1, p2}, LS/i;-><init>(Lo3/i;LR/s;Lsb/n;Lib/c;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LNc/B;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, LS/i;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, LS/i;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, LS/i;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, LS/i;->a:I

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

    iget-object p1, p0, LS/i;->b:Lo3/i;

    iget-object v1, p1, Lo3/i;->c:Ljava/lang/Object;

    move-object v5, v1

    check-cast v5, LR/v;

    iget-object v1, p1, Lo3/i;->b:Ljava/lang/Object;

    move-object v7, v1

    check-cast v7, LS/j;

    new-instance v6, LS/h;

    iget-object v1, p0, LS/i;->d:Lsb/n;

    const/4 v3, 0x0

    invoke-direct {v6, p1, v1, v3}, LS/h;-><init>(Lo3/i;Lsb/n;Lib/c;)V

    iput v2, p0, LS/i;->a:I

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, LR/u;

    const/4 v8, 0x0

    iget-object v4, p0, LS/i;->c:LR/s;

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, LR/u;-><init>(LR/s;LR/v;LS/h;LS/j;Lib/c;)V

    invoke-static {p1, p0}, LNc/E;->j(Lsb/n;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
