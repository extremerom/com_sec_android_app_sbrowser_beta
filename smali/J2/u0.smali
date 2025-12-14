.class public final LJ2/u0;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public a:I

.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:LJ2/C0;


# direct methods
.method public constructor <init>(LJ2/C0;Lib/c;)V
    .locals 0

    iput-object p1, p0, LJ2/u0;->c:LJ2/C0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 1

    new-instance v0, LJ2/u0;

    iget-object p0, p0, LJ2/u0;->c:LJ2/C0;

    invoke-direct {v0, p0, p2}, LJ2/u0;-><init>(LJ2/C0;Lib/c;)V

    iput-object p1, v0, LJ2/u0;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LJ2/m0;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, LJ2/u0;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, LJ2/u0;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, LJ2/u0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, LJ2/u0;->a:I

    sget-object v2, Lfb/x;->a:Lfb/x;

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

    :try_start_0
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object v1, p0, LJ2/u0;->b:Ljava/lang/Object;

    check-cast v1, LJ2/m0;

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p1, p0, LJ2/u0;->b:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, LJ2/m0;

    iput-object v1, p0, LJ2/u0;->b:Ljava/lang/Object;

    iput v4, p0, LJ2/u0;->a:I

    invoke-interface {v1, p0}, LJ2/m0;->b(Lkb/i;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    return-object v2

    :cond_4
    :try_start_1
    sget-object p1, LJ2/l0;->IMMEDIATE:LJ2/l0;

    new-instance v4, LJ2/t0;

    iget-object v5, p0, LJ2/u0;->c:LJ2/C0;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, LJ2/t0;-><init>(LJ2/C0;Lib/c;)V

    iput-object v6, p0, LJ2/u0;->b:Ljava/lang/Object;

    iput v3, p0, LJ2/u0;->a:I

    invoke-interface {v1, p1, v4, p0}, LJ2/m0;->d(LJ2/l0;Lsb/n;Lkb/i;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    :cond_5
    :goto_1
    check-cast p1, Ljava/util/Set;
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v2, p1

    :catch_0
    return-object v2
.end method
