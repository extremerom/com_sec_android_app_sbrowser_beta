.class public final LP2/j;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public a:I

.field public final synthetic b:LJ2/U;

.field public final synthetic c:Z

.field public final synthetic d:Z

.field public final synthetic e:Lsb/k;


# direct methods
.method public constructor <init>(LJ2/U;Lib/c;Lsb/k;ZZ)V
    .locals 0

    iput-object p1, p0, LP2/j;->b:LJ2/U;

    iput-boolean p4, p0, LP2/j;->c:Z

    iput-boolean p5, p0, LP2/j;->d:Z

    iput-object p3, p0, LP2/j;->e:Lsb/k;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 6

    new-instance p1, LP2/j;

    iget-boolean v5, p0, LP2/j;->d:Z

    iget-object v3, p0, LP2/j;->e:Lsb/k;

    iget-object v1, p0, LP2/j;->b:LJ2/U;

    iget-boolean v4, p0, LP2/j;->c:Z

    move-object v0, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, LP2/j;-><init>(LJ2/U;Lib/c;Lsb/k;ZZ)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LNc/B;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, LP2/j;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, LP2/j;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, LP2/j;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, LP2/j;->a:I

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

    new-instance p1, LP2/m;

    iget-boolean v7, p0, LP2/j;->d:Z

    iget-boolean v1, p0, LP2/j;->c:Z

    iget-object v9, p0, LP2/j;->b:LJ2/U;

    const/4 v5, 0x0

    iget-object v6, p0, LP2/j;->e:Lsb/k;

    move-object v3, p1

    move-object v4, v9

    move v8, v1

    invoke-direct/range {v3 .. v8}, LP2/m;-><init>(LJ2/U;Lib/c;Lsb/k;ZZ)V

    iput v2, p0, LP2/j;->a:I

    invoke-virtual {v9, v1, p1, p0}, LJ2/U;->useConnection$room_runtime_release(ZLsb/n;Lib/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    return-object p1
.end method
