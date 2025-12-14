.class public final Lz1/g1;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public a:I

.field public final synthetic b:Landroid/appwidget/AppWidgetManager;

.field public final synthetic c:I

.field public final synthetic d:Landroid/content/Intent;

.field public final synthetic e:Landroid/content/Context;


# direct methods
.method public constructor <init>(ILandroid/appwidget/AppWidgetManager;Landroid/content/Context;Landroid/content/Intent;Lib/c;)V
    .locals 0

    iput-object p2, p0, Lz1/g1;->b:Landroid/appwidget/AppWidgetManager;

    iput p1, p0, Lz1/g1;->c:I

    iput-object p4, p0, Lz1/g1;->d:Landroid/content/Intent;

    iput-object p3, p0, Lz1/g1;->e:Landroid/content/Context;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 6

    new-instance p1, Lz1/g1;

    iget-object v4, p0, Lz1/g1;->d:Landroid/content/Intent;

    iget-object v3, p0, Lz1/g1;->e:Landroid/content/Context;

    iget-object v2, p0, Lz1/g1;->b:Landroid/appwidget/AppWidgetManager;

    iget v1, p0, Lz1/g1;->c:I

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lz1/g1;-><init>(ILandroid/appwidget/AppWidgetManager;Landroid/content/Context;Landroid/content/Intent;Lib/c;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LNc/B;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, Lz1/g1;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, Lz1/g1;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, Lz1/g1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, Lz1/g1;->a:I

    sget-object v2, Ldb/r;->a:Ldb/r;

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p1, p0, Lz1/g1;->b:Landroid/appwidget/AppWidgetManager;

    iget v1, p0, Lz1/g1;->c:I

    invoke-virtual {p1, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {p1, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object v5, p0, Lz1/g1;->d:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "onReceive : "

    const-string v8, ", "

    invoke-static {v6, v1, v5, v8, v8}, Lt/b;->m(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "msg"

    invoke-static {v4, v5}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Le7/a;->a:Ljava/lang/String;

    const-string v6, " "

    const-string v8, "GWT:SessionReceiver"

    invoke-static {v5, v6, v4, v8}, Lw2/j;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    instance-of v4, p1, Lz1/q0;

    if-eqz v4, :cond_3

    check-cast p1, Lz1/q0;

    invoke-virtual {p1}, Lz1/q0;->getGlanceAppWidget()Lz1/V;

    move-result-object v10

    new-instance v9, Lz1/e;

    invoke-direct {v9, v1}, Lz1/e;-><init>(I)V

    iput v3, p0, Lz1/g1;->a:I

    new-instance p1, LI1/l;

    const/4 v8, 0x0

    iget-object v6, p0, Lz1/g1;->e:Landroid/content/Context;

    move-object v5, p1

    invoke-direct/range {v5 .. v10}, LI1/l;-><init>(Landroid/content/Context;Landroid/os/Bundle;Lib/c;Lz1/e;Lz1/V;)V

    invoke-static {p1, p0}, LNc/E;->j(Lsb/n;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    goto :goto_0

    :cond_2
    move-object p0, v2

    :goto_0
    if-ne p0, v0, :cond_3

    return-object v0

    :cond_3
    :goto_1
    return-object v2
.end method
