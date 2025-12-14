.class public final Lcom/google/android/gms/common/internal/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb5/n;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/common/api/internal/BasePendingResult;

.field public final synthetic b:LR5/i;

.field public final synthetic c:Lcom/google/android/gms/common/internal/n;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/BasePendingResult;LR5/i;Lcom/google/android/gms/common/internal/n;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/internal/v;->a:Lcom/google/android/gms/common/api/internal/BasePendingResult;

    iput-object p2, p0, Lcom/google/android/gms/common/internal/v;->b:LR5/i;

    iput-object p3, p0, Lcom/google/android/gms/common/internal/v;->c:Lcom/google/android/gms/common/internal/n;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/Status;)V
    .locals 5

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/common/internal/v;->a:Lcom/google/android/gms/common/api/internal/BasePendingResult;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-boolean v1, p1, Lcom/google/android/gms/common/api/internal/BasePendingResult;->g:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    const-string v3, "Result has already been consumed."

    invoke-static {v3, v1}, Lcom/google/android/gms/common/internal/o;->h(Ljava/lang/String;Z)V

    :try_start_0
    iget-object v1, p1, Lcom/google/android/gms/common/api/internal/BasePendingResult;->b:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v3, v4, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/common/api/Status;->i:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->f(Lcom/google/android/gms/common/api/Status;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Lcom/google/android/gms/common/api/Status;->g:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->f(Lcom/google/android/gms/common/api/Status;)V

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->g()Z

    move-result v0

    const-string v1, "Result is not ready."

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/o;->h(Ljava/lang/String;Z)V

    iget-object v0, p1, Lcom/google/android/gms/common/api/internal/BasePendingResult;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    iget-boolean v1, p1, Lcom/google/android/gms/common/api/internal/BasePendingResult;->g:Z

    xor-int/2addr v1, v2

    const-string v3, "Result has already been consumed."

    invoke-static {v3, v1}, Lcom/google/android/gms/common/internal/o;->h(Ljava/lang/String;Z)V

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->g()Z

    move-result v1

    const-string v3, "Result is not ready."

    invoke-static {v3, v1}, Lcom/google/android/gms/common/internal/o;->h(Ljava/lang/String;Z)V

    iget-object v1, p1, Lcom/google/android/gms/common/api/internal/BasePendingResult;->e:Lb5/q;

    const/4 v3, 0x0

    iput-object v3, p1, Lcom/google/android/gms/common/api/internal/BasePendingResult;->e:Lb5/q;

    iput-boolean v2, p1, Lcom/google/android/gms/common/api/internal/BasePendingResult;->g:Z

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/BasePendingResult;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1, v3}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {v1}, Lcom/google/android/gms/common/internal/o;->f(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/common/internal/v;->b:LR5/i;

    iget-object p0, p0, Lcom/google/android/gms/common/internal/v;->c:Lcom/google/android/gms/common/internal/n;

    invoke-interface {p0, v1}, Lcom/google/android/gms/common/internal/n;->d(Lb5/q;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, LR5/i;->b(Ljava/lang/Object;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_2
    iget-object p0, p0, Lcom/google/android/gms/common/internal/v;->b:LR5/i;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/o;->k(Lcom/google/android/gms/common/api/Status;)Lb5/h;

    move-result-object p1

    invoke-virtual {p0, p1}, LR5/i;->a(Ljava/lang/Exception;)V

    return-void
.end method
