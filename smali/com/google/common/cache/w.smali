.class public final Lcom/google/common/cache/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/cache/I;


# instance fields
.field public volatile a:Lcom/google/common/cache/I;

.field public final b:Lcom/google/common/util/concurrent/A;

.field public final c:Lcom/google/common/base/y;


# direct methods
.method public constructor <init>()V
    .locals 3

    sget-object v0, Lcom/google/common/cache/P;->s:Lcom/google/common/cache/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/google/common/util/concurrent/A;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/google/common/cache/w;->b:Lcom/google/common/util/concurrent/A;

    new-instance v1, Lcom/google/common/base/y;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/common/base/y;-><init>(I)V

    iput-object v1, p0, Lcom/google/common/cache/w;->c:Lcom/google/common/base/y;

    iput-object v0, p0, Lcom/google/common/cache/w;->a:Lcom/google/common/cache/I;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/google/common/cache/w;->b:Lcom/google/common/util/concurrent/A;

    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/A;->n(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/google/common/cache/P;->s:Lcom/google/common/cache/e;

    iput-object p1, p0, Lcom/google/common/cache/w;->a:Lcom/google/common/cache/I;

    :goto_0
    return-void
.end method

.method public final b()Z
    .locals 0

    iget-object p0, p0, Lcom/google/common/cache/w;->a:Lcom/google/common/cache/I;

    invoke-interface {p0}, Lcom/google/common/cache/I;->b()Z

    move-result p0

    return p0
.end method

.method public final c()I
    .locals 0

    iget-object p0, p0, Lcom/google/common/cache/w;->a:Lcom/google/common/cache/I;

    invoke-interface {p0}, Lcom/google/common/cache/I;->c()I

    move-result p0

    return p0
.end method

.method public final d(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/cache/Q;)Lcom/google/common/cache/I;
    .locals 0

    return-object p0
.end method

.method public final e()Lcom/google/common/cache/Q;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final f()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/common/cache/w;->b:Lcom/google/common/util/concurrent/A;

    invoke-static {p0}, LG5/k2;->i(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final g(Ljava/lang/Object;LG5/J2;)Lcom/google/common/util/concurrent/y;
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/google/common/cache/w;->c:Lcom/google/common/base/y;

    iget-boolean v1, v0, Lcom/google/common/base/y;->b:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    const-string v3, "This stopwatch is already running."

    invoke-static {v1, v3}, Lcom/google/common/base/C;->j(ZLjava/lang/Object;)V

    iput-boolean v2, v0, Lcom/google/common/base/y;->b:Z

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/common/base/y;->c:J

    iget-object v0, p0, Lcom/google/common/cache/w;->a:Lcom/google/common/cache/I;

    invoke-interface {v0}, Lcom/google/common/cache/I;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object p1, p2, LG5/J2;->a:Ljava/lang/Object;

    check-cast p1, Lcom/sec/android/app/sbrowser/common/utils/c;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/common/utils/c;->b:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/google/common/cache/w;->b:Lcom/google/common/util/concurrent/A;

    invoke-virtual {p2, p1}, Lcom/google/common/util/concurrent/A;->n(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/google/common/cache/w;->b:Lcom/google/common/util/concurrent/A;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    if-nez p1, :cond_1

    sget-object p0, Lcom/google/common/util/concurrent/x;->b:Lcom/google/common/util/concurrent/x;

    goto :goto_0

    :cond_1
    new-instance p2, Lcom/google/common/util/concurrent/x;

    invoke-direct {p2, p1}, Lcom/google/common/util/concurrent/x;-><init>(Ljava/lang/Object;)V

    move-object p0, p2

    :goto_0
    return-object p0

    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p2, LG5/J2;->a:Ljava/lang/Object;

    check-cast p1, Lcom/sec/android/app/sbrowser/common/utils/c;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/common/utils/c;->b:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    sget-object p1, Lcom/google/common/util/concurrent/x;->b:Lcom/google/common/util/concurrent/x;

    goto :goto_1

    :cond_3
    new-instance p2, Lcom/google/common/util/concurrent/x;

    invoke-direct {p2, p1}, Lcom/google/common/util/concurrent/x;-><init>(Ljava/lang/Object;)V

    move-object p1, p2

    :goto_1
    new-instance p2, Lcom/google/common/cache/v;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p0}, Lcom/google/common/cache/v;-><init>(ILjava/lang/Object;)V

    sget-object v0, Lcom/google/common/util/concurrent/t;->INSTANCE:Lcom/google/common/util/concurrent/t;

    sget v1, Lcom/google/common/util/concurrent/r;->j:I

    new-instance v1, Lcom/google/common/util/concurrent/q;

    invoke-direct {v1, p1, p2}, Lcom/google/common/util/concurrent/r;-><init>(Lcom/google/common/util/concurrent/y;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, v1, v0}, Lcom/google/common/util/concurrent/x;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :goto_2
    iget-object p2, p0, Lcom/google/common/cache/w;->b:Lcom/google/common/util/concurrent/A;

    invoke-virtual {p2, p1}, Lcom/google/common/util/concurrent/o;->l(Ljava/lang/Throwable;)Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p0, p0, Lcom/google/common/cache/w;->b:Lcom/google/common/util/concurrent/A;

    goto :goto_3

    :cond_4
    new-instance p0, Lcom/google/common/util/concurrent/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/o;->l(Ljava/lang/Throwable;)Z

    :goto_3
    instance-of p1, p1, Ljava/lang/InterruptedException;

    if-eqz p1, :cond_5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    :cond_5
    return-object p0
.end method

.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/common/cache/w;->a:Lcom/google/common/cache/I;

    invoke-interface {p0}, Lcom/google/common/cache/I;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final isLoading()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
