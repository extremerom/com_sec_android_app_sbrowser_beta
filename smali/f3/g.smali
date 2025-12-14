.class public final Lf3/g;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public a:Lf3/o;

.field public b:I

.field public final synthetic c:Lf3/o;

.field public final synthetic d:Landroidx/work/CoroutineWorker;


# direct methods
.method public constructor <init>(Lf3/o;Landroidx/work/CoroutineWorker;Lib/c;)V
    .locals 0

    iput-object p1, p0, Lf3/g;->c:Lf3/o;

    iput-object p2, p0, Lf3/g;->d:Landroidx/work/CoroutineWorker;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 1

    new-instance p1, Lf3/g;

    iget-object v0, p0, Lf3/g;->c:Lf3/o;

    iget-object p0, p0, Lf3/g;->d:Landroidx/work/CoroutineWorker;

    invoke-direct {p1, v0, p0, p2}, Lf3/g;-><init>(Lf3/o;Landroidx/work/CoroutineWorker;Lib/c;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LNc/B;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, Lf3/g;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, Lf3/g;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, Lf3/g;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v0, p0, Lf3/g;->b:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lf3/g;->a:Lf3/o;

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p0, p0, Lf3/o;->a:Lq3/j;

    invoke-virtual {p0, p1}, Lq3/j;->j(Ljava/lang/Object;)Z

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p1, p0, Lf3/g;->c:Lf3/o;

    iput-object p1, p0, Lf3/g;->a:Lf3/o;

    iput v1, p0, Lf3/g;->b:I

    iget-object p0, p0, Lf3/g;->d:Landroidx/work/CoroutineWorker;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Not implemented"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
