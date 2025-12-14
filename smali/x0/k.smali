.class public final Lx0/k;
.super Lm0/l;
.source "SourceFile"

# interfaces
.implements LB0/S;
.implements LH0/b;


# instance fields
.field public final k:Lx0/a;

.field public final l:Lc0/d;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lm0/l;-><init>()V

    sget-object v0, Lx0/i;->a:Lx0/a;

    iput-object v0, p0, Lx0/k;->k:Lx0/a;

    new-instance v0, Lc0/d;

    const/16 v1, 0x10

    new-array v2, v1, [Lx0/j;

    invoke-direct {v0, v2}, Lc0/d;-><init>([Ljava/lang/Object;)V

    iput-object v0, p0, Lx0/k;->l:Lc0/d;

    new-instance p0, Lc0/d;

    new-array v0, v1, [Lx0/j;

    invoke-direct {p0, v0}, Lc0/d;-><init>([Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final getFontScale()F
    .locals 0

    invoke-static {p0}, LB0/d;->m(LB0/i;)Landroidx/compose/ui/node/a;

    move-result-object p0

    iget-object p0, p0, Landroidx/compose/ui/node/a;->l:LH0/b;

    invoke-interface {p0}, LH0/b;->getFontScale()F

    move-result p0

    return p0
.end method

.method public final k()V
    .locals 0

    return-void
.end method

.method public final m()F
    .locals 0

    invoke-static {p0}, LB0/d;->m(LB0/i;)Landroidx/compose/ui/node/a;

    move-result-object p0

    iget-object p0, p0, Landroidx/compose/ui/node/a;->l:LH0/b;

    invoke-interface {p0}, LH0/b;->m()F

    move-result p0

    return p0
.end method

.method public final o()V
    .locals 0

    return-void
.end method

.method public final r()V
    .locals 0

    return-void
.end method

.method public final v()V
    .locals 0

    return-void
.end method

.method public final y(Lsb/n;Lkb/i;)Ljava/lang/Object;
    .locals 3

    new-instance v0, LNc/k;

    invoke-static {p2}, LG5/U3;->e(Lib/c;)Lib/c;

    move-result-object p2

    const/4 v1, 0x1

    invoke-direct {v0, v1, p2}, LNc/k;-><init>(ILib/c;)V

    invoke-virtual {v0}, LNc/k;->q()V

    new-instance p2, Lx0/j;

    invoke-direct {p2, p0, v0}, Lx0/j;-><init>(Lx0/k;LNc/k;)V

    iget-object v1, p0, Lx0/k;->l:Lc0/d;

    monitor-enter v1

    :try_start_0
    iget-object p0, p0, Lx0/k;->l:Lc0/d;

    invoke-virtual {p0, p2}, Lc0/d;->c(Ljava/lang/Object;)V

    new-instance p0, Lib/j;

    invoke-static {p2, p2, p1}, LG5/U3;->a(Lib/c;Lib/c;Lsb/n;)Lib/c;

    move-result-object p1

    invoke-static {p1}, LG5/U3;->e(Lib/c;)Lib/c;

    move-result-object p1

    sget-object v2, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    invoke-direct {p0, p1, v2}, Lib/j;-><init>(Lib/c;Ljb/a;)V

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, Lib/j;->resumeWith(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    new-instance p0, Lm9/g;

    const/4 p1, 0x7

    invoke-direct {p0, p1, p2}, Lm9/g;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, p0}, LNc/k;->t(Lsb/k;)V

    invoke-virtual {v0}, LNc/k;->p()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v1

    throw p0
.end method
