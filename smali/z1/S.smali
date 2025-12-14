.class public final Lz1/S;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public a:I

.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lz1/e;


# direct methods
.method public constructor <init>(Lz1/e;Lib/c;)V
    .locals 0

    iput-object p1, p0, Lz1/S;->c:Lz1/e;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 1

    new-instance v0, Lz1/S;

    iget-object p0, p0, Lz1/S;->c:Lz1/e;

    invoke-direct {v0, p0, p2}, Lz1/S;-><init>(Lz1/e;Lib/c;)V

    iput-object p1, v0, Lz1/S;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lc2/w;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, Lz1/S;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, Lz1/S;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, Lz1/S;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, Lz1/S;->a:I

    sget-object v2, Ldb/r;->a:Ldb/r;

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p1, p0, Lz1/S;->b:Ljava/lang/Object;

    check-cast p1, Lc2/w;

    iget-object v1, p0, Lz1/S;->c:Lz1/e;

    invoke-static {v1}, Lz1/u;->e(Lz1/e;)Ljava/lang/String;

    move-result-object v1

    iput v3, p0, Lz1/S;->a:I

    invoke-interface {p1, v1}, Lc2/w;->a(Ljava/lang/String;)V

    if-ne v2, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    return-object v2
.end method
