.class public final Lv2/x0;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public a:LYc/d;

.field public b:LQc/i;

.field public c:I

.field public synthetic d:Ljava/lang/Object;

.field public final synthetic e:Lv2/C0;


# direct methods
.method public constructor <init>(Lv2/C0;Lib/c;)V
    .locals 0

    iput-object p1, p0, Lv2/x0;->e:Lv2/C0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 1

    new-instance v0, Lv2/x0;

    iget-object p0, p0, Lv2/x0;->e:Lv2/C0;

    invoke-direct {v0, p0, p2}, Lv2/x0;-><init>(Lv2/C0;Lib/c;)V

    iput-object p1, v0, Lv2/x0;->d:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LQc/i;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, Lv2/x0;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, Lv2/x0;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, Lv2/x0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, Lv2/x0;->c:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object v1, p0, Lv2/x0;->b:LQc/i;

    iget-object v3, p0, Lv2/x0;->a:LYc/d;

    iget-object v4, p0, Lv2/x0;->d:Ljava/lang/Object;

    check-cast v4, Lv2/D0;

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p1, p0, Lv2/x0;->d:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, LQc/i;

    iget-object p1, p0, Lv2/x0;->e:Lv2/C0;

    iget-object v4, p1, Lv2/C0;->i:Lv2/D0;

    iget-object p1, v4, Lv2/D0;->a:LYc/d;

    iput-object v4, p0, Lv2/x0;->d:Ljava/lang/Object;

    iput-object p1, p0, Lv2/x0;->a:LYc/d;

    iput-object v1, p0, Lv2/x0;->b:LQc/i;

    iput v3, p0, Lv2/x0;->c:I

    invoke-virtual {p1, p0}, LYc/d;->a(Lkb/c;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_3

    return-object v0

    :cond_3
    move-object v3, p1

    :goto_0
    const/4 p1, 0x0

    :try_start_0
    iget-object v4, v4, Lv2/D0;->b:Lv2/H0;

    iget-object v4, v4, Lv2/H0;->l:LZ3/x;

    invoke-virtual {v4}, LZ3/x;->J()Lv2/O;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v3, p1}, LYc/a;->b(Ljava/lang/Object;)V

    new-instance v3, Lv2/Z;

    invoke-direct {v3, v4, p1}, Lv2/Z;-><init>(Lv2/O;Lv2/O;)V

    iput-object p1, p0, Lv2/x0;->d:Ljava/lang/Object;

    iput-object p1, p0, Lv2/x0;->a:LYc/d;

    iput-object p1, p0, Lv2/x0;->b:LQc/i;

    iput v2, p0, Lv2/x0;->c:I

    invoke-interface {v1, v3, p0}, LQc/i;->emit(Ljava/lang/Object;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_4

    return-object v0

    :cond_4
    :goto_1
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :catchall_0
    move-exception p0

    invoke-interface {v3, p1}, LYc/a;->b(Ljava/lang/Object;)V

    throw p0
.end method
