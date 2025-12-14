.class public final LL2/d;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public a:Ltb/w;

.field public b:I

.field public final synthetic c:Ltb/w;

.field public final synthetic d:LL2/n;


# direct methods
.method public constructor <init>(Ltb/w;LL2/n;Lib/c;)V
    .locals 0

    iput-object p1, p0, LL2/d;->c:Ltb/w;

    iput-object p2, p0, LL2/d;->d:LL2/n;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 1

    new-instance p1, LL2/d;

    iget-object v0, p0, LL2/d;->c:Ltb/w;

    iget-object p0, p0, LL2/d;->d:LL2/n;

    invoke-direct {p1, v0, p0, p2}, LL2/d;-><init>(Ltb/w;LL2/n;Lib/c;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LNc/B;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, LL2/d;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, LL2/d;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, LL2/d;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, LL2/d;->b:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object p0, p0, LL2/d;->a:Ltb/w;

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p1, p0, LL2/d;->c:Ltb/w;

    iput-object p1, p0, LL2/d;->a:Ltb/w;

    iput v2, p0, LL2/d;->b:I

    iget-object v1, p0, LL2/d;->d:LL2/n;

    invoke-virtual {v1, p0}, LL2/n;->a(Lkb/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    move-object v3, p1

    move-object p1, p0

    move-object p0, v3

    :goto_0
    iput-object p1, p0, Ltb/w;->a:Ljava/lang/Object;

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
