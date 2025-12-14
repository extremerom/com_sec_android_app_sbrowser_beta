.class public final LK0/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/util/concurrent/y;


# instance fields
.field public final a:Ljava/lang/ref/WeakReference;

.field public final b:LK0/k;


# direct methods
.method public constructor <init>(LK0/i;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LK0/k;

    invoke-direct {v0, p0}, LK0/k;-><init>(LK0/l;)V

    iput-object v0, p0, LK0/l;->b:LK0/k;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, LK0/l;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 0

    iget-object p0, p0, LK0/l;->b:LK0/k;

    invoke-virtual {p0, p1, p2}, LK0/h;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final cancel(Z)Z
    .locals 1

    iget-object v0, p0, LK0/l;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LK0/i;

    iget-object p0, p0, LK0/l;->b:LK0/k;

    invoke-virtual {p0, p1}, LK0/h;->cancel(Z)Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    iput-object p1, v0, LK0/i;->a:Ljava/lang/Object;

    iput-object p1, v0, LK0/i;->b:LK0/l;

    iget-object v0, v0, LK0/i;->c:LK0/m;

    invoke-virtual {v0, p1}, LK0/h;->m(Ljava/lang/Object;)Z

    :cond_0
    return p0
.end method

.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, LK0/l;->b:LK0/k;

    invoke-virtual {p0}, LK0/h;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, LK0/l;->b:LK0/k;

    invoke-virtual {p0, p1, p2, p3}, LK0/h;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final isCancelled()Z
    .locals 0

    iget-object p0, p0, LK0/l;->b:LK0/k;

    iget-object p0, p0, LK0/h;->a:Ljava/lang/Object;

    instance-of p0, p0, LK0/a;

    return p0
.end method

.method public final isDone()Z
    .locals 0

    iget-object p0, p0, LK0/l;->b:LK0/k;

    invoke-virtual {p0}, LK0/h;->isDone()Z

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LK0/l;->b:LK0/k;

    invoke-virtual {p0}, LK0/h;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
