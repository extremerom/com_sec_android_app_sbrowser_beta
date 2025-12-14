.class public final Lx0/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LH0/b;
.implements Lib/c;


# instance fields
.field public final a:LNc/k;

.field public final synthetic b:Lx0/k;

.field public c:LNc/k;

.field public final synthetic d:Lx0/k;


# direct methods
.method public constructor <init>(Lx0/k;LNc/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx0/j;->d:Lx0/k;

    iput-object p2, p0, Lx0/j;->a:LNc/k;

    iput-object p1, p0, Lx0/j;->b:Lx0/k;

    return-void
.end method


# virtual methods
.method public final a(Lx0/b;Lkb/a;)Ljava/lang/Object;
    .locals 1

    new-instance p1, LNc/k;

    invoke-static {p2}, LG5/U3;->e(Lib/c;)Lib/c;

    move-result-object p2

    const/4 v0, 0x1

    invoke-direct {p1, v0, p2}, LNc/k;-><init>(ILib/c;)V

    invoke-virtual {p1}, LNc/k;->q()V

    iput-object p1, p0, Lx0/j;->c:LNc/k;

    invoke-virtual {p1}, LNc/k;->p()Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    return-object p0
.end method

.method public final getContext()Lib/h;
    .locals 0

    sget-object p0, Lib/i;->a:Lib/i;

    return-object p0
.end method

.method public final getFontScale()F
    .locals 0

    iget-object p0, p0, Lx0/j;->b:Lx0/k;

    invoke-virtual {p0}, Lx0/k;->getFontScale()F

    move-result p0

    return p0
.end method

.method public final j(F)I
    .locals 0

    iget-object p0, p0, Lx0/j;->b:Lx0/k;

    invoke-interface {p0, p1}, LH0/b;->j(F)I

    move-result p0

    return p0
.end method

.method public final m()F
    .locals 0

    iget-object p0, p0, Lx0/j;->b:Lx0/k;

    invoke-virtual {p0}, Lx0/k;->m()F

    move-result p0

    return p0
.end method

.method public final p(F)F
    .locals 0

    iget-object p0, p0, Lx0/j;->b:Lx0/k;

    invoke-virtual {p0}, Lx0/k;->m()F

    move-result p0

    mul-float/2addr p0, p1

    return p0
.end method

.method public final resumeWith(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lx0/j;->d:Lx0/k;

    iget-object v1, v0, Lx0/k;->l:Lc0/d;

    monitor-enter v1

    :try_start_0
    iget-object v0, v0, Lx0/k;->l:Lc0/d;

    invoke-virtual {v0, p0}, Lc0/d;->j(Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_0

    invoke-virtual {v0, v2}, Lc0/d;->n(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1

    iget-object p0, p0, Lx0/j;->a:LNc/k;

    invoke-virtual {p0, p1}, LNc/k;->resumeWith(Ljava/lang/Object;)V

    return-void

    :goto_1
    monitor-exit v1

    throw p0
.end method
