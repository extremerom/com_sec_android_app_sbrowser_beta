.class public final LL2/A;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public final synthetic b:Lkb/i;


# direct methods
.method public constructor <init>(Lsb/n;Lib/c;)V
    .locals 0

    check-cast p1, Lkb/i;

    iput-object p1, p0, LL2/A;->b:Lkb/i;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 1

    new-instance v0, LL2/A;

    iget-object p0, p0, LL2/A;->b:Lkb/i;

    invoke-direct {v0, p0, p2}, LL2/A;-><init>(Lsb/n;Lib/c;)V

    iput-object p1, v0, LL2/A;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LNc/B;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, LL2/A;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, LL2/A;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, LL2/A;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p1, p0, LL2/A;->a:Ljava/lang/Object;

    check-cast p1, LNc/B;

    invoke-interface {p1}, LNc/B;->v()Lib/h;

    move-result-object p1

    sget-object v0, Lib/d;->a:Lib/d;

    invoke-interface {p1, v0}, Lib/h;->get(Lib/g;)Lib/f;

    move-result-object p1

    invoke-static {p1}, Ltb/k;->c(Ljava/lang/Object;)V

    check-cast p1, Lib/e;

    invoke-static {}, LNc/E;->b()LNc/q;

    move-result-object v0

    sget-object v1, LNc/b0;->a:LNc/b0;

    sget-object v2, LNc/D;->UNDISPATCHED:LNc/D;

    new-instance v3, LL2/y;

    iget-object p0, p0, LL2/A;->b:Lkb/i;

    const/4 v4, 0x0

    invoke-direct {v3, v0, p0, v4}, LL2/y;-><init>(LNc/q;Lsb/n;Lib/c;)V

    invoke-static {v1, p1, v2, v3}, LNc/E;->x(LNc/B;Lib/h;LNc/D;Lsb/n;)LNc/C0;

    :catch_0
    invoke-virtual {v0}, LNc/t0;->j()Z

    move-result p0

    if-nez p0, :cond_0

    :try_start_0
    new-instance p0, LL2/z;

    invoke-direct {p0, v0, v4}, LL2/z;-><init>(LNc/q;Lib/c;)V

    invoke-static {p1, p0}, LNc/E;->D(Lib/h;Lsb/n;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_0
    invoke-virtual {v0}, LNc/t0;->K()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
