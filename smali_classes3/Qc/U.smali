.class public final LQc/U;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public a:I

.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:LQc/h;

.field public final synthetic d:LRc/b;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(LQc/h;LQc/e0;Ljava/lang/Object;Lib/c;)V
    .locals 0

    iput-object p1, p0, LQc/U;->c:LQc/h;

    check-cast p2, LRc/b;

    iput-object p2, p0, LQc/U;->d:LRc/b;

    iput-object p3, p0, LQc/U;->e:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 3

    new-instance v0, LQc/U;

    iget-object v1, p0, LQc/U;->d:LRc/b;

    iget-object v2, p0, LQc/U;->e:Ljava/lang/Object;

    iget-object p0, p0, LQc/U;->c:LQc/h;

    invoke-direct {v0, p0, v1, v2, p2}, LQc/U;-><init>(LQc/h;LQc/e0;Ljava/lang/Object;Lib/c;)V

    iput-object p1, v0, LQc/U;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LQc/p0;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, LQc/U;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, LQc/U;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, LQc/U;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, LQc/U;->a:I

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

    iget-object p1, p0, LQc/U;->b:Ljava/lang/Object;

    check-cast p1, LQc/p0;

    sget-object v1, LQc/T;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    iget-object v1, p0, LQc/U;->d:LRc/b;

    if-eq p1, v2, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    goto :goto_0

    :cond_2
    sget-object p1, LQc/n0;->a:LQ6/i;

    iget-object p0, p0, LQc/U;->e:Ljava/lang/Object;

    if-ne p0, p1, :cond_3

    invoke-interface {v1}, LQc/e0;->e()V

    goto :goto_0

    :cond_3
    invoke-interface {v1, p0}, LQc/e0;->a(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    iput v2, p0, LQc/U;->a:I

    iget-object p1, p0, LQc/U;->c:LQc/h;

    invoke-interface {p1, v1, p0}, LQc/h;->collect(LQc/i;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_5

    return-object v0

    :cond_5
    :goto_0
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
