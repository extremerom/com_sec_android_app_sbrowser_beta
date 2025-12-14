.class public final Lv2/D;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public a:I

.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lkb/i;

.field public final synthetic d:LQc/K;


# direct methods
.method public constructor <init>(Lsb/o;LQc/K;Lib/c;)V
    .locals 0

    check-cast p1, Lkb/i;

    iput-object p1, p0, Lv2/D;->c:Lkb/i;

    iput-object p2, p0, Lv2/D;->d:LQc/K;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 2

    new-instance v0, Lv2/D;

    iget-object v1, p0, Lv2/D;->c:Lkb/i;

    iget-object p0, p0, Lv2/D;->d:LQc/K;

    invoke-direct {v0, v1, p0, p2}, Lv2/D;-><init>(Lsb/o;LQc/K;Lib/c;)V

    iput-object p1, v0, Lv2/D;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, Lv2/D;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, Lv2/D;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, Lv2/D;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, Lv2/D;->a:I

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

    iget-object p1, p0, Lv2/D;->b:Ljava/lang/Object;

    iput v2, p0, Lv2/D;->a:I

    iget-object v1, p0, Lv2/D;->c:Lkb/i;

    iget-object v2, p0, Lv2/D;->d:LQc/K;

    invoke-interface {v1, v2, p1, p0}, Lsb/o;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
