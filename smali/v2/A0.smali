.class public final Lv2/A0;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public a:Lv2/D0;

.field public b:LYc/d;

.field public c:Lv2/C0;

.field public d:I

.field public final synthetic e:Lv2/C0;


# direct methods
.method public constructor <init>(Lv2/C0;Lib/c;)V
    .locals 0

    iput-object p1, p0, Lv2/A0;->e:Lv2/C0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 0

    new-instance p1, Lv2/A0;

    iget-object p0, p0, Lv2/A0;->e:Lv2/C0;

    invoke-direct {p1, p0, p2}, Lv2/A0;-><init>(Lv2/C0;Lib/c;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LNc/B;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, Lv2/A0;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, Lv2/A0;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, Lv2/A0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, Lv2/A0;->d:I

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
    iget-object v1, p0, Lv2/A0;->c:Lv2/C0;

    iget-object v3, p0, Lv2/A0;->b:LYc/d;

    iget-object v4, p0, Lv2/A0;->a:Lv2/D0;

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object v1, p0, Lv2/A0;->e:Lv2/C0;

    iget-object v4, v1, Lv2/C0;->i:Lv2/D0;

    iget-object p1, v4, Lv2/D0;->a:LYc/d;

    iput-object v4, p0, Lv2/A0;->a:Lv2/D0;

    iput-object p1, p0, Lv2/A0;->b:LYc/d;

    iput-object v1, p0, Lv2/A0;->c:Lv2/C0;

    iput v3, p0, Lv2/A0;->d:I

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

    iget-object v5, v4, Lv2/H0;->i:LPc/i;

    invoke-static {v5}, LQc/n0;->k(LPc/i;)LQc/d;

    move-result-object v5

    new-instance v6, Lv2/G0;

    invoke-direct {v6, v4, p1}, Lv2/G0;-><init>(Lv2/H0;Lib/c;)V

    new-instance v4, LQc/y;

    invoke-direct {v4, v6, v5}, LQc/y;-><init>(Lsb/n;LQc/h;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v3, p1}, LYc/a;->b(Ljava/lang/Object;)V

    sget-object v3, Lv2/P;->PREPEND:Lv2/P;

    iput-object p1, p0, Lv2/A0;->a:Lv2/D0;

    iput-object p1, p0, Lv2/A0;->b:LYc/d;

    iput-object p1, p0, Lv2/A0;->c:Lv2/C0;

    iput v2, p0, Lv2/A0;->d:I

    invoke-static {v1, v4, v3, p0}, Lv2/C0;->a(Lv2/C0;LQc/y;Lv2/P;Lkb/i;)Ljava/lang/Object;

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
