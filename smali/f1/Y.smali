.class public final Lf1/Y;
.super Lkb/h;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public b:I

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Lib/c;)V
    .locals 0

    iput-object p1, p0, Lf1/Y;->d:Landroid/view/View;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkb/h;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 1

    new-instance v0, Lf1/Y;

    iget-object p0, p0, Lf1/Y;->d:Landroid/view/View;

    invoke-direct {v0, p0, p2}, Lf1/Y;-><init>(Landroid/view/View;Lib/c;)V

    iput-object p1, v0, Lf1/Y;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LJc/m;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, Lf1/Y;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, Lf1/Y;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, Lf1/Y;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, Lf1/Y;->b:I

    sget-object v2, Ldb/r;->a:Ldb/r;

    iget-object v3, p0, Lf1/Y;->d:Landroid/view/View;

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v5, :cond_0

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_3

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object v1, p0, Lf1/Y;->c:Ljava/lang/Object;

    check-cast v1, LJc/m;

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p1, p0, Lf1/Y;->c:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, LJc/m;

    iput-object v1, p0, Lf1/Y;->c:Ljava/lang/Object;

    iput v4, p0, Lf1/Y;->b:I

    invoke-virtual {v1, v3, p0}, LJc/m;->c(Ljava/lang/Object;Lkb/h;)Ljb/a;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    instance-of p1, v3, Landroid/view/ViewGroup;

    if-eqz p1, :cond_6

    check-cast v3, Landroid/view/ViewGroup;

    const/4 p1, 0x0

    iput-object p1, p0, Lf1/Y;->c:Ljava/lang/Object;

    iput v5, p0, Lf1/Y;->b:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, LJc/s;

    new-instance v4, Lbd/e;

    const/4 v6, 0x1

    invoke-direct {v4, v6, v3}, Lbd/e;-><init>(ILjava/lang/Object;)V

    invoke-direct {p1, v4}, LJc/s;-><init>(Lbd/e;)V

    iget-object v3, p1, LJc/s;->b:Ljava/util/Iterator;

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_4

    move-object p0, v2

    goto :goto_1

    :cond_4
    iput-object p1, v1, LJc/m;->c:Ljava/util/Iterator;

    iput v5, v1, LJc/m;->a:I

    iput-object p0, v1, LJc/m;->d:Lib/c;

    move-object p0, v0

    :goto_1
    if-ne p0, v0, :cond_5

    goto :goto_2

    :cond_5
    move-object p0, v2

    :goto_2
    if-ne p0, v0, :cond_6

    return-object v0

    :cond_6
    :goto_3
    return-object v2
.end method
