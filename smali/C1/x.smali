.class public final LC1/x;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public a:I

.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:LC1/m;

.field public final synthetic d:Landroid/content/Context;


# direct methods
.method public constructor <init>(LC1/m;Landroid/content/Context;Lib/c;)V
    .locals 0

    iput-object p1, p0, LC1/x;->c:LC1/m;

    iput-object p2, p0, LC1/x;->d:Landroid/content/Context;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 2

    new-instance v0, LC1/x;

    iget-object v1, p0, LC1/x;->c:LC1/m;

    iget-object p0, p0, LC1/x;->d:Landroid/content/Context;

    invoke-direct {v0, v1, p0, p2}, LC1/x;-><init>(LC1/m;Landroid/content/Context;Lib/c;)V

    iput-object p1, v0, LC1/x;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, LC1/x;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, LC1/x;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, LC1/x;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, LC1/x;->a:I

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

    iget-object p1, p0, LC1/x;->b:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    new-instance v1, LC1/u;

    iget-object v3, p0, LC1/x;->c:LC1/m;

    iget-object v4, p0, LC1/x;->d:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-direct {v1, v3, p1, v4, v5}, LC1/u;-><init>(LC1/m;Ljava/lang/String;Landroid/content/Context;Lib/c;)V

    new-instance v6, LC1/w;

    invoke-direct {v6, v3, v4, v5}, LC1/w;-><init>(LC1/m;Landroid/content/Context;Lib/c;)V

    iput v2, p0, LC1/x;->a:I

    new-instance v2, LC1/G;

    invoke-direct {v2, v6, p1, v1, v5}, LC1/G;-><init>(LC1/w;Ljava/lang/String;LC1/u;Lib/c;)V

    invoke-static {v2, p0}, LNc/E;->j(Lsb/n;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
