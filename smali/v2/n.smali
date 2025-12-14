.class public final Lv2/n;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public a:I

.field public final synthetic b:LQc/h;

.field public final synthetic c:LA7/c;


# direct methods
.method public constructor <init>(LQc/h;LA7/c;Lib/c;)V
    .locals 0

    iput-object p1, p0, Lv2/n;->b:LQc/h;

    iput-object p2, p0, Lv2/n;->c:LA7/c;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 1

    new-instance p1, Lv2/n;

    iget-object v0, p0, Lv2/n;->b:LQc/h;

    iget-object p0, p0, Lv2/n;->c:LA7/c;

    invoke-direct {p1, v0, p0, p2}, Lv2/n;-><init>(LQc/h;LA7/c;Lib/c;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LNc/B;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, Lv2/n;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, Lv2/n;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, Lv2/n;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, Lv2/n;->a:I

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

    new-instance p1, LQc/K;

    iget-object v1, p0, Lv2/n;->c:LA7/c;

    const/4 v4, 0x2

    invoke-direct {p1, v4, v1}, LQc/K;-><init>(ILjava/lang/Object;)V

    iput v3, p0, Lv2/n;->a:I

    new-instance v1, Ltb/u;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v3, LQc/a0;

    invoke-direct {v3, p1, v1}, LQc/a0;-><init>(LQc/i;Ltb/u;)V

    iget-object p1, p0, Lv2/n;->b:LQc/h;

    invoke-interface {p1, v3, p0}, LQc/h;->collect(LQc/i;Lib/c;)Ljava/lang/Object;

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
