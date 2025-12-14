.class public final Landroidx/lifecycle/f0;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public a:I

.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Landroidx/lifecycle/D;

.field public final synthetic d:Landroidx/lifecycle/C;

.field public final synthetic e:Lkb/i;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/D;Landroidx/lifecycle/C;Lsb/n;Lib/c;)V
    .locals 0

    iput-object p1, p0, Landroidx/lifecycle/f0;->c:Landroidx/lifecycle/D;

    iput-object p2, p0, Landroidx/lifecycle/f0;->d:Landroidx/lifecycle/C;

    check-cast p3, Lkb/i;

    iput-object p3, p0, Landroidx/lifecycle/f0;->e:Lkb/i;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 3

    new-instance v0, Landroidx/lifecycle/f0;

    iget-object v1, p0, Landroidx/lifecycle/f0;->e:Lkb/i;

    iget-object v2, p0, Landroidx/lifecycle/f0;->c:Landroidx/lifecycle/D;

    iget-object p0, p0, Landroidx/lifecycle/f0;->d:Landroidx/lifecycle/C;

    invoke-direct {v0, v2, p0, v1, p2}, Landroidx/lifecycle/f0;-><init>(Landroidx/lifecycle/D;Landroidx/lifecycle/C;Lsb/n;Lib/c;)V

    iput-object p1, v0, Landroidx/lifecycle/f0;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LNc/B;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/f0;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/f0;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/f0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, Landroidx/lifecycle/f0;->a:I

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

    iget-object p1, p0, Landroidx/lifecycle/f0;->b:Ljava/lang/Object;

    move-object v6, p1

    check-cast v6, LNc/B;

    sget-object p1, LNc/N;->a:LWc/f;

    sget-object p1, LUc/q;->a:LNc/w0;

    invoke-virtual {p1}, LNc/w0;->K()LNc/w0;

    move-result-object p1

    new-instance v1, Landroidx/lifecycle/e0;

    iget-object v7, p0, Landroidx/lifecycle/f0;->e:Lkb/i;

    iget-object v4, p0, Landroidx/lifecycle/f0;->c:Landroidx/lifecycle/D;

    iget-object v5, p0, Landroidx/lifecycle/f0;->d:Landroidx/lifecycle/C;

    const/4 v8, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Landroidx/lifecycle/e0;-><init>(Landroidx/lifecycle/D;Landroidx/lifecycle/C;LNc/B;Lsb/n;Lib/c;)V

    iput v2, p0, Landroidx/lifecycle/f0;->a:I

    invoke-static {p1, v1, p0}, LNc/E;->K(Lib/h;Lsb/n;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
