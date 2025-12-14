.class public final Lz1/h1;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public a:I

.field public final synthetic b:I

.field public final synthetic c:Landroid/appwidget/AppWidgetManager;

.field public final synthetic d:Landroid/content/Intent;

.field public final synthetic e:Landroid/content/Context;


# direct methods
.method public constructor <init>(ILandroid/appwidget/AppWidgetManager;Landroid/content/Context;Landroid/content/Intent;Lib/c;)V
    .locals 0

    iput p1, p0, Lz1/h1;->b:I

    iput-object p2, p0, Lz1/h1;->c:Landroid/appwidget/AppWidgetManager;

    iput-object p4, p0, Lz1/h1;->d:Landroid/content/Intent;

    iput-object p3, p0, Lz1/h1;->e:Landroid/content/Context;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 6

    new-instance p1, Lz1/h1;

    iget-object v4, p0, Lz1/h1;->d:Landroid/content/Intent;

    iget-object v3, p0, Lz1/h1;->e:Landroid/content/Context;

    iget v1, p0, Lz1/h1;->b:I

    iget-object v2, p0, Lz1/h1;->c:Landroid/appwidget/AppWidgetManager;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lz1/h1;-><init>(ILandroid/appwidget/AppWidgetManager;Landroid/content/Context;Landroid/content/Intent;Lib/c;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LNc/B;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, Lz1/h1;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, Lz1/h1;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, Lz1/h1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, Lz1/h1;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    :try_start_0
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    :try_start_1
    sget p1, LLc/a;->c:I

    sget-object p1, LLc/c;->SECONDS:LLc/c;

    const/4 v1, 0x3

    invoke-static {v1, p1}, LOd/b;->h(ILLc/c;)J

    move-result-wide v3

    new-instance p1, Lz1/g1;

    iget-object v7, p0, Lz1/h1;->c:Landroid/appwidget/AppWidgetManager;

    iget v6, p0, Lz1/h1;->b:I

    iget-object v9, p0, Lz1/h1;->d:Landroid/content/Intent;

    iget-object v8, p0, Lz1/h1;->e:Landroid/content/Context;

    const/4 v10, 0x0

    move-object v5, p1

    invoke-direct/range {v5 .. v10}, Lz1/g1;-><init>(ILandroid/appwidget/AppWidgetManager;Landroid/content/Context;Landroid/content/Intent;Lib/c;)V

    iput v2, p0, Lz1/h1;->a:I

    invoke-static {v3, v4}, LNc/E;->H(J)J

    move-result-wide v1

    invoke-static {v1, v2, p1, p0}, LNc/E;->L(JLsb/n;Lkb/c;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-ne p0, v0, :cond_2

    return-object v0

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Finished "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lz1/h1;->b:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " force update by "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "msg"

    invoke-static {p0, p1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Le7/a;->a:Ljava/lang/String;

    const-string v0, " "

    const-string v1, "GWT:SessionReceiver"

    invoke-static {p1, v0, p0, v1}, Lw2/j;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
