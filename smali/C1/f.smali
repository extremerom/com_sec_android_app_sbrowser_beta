.class public final LC1/f;
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

.field public final synthetic f:Lz1/Q0;

.field public final synthetic g:LC1/m;

.field public final synthetic h:Landroid/content/Context;

.field public final synthetic i:LNc/B;

.field public final synthetic j:LNc/B;


# direct methods
.method public constructor <init>(La0/p0;Ltb/v;LQc/A0;Lz1/Q0;LC1/m;Landroid/content/Context;LNc/B;LNc/B;Lib/c;)V
    .locals 0

    iput-object p1, p0, LC1/f;->c:La0/p0;

    iput-object p2, p0, LC1/f;->d:Ltb/v;

    iput-object p3, p0, LC1/f;->e:LQc/A0;

    iput-object p4, p0, LC1/f;->f:Lz1/Q0;

    iput-object p5, p0, LC1/f;->g:LC1/m;

    iput-object p6, p0, LC1/f;->h:Landroid/content/Context;

    iput-object p7, p0, LC1/f;->i:LNc/B;

    iput-object p8, p0, LC1/f;->j:LNc/B;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p9}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 11

    new-instance v10, LC1/f;

    iget-object v1, p0, LC1/f;->c:La0/p0;

    iget-object v2, p0, LC1/f;->d:Ltb/v;

    iget-object v3, p0, LC1/f;->e:LQc/A0;

    iget-object v4, p0, LC1/f;->f:Lz1/Q0;

    iget-object v5, p0, LC1/f;->g:LC1/m;

    iget-object v6, p0, LC1/f;->h:Landroid/content/Context;

    iget-object v7, p0, LC1/f;->i:LNc/B;

    iget-object v8, p0, LC1/f;->j:LNc/B;

    move-object v0, v10

    move-object v9, p2

    invoke-direct/range {v0 .. v9}, LC1/f;-><init>(La0/p0;Ltb/v;LQc/A0;Lz1/Q0;LC1/m;Landroid/content/Context;LNc/B;LNc/B;Lib/c;)V

    iput-object p1, v10, LC1/f;->b:Ljava/lang/Object;

    return-object v10
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, La0/j0;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, LC1/f;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, LC1/f;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, LC1/f;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, LC1/f;->a:I

    sget-object v2, Ldb/r;->a:Ldb/r;

    iget-object v3, p0, LC1/f;->d:Ltb/v;

    iget-object v4, p0, LC1/f;->c:La0/p0;

    iget-object v5, p0, LC1/f;->e:LQc/A0;

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v8, :cond_1

    if-ne v1, v7, :cond_0

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :try_start_0
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_2
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p1, p0, LC1/f;->b:Ljava/lang/Object;

    check-cast p1, La0/j0;

    sget-object v1, LC1/e;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    if-eq p1, v8, :cond_4

    if-eq p1, v7, :cond_3

    goto/16 :goto_4

    :cond_3
    iget-object p0, p0, LC1/f;->j:LNc/B;

    invoke-static {p0, v6}, LNc/E;->h(LNc/B;Ljava/util/concurrent/CancellationException;)V

    goto/16 :goto_4

    :cond_4
    iget-wide v9, v4, La0/p0;->a:J

    iget-wide v11, v3, Ltb/v;->a:J

    cmp-long p1, v9, v11

    if-gtz p1, :cond_5

    invoke-virtual {v5}, LQc/A0;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_7

    :cond_5
    :try_start_1
    iget-object p1, p0, LC1/f;->f:Lz1/Q0;

    invoke-virtual {p1}, Lz1/Q0;->copy()Lx1/l;

    move-result-object p1

    check-cast p1, Lx1/n;

    iget-object v1, p0, LC1/f;->g:LC1/m;

    iget-object v9, p0, LC1/f;->h:Landroid/content/Context;

    iput v8, p0, LC1/f;->a:I

    invoke-virtual {v1, v9, p1, p0}, Lc2/m;->e(Landroid/content/Context;Lx1/n;Lib/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    return-object v0

    :cond_6
    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v9, "Exception "

    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " occurred while processEmittableTree"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "msg"

    invoke-static {p1, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Le7/a;->a:Ljava/lang/String;

    const-string v9, " "

    const-string v10, "GWT:CoroutineSession"

    invoke-static {v1, v9, p1, v10}, Lw2/j;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, LC1/f;->i:LNc/B;

    invoke-interface {p1}, LNc/B;->v()Lib/h;

    move-result-object p1

    invoke-static {p1, v6}, LNc/E;->i(Lib/h;Ljava/util/concurrent/CancellationException;)V

    :goto_2
    invoke-virtual {v5}, LQc/A0;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_7

    if-eqz v8, :cond_7

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput v7, p0, LC1/f;->a:I

    invoke-virtual {v5, p1, p0}, LQc/A0;->emit(Ljava/lang/Object;Lib/c;)Ljava/lang/Object;

    if-ne v2, v0, :cond_7

    return-object v0

    :cond_7
    :goto_3
    iget-wide p0, v4, La0/p0;->a:J

    iput-wide p0, v3, Ltb/v;->a:J

    :goto_4
    return-object v2
.end method
