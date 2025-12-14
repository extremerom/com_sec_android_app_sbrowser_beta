.class public final LS/T;
.super Lkb/h;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public b:I

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:La0/a0;


# direct methods
.method public constructor <init>(La0/a0;Lib/c;)V
    .locals 0

    iput-object p1, p0, LS/T;->d:La0/a0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkb/h;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 1

    new-instance v0, LS/T;

    iget-object p0, p0, LS/T;->d:La0/a0;

    invoke-direct {v0, p0, p2}, LS/T;-><init>(La0/a0;Lib/c;)V

    iput-object p1, v0, LS/T;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lx0/j;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, LS/T;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, LS/T;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, LS/T;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, LS/T;->b:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, LS/T;->c:Ljava/lang/Object;

    check-cast v1, Lx0/j;

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p1, p0, LS/T;->c:Ljava/lang/Object;

    check-cast p1, Lx0/j;

    move-object v1, p1

    :goto_0
    iput-object v1, p0, LS/T;->c:Ljava/lang/Object;

    iput v2, p0, LS/T;->b:I

    invoke-static {v1, p0}, LS/c0;->a(Lx0/j;Lkb/a;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_1
    check-cast p1, Lx0/a;

    iget-object v3, p1, Lx0/a;->a:Ljava/lang/Object;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    move v6, v5

    :goto_2
    if-ge v6, v4, :cond_4

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lx0/e;

    invoke-virtual {v7}, Lx0/e;->a()Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_0

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_4
    iget-object v3, v1, Lx0/j;->d:Lx0/k;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v3, Lr0/b;->b:J

    new-instance v6, Lr0/b;

    invoke-direct {v6, v3, v4}, Lr0/b;-><init>(J)V

    iget-object p1, p1, Lx0/a;->a:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    move v4, v5

    :goto_3
    iget-wide v6, v6, Lr0/b;->a:J

    if-ge v4, v3, :cond_5

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lx0/e;

    const-wide/16 v9, 0x0

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6, v7, v9, v10}, Lr0/b;->d(JJ)J

    move-result-wide v6

    new-instance v8, Lr0/b;

    invoke-direct {v8, v6, v7}, Lr0/b;-><init>(J)V

    add-int/lit8 v4, v4, 0x1

    move-object v6, v8

    goto :goto_3

    :cond_5
    const/16 v3, 0x40

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Lx0/j;->p(F)F

    move-result v3

    neg-float v3, v3

    invoke-static {v6, v7, v3}, Lr0/b;->e(JF)J

    move-result-wide v3

    iget-object v6, p0, LS/T;->d:La0/a0;

    invoke-interface {v6}, La0/K0;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LS/k0;

    invoke-virtual {v6, v3, v4}, LS/k0;->e(J)F

    move-result v3

    invoke-virtual {v6, v3}, LS/k0;->d(F)F

    move-result v3

    iget-object v4, v6, LS/k0;->d:LV/J;

    iget-object v4, v4, LV/J;->f:Lo3/i;

    invoke-virtual {v4, v3}, Lo3/i;->c(F)F

    move-result v3

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-nez v3, :cond_6

    goto :goto_0

    :cond_6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_7

    goto/16 :goto_0

    :cond_7
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lx0/e;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    throw p0
.end method
