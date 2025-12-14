.class public final Lc2/A;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public a:I

.field public final synthetic b:Landroidx/glance/session/SessionWorker;

.field public final synthetic c:Lc2/m;


# direct methods
.method public constructor <init>(Landroidx/glance/session/SessionWorker;Lc2/m;Lib/c;)V
    .locals 0

    iput-object p1, p0, Lc2/A;->b:Landroidx/glance/session/SessionWorker;

    iput-object p2, p0, Lc2/A;->c:Lc2/m;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 1

    new-instance p1, Lc2/A;

    iget-object v0, p0, Lc2/A;->b:Landroidx/glance/session/SessionWorker;

    iget-object p0, p0, Lc2/A;->c:Lc2/m;

    invoke-direct {p1, v0, p0, p2}, Lc2/A;-><init>(Landroidx/glance/session/SessionWorker;Lc2/m;Lib/c;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LNc/B;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, Lc2/A;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, Lc2/A;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, Lc2/A;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, Lc2/A;->a:I

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

    iget-object p1, p0, Lc2/A;->b:Landroidx/glance/session/SessionWorker;

    iget-object p1, p1, Landroidx/glance/session/SessionWorker;->j:Lc2/n;

    new-instance v1, Lc2/z;

    iget-object v3, p0, Lc2/A;->c:Lc2/m;

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Lc2/z;-><init>(Lc2/m;Lib/c;)V

    iput v2, p0, Lc2/A;->a:I

    invoke-interface {p1, v1, p0}, Lc2/n;->a(Lsb/n;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
