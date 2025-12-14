.class public final Lc2/D;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public a:I

.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Landroidx/glance/session/SessionWorker;


# direct methods
.method public constructor <init>(Landroidx/glance/session/SessionWorker;Lib/c;)V
    .locals 0

    iput-object p1, p0, Lc2/D;->c:Landroidx/glance/session/SessionWorker;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 1

    new-instance v0, Lc2/D;

    iget-object p0, p0, Lc2/D;->c:Landroidx/glance/session/SessionWorker;

    invoke-direct {v0, p0, p2}, Lc2/D;-><init>(Landroidx/glance/session/SessionWorker;Lib/c;)V

    iput-object p1, v0, Lc2/D;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lc2/U;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, Lc2/D;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, Lc2/D;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, Lc2/D;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, Lc2/D;->a:I

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

    iget-object p1, p0, Lc2/D;->b:Ljava/lang/Object;

    check-cast p1, Lc2/U;

    iget-object v1, p0, Lc2/D;->c:Landroidx/glance/session/SessionWorker;

    iget-object v3, v1, Lf3/t;->a:Landroid/content/Context;

    const-string v4, "getApplicationContext(...)"

    invoke-static {v3, v4}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lc2/y;

    const/4 v5, 0x0

    invoke-direct {v4, v1, p1, v5}, Lc2/y;-><init>(Landroidx/glance/session/SessionWorker;Lc2/U;Lib/c;)V

    new-instance v6, Lc2/C;

    invoke-direct {v6, v1, p1, v5}, Lc2/C;-><init>(Landroidx/glance/session/SessionWorker;Lc2/U;Lib/c;)V

    iput v2, p0, Lc2/D;->a:I

    new-instance p1, Lc2/f;

    invoke-direct {p1, v3, v6, v4, v5}, Lc2/f;-><init>(Landroid/content/Context;Lc2/C;Lc2/y;Lib/c;)V

    invoke-static {p1, p0}, LNc/E;->j(Lsb/n;Lib/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    return-object p1
.end method
