.class public final LJ2/r0;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public a:I

.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:LJ2/C0;

.field public final synthetic d:[I

.field public final synthetic e:[Ljava/lang/String;


# direct methods
.method public constructor <init>(LJ2/C0;[I[Ljava/lang/String;Lib/c;)V
    .locals 0

    iput-object p1, p0, LJ2/r0;->c:LJ2/C0;

    iput-object p2, p0, LJ2/r0;->d:[I

    iput-object p3, p0, LJ2/r0;->e:[Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 3

    new-instance v0, LJ2/r0;

    iget-object v1, p0, LJ2/r0;->c:LJ2/C0;

    iget-object v2, p0, LJ2/r0;->d:[I

    iget-object p0, p0, LJ2/r0;->e:[Ljava/lang/String;

    invoke-direct {v0, v1, v2, p0, p2}, LJ2/r0;-><init>(LJ2/C0;[I[Ljava/lang/String;Lib/c;)V

    iput-object p1, v0, LJ2/r0;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LQc/i;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, LJ2/r0;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, LJ2/r0;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, LJ2/r0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, LJ2/r0;->a:I

    iget-object v2, p0, LJ2/r0;->d:[I

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    iget-object v7, p0, LJ2/r0;->c:LJ2/C0;

    if-eqz v1, :cond_3

    if-eq v1, v6, :cond_2

    if-eq v1, v5, :cond_1

    if-eq v1, v4, :cond_0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    :try_start_0
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_1
    iget-object v1, p0, LJ2/r0;->b:Ljava/lang/Object;

    check-cast v1, LQc/i;

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, LJ2/r0;->b:Ljava/lang/Object;

    check-cast v1, LQc/i;

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p1, p0, LJ2/r0;->b:Ljava/lang/Object;

    check-cast p1, LQc/i;

    iget-object v1, v7, LJ2/C0;->h:Lcom/samsung/android/scloud/lib/setting/e;

    invoke-virtual {v1, v2}, Lcom/samsung/android/scloud/lib/setting/e;->l([I)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, v7, LJ2/C0;->a:LJ2/U;

    iput-object p1, p0, LJ2/r0;->b:Ljava/lang/Object;

    iput v6, p0, LJ2/r0;->a:I

    const/4 v6, 0x0

    invoke-static {v1, v6, p0}, LA/b;->e(LJ2/U;ZLkb/c;)Lib/h;

    move-result-object v1

    if-ne v1, v0, :cond_4

    return-object v0

    :cond_4
    move-object v9, v1

    move-object v1, p1

    move-object p1, v9

    :goto_0
    check-cast p1, Lib/h;

    new-instance v6, LJ2/o0;

    invoke-direct {v6, v7, v3}, LJ2/o0;-><init>(LJ2/C0;Lib/c;)V

    iput-object v1, p0, LJ2/r0;->b:Ljava/lang/Object;

    iput v5, p0, LJ2/r0;->a:I

    invoke-static {p1, v6, p0}, LNc/E;->K(Lib/h;Lsb/n;Lib/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    :cond_5
    :goto_1
    move-object p1, v1

    :cond_6
    :try_start_1
    new-instance v1, Ltb/w;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iget-object v5, v7, LJ2/C0;->i:LI3/d;

    new-instance v6, LJ2/q0;

    iget-object v8, p0, LJ2/r0;->e:[Ljava/lang/String;

    invoke-direct {v6, v1, p1, v8, v2}, LJ2/q0;-><init>(Ltb/w;LQc/i;[Ljava/lang/String;[I)V

    iput-object v3, p0, LJ2/r0;->b:Ljava/lang/Object;

    iput v4, p0, LJ2/r0;->a:I

    invoke-virtual {v5, v6, p0}, LI3/d;->b(LJ2/q0;Lkb/c;)Ljb/a;

    move-result-object p0

    if-ne p0, v0, :cond_7

    return-object v0

    :cond_7
    :goto_2
    new-instance p0, LI5/b;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    iget-object p1, v7, LJ2/C0;->h:Lcom/samsung/android/scloud/lib/setting/e;

    invoke-virtual {p1, v2}, Lcom/samsung/android/scloud/lib/setting/e;->m([I)Z

    throw p0
.end method
