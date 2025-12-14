.class public final Lz1/T;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public a:I

.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Landroid/content/Context;

.field public final synthetic d:Lz1/e;

.field public final synthetic e:Lz1/V;

.field public final synthetic f:Landroid/os/Bundle;

.field public final synthetic g:Lkb/i;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lz1/e;Lz1/V;Landroid/os/Bundle;Lsb/o;Lib/c;)V
    .locals 0

    iput-object p1, p0, Lz1/T;->c:Landroid/content/Context;

    iput-object p2, p0, Lz1/T;->d:Lz1/e;

    iput-object p3, p0, Lz1/T;->e:Lz1/V;

    iput-object p4, p0, Lz1/T;->f:Landroid/os/Bundle;

    check-cast p5, Lkb/i;

    iput-object p5, p0, Lz1/T;->g:Lkb/i;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 8

    new-instance v7, Lz1/T;

    iget-object v5, p0, Lz1/T;->g:Lkb/i;

    iget-object v2, p0, Lz1/T;->d:Lz1/e;

    iget-object v3, p0, Lz1/T;->e:Lz1/V;

    iget-object v1, p0, Lz1/T;->c:Landroid/content/Context;

    iget-object v4, p0, Lz1/T;->f:Landroid/os/Bundle;

    move-object v0, v7

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lz1/T;-><init>(Landroid/content/Context;Lz1/e;Lz1/V;Landroid/os/Bundle;Lsb/o;Lib/c;)V

    iput-object p1, v7, Lz1/T;->b:Ljava/lang/Object;

    return-object v7
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lc2/w;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, Lz1/T;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, Lz1/T;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, Lz1/T;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, Lz1/T;->a:I

    iget-object v2, p0, Lz1/T;->d:Lz1/e;

    iget-object v3, p0, Lz1/T;->c:Landroid/content/Context;

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v6, :cond_2

    if-eq v1, v5, :cond_1

    if-ne v1, v4, :cond_0

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object v1, p0, Lz1/T;->b:Ljava/lang/Object;

    check-cast v1, Lc2/w;

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lz1/T;->b:Ljava/lang/Object;

    check-cast v1, Lc2/w;

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p1, p0, Lz1/T;->b:Ljava/lang/Object;

    check-cast p1, Lc2/w;

    invoke-static {v2}, Lz1/u;->e(Lz1/e;)Ljava/lang/String;

    move-result-object v1

    iput-object p1, p0, Lz1/T;->b:Ljava/lang/Object;

    iput v6, p0, Lz1/T;->a:I

    invoke-interface {p1, v3, v1, p0}, Lc2/w;->b(Landroid/content/Context;Ljava/lang/String;Lib/c;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_4

    return-object v0

    :cond_4
    move-object v9, v1

    move-object v1, p1

    move-object p1, v9

    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_5

    new-instance p1, Lz1/p;

    iget-object v6, p0, Lz1/T;->f:Landroid/os/Bundle;

    iget-object v7, p0, Lz1/T;->e:Lz1/V;

    const/16 v8, 0xf8

    invoke-direct {p1, v7, v2, v6, v8}, Lz1/p;-><init>(Lz1/V;Lz1/e;Landroid/os/Bundle;I)V

    iput-object v1, p0, Lz1/T;->b:Ljava/lang/Object;

    iput v5, p0, Lz1/T;->a:I

    invoke-interface {v1, v3, p1, p0}, Lc2/w;->c(Landroid/content/Context;Lc2/m;Lkb/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    :cond_5
    :goto_1
    invoke-static {v2}, Lz1/u;->e(Lz1/e;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lc2/w;->d(Ljava/lang/String;)Lc2/m;

    move-result-object p1

    const-string v2, "null cannot be cast to non-null type androidx.glance.appwidget.AppWidgetSession"

    invoke-static {p1, v2}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lz1/p;

    const/4 v2, 0x0

    iput-object v2, p0, Lz1/T;->b:Ljava/lang/Object;

    iput v4, p0, Lz1/T;->a:I

    iget-object v2, p0, Lz1/T;->g:Lkb/i;

    invoke-interface {v2, v1, p1, p0}, Lsb/o;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_6

    return-object v0

    :cond_6
    :goto_2
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
