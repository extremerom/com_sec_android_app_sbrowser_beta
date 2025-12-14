.class public final LNc/L0;
.super LUc/w;
.source "SourceFile"


# instance fields
.field public final e:Ljava/lang/ThreadLocal;

.field private volatile threadLocalIsSet:Z


# direct methods
.method public constructor <init>(Lib/c;Lib/h;)V
    .locals 2

    sget-object v0, LNc/M0;->a:LNc/M0;

    invoke-interface {p2, v0}, Lib/h;->get(Lib/g;)Lib/f;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-interface {p2, v0}, Lib/h;->plus(Lib/h;)Lib/h;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    invoke-direct {p0, p1, v0}, LUc/w;-><init>(Lib/c;Lib/h;)V

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, LNc/L0;->e:Ljava/lang/ThreadLocal;

    invoke-interface {p1}, Lib/c;->getContext()Lib/h;

    move-result-object p1

    sget-object v0, Lib/d;->a:Lib/d;

    invoke-interface {p1, v0}, Lib/h;->get(Lib/g;)Lib/f;

    move-result-object p1

    instance-of p1, p1, LNc/x;

    if-nez p1, :cond_1

    const/4 p1, 0x0

    invoke-static {p2, p1}, LUc/a;->n(Lib/h;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, LUc/a;->h(Lib/h;Ljava/lang/Object;)V

    invoke-virtual {p0, p2, p1}, LNc/L0;->k0(Lib/h;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final j0()Z
    .locals 2

    iget-boolean v0, p0, LNc/L0;->threadLocalIsSet:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, LNc/L0;->e:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object p0, p0, LNc/L0;->e:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->remove()V

    xor-int/lit8 p0, v0, 0x1

    return p0
.end method

.method public final k0(Lib/h;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, LNc/L0;->threadLocalIsSet:Z

    iget-object p0, p0, LNc/L0;->e:Ljava/lang/ThreadLocal;

    new-instance v0, Ldb/j;

    invoke-direct {v0, p1, p2}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final y(Ljava/lang/Object;)V
    .locals 5

    iget-boolean v0, p0, LNc/L0;->threadLocalIsSet:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, LNc/L0;->e:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldb/j;

    if-eqz v0, :cond_0

    iget-object v1, v0, Ldb/j;->a:Ljava/lang/Object;

    check-cast v1, Lib/h;

    iget-object v0, v0, Ldb/j;->b:Ljava/lang/Object;

    invoke-static {v1, v0}, LUc/a;->h(Lib/h;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, LNc/L0;->e:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    :cond_1
    invoke-static {p1}, LNc/E;->B(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, LUc/w;->d:Lib/c;

    invoke-interface {v0}, Lib/c;->getContext()Lib/h;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, LUc/a;->n(Lib/h;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, LUc/a;->f:LQ6/i;

    if-eq v3, v4, :cond_2

    invoke-static {v0, v1, v3}, LNc/E;->J(Lib/c;Lib/h;Ljava/lang/Object;)LNc/L0;

    move-result-object v2

    :cond_2
    :try_start_0
    iget-object p0, p0, LUc/w;->d:Lib/c;

    invoke-interface {p0, p1}, Lib/c;->resumeWith(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_3

    invoke-virtual {v2}, LNc/L0;->j0()Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_3
    invoke-static {v1, v3}, LUc/a;->h(Lib/h;Ljava/lang/Object;)V

    :cond_4
    return-void

    :catchall_0
    move-exception p0

    if-eqz v2, :cond_5

    invoke-virtual {v2}, LNc/L0;->j0()Z

    move-result p1

    if-eqz p1, :cond_6

    :cond_5
    invoke-static {v1, v3}, LUc/a;->h(Lib/h;Ljava/lang/Object;)V

    :cond_6
    throw p0
.end method
