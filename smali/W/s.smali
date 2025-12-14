.class public final LW/s;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public a:I

.field public final synthetic b:LW/q;

.field public final synthetic c:F


# direct methods
.method public constructor <init>(LW/q;FLib/c;)V
    .locals 0

    iput-object p1, p0, LW/s;->b:LW/q;

    iput p2, p0, LW/s;->c:F

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 1

    new-instance p1, LW/s;

    iget-object v0, p0, LW/s;->b:LW/q;

    iget p0, p0, LW/s;->c:F

    invoke-direct {p1, v0, p0, p2}, LW/s;-><init>(LW/q;FLib/c;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LNc/B;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, LW/s;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, LW/s;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, LW/s;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, LW/s;->a:I

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

    iput v3, p0, LW/s;->a:I

    const/4 p1, 0x7

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v3, p1}, LG5/v;->l(FLH0/i;I)LQ/A;

    move-result-object p1

    iget-object v1, p0, LW/s;->b:LW/q;

    iget-object v1, v1, LW/q;->a:LV/J;

    iget v3, p0, LW/s;->c:F

    invoke-static {v1, v3, p1, p0}, LG5/h2;->a(LS/d0;FLQ/h;Lkb/c;)Ljava/lang/Object;

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
