.class public final Lc2/I;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public a:I

.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:La0/p0;

.field public final synthetic d:Ltb/v;

.field public final synthetic e:LQc/A0;

.field public final synthetic f:Lc2/m;

.field public final synthetic g:Landroid/content/Context;

.field public final synthetic h:Lx1/n;

.field public final synthetic i:Lc2/U;

.field public final synthetic j:Lc2/Q;

.field public final synthetic k:LNc/B;


# direct methods
.method public constructor <init>(La0/p0;Ltb/v;LQc/A0;Lc2/m;Landroid/content/Context;Lx1/n;Lc2/U;Lc2/Q;LNc/B;Lib/c;)V
    .locals 0

    iput-object p1, p0, Lc2/I;->c:La0/p0;

    iput-object p2, p0, Lc2/I;->d:Ltb/v;

    iput-object p3, p0, Lc2/I;->e:LQc/A0;

    iput-object p4, p0, Lc2/I;->f:Lc2/m;

    iput-object p5, p0, Lc2/I;->g:Landroid/content/Context;

    iput-object p6, p0, Lc2/I;->h:Lx1/n;

    iput-object p7, p0, Lc2/I;->i:Lc2/U;

    iput-object p8, p0, Lc2/I;->j:Lc2/Q;

    iput-object p9, p0, Lc2/I;->k:LNc/B;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p10}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 12

    new-instance v11, Lc2/I;

    iget-object v1, p0, Lc2/I;->c:La0/p0;

    iget-object v2, p0, Lc2/I;->d:Ltb/v;

    iget-object v3, p0, Lc2/I;->e:LQc/A0;

    iget-object v6, p0, Lc2/I;->h:Lx1/n;

    iget-object v7, p0, Lc2/I;->i:Lc2/U;

    iget-object v4, p0, Lc2/I;->f:Lc2/m;

    iget-object v5, p0, Lc2/I;->g:Landroid/content/Context;

    iget-object v8, p0, Lc2/I;->j:Lc2/Q;

    iget-object v9, p0, Lc2/I;->k:LNc/B;

    move-object v0, v11

    move-object v10, p2

    invoke-direct/range {v0 .. v10}, Lc2/I;-><init>(La0/p0;Ltb/v;LQc/A0;Lc2/m;Landroid/content/Context;Lx1/n;Lc2/U;Lc2/Q;LNc/B;Lib/c;)V

    iput-object p1, v11, Lc2/I;->b:Ljava/lang/Object;

    return-object v11
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, La0/j0;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, Lc2/I;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, Lc2/I;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, Lc2/I;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, Lc2/I;->a:I

    sget-object v2, Ldb/r;->a:Ldb/r;

    iget-object v3, p0, Lc2/I;->d:Ltb/v;

    iget-object v4, p0, Lc2/I;->c:La0/p0;

    iget-object v5, p0, Lc2/I;->e:LQc/A0;

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v7, :cond_1

    if-ne v1, v6, :cond_0

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p1, p0, Lc2/I;->b:Ljava/lang/Object;

    check-cast p1, La0/j0;

    sget-object v1, Lc2/H;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    if-eq p1, v7, :cond_4

    if-eq p1, v6, :cond_3

    goto/16 :goto_2

    :cond_3
    const/4 p1, 0x0

    iget-object p0, p0, Lc2/I;->k:LNc/B;

    invoke-static {p0, p1}, LNc/E;->h(LNc/B;Ljava/util/concurrent/CancellationException;)V

    goto/16 :goto_2

    :cond_4
    iget-wide v8, v4, La0/p0;->a:J

    iget-wide v10, v3, Ltb/v;->a:J

    cmp-long p1, v8, v10

    if-gtz p1, :cond_5

    invoke-virtual {v5}, LQc/A0;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_8

    :cond_5
    iget-object p1, p0, Lc2/I;->f:Lc2/m;

    iget-object v1, p1, Lc2/m;->a:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "UI tree updated ("

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v8, "msg"

    invoke-static {v1, v8}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v8, Le7/a;->a:Ljava/lang/String;

    const-string v9, " "

    const-string v10, "GWT:SessionWorker"

    invoke-static {v8, v9, v1, v10}, Lw2/j;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lc2/I;->h:Lx1/n;

    invoke-interface {v1}, Lx1/l;->copy()Lx1/l;

    move-result-object v1

    check-cast v1, Lx1/n;

    iput v7, p0, Lc2/I;->a:I

    iget-object v7, p0, Lc2/I;->g:Landroid/content/Context;

    invoke-virtual {p1, v7, v1, p0}, Lc2/m;->e(Landroid/content/Context;Lx1/n;Lib/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    return-object v0

    :cond_6
    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v5}, LQc/A0;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_8

    if-eqz p1, :cond_8

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput v6, p0, Lc2/I;->a:I

    invoke-virtual {v5, p1, p0}, LQc/A0;->emit(Ljava/lang/Object;Lib/c;)Ljava/lang/Object;

    if-ne v2, v0, :cond_7

    return-object v0

    :cond_7
    :goto_1
    iget-object p1, p0, Lc2/I;->j:Lc2/Q;

    iget-wide v0, p1, Lc2/Q;->a:J

    iget-object p0, p0, Lc2/I;->i:Lc2/U;

    invoke-virtual {p0, v0, v1}, Lc2/U;->b(J)V

    :cond_8
    iget-wide p0, v4, La0/p0;->a:J

    iput-wide p0, v3, Ltb/v;->a:J

    :goto_2
    return-object v2
.end method
