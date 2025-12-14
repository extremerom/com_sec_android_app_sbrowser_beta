.class public final Lc2/U;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LNc/B;


# instance fields
.field public final synthetic a:LNc/B;

.field public final b:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic c:LA9/b;

.field public final synthetic d:LNc/B;

.field public final synthetic e:Lc2/D;

.field public final synthetic f:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public constructor <init>(LNc/B;LA9/b;LNc/B;Lc2/D;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lc2/U;->c:LA9/b;

    iput-object p3, p0, Lc2/U;->d:LNc/B;

    iput-object p4, p0, Lc2/U;->e:Lc2/D;

    iput-object p5, p0, Lc2/U;->f:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p1, p0, Lc2/U;->a:LNc/B;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lc2/U;->b:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 4

    iget-object v0, p0, Lc2/U;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object p0, p0, Lc2/U;->c:LA9/b;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    sget p0, LLc/a;->c:I

    sget-object p0, LLc/c;->MILLISECONDS:LLc/c;

    invoke-static {v0, v1, p0}, LOd/b;->i(JLLc/c;)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    sget p0, LLc/a;->c:I

    sget-wide v0, LLc/a;->a:J

    :goto_0
    return-wide v0
.end method

.method public final b(J)V
    .locals 7

    invoke-static {p1, p2}, LLc/a;->e(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    new-instance p1, Lc2/P;

    iget-object p2, p0, Lc2/U;->e:Lc2/D;

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p2

    const-string v0, "Timed out immediately"

    invoke-direct {p1, v0, p2}, Lc2/P;-><init>(Ljava/lang/String;I)V

    iget-object p0, p0, Lc2/U;->d:LNc/B;

    invoke-static {p0, p1}, LNc/E;->h(LNc/B;Ljava/util/concurrent/CancellationException;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lc2/U;->a()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, LLc/a;->d(JJ)I

    move-result v0

    if-gez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lc2/U;->b:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, Lc2/U;->c:LA9/b;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {p1, p2}, LLc/a;->e(J)J

    move-result-wide p1

    add-long/2addr p1, v1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    new-instance p1, Lc2/T;

    iget-object v3, p0, Lc2/U;->c:LA9/b;

    iget-object p2, p0, Lc2/U;->d:LNc/B;

    iget-object v5, p0, Lc2/U;->e:Lc2/D;

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p0

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lc2/T;-><init>(Lc2/U;LA9/b;LNc/B;Lc2/D;Lib/c;)V

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {p2, v1, v1, p1, v0}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    move-result-object p1

    iget-object p0, p0, Lc2/U;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LNc/j0;

    if-eqz p0, :cond_2

    invoke-interface {p0, v1}, LNc/j0;->a(Ljava/util/concurrent/CancellationException;)V

    :cond_2
    return-void
.end method

.method public final v()Lib/h;
    .locals 0

    iget-object p0, p0, Lc2/U;->a:LNc/B;

    invoke-interface {p0}, LNc/B;->v()Lib/h;

    move-result-object p0

    return-object p0
.end method
