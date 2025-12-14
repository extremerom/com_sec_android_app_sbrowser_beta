.class public final LS3/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm4/b;


# static fields
.field public static final w:Lu5/d;


# instance fields
.field public final a:LS3/s;

.field public final b:Lm4/e;

.field public final c:LS3/p;

.field public final d:LZ3/x;

.field public final e:Lu5/d;

.field public final f:LS3/p;

.field public final g:LV3/e;

.field public final h:LV3/e;

.field public final i:LV3/e;

.field public final j:Ljava/util/concurrent/atomic/AtomicInteger;

.field public k:LS3/u;

.field public l:Z

.field public m:Z

.field public n:LS3/C;

.field public o:LQ3/a;

.field public p:Z

.field public q:LS3/x;

.field public r:Z

.field public s:LS3/v;

.field public t:LS3/l;

.field public volatile u:Z

.field public v:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lu5/d;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LS3/t;->w:Lu5/d;

    return-void
.end method

.method public constructor <init>(LV3/e;LV3/e;LV3/e;LV3/e;LS3/p;LS3/p;LZ3/x;)V
    .locals 3

    sget-object p3, LS3/t;->w:Lu5/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LS3/s;

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-direct {v0, v1}, LS3/s;-><init>(Ljava/util/ArrayList;)V

    iput-object v0, p0, LS3/t;->a:LS3/s;

    new-instance v0, Lm4/e;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LS3/t;->b:Lm4/e;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, LS3/t;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p1, p0, LS3/t;->g:LV3/e;

    iput-object p2, p0, LS3/t;->h:LV3/e;

    iput-object p4, p0, LS3/t;->i:LV3/e;

    iput-object p5, p0, LS3/t;->f:LS3/p;

    iput-object p6, p0, LS3/t;->c:LS3/p;

    iput-object p7, p0, LS3/t;->d:LZ3/x;

    iput-object p3, p0, LS3/t;->e:Lu5/d;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Lh4/j;Ljava/util/concurrent/Executor;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LS3/t;->b:Lm4/e;

    invoke-virtual {v0}, Lm4/e;->a()V

    iget-object v0, p0, LS3/t;->a:LS3/s;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, LS3/r;

    invoke-direct {v1, p1, p2}, LS3/r;-><init>(Lh4/j;Ljava/util/concurrent/Executor;)V

    iget-object v0, v0, LS3/s;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, LS3/t;->p:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, LS3/t;->e(I)V

    new-instance v0, LS3/q;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, LS3/q;-><init>(LS3/t;Lh4/j;I)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, LS3/t;->r:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1}, LS3/t;->e(I)V

    new-instance v0, LS3/q;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, LS3/q;-><init>(LS3/t;Lh4/j;I)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    iget-boolean p1, p0, LS3/t;->u:Z

    xor-int/2addr p1, v1

    const-string p2, "Cannot add callbacks to a cancelled EngineJob"

    invoke-static {p2, p1}, Ll4/f;->a(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final b()V
    .locals 4

    invoke-virtual {p0}, LS3/t;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, LS3/t;->u:Z

    iget-object v1, p0, LS3/t;->t:LS3/l;

    iput-boolean v0, v1, LS3/l;->D:Z

    iget-object v0, v1, LS3/l;->B:LS3/f;

    if-eqz v0, :cond_1

    invoke-interface {v0}, LS3/f;->cancel()V

    :cond_1
    iget-object v0, p0, LS3/t;->f:LS3/p;

    iget-object v1, p0, LS3/t;->k:LS3/u;

    monitor-enter v0

    :try_start_0
    iget-object v2, v0, LS3/p;->a:LS3/z;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v2, LS3/z;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final c()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LS3/t;->b:Lm4/e;

    invoke-virtual {v0}, Lm4/e;->a()V

    invoke-virtual {p0}, LS3/t;->f()Z

    move-result v0

    const-string v1, "Not yet complete!"

    invoke-static {v1, v0}, Ll4/f;->a(Ljava/lang/String;Z)V

    iget-object v0, p0, LS3/t;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Can\'t decrement below 0"

    invoke-static {v2, v1}, Ll4/f;->a(Ljava/lang/String;Z)V

    if-nez v0, :cond_1

    iget-object v0, p0, LS3/t;->s:LS3/v;

    invoke-virtual {p0}, LS3/t;->g()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, LS3/v;->d()V

    :cond_2
    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final d()Lm4/e;
    .locals 0

    iget-object p0, p0, LS3/t;->b:Lm4/e;

    return-object p0
.end method

.method public final declared-synchronized e(I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, LS3/t;->f()Z

    move-result v0

    const-string v1, "Not yet complete!"

    invoke-static {v1, v0}, Ll4/f;->a(Ljava/lang/String;Z)V

    iget-object v0, p0, LS3/t;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndAdd(I)I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, LS3/t;->s:LS3/v;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, LS3/v;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final f()Z
    .locals 1

    iget-boolean v0, p0, LS3/t;->r:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, LS3/t;->p:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, LS3/t;->u:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final declared-synchronized g()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LS3/t;->k:LS3/u;

    if-eqz v0, :cond_1

    iget-object v0, p0, LS3/t;->a:LS3/s;

    iget-object v0, v0, LS3/s;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, LS3/t;->k:LS3/u;

    iput-object v0, p0, LS3/t;->s:LS3/v;

    iput-object v0, p0, LS3/t;->n:LS3/C;

    const/4 v1, 0x0

    iput-boolean v1, p0, LS3/t;->r:Z

    iput-boolean v1, p0, LS3/t;->u:Z

    iput-boolean v1, p0, LS3/t;->p:Z

    iput-boolean v1, p0, LS3/t;->v:Z

    iget-object v1, p0, LS3/t;->t:LS3/l;

    iget-object v2, v1, LS3/l;->g:LS3/i;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x1

    :try_start_1
    iput-boolean v3, v2, LS3/i;->a:Z

    invoke-virtual {v2}, LS3/i;->a()Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v2

    if-eqz v3, :cond_0

    invoke-virtual {v1}, LS3/l;->n()V

    :cond_0
    iput-object v0, p0, LS3/t;->t:LS3/l;

    iput-object v0, p0, LS3/t;->q:LS3/x;

    iput-object v0, p0, LS3/t;->o:LQ3/a;

    iget-object v0, p0, LS3/t;->d:LZ3/x;

    invoke-virtual {v0, p0}, LZ3/x;->a(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :goto_0
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method public final declared-synchronized h(Lh4/j;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LS3/t;->b:Lm4/e;

    invoke-virtual {v0}, Lm4/e;->a()V

    iget-object v0, p0, LS3/t;->a:LS3/s;

    new-instance v1, LS3/r;

    sget-object v2, Ll4/f;->b:LR5/n;

    invoke-direct {v1, p1, v2}, LS3/r;-><init>(Lh4/j;Ljava/util/concurrent/Executor;)V

    iget-object p1, v0, LS3/s;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, LS3/t;->a:LS3/s;

    iget-object p1, p1, LS3/s;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, LS3/t;->b()V

    iget-boolean p1, p0, LS3/t;->p:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, LS3/t;->r:Z

    if-eqz p1, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p1, p0, LS3/t;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, LS3/t;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
