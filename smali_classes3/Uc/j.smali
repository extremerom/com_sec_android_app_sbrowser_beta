.class public final LUc/j;
.super LNc/x;
.source "SourceFile"

# interfaces
.implements LNc/J;


# static fields
.field public static final synthetic g:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field public final b:LNc/x;

.field public final c:I

.field public final synthetic d:LNc/J;

.field public final e:LUc/m;

.field public final f:Ljava/lang/Object;

.field private volatile synthetic runningWorkers$volatile:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, LUc/j;

    const-string v1, "runningWorkers$volatile"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, LUc/j;->g:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(LNc/x;I)V
    .locals 0

    invoke-direct {p0}, LNc/x;-><init>()V

    iput-object p1, p0, LUc/j;->b:LNc/x;

    iput p2, p0, LUc/j;->c:I

    instance-of p2, p1, LNc/J;

    if-eqz p2, :cond_0

    check-cast p1, LNc/J;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    sget-object p1, LNc/G;->a:LNc/J;

    :cond_1
    iput-object p1, p0, LUc/j;->d:LNc/J;

    new-instance p1, LUc/m;

    invoke-direct {p1}, LUc/m;-><init>()V

    iput-object p1, p0, LUc/j;->e:LUc/m;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LUc/j;->f:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final G(Lib/h;Ljava/lang/Runnable;)V
    .locals 2

    iget-object p1, p0, LUc/j;->e:LUc/m;

    invoke-virtual {p1, p2}, LUc/m;->a(Ljava/lang/Runnable;)Z

    sget-object p1, LUc/j;->g:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result p1

    iget p2, p0, LUc/j;->c:I

    if-ge p1, p2, :cond_1

    invoke-virtual {p0}, LUc/j;->S()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, LUc/j;->K()Ljava/lang/Runnable;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/google/common/util/concurrent/v;

    const/16 v0, 0x10

    const/4 v1, 0x0

    invoke-direct {p2, v0, p0, p1, v1}, Lcom/google/common/util/concurrent/v;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    iget-object p1, p0, LUc/j;->b:LNc/x;

    invoke-virtual {p1, p0, p2}, LNc/x;->G(Lib/h;Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final J(I)LNc/x;
    .locals 1

    const/4 p1, 0x1

    invoke-static {p1}, LUc/a;->b(I)V

    iget v0, p0, LUc/j;->c:I

    if-lt p1, v0, :cond_0

    return-object p0

    :cond_0
    invoke-super {p0, p1}, LNc/x;->J(I)LNc/x;

    move-result-object p0

    return-object p0
.end method

.method public final K()Ljava/lang/Runnable;
    .locals 3

    :goto_0
    iget-object v0, p0, LUc/j;->e:LUc/m;

    invoke-virtual {v0}, LUc/m;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    if-nez v0, :cond_1

    iget-object v0, p0, LUc/j;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, LUc/j;->g:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->decrementAndGet(Ljava/lang/Object;)I

    iget-object v2, p0, LUc/j;->e:LUc/m;

    invoke-virtual {v2}, LUc/m;->c()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    :try_start_1
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->incrementAndGet(Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_1
    return-object v0
.end method

.method public final S()Z
    .locals 4

    iget-object v0, p0, LUc/j;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, LUc/j;->g:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v2

    iget v3, p0, LUc/j;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v2, v3, :cond_0

    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :cond_0
    :try_start_1
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->incrementAndGet(Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final d(JLNc/k;)V
    .locals 0

    iget-object p0, p0, LUc/j;->d:LNc/J;

    invoke-interface {p0, p1, p2, p3}, LNc/J;->d(JLNc/k;)V

    return-void
.end method

.method public final k(JLjava/lang/Runnable;Lib/h;)LNc/P;
    .locals 0

    iget-object p0, p0, LUc/j;->d:LNc/J;

    invoke-interface {p0, p1, p2, p3, p4}, LNc/J;->k(JLjava/lang/Runnable;Lib/h;)LNc/P;

    move-result-object p0

    return-object p0
.end method

.method public final v(Lib/h;Ljava/lang/Runnable;)V
    .locals 2

    iget-object p1, p0, LUc/j;->e:LUc/m;

    invoke-virtual {p1, p2}, LUc/m;->a(Ljava/lang/Runnable;)Z

    sget-object p1, LUc/j;->g:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result p1

    iget p2, p0, LUc/j;->c:I

    if-ge p1, p2, :cond_1

    invoke-virtual {p0}, LUc/j;->S()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, LUc/j;->K()Ljava/lang/Runnable;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/google/common/util/concurrent/v;

    const/16 v0, 0x10

    const/4 v1, 0x0

    invoke-direct {p2, v0, p0, p1, v1}, Lcom/google/common/util/concurrent/v;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    iget-object p1, p0, LUc/j;->b:LNc/x;

    invoke-virtual {p1, p0, p2}, LNc/x;->v(Lib/h;Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method
