.class public abstract LS/m0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, LS/w;

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, LS/w;-><init>(ILib/c;I)V

    return-void
.end method

.method public static final a(Lx0/j;ZLx0/b;Lkb/a;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p3, LS/l0;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, LS/l0;

    iget v1, v0, LS/l0;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, LS/l0;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, LS/l0;

    invoke-direct {v0, p3}, Lkb/c;-><init>(Lib/c;)V

    :goto_0
    iget-object p3, v0, LS/l0;->d:Ljava/lang/Object;

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v0, LS/l0;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-boolean p0, v0, LS/l0;->c:Z

    iget-object p1, v0, LS/l0;->b:Lx0/b;

    iget-object p2, v0, LS/l0;->a:Lx0/j;

    invoke-static {p3}, LG5/A2;->f(Ljava/lang/Object;)V

    move-object v6, p1

    move p1, p0

    move-object p0, p2

    move-object p2, v6

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p3}, LG5/A2;->f(Ljava/lang/Object;)V

    :goto_1
    iput-object p0, v0, LS/l0;->a:Lx0/j;

    iput-object p2, v0, LS/l0;->b:Lx0/b;

    iput-boolean p1, v0, LS/l0;->c:Z

    iput v3, v0, LS/l0;->e:I

    invoke-virtual {p0, p2, v0}, Lx0/j;->a(Lx0/b;Lkb/a;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    return-object v1

    :cond_3
    :goto_2
    check-cast p3, Lx0/a;

    iget-object v2, p3, Lx0/a;->a:Ljava/lang/Object;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    if-lez v4, :cond_5

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lx0/e;

    if-eqz p1, :cond_4

    invoke-virtual {p3}, Lx0/e;->a()Z

    goto :goto_1

    :cond_4
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_1

    :cond_5
    iget-object p0, p3, Lx0/a;->a:Ljava/lang/Object;

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
