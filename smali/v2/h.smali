.class public final Lv2/h;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public a:I

.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:LQc/h;

.field public final synthetic d:Lv2/i;


# direct methods
.method public constructor <init>(LQc/h;Lib/c;Lv2/i;)V
    .locals 0

    iput-object p1, p0, Lv2/h;->c:LQc/h;

    iput-object p3, p0, Lv2/h;->d:Lv2/i;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 2

    new-instance v0, Lv2/h;

    iget-object v1, p0, Lv2/h;->c:LQc/h;

    iget-object p0, p0, Lv2/h;->d:Lv2/i;

    invoke-direct {v0, v1, p2, p0}, Lv2/h;-><init>(LQc/h;Lib/c;Lv2/i;)V

    iput-object p1, v0, Lv2/h;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LQc/i;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, Lv2/h;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, Lv2/h;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, Lv2/h;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, Lv2/h;->a:I

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

    iget-object p1, p0, Lv2/h;->b:Ljava/lang/Object;

    check-cast p1, LQc/i;

    new-instance v1, Lv2/g;

    iget-object v3, p0, Lv2/h;->d:Lv2/i;

    invoke-direct {v1, p1, v3}, Lv2/g;-><init>(LQc/i;Lv2/i;)V

    iput v2, p0, Lv2/h;->a:I

    iget-object p1, p0, Lv2/h;->c:LQc/h;

    invoke-interface {p1, v1, p0}, LQc/h;->collect(LQc/i;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
