.class public final LC1/r;
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


# direct methods
.method public constructor <init>(Landroid/content/Context;Lz1/e;Lz1/V;Lib/c;)V
    .locals 0

    iput-object p1, p0, LC1/r;->c:Landroid/content/Context;

    iput-object p2, p0, LC1/r;->d:Lz1/e;

    iput-object p3, p0, LC1/r;->e:Lz1/V;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 3

    new-instance v0, LC1/r;

    iget-object v1, p0, LC1/r;->d:Lz1/e;

    iget-object v2, p0, LC1/r;->e:Lz1/V;

    iget-object p0, p0, LC1/r;->c:Landroid/content/Context;

    invoke-direct {v0, p0, v1, v2, p2}, LC1/r;-><init>(Landroid/content/Context;Lz1/e;Lz1/V;Lib/c;)V

    iput-object p1, v0, LC1/r;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lc2/w;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, LC1/r;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, LC1/r;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, LC1/r;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, LC1/r;->a:I

    sget-object v2, Ldb/r;->a:Ldb/r;

    iget-object v3, p0, LC1/r;->d:Lz1/e;

    iget-object v4, p0, LC1/r;->c:Landroid/content/Context;

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v7, :cond_2

    if-eq v1, v6, :cond_1

    if-ne v1, v5, :cond_0

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, LC1/r;->b:Ljava/lang/Object;

    check-cast v1, Lc2/w;

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p1, p0, LC1/r;->b:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Lc2/w;

    invoke-static {v3}, Lz1/u;->e(Lz1/e;)Ljava/lang/String;

    move-result-object p1

    iput-object v1, p0, LC1/r;->b:Ljava/lang/Object;

    iput v7, p0, LC1/r;->a:I

    invoke-interface {v1, v4, p1, p0}, Lc2/w;->b(Landroid/content/Context;Ljava/lang/String;Lib/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Update "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, v3, Lz1/e;->a:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " at not default process / "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "msg"

    invoke-static {v7, v8}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v9, Le7/a;->a:Ljava/lang/String;

    const-string v10, " "

    const-string v11, "GWT:MultiProcess"

    invoke-static {v9, v10, v7, v11}, Lw2/j;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x0

    if-nez p1, :cond_6

    new-instance p1, LC1/s;

    iget-object v5, p0, LC1/r;->e:Lz1/V;

    invoke-direct {p1, v3, v5}, LC1/s;-><init>(Lz1/e;Lz1/V;)V

    iput-object v7, p0, LC1/r;->b:Ljava/lang/Object;

    iput v6, p0, LC1/r;->a:I

    invoke-interface {v1, v4, p1, p0}, Lc2/w;->c(Landroid/content/Context;Lc2/m;Lkb/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_5

    return-object v0

    :cond_5
    :goto_1
    return-object v2

    :cond_6
    invoke-static {v3}, Lz1/u;->e(Lz1/e;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lc2/w;->d(Ljava/lang/String;)Lc2/m;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type androidx.glance.appwidget.multiprocess.MultiProcessSession"

    invoke-static {p1, v1}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, LC1/s;

    iput-object v7, p0, LC1/r;->b:Ljava/lang/Object;

    iput v5, p0, LC1/r;->a:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "updateGlance-"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lc2/m;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v8}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Le7/a;->a:Ljava/lang/String;

    const-string v4, "GWT:MultiProcessSession"

    invoke-static {v3, v10, v1, v4}, Lw2/j;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lz1/h;->a:Lz1/h;

    iget-object p1, p1, LC1/s;->g:Lz1/p;

    invoke-virtual {p1, v1, p0}, Lc2/m;->i(Ljava/lang/Object;Lkb/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_7

    goto :goto_2

    :cond_7
    move-object p0, v2

    :goto_2
    if-ne p0, v0, :cond_8

    goto :goto_3

    :cond_8
    move-object p0, v2

    :goto_3
    if-ne p0, v0, :cond_9

    return-object v0

    :cond_9
    :goto_4
    return-object v2
.end method
