.class public final La0/p0;
.super La0/s;
.source "SourceFile"


# static fields
.field public static final w:LQc/A0;

.field public static final x:Ljava/util/concurrent/atomic/AtomicReference;


# instance fields
.field public a:J

.field public final b:La0/g;

.field public final c:Ljava/lang/Object;

.field public d:LNc/j0;

.field public e:Ljava/lang/Throwable;

.field public final f:Ljava/util/ArrayList;

.field public g:Ljava/lang/Object;

.field public h:LN/v;

.field public final i:Lc0/d;

.field public final j:Ljava/util/ArrayList;

.field public final k:Ljava/util/ArrayList;

.field public final l:Ljava/util/LinkedHashMap;

.field public final m:Ljava/util/LinkedHashMap;

.field public n:Ljava/util/ArrayList;

.field public o:Ljava/util/LinkedHashSet;

.field public p:LNc/k;

.field public q:Z

.field public r:LO9/a;

.field public final s:LQc/A0;

.field public final t:LNc/m0;

.field public final u:Lib/h;

.field public final v:La0/V;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lg0/b;->d:Lg0/b;

    invoke-static {v0}, LQc/n0;->c(Ljava/lang/Object;)LQc/A0;

    move-result-object v0

    sput-object v0, La0/p0;->w:LQc/A0;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, La0/p0;->x:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>(Lib/h;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, La0/g;

    new-instance v1, LA4/a;

    const/16 v2, 0xf

    invoke-direct {v1, v2, p0}, LA4/a;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v1}, La0/g;-><init>(Lsb/a;)V

    iput-object v0, p0, La0/p0;->b:La0/g;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, La0/p0;->c:Ljava/lang/Object;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, La0/p0;->f:Ljava/util/ArrayList;

    new-instance v1, LN/v;

    invoke-direct {v1}, LN/v;-><init>()V

    iput-object v1, p0, La0/p0;->h:LN/v;

    new-instance v1, Lc0/d;

    const/16 v2, 0x10

    new-array v2, v2, [La0/u;

    invoke-direct {v1, v2}, Lc0/d;-><init>([Ljava/lang/Object;)V

    iput-object v1, p0, La0/p0;->i:Lc0/d;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, La0/p0;->j:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, La0/p0;->k:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, La0/p0;->l:Ljava/util/LinkedHashMap;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, La0/p0;->m:Ljava/util/LinkedHashMap;

    sget-object v1, La0/j0;->Inactive:La0/j0;

    invoke-static {v1}, LQc/n0;->c(Ljava/lang/Object;)LQc/A0;

    move-result-object v1

    iput-object v1, p0, La0/p0;->s:LQc/A0;

    sget-object v1, LNc/i0;->a:LNc/i0;

    invoke-interface {p1, v1}, Lib/h;->get(Lib/g;)Lib/f;

    move-result-object v1

    check-cast v1, LNc/j0;

    new-instance v2, LNc/m0;

    invoke-direct {v2, v1}, LNc/m0;-><init>(LNc/j0;)V

    new-instance v1, LB0/a;

    const/16 v3, 0x11

    invoke-direct {v1, v3, p0}, LB0/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v2, v1}, LNc/t0;->q(Lsb/k;)LNc/P;

    iput-object v2, p0, La0/p0;->t:LNc/m0;

    invoke-interface {p1, v0}, Lib/h;->plus(Lib/h;)Lib/h;

    move-result-object p1

    invoke-interface {p1, v2}, Lib/h;->plus(Lib/h;)Lib/h;

    move-result-object p1

    iput-object p1, p0, La0/p0;->u:Lib/h;

    new-instance p1, La0/V;

    const/4 v0, 0x7

    invoke-direct {p1, v0}, La0/V;-><init>(I)V

    iput-object p1, p0, La0/p0;->v:La0/V;

    return-void
.end method

.method public static synthetic A(La0/p0;Ljava/lang/Exception;ZI)V
    .locals 0

    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    const/4 p3, 0x0

    invoke-virtual {p0, p1, p3, p2}, La0/p0;->z(Ljava/lang/Exception;La0/u;Z)V

    return-void
.end method

.method public static final p(La0/p0;La0/u;LN/v;)La0/u;
    .locals 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, La0/u;->q:La0/q;

    iget-boolean v0, v0, La0/q;->E:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    iget-boolean v0, p1, La0/u;->r:Z

    if-nez v0, :cond_6

    iget-object p0, p0, La0/p0;->o:Ljava/util/LinkedHashSet;

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-ne p0, v0, :cond_0

    goto/16 :goto_4

    :cond_0
    new-instance p0, LB0/a;

    const/16 v2, 0x12

    invoke-direct {p0, v2, p1}, LB0/a;-><init>(ILjava/lang/Object;)V

    new-instance v2, LC1/j;

    const/16 v3, 0xe

    invoke-direct {v2, v3, p1, p2}, LC1/j;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Lk0/n;->k()Lk0/h;

    move-result-object v3

    instance-of v4, v3, Lk0/c;

    if-eqz v4, :cond_1

    check-cast v3, Lk0/c;

    goto :goto_0

    :cond_1
    move-object v3, v1

    :goto_0
    if-eqz v3, :cond_5

    invoke-virtual {v3, p0, v2}, Lk0/c;->B(Lsb/k;Lsb/k;)Lk0/c;

    move-result-object p0

    if-eqz p0, :cond_5

    :try_start_0
    invoke-virtual {p0}, Lk0/h;->j()Lk0/h;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz p2, :cond_3

    :try_start_1
    invoke-virtual {p2}, LN/v;->h()Z

    move-result v3

    if-ne v3, v0, :cond_3

    new-instance v3, LB0/E;

    const/4 v4, 0x2

    invoke-direct {v3, v4, p2, p1}, LB0/E;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object p2, p1, La0/u;->q:La0/q;

    iget-boolean v4, p2, La0/q;->E:Z

    if-nez v4, :cond_2

    iput-boolean v0, p2, La0/q;->E:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {v3}, LB0/E;->invoke()Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iput-boolean v0, p2, La0/q;->E:Z

    goto :goto_1

    :catchall_0
    move-exception p1

    iput-boolean v0, p2, La0/q;->E:Z

    throw p1

    :cond_2
    const-string p1, "Preparing a composition while composing is not supported"

    invoke-static {p1}, La0/d;->t(Ljava/lang/String;)V

    throw v1

    :catchall_1
    move-exception p1

    goto :goto_3

    :cond_3
    :goto_1
    invoke-virtual {p1}, La0/u;->u()Z

    move-result p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-static {v2}, Lk0/h;->p(Lk0/h;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    invoke-static {p0}, La0/p0;->r(Lk0/c;)V

    if-eqz p2, :cond_4

    goto :goto_2

    :cond_4
    move-object p1, v1

    :goto_2
    move-object v1, p1

    goto :goto_4

    :goto_3
    :try_start_5
    invoke-static {v2}, Lk0/h;->p(Lk0/h;)V

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception p1

    invoke-static {p0}, La0/p0;->r(Lk0/c;)V

    throw p1

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot create a mutable snapshot of an read-only snapshot"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_4
    return-object v1
.end method

.method public static final q(La0/p0;)Z
    .locals 8

    iget-object v0, p0, La0/p0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, La0/p0;->h:LN/v;

    invoke-virtual {v1}, LN/v;->g()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p0, La0/p0;->i:Lc0/d;

    invoke-virtual {v1}, Lc0/d;->m()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, La0/p0;->u()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :cond_1
    :goto_0
    monitor-exit v0

    goto :goto_3

    :cond_2
    :try_start_1
    iget-object v1, p0, La0/p0;->h:LN/v;

    new-instance v4, Lc0/f;

    invoke-direct {v4, v1}, Lc0/f;-><init>(LN/v;)V

    new-instance v1, LN/v;

    invoke-direct {v1}, LN/v;-><init>()V

    iput-object v1, p0, La0/p0;->h:LN/v;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    monitor-exit v0

    iget-object v0, p0, La0/p0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_2
    invoke-virtual {p0}, La0/p0;->w()Ljava/util/List;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    monitor-exit v0

    :try_start_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    move v5, v3

    :goto_1
    if-ge v5, v0, :cond_3

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, La0/u;

    invoke-virtual {v6, v4}, La0/u;->v(Lc0/f;)V

    iget-object v6, p0, La0/p0;->s:LQc/A0;

    invoke-virtual {v6}, LQc/A0;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, La0/j0;

    sget-object v7, La0/j0;->ShuttingDown:La0/j0;

    invoke-virtual {v6, v7}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v6

    if-lez v6, :cond_3

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_3
    iget-object v0, p0, La0/p0;->c:Ljava/lang/Object;

    monitor-enter v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    new-instance v1, LN/v;

    invoke-direct {v1}, LN/v;-><init>()V

    iput-object v1, p0, La0/p0;->h:LN/v;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    iget-object v0, p0, La0/p0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_6
    invoke-virtual {p0}, La0/p0;->t()LNc/j;

    move-result-object v1

    if-nez v1, :cond_6

    iget-object v1, p0, La0/p0;->i:Lc0/d;

    invoke-virtual {v1}, Lc0/d;->m()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p0}, La0/p0;->u()Z

    move-result p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz p0, :cond_4

    goto :goto_2

    :cond_4
    move v2, v3

    :cond_5
    :goto_2
    monitor-exit v0

    :goto_3
    return v2

    :cond_6
    :try_start_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "called outside of runRecomposeAndApplyChanges"

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0

    :catchall_2
    move-exception v1

    :try_start_8
    monitor-exit v0

    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :goto_4
    iget-object v1, p0, La0/p0;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_9
    iget-object p0, p0, La0/p0;->h:LN/v;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, LN/v;->d(Ljava/lang/Object;)I

    move-result v4

    iget-object v5, p0, LN/v;->b:[Ljava/lang/Object;

    aput-object v3, v5, v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_5

    :cond_7
    monitor-exit v1

    throw v0

    :catchall_3
    move-exception p0

    monitor-exit v1

    throw p0

    :catchall_4
    move-exception p0

    monitor-exit v0

    throw p0

    :catchall_5
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static r(Lk0/c;)V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lk0/c;->v()Lk0/q;

    move-result-object v0

    instance-of v0, v0, Lk0/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lk0/c;->c()V

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unsupported concurrent change during composition. A state object was modified by composition as well as being modified outside composition."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lk0/c;->c()V

    throw v0
.end method

.method public static final x(Ljava/util/ArrayList;La0/p0;La0/u;)V
    .locals 0

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    iget-object p0, p1, La0/p0;->c:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    iget-object p1, p1, La0/p0;->k:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, La0/Y;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x0

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final B(La0/u;)V
    .locals 2

    iget-object v0, p0, La0/p0;->n:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, La0/p0;->n:Ljava/util/ArrayList;

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, La0/p0;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    iput-object p1, p0, La0/p0;->g:Ljava/lang/Object;

    return-void
.end method

.method public final C(Lkb/i;)Ljava/lang/Object;
    .locals 4

    new-instance v0, La0/o0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, La0/o0;-><init>(La0/p0;Lib/c;)V

    invoke-interface {p1}, Lib/c;->getContext()Lib/h;

    move-result-object v2

    invoke-static {v2}, La0/d;->A(Lib/h;)La0/W;

    move-result-object v2

    new-instance v3, La0/m0;

    invoke-direct {v3, p0, v0, v2, v1}, La0/m0;-><init>(La0/p0;La0/o0;La0/W;Lib/c;)V

    iget-object p0, p0, La0/p0;->b:La0/g;

    invoke-static {p0, v3, p1}, LNc/E;->K(Lib/h;Lsb/n;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    sget-object v0, Ldb/r;->a:Ldb/r;

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    if-ne p0, p1, :cond_1

    return-object p0

    :cond_1
    return-object v0
.end method

.method public final a(La0/u;Lsb/n;)V
    .locals 7

    iget-object v0, p1, La0/u;->q:La0/q;

    iget-boolean v0, v0, La0/q;->E:Z

    const/4 v1, 0x1

    :try_start_0
    new-instance v2, LB0/a;

    const/16 v3, 0x12

    invoke-direct {v2, v3, p1}, LB0/a;-><init>(ILjava/lang/Object;)V

    new-instance v3, LC1/j;

    const/4 v4, 0x0

    const/16 v5, 0xe

    invoke-direct {v3, v5, p1, v4}, LC1/j;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Lk0/n;->k()Lk0/h;

    move-result-object v5

    instance-of v6, v5, Lk0/c;

    if-eqz v6, :cond_0

    check-cast v5, Lk0/c;

    goto :goto_0

    :cond_0
    move-object v5, v4

    :goto_0
    if-eqz v5, :cond_5

    invoke-virtual {v5, v2, v3}, Lk0/c;->B(Lsb/k;Lsb/k;)Lk0/c;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v2, :cond_5

    :try_start_1
    invoke-virtual {v2}, Lk0/h;->j()Lk0/h;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    invoke-virtual {p1, p2}, La0/u;->j(Lsb/n;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-static {v3}, Lk0/h;->p(Lk0/h;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :try_start_4
    invoke-static {v2}, La0/p0;->r(Lk0/c;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    if-nez v0, :cond_1

    invoke-static {}, Lk0/n;->k()Lk0/h;

    move-result-object p2

    invoke-virtual {p2}, Lk0/h;->m()V

    :cond_1
    iget-object p2, p0, La0/p0;->c:Ljava/lang/Object;

    monitor-enter p2

    :try_start_5
    iget-object v2, p0, La0/p0;->s:LQc/A0;

    invoke-virtual {v2}, LQc/A0;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La0/j0;

    sget-object v3, La0/j0;->ShuttingDown:La0/j0;

    invoke-virtual {v2, v3}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {p0}, La0/p0;->w()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, La0/p0;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v4, p0, La0/p0;->g:Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    :goto_1
    monitor-exit p2

    :try_start_6
    iget-object p2, p0, La0/p0;->c:Ljava/lang/Object;

    monitor-enter p2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :try_start_7
    iget-object v2, p0, La0/p0;->k:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    const/4 v4, 0x0

    if-gtz v3, :cond_4

    :try_start_8
    monitor-exit p2
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    :try_start_9
    invoke-virtual {p1}, La0/u;->e()V

    invoke-virtual {p1}, La0/u;->g()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    if-nez v0, :cond_3

    invoke-static {}, Lk0/n;->k()Lk0/h;

    move-result-object p0

    invoke-virtual {p0}, Lk0/h;->m()V

    :cond_3
    return-void

    :catch_0
    move-exception p1

    const/4 p2, 0x6

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, La0/p0;->A(La0/p0;Ljava/lang/Exception;ZI)V

    return-void

    :cond_4
    :try_start_a
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La0/Y;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_b
    monitor-exit p2

    throw v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    :catch_1
    move-exception p2

    invoke-virtual {p0, p2, p1, v1}, La0/p0;->z(Ljava/lang/Exception;La0/u;Z)V

    return-void

    :goto_2
    monitor-exit p2

    throw p0

    :catch_2
    move-exception p2

    goto :goto_3

    :catchall_2
    move-exception p2

    :try_start_c
    invoke-static {v3}, Lk0/h;->p(Lk0/h;)V

    throw p2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :catchall_3
    move-exception p2

    :try_start_d
    invoke-static {v2}, La0/p0;->r(Lk0/c;)V

    throw p2

    :cond_5
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot create a mutable snapshot of an read-only snapshot"

    invoke-direct {p2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2

    :goto_3
    invoke-virtual {p0, p2, p1, v1}, La0/p0;->z(Ljava/lang/Exception;La0/u;Z)V

    return-void
.end method

.method public final c()Z
    .locals 0

    sget-object p0, La0/p0;->x:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final d()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final e()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final g()I
    .locals 0

    const/16 p0, 0x3e8

    return p0
.end method

.method public final h()Lib/h;
    .locals 0

    iget-object p0, p0, La0/p0;->u:Lib/h;

    return-object p0
.end method

.method public final i(La0/u;)V
    .locals 2

    iget-object v0, p0, La0/p0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, La0/p0;->i:Lc0/d;

    invoke-virtual {v1, p1}, Lc0/d;->h(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, La0/p0;->i:Lc0/d;

    invoke-virtual {v1, p1}, Lc0/d;->c(Ljava/lang/Object;)V

    invoke-virtual {p0}, La0/p0;->t()LNc/j;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    if-eqz p0, :cond_1

    sget-object p1, Ldb/r;->a:Ldb/r;

    check-cast p0, LNc/k;

    invoke-virtual {p0, p1}, LNc/k;->resumeWith(Ljava/lang/Object;)V

    :cond_1
    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public final j(Ljava/util/Set;)V
    .locals 0

    return-void
.end method

.method public final l(La0/u;)V
    .locals 2

    iget-object v0, p0, La0/p0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, La0/p0;->o:Ljava/util/LinkedHashSet;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v1, p0, La0/p0;->o:Ljava/util/LinkedHashSet;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public final o(La0/u;)V
    .locals 3

    iget-object v0, p0, La0/p0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, La0/p0;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    iput-object v1, p0, La0/p0;->g:Ljava/lang/Object;

    iget-object v1, p0, La0/p0;->i:Lc0/d;

    invoke-virtual {v1, p1}, Lc0/d;->j(Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_0

    invoke-virtual {v1, v2}, Lc0/d;->n(I)Ljava/lang/Object;

    :cond_0
    iget-object p0, p0, La0/p0;->j:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final s()V
    .locals 3

    iget-object v0, p0, La0/p0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, La0/p0;->s:LQc/A0;

    invoke-virtual {v1}, LQc/A0;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La0/j0;

    sget-object v2, La0/j0;->Idle:La0/j0;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-ltz v1, :cond_0

    iget-object v1, p0, La0/p0;->s:LQc/A0;

    sget-object v2, La0/j0;->ShuttingDown:La0/j0;

    invoke-virtual {v1, v2}, LQc/A0;->j(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    iget-object p0, p0, La0/p0;->t:LNc/m0;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LNc/t0;->a(Ljava/util/concurrent/CancellationException;)V

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public final t()LNc/j;
    .locals 6

    iget-object v0, p0, La0/p0;->s:LQc/A0;

    invoke-virtual {v0}, LQc/A0;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La0/j0;

    sget-object v2, La0/j0;->ShuttingDown:La0/j0;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    iget-object v2, p0, La0/p0;->k:Ljava/util/ArrayList;

    iget-object v3, p0, La0/p0;->j:Ljava/util/ArrayList;

    iget-object v4, p0, La0/p0;->i:Lc0/d;

    const/4 v5, 0x0

    if-gtz v1, :cond_1

    iget-object v0, p0, La0/p0;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-object v0, Lfb/v;->a:Lfb/v;

    iput-object v0, p0, La0/p0;->g:Ljava/lang/Object;

    new-instance v0, LN/v;

    invoke-direct {v0}, LN/v;-><init>()V

    iput-object v0, p0, La0/p0;->h:LN/v;

    invoke-virtual {v4}, Lc0/d;->g()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iput-object v5, p0, La0/p0;->n:Ljava/util/ArrayList;

    iget-object v0, p0, La0/p0;->p:LNc/k;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v5}, LNc/k;->i(Ljava/lang/Throwable;)Z

    :cond_0
    iput-object v5, p0, La0/p0;->p:LNc/k;

    iput-object v5, p0, La0/p0;->r:LO9/a;

    return-object v5

    :cond_1
    iget-object v1, p0, La0/p0;->r:LO9/a;

    if-eqz v1, :cond_2

    sget-object v1, La0/j0;->Inactive:La0/j0;

    goto :goto_1

    :cond_2
    iget-object v1, p0, La0/p0;->d:LNc/j0;

    if-nez v1, :cond_4

    new-instance v1, LN/v;

    invoke-direct {v1}, LN/v;-><init>()V

    iput-object v1, p0, La0/p0;->h:LN/v;

    invoke-virtual {v4}, Lc0/d;->g()V

    invoke-virtual {p0}, La0/p0;->u()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, La0/j0;->InactivePendingWork:La0/j0;

    goto :goto_1

    :cond_3
    sget-object v1, La0/j0;->Inactive:La0/j0;

    goto :goto_1

    :cond_4
    invoke-virtual {v4}, Lc0/d;->m()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, La0/p0;->h:LN/v;

    invoke-virtual {v1}, LN/v;->h()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, La0/p0;->u()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_0

    :cond_5
    sget-object v1, La0/j0;->Idle:La0/j0;

    goto :goto_1

    :cond_6
    :goto_0
    sget-object v1, La0/j0;->PendingWork:La0/j0;

    :goto_1
    invoke-virtual {v0, v1}, LQc/A0;->j(Ljava/lang/Object;)V

    sget-object v0, La0/j0;->PendingWork:La0/j0;

    if-ne v1, v0, :cond_7

    iget-object v0, p0, La0/p0;->p:LNc/k;

    iput-object v5, p0, La0/p0;->p:LNc/k;

    move-object v5, v0

    :cond_7
    return-object v5
.end method

.method public final u()Z
    .locals 0

    iget-object p0, p0, La0/p0;->b:La0/g;

    iget-object p0, p0, La0/g;->f:La0/e;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final v()Z
    .locals 2

    iget-object v0, p0, La0/p0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, La0/p0;->h:LN/v;

    invoke-virtual {v1}, LN/v;->h()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, La0/p0;->i:Lc0/d;

    invoke-virtual {v1}, Lc0/d;->m()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, La0/p0;->u()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    monitor-exit v0

    return p0

    :goto_2
    monitor-exit v0

    throw p0
.end method

.method public final w()Ljava/util/List;
    .locals 2

    iget-object v0, p0, La0/p0;->g:Ljava/lang/Object;

    if-nez v0, :cond_1

    iget-object v0, p0, La0/p0;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lfb/v;->a:Lfb/v;

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v1

    :goto_0
    iput-object v0, p0, La0/p0;->g:Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final y(Ljava/util/List;LN/v;)Ljava/util/List;
    .locals 17

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/HashMap;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    move-object/from16 v5, p1

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, La0/Y;

    const/4 v8, 0x0

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_0

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, La0/u;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    iget-object v6, v5, La0/u;->q:La0/q;

    iget-boolean v6, v6, La0/q;->E:Z

    xor-int/lit8 v6, v6, 0x1

    invoke-static {v6}, La0/d;->K(Z)V

    new-instance v6, LB0/a;

    const/16 v7, 0x12

    invoke-direct {v6, v7, v5}, LB0/a;-><init>(ILjava/lang/Object;)V

    new-instance v7, LC1/j;

    const/16 v8, 0xe

    move-object/from16 v9, p2

    invoke-direct {v7, v8, v5, v9}, LC1/j;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Lk0/n;->k()Lk0/h;

    move-result-object v8

    instance-of v10, v8, Lk0/c;

    const/4 v11, 0x0

    if-eqz v10, :cond_2

    check-cast v8, Lk0/c;

    goto :goto_2

    :cond_2
    move-object v8, v11

    :goto_2
    if-eqz v8, :cond_e

    invoke-virtual {v8, v6, v7}, Lk0/c;->B(Lsb/k;Lsb/k;)Lk0/c;

    move-result-object v6

    if-eqz v6, :cond_e

    :try_start_0
    invoke-virtual {v6}, Lk0/h;->j()Lk0/h;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    iget-object v8, v0, La0/p0;->c:Ljava/lang/Object;

    monitor-enter v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    new-instance v10, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v12

    invoke-direct {v10, v12}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v12

    move v13, v3

    :goto_3
    if-ge v13, v12, :cond_6

    invoke-interface {v4, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, La0/Y;

    iget-object v15, v0, La0/p0;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v15, v11}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v11, v16

    check-cast v11, Ljava/util/List;

    if-eqz v11, :cond_5

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_4

    invoke-interface {v11, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v16

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_3

    const/4 v11, 0x0

    invoke-interface {v15, v11}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_3
    const/4 v11, 0x0

    :goto_4
    move-object/from16 v15, v16

    goto :goto_5

    :cond_4
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "List is empty."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    const/4 v11, 0x0

    move-object v15, v11

    :goto_5
    new-instance v3, Ldb/j;

    invoke-direct {v3, v14, v15}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v13, v13, 0x1

    const/4 v3, 0x0

    goto :goto_3

    :catchall_0
    move-exception v0

    goto/16 :goto_c

    :cond_6
    :try_start_3
    monitor-exit v8

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_6
    if-ge v4, v3, :cond_d

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ldb/j;

    iget-object v8, v8, Ldb/j;->b:Ljava/lang/Object;

    if-nez v8, :cond_7

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_7
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_7
    if-ge v4, v3, :cond_d

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ldb/j;

    iget-object v8, v8, Ldb/j;->b:Ljava/lang/Object;

    if-eqz v8, :cond_8

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_8
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v8, 0x0

    :goto_8
    if-ge v8, v4, :cond_a

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ldb/j;

    iget-object v12, v11, Ldb/j;->b:Ljava/lang/Object;

    if-nez v12, :cond_9

    iget-object v11, v11, Ldb/j;->a:Ljava/lang/Object;

    check-cast v11, La0/Y;

    goto :goto_9

    :catchall_1
    move-exception v0

    goto :goto_d

    :cond_9
    :goto_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    :cond_a
    iget-object v4, v0, La0/p0;->c:Ljava/lang/Object;

    monitor-enter v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v8, v0, La0/p0;->k:Ljava/util/ArrayList;

    invoke-static {v3, v8}, Lfb/t;->q(Ljava/lang/Iterable;Ljava/util/Collection;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    monitor-exit v4

    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v8, 0x0

    :goto_a
    if-ge v8, v4, :cond_c

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    move-object v12, v11

    check-cast v12, Ldb/j;

    iget-object v12, v12, Ldb/j;->b:Ljava/lang/Object;

    if-eqz v12, :cond_b

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    :cond_c
    move-object v10, v3

    goto :goto_b

    :catchall_2
    move-exception v0

    monitor-exit v4

    throw v0

    :cond_d
    :goto_b
    invoke-virtual {v5, v10}, La0/u;->o(Ljava/util/ArrayList;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-static {v7}, Lk0/h;->p(Lk0/h;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    invoke-static {v6}, La0/p0;->r(Lk0/c;)V

    const/4 v3, 0x0

    goto/16 :goto_1

    :goto_c
    :try_start_7
    monitor-exit v8

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :goto_d
    :try_start_8
    invoke-static {v7}, Lk0/h;->p(Lk0/h;)V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :catchall_3
    move-exception v0

    invoke-static {v6}, La0/p0;->r(Lk0/c;)V

    throw v0

    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot create a mutable snapshot of an read-only snapshot"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lfb/n;->g0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final z(Ljava/lang/Exception;La0/u;Z)V
    .locals 3

    const/16 p3, 0x9

    sget-object v0, La0/p0;->x:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p1, La0/k;

    if-nez v0, :cond_1

    iget-object v0, p0, La0/p0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "Error was captured in composition while live edit was enabled."

    sget v2, La0/b;->b:I

    const-string v2, "ComposeInternal"

    invoke-static {v2, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v1, p0, La0/p0;->j:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, La0/p0;->i:Lc0/d;

    invoke-virtual {v1}, Lc0/d;->g()V

    new-instance v1, LN/v;

    invoke-direct {v1}, LN/v;-><init>()V

    iput-object v1, p0, La0/p0;->h:LN/v;

    iget-object v1, p0, La0/p0;->k:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, La0/p0;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    iget-object v1, p0, La0/p0;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    new-instance v1, LO9/a;

    invoke-direct {v1, p3, p1}, LO9/a;-><init>(ILjava/lang/Object;)V

    iput-object v1, p0, La0/p0;->r:LO9/a;

    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, La0/p0;->B(La0/u;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, La0/p0;->t()LNc/j;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0

    :cond_1
    iget-object p2, p0, La0/p0;->c:Ljava/lang/Object;

    monitor-enter p2

    :try_start_1
    iget-object v0, p0, La0/p0;->r:LO9/a;

    if-nez v0, :cond_2

    new-instance v0, LO9/a;

    invoke-direct {v0, p3, p1}, LO9/a;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, La0/p0;->r:LO9/a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p2

    throw p1

    :catchall_1
    move-exception p0

    goto :goto_2

    :cond_2
    :try_start_2
    iget-object p0, v0, LO9/a;->b:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Exception;

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_2
    monitor-exit p2

    throw p0
.end method
