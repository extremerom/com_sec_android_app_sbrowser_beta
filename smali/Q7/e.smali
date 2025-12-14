.class public final LQ7/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Ljava/lang/Object;

.field public static c:LQ7/e;


# instance fields
.field public final a:LC5/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LQ7/e;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LC5/a;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, LC5/a;-><init>(Landroid/os/Looper;I)V

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    iput-object v0, p0, LQ7/e;->a:LC5/a;

    return-void
.end method

.method public static a()LQ7/e;
    .locals 4

    sget-object v0, LQ7/e;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, LQ7/e;->c:LQ7/e;

    if-nez v1, :cond_0

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "MLHandler"

    const/16 v3, 0x9

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, LQ7/e;

    invoke-direct {v2, v1}, LQ7/e;-><init>(Landroid/os/Looper;)V

    sput-object v2, LQ7/e;->c:LQ7/e;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, LQ7/e;->c:LQ7/e;

    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static b(Ljava/util/concurrent/Callable;)LR5/p;
    .locals 3

    new-instance v0, LR5/i;

    invoke-direct {v0}, LR5/i;-><init>()V

    new-instance v1, Lcom/google/common/util/concurrent/v;

    const/4 v2, 0x5

    invoke-direct {v1, v2, p0, v0}, Lcom/google/common/util/concurrent/v;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    sget-object p0, LQ7/k;->zza:LQ7/k;

    invoke-virtual {p0, v1}, LQ7/k;->execute(Ljava/lang/Runnable;)V

    iget-object p0, v0, LR5/i;->a:LR5/p;

    return-object p0
.end method
