.class public final LV/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm0/k;


# instance fields
.field public a:Lib/j;


# virtual methods
.method public final b(Lkb/c;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p1, LV/a;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, LV/a;

    iget v1, v0, LV/a;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, LV/a;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, LV/a;

    invoke-direct {v0, p0, p1}, LV/a;-><init>(LV/b;Lkb/c;)V

    :goto_0
    iget-object p1, v0, LV/a;->b:Ljava/lang/Object;

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v0, LV/a;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, LV/a;->a:Lib/j;

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p1, p0, LV/b;->a:Lib/j;

    iput-object p1, v0, LV/a;->a:Lib/j;

    iput v3, v0, LV/a;->d:I

    new-instance v2, Lib/j;

    invoke-static {v0}, LG5/U3;->e(Lib/c;)Lib/c;

    move-result-object v0

    sget-object v3, Ljb/a;->UNDECIDED:Ljb/a;

    invoke-direct {v2, v0, v3}, Lib/j;-><init>(Lib/c;Ljb/a;)V

    iput-object v2, p0, LV/b;->a:Lib/j;

    invoke-virtual {v2}, Lib/j;->a()Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    move-object p0, p1

    :goto_1
    sget-object p1, Ldb/r;->a:Ldb/r;

    if-eqz p0, :cond_4

    invoke-interface {p0, p1}, Lib/c;->resumeWith(Ljava/lang/Object;)V

    :cond_4
    return-object p1
.end method
