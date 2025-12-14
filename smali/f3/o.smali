.class public final Lf3/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/util/concurrent/y;


# instance fields
.field public final a:Lq3/j;


# direct methods
.method public constructor <init>(LNc/m0;)V
    .locals 2

    new-instance v0, Lq3/j;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lf3/o;->a:Lq3/j;

    new-instance v0, LB0/a;

    const/16 v1, 0x16

    invoke-direct {v0, v1, p0}, LB0/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, LNc/t0;->q(Lsb/k;)LNc/P;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 0

    iget-object p0, p0, Lf3/o;->a:Lq3/j;

    invoke-virtual {p0, p1, p2}, Lq3/h;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final cancel(Z)Z
    .locals 0

    iget-object p0, p0, Lf3/o;->a:Lq3/j;

    invoke-virtual {p0, p1}, Lq3/h;->cancel(Z)Z

    move-result p0

    return p0
.end method

.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lf3/o;->a:Lq3/j;

    invoke-virtual {p0}, Lq3/h;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lf3/o;->a:Lq3/j;

    invoke-virtual {p0, p1, p2, p3}, Lq3/h;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final isCancelled()Z
    .locals 0

    iget-object p0, p0, Lf3/o;->a:Lq3/j;

    iget-object p0, p0, Lq3/h;->a:Ljava/lang/Object;

    instance-of p0, p0, Lq3/a;

    return p0
.end method

.method public final isDone()Z
    .locals 0

    iget-object p0, p0, Lf3/o;->a:Lq3/j;

    invoke-virtual {p0}, Lq3/h;->isDone()Z

    move-result p0

    return p0
.end method
