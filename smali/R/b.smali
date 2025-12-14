.class public final LR/b;
.super Lkb/h;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public b:I

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:LR/d;


# direct methods
.method public constructor <init>(LR/d;Lib/c;)V
    .locals 0

    iput-object p1, p0, LR/b;->d:LR/d;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkb/h;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 1

    new-instance v0, LR/b;

    iget-object p0, p0, LR/b;->d:LR/d;

    invoke-direct {v0, p0, p2}, LR/b;-><init>(LR/d;Lib/c;)V

    iput-object p1, v0, LR/b;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lx0/j;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, LR/b;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, LR/b;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, LR/b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, LR/b;->b:I

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x2

    iget-object v7, p0, LR/b;->d:LR/d;

    if-eqz v1, :cond_2

    if-eq v1, v5, :cond_1

    if-ne v1, v6, :cond_0

    iget-object v1, p0, LR/b;->c:Ljava/lang/Object;

    check-cast v1, Lx0/j;

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object v1, p0, LR/b;->c:Ljava/lang/Object;

    check-cast v1, Lx0/j;

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p1, p0, LR/b;->c:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Lx0/j;

    iput-object v1, p0, LR/b;->c:Ljava/lang/Object;

    iput v5, p0, LR/b;->b:I

    sget-object p1, Lx0/b;->Main:Lx0/b;

    invoke-static {v1, v4, p1, p0}, LS/m0;->a(Lx0/j;ZLx0/b;Lkb/a;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    check-cast p1, Lx0/e;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lx0/d;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, v7, LR/d;->p:Lx0/d;

    new-instance p1, Lr0/b;

    invoke-direct {p1, v2, v3}, Lr0/b;-><init>(J)V

    iput-object p1, v7, LR/d;->b:Lr0/b;

    :cond_4
    iput-object v1, p0, LR/b;->c:Ljava/lang/Object;

    iput v6, p0, LR/b;->b:I

    sget-object p1, Lx0/b;->Main:Lx0/b;

    invoke-virtual {v1, p1, p0}, Lx0/j;->a(Lx0/b;Lkb/a;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    :cond_5
    :goto_1
    check-cast p1, Lx0/a;

    iget-object p1, p1, Lx0/a;->a:Ljava/lang/Object;

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    move v5, v4

    :goto_2
    if-ge v5, v3, :cond_6

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lx0/e;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    move v3, v4

    :goto_3
    const/4 v5, 0x0

    if-ge v3, p1, :cond_8

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Lx0/e;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v9, v7, LR/d;->p:Lx0/d;

    if-nez v9, :cond_7

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_7
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_4

    :cond_8
    move-object v8, v5

    :goto_4
    check-cast v8, Lx0/e;

    invoke-static {v2}, Lfb/n;->E(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lx0/e;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    iput-object v5, v7, LR/d;->p:Lx0/d;

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
