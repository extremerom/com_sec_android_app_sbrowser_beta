.class public final Lk2/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final h:Ljava/util/concurrent/ThreadPoolExecutor;

.field public static i:LC5/a;

.field public static volatile j:Ljava/util/concurrent/ThreadPoolExecutor;


# instance fields
.field public final a:LE5/p;

.field public final b:Lk2/b;

.field public volatile c:Lk2/e;

.field public final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final f:Ljava/util/concurrent/CountDownLatch;

.field public final synthetic g:LX4/c;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v7, LF/b;

    const/4 v0, 0x1

    invoke-direct {v7, v0}, LF/b;-><init>(I)V

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v0, 0xa

    invoke-direct {v6, v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const/4 v1, 0x5

    const/16 v2, 0x80

    const-wide/16 v3, 0x1

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v8, Lk2/a;->h:Ljava/util/concurrent/ThreadPoolExecutor;

    sput-object v8, Lk2/a;->j:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method public constructor <init>(LX4/c;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk2/a;->g:LX4/c;

    sget-object p1, Lk2/e;->PENDING:Lk2/e;

    iput-object p1, p0, Lk2/a;->c:Lk2/e;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lk2/a;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lk2/a;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p1, LE5/p;

    const/4 v0, 0x3

    invoke-direct {p1, v0, p0}, LE5/p;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lk2/a;->a:LE5/p;

    new-instance v0, Lk2/b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lk2/b;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Callable;I)V

    iput-object v0, p0, Lk2/a;->b:Lk2/b;

    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lk2/a;->f:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 4

    const-class v0, Lk2/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lk2/a;->i:LC5/a;

    if-nez v1, :cond_0

    new-instance v1, LC5/a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, LC5/a;-><init>(Landroid/os/Looper;I)V

    sput-object v1, Lk2/a;->i:LC5/a;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lk2/a;->i:LC5/a;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lk2/d;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lk2/d;-><init>(Lk2/a;[Ljava/lang/Object;)V

    const/4 p0, 0x1

    invoke-virtual {v1, p0, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final run()V
    .locals 0

    iget-object p0, p0, Lk2/a;->g:LX4/c;

    invoke-virtual {p0}, LX4/c;->b()V

    return-void
.end method
