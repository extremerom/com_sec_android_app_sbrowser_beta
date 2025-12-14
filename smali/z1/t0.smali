.class public final Lz1/t0;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public a:I

.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lz1/u0;

.field public final synthetic d:Lz1/e;

.field public final synthetic e:Lz1/V;


# direct methods
.method public constructor <init>(Lz1/u0;Lz1/e;Lz1/V;Lib/c;)V
    .locals 0

    iput-object p1, p0, Lz1/t0;->c:Lz1/u0;

    iput-object p2, p0, Lz1/t0;->d:Lz1/e;

    iput-object p3, p0, Lz1/t0;->e:Lz1/V;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 3

    new-instance v0, Lz1/t0;

    iget-object v1, p0, Lz1/t0;->d:Lz1/e;

    iget-object v2, p0, Lz1/t0;->e:Lz1/V;

    iget-object p0, p0, Lz1/t0;->c:Lz1/u0;

    invoke-direct {v0, p0, v1, v2, p2}, Lz1/t0;-><init>(Lz1/u0;Lz1/e;Lz1/V;Lib/c;)V

    iput-object p1, v0, Lz1/t0;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lc2/w;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, Lz1/t0;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, Lz1/t0;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, Lz1/t0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, Lz1/t0;->a:I

    iget-object v2, p0, Lz1/t0;->d:Lz1/e;

    const/4 v3, 0x0

    iget-object v4, p0, Lz1/t0;->c:Lz1/u0;

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v7, :cond_2

    if-eq v1, v6, :cond_1

    if-ne v1, v5, :cond_0

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object v1, p0, Lz1/t0;->b:Ljava/lang/Object;

    check-cast v1, Lc2/w;

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lz1/t0;->b:Ljava/lang/Object;

    check-cast v1, Lc2/w;

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p1, p0, Lz1/t0;->b:Ljava/lang/Object;

    check-cast p1, Lc2/w;

    iget-object v1, v4, Lz1/u0;->a:Landroidx/glance/appwidget/GlanceRemoteViewsService;

    invoke-static {v2}, Lz1/u;->e(Lz1/e;)Ljava/lang/String;

    move-result-object v8

    iput-object p1, p0, Lz1/t0;->b:Ljava/lang/Object;

    iput v7, p0, Lz1/t0;->a:I

    invoke-interface {p1, v1, v8, p0}, Lc2/w;->b(Landroid/content/Context;Ljava/lang/String;Lib/c;)Ljava/lang/Object;

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

    if-eqz p1, :cond_5

    return-object v3

    :cond_5
    iget-object p1, v4, Lz1/u0;->a:Landroidx/glance/appwidget/GlanceRemoteViewsService;

    new-instance v4, Lz1/p;

    iget-object v7, p0, Lz1/t0;->e:Lz1/V;

    const/16 v8, 0xfc

    invoke-direct {v4, v7, v2, v3, v8}, Lz1/p;-><init>(Lz1/V;Lz1/e;Landroid/os/Bundle;I)V

    iput-object v1, p0, Lz1/t0;->b:Ljava/lang/Object;

    iput v6, p0, Lz1/t0;->a:I

    invoke-interface {v1, p1, v4, p0}, Lc2/w;->c(Landroid/content/Context;Lc2/m;Lkb/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    return-object v0

    :cond_6
    :goto_1
    invoke-static {v2}, Lz1/u;->e(Lz1/e;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lc2/w;->d(Ljava/lang/String;)Lc2/m;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type androidx.glance.appwidget.AppWidgetSession"

    invoke-static {p1, v1}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lz1/p;

    iput-object v3, p0, Lz1/t0;->b:Ljava/lang/Object;

    iput v5, p0, Lz1/t0;->a:I

    invoke-virtual {p1, p0}, Lz1/p;->j(Lkb/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7

    return-object v0

    :cond_7
    :goto_2
    return-object p1
.end method
