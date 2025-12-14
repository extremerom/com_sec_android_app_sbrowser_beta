.class public final Lz1/m0;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public a:I

.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lz1/q0;

.field public final synthetic d:Landroid/content/Context;

.field public final synthetic e:I

.field public final synthetic f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lz1/q0;Landroid/content/Context;ILjava/lang/String;Lib/c;)V
    .locals 0

    iput-object p1, p0, Lz1/m0;->c:Lz1/q0;

    iput-object p2, p0, Lz1/m0;->d:Landroid/content/Context;

    iput p3, p0, Lz1/m0;->e:I

    iput-object p4, p0, Lz1/m0;->f:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 7

    new-instance v6, Lz1/m0;

    iget v3, p0, Lz1/m0;->e:I

    iget-object v4, p0, Lz1/m0;->f:Ljava/lang/String;

    iget-object v1, p0, Lz1/m0;->c:Lz1/q0;

    iget-object v2, p0, Lz1/m0;->d:Landroid/content/Context;

    move-object v0, v6

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lz1/m0;-><init>(Lz1/q0;Landroid/content/Context;ILjava/lang/String;Lib/c;)V

    iput-object p1, v6, Lz1/m0;->b:Ljava/lang/Object;

    return-object v6
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LNc/B;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, Lz1/m0;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, Lz1/m0;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, Lz1/m0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, Lz1/m0;->a:I

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

    iget-object p1, p0, Lz1/m0;->b:Ljava/lang/Object;

    check-cast p1, LNc/B;

    iget-object v1, p0, Lz1/m0;->c:Lz1/q0;

    iget-object v3, p0, Lz1/m0;->d:Landroid/content/Context;

    invoke-static {v1, p1, v3}, Lz1/q0;->access$updateManager(Lz1/q0;LNc/B;Landroid/content/Context;)V

    invoke-virtual {v1}, Lz1/q0;->getGlanceAppWidget()Lz1/V;

    move-result-object v4

    iput v2, p0, Lz1/m0;->a:I

    iget-object v7, p0, Lz1/m0;->f:Ljava/lang/String;

    const/16 v10, 0x8

    const/4 v11, 0x0

    iget-object v5, p0, Lz1/m0;->d:Landroid/content/Context;

    iget v6, p0, Lz1/m0;->e:I

    const/4 v8, 0x0

    move-object v9, p0

    invoke-static/range {v4 .. v11}, Lz1/V;->triggerAction$glance_appwidget_release$default(Lz1/V;Landroid/content/Context;ILjava/lang/String;Landroid/os/Bundle;Lib/c;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
