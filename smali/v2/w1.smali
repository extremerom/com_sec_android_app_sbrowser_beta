.class public final Lv2/w1;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public a:I

.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lo3/f;

.field public final synthetic d:I

.field public final synthetic e:Lv2/W0;


# direct methods
.method public constructor <init>(Lo3/f;ILv2/W0;Lib/c;)V
    .locals 0

    iput-object p1, p0, Lv2/w1;->c:Lo3/f;

    iput p2, p0, Lv2/w1;->d:I

    iput-object p3, p0, Lv2/w1;->e:Lv2/W0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 3

    new-instance v0, Lv2/w1;

    iget-object v1, p0, Lv2/w1;->e:Lv2/W0;

    iget-object v2, p0, Lv2/w1;->c:Lo3/f;

    iget p0, p0, Lv2/w1;->d:I

    invoke-direct {v0, v2, p0, v1, p2}, Lv2/w1;-><init>(Lo3/f;ILv2/W0;Lib/c;)V

    iput-object p1, v0, Lv2/w1;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LNc/B;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, Lv2/w1;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, Lv2/w1;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, Lv2/w1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, Lv2/w1;->a:I

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    iget-object v6, p0, Lv2/w1;->c:Lo3/f;

    if-eqz v1, :cond_4

    if-eq v1, v5, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-eq v1, v2, :cond_0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    iget-object p0, p0, Lv2/w1;->b:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Throwable;

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_1
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_2
    iget-object v1, p0, Lv2/w1;->b:Ljava/lang/Object;

    check-cast v1, LNc/j0;

    :try_start_0
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lv2/w1;->b:Ljava/lang/Object;

    check-cast v1, LNc/j0;

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p1, p0, Lv2/w1;->b:Ljava/lang/Object;

    check-cast p1, LNc/B;

    invoke-interface {p1}, LNc/B;->v()Lib/h;

    move-result-object p1

    sget-object v1, LNc/i0;->a:LNc/i0;

    invoke-interface {p1, v1}, Lib/h;->get(Lib/g;)Lib/f;

    move-result-object p1

    if-eqz p1, :cond_9

    check-cast p1, LNc/j0;

    iget-object v1, v6, Lo3/f;->b:Ljava/lang/Object;

    check-cast v1, Lv2/u1;

    iput-object p1, p0, Lv2/w1;->b:Ljava/lang/Object;

    iput v5, p0, Lv2/w1;->a:I

    iget v5, p0, Lv2/w1;->d:I

    invoke-virtual {v1, v5, p1, p0}, Lv2/u1;->b(ILNc/j0;Lkb/c;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_5

    return-object v0

    :cond_5
    move-object v7, v1

    move-object v1, p1

    move-object p1, v7

    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_8

    :try_start_1
    iget-object p1, p0, Lv2/w1;->e:Lv2/W0;

    iput-object v1, p0, Lv2/w1;->b:Ljava/lang/Object;

    iput v4, p0, Lv2/w1;->a:I

    invoke-virtual {p1, p0}, Lv2/W0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p1, v0, :cond_6

    return-object v0

    :cond_6
    :goto_1
    iget-object p1, v6, Lo3/f;->b:Ljava/lang/Object;

    check-cast p1, Lv2/u1;

    const/4 v2, 0x0

    iput-object v2, p0, Lv2/w1;->b:Ljava/lang/Object;

    iput v3, p0, Lv2/w1;->a:I

    invoke-virtual {p1, v1, p0}, Lv2/u1;->a(LNc/j0;Lkb/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_8

    return-object v0

    :goto_2
    iget-object v3, v6, Lo3/f;->b:Ljava/lang/Object;

    check-cast v3, Lv2/u1;

    iput-object p1, p0, Lv2/w1;->b:Ljava/lang/Object;

    iput v2, p0, Lv2/w1;->a:I

    invoke-virtual {v3, v1, p0}, Lv2/u1;->a(LNc/j0;Lkb/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_7

    return-object v0

    :cond_7
    move-object p0, p1

    :goto_3
    throw p0

    :cond_8
    :goto_4
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Internal error. coroutineScope should\'ve created a job."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
