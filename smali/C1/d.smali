.class public final LC1/d;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public a:I

.field public final synthetic b:La0/u;

.field public final synthetic c:LC1/m;

.field public final synthetic d:Landroid/content/Context;

.field public final synthetic e:La0/p0;


# direct methods
.method public constructor <init>(La0/u;LC1/m;Landroid/content/Context;La0/p0;Lib/c;)V
    .locals 0

    iput-object p1, p0, LC1/d;->b:La0/u;

    iput-object p2, p0, LC1/d;->c:LC1/m;

    iput-object p3, p0, LC1/d;->d:Landroid/content/Context;

    iput-object p4, p0, LC1/d;->e:La0/p0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 6

    new-instance p1, LC1/d;

    iget-object v4, p0, LC1/d;->e:La0/p0;

    iget-object v1, p0, LC1/d;->b:La0/u;

    iget-object v2, p0, LC1/d;->c:LC1/m;

    iget-object v3, p0, LC1/d;->d:Landroid/content/Context;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, LC1/d;-><init>(La0/u;LC1/m;Landroid/content/Context;La0/p0;Lib/c;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LNc/B;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, LC1/d;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, LC1/d;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, LC1/d;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, LC1/d;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    :try_start_0
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    :try_start_1
    iget-object p1, p0, LC1/d;->b:La0/u;

    iget-object v1, p0, LC1/d;->c:LC1/m;

    iget-object v3, p0, LC1/d;->d:Landroid/content/Context;

    invoke-virtual {v1, v3}, Lc2/m;->g(Landroid/content/Context;)Li0/a;

    move-result-object v1

    invoke-virtual {p1, v1}, La0/u;->k(Lsb/n;)V

    iget-object p1, p0, LC1/d;->e:La0/p0;

    iput v2, p0, LC1/d;->a:I

    invoke-virtual {p1, p0}, La0/p0;->C(Lkb/i;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    if-ne p0, v0, :cond_2

    return-object v0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Exception "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " at Coroutine Session\'s Frame Clock"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "msg"

    invoke-static {p0, p1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Le7/a;->a:Ljava/lang/String;

    const-string v0, " "

    const-string v1, "GWT:CoroutineSession"

    invoke-static {p1, v0, p0, v1}, Lw2/j;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
