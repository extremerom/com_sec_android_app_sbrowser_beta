.class public final LQc/c;
.super LQc/e;
.source "SourceFile"


# instance fields
.field public final f:Lkb/i;


# direct methods
.method public constructor <init>(Lsb/n;Lib/h;ILPc/a;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, LQc/e;-><init>(Lsb/n;Lib/h;ILPc/a;)V

    check-cast p1, Lkb/i;

    iput-object p1, p0, LQc/c;->f:Lkb/i;

    return-void
.end method


# virtual methods
.method public final d(LPc/y;Lib/c;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p2, LQc/b;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, LQc/b;

    iget v1, v0, LQc/b;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, LQc/b;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, LQc/b;

    check-cast p2, Lkb/c;

    invoke-direct {v0, p0, p2}, LQc/b;-><init>(LQc/c;Lkb/c;)V

    :goto_0
    iget-object p2, v0, LQc/b;->b:Ljava/lang/Object;

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v0, LQc/b;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, LQc/b;->a:LPc/y;

    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    iput-object p1, v0, LQc/b;->a:LPc/y;

    iput v3, v0, LQc/b;->d:I

    invoke-super {p0, p1, v0}, LQc/e;->d(LPc/y;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, LPc/x;

    iget-object p0, p1, LPc/x;->d:LPc/i;

    invoke-virtual {p0}, LPc/i;->z()Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "\'awaitClose { yourCallbackOrListener.cancel() }\' should be used in the end of callbackFlow block.\nOtherwise, a callback/listener may leak in case of external cancellation.\nSee callbackFlow API documentation for the details."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final f(Lib/h;ILPc/a;)LRc/g;
    .locals 1

    new-instance v0, LQc/c;

    iget-object p0, p0, LQc/c;->f:Lkb/i;

    invoke-direct {v0, p0, p1, p2, p3}, LQc/c;-><init>(Lsb/n;Lib/h;ILPc/a;)V

    return-object v0
.end method
