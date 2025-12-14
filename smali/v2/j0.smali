.class public final Lv2/j0;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/o;


# instance fields
.field public a:I

.field public synthetic b:LQc/i;

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:Lv2/C0;

.field public final synthetic e:Lv2/P;

.field public f:LYc/d;

.field public g:I


# direct methods
.method public constructor <init>(Lib/c;Lv2/C0;Lv2/P;)V
    .locals 0

    iput-object p2, p0, Lv2/j0;->d:Lv2/C0;

    iput-object p3, p0, Lv2/j0;->e:Lv2/P;

    const/4 p2, 0x3

    invoke-direct {p0, p2, p1}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, LQc/i;

    check-cast p3, Lib/c;

    new-instance v0, Lv2/j0;

    iget-object v1, p0, Lv2/j0;->d:Lv2/C0;

    iget-object p0, p0, Lv2/j0;->e:Lv2/P;

    invoke-direct {v0, p3, v1, p0}, Lv2/j0;-><init>(Lib/c;Lv2/C0;Lv2/P;)V

    iput-object p1, v0, Lv2/j0;->b:LQc/i;

    iput-object p2, v0, Lv2/j0;->c:Ljava/lang/Object;

    sget-object p0, Ldb/r;->a:Ldb/r;

    invoke-virtual {v0, p0}, Lv2/j0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    iget-object v0, p0, Lv2/j0;->e:Lv2/P;

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, p0, Lv2/j0;->a:I

    sget-object v3, Ldb/r;->a:Ldb/r;

    iget-object v4, p0, Lv2/j0;->d:Lv2/C0;

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v2, :cond_2

    if-eq v2, v6, :cond_1

    if-ne v2, v5, :cond_0

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget v2, p0, Lv2/j0;->g:I

    iget-object v7, p0, Lv2/j0;->f:LYc/d;

    iget-object v8, p0, Lv2/j0;->c:Ljava/lang/Object;

    check-cast v8, Lv2/D0;

    iget-object v9, p0, Lv2/j0;->b:LQc/i;

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object v9, p0, Lv2/j0;->b:LQc/i;

    iget-object p1, p0, Lv2/j0;->c:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v2

    iget-object v8, v4, Lv2/C0;->i:Lv2/D0;

    iget-object v7, v8, Lv2/D0;->a:LYc/d;

    iput-object v9, p0, Lv2/j0;->b:LQc/i;

    iput-object v8, p0, Lv2/j0;->c:Ljava/lang/Object;

    iput-object v7, p0, Lv2/j0;->f:LYc/d;

    iput v2, p0, Lv2/j0;->g:I

    iput v6, p0, Lv2/j0;->a:I

    invoke-virtual {v7, p0}, LYc/d;->a(Lkb/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_0
    const/4 p1, 0x0

    :try_start_0
    iget-object v8, v8, Lv2/D0;->b:Lv2/H0;

    iget-object v8, v8, Lv2/H0;->l:LZ3/x;

    invoke-virtual {v8, v0}, LZ3/x;->r(Lv2/P;)LEc/g;

    move-result-object v10

    sget-object v11, Lv2/M;->b:Lv2/M;

    invoke-static {v10, v11}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    const/4 v11, 0x0

    if-eqz v10, :cond_4

    new-array v0, v11, [Lv2/G;

    new-instance v2, LQc/k;

    const/4 v4, 0x0

    invoke-direct {v2, v4, v0}, LQc/k;-><init>(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v7, p1}, LYc/a;->b(Ljava/lang/Object;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_4
    :try_start_1
    invoke-virtual {v8, v0}, LZ3/x;->r(Lv2/P;)LEc/g;

    move-result-object v10

    instance-of v10, v10, Lv2/K;

    if-nez v10, :cond_5

    sget-object v10, Lv2/M;->c:Lv2/M;

    invoke-virtual {v8, v0, v10}, LZ3/x;->I(Lv2/P;LEc/g;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    invoke-interface {v7, p1}, LYc/a;->b(Ljava/lang/Object;)V

    iget-object v4, v4, Lv2/C0;->f:LX4/i;

    invoke-virtual {v4, v0}, LX4/i;->h(Lv2/P;)LQc/m0;

    move-result-object v0

    if-nez v2, :cond_6

    move v6, v11

    :cond_6
    if-ltz v6, :cond_a

    new-instance v4, LQc/C;

    const/4 v7, 0x0

    invoke-direct {v4, v0, v6, v7}, LQc/C;-><init>(LQc/h;II)V

    new-instance v0, LQc/C;

    const/4 v6, 0x1

    invoke-direct {v0, v4, v2, v6}, LQc/C;-><init>(LQc/h;II)V

    move-object v2, v0

    :goto_1
    iput-object p1, p0, Lv2/j0;->b:LQc/i;

    iput-object p1, p0, Lv2/j0;->c:Ljava/lang/Object;

    iput-object p1, p0, Lv2/j0;->f:LYc/d;

    iput v5, p0, Lv2/j0;->a:I

    instance-of p1, v9, LQc/G0;

    if-nez p1, :cond_9

    invoke-interface {v2, v9, p0}, LQc/h;->collect(LQc/i;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_7

    goto :goto_2

    :cond_7
    move-object p0, v3

    :goto_2
    if-ne p0, v1, :cond_8

    return-object v1

    :cond_8
    :goto_3
    return-object v3

    :cond_9
    check-cast v9, LQc/G0;

    iget-object p0, v9, LQc/G0;->a:Ljava/lang/Throwable;

    throw p0

    :cond_a
    const-string p0, "Drop count should be non-negative, but had "

    invoke-static {v6, p0}, Lcom/sec/android/app/sbrowser/autofill/password/k;->i(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_4
    invoke-interface {v7, p1}, LYc/a;->b(Ljava/lang/Object;)V

    throw p0
.end method
