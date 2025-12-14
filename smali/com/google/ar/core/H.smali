.class public final Lcom/google/ar/core/H;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic a:Lcom/google/ar/core/G;


# direct methods
.method public constructor <init>(Lcom/google/ar/core/G;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ar/core/H;->a:Lcom/google/ar/core/G;

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    iget-object p0, p0, Lcom/google/ar/core/H;->a:Lcom/google/ar/core/G;

    monitor-enter p0

    :try_start_0
    const-string p1, "ARCore-InstallService"

    const-string v0, "Install service connected"

    invoke-static {p2}, Lcom/google/ar/core/dependencies/g;->b(Landroid/os/IBinder;)Lcom/google/ar/core/dependencies/h;

    move-result-object p2

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p2, p0, Lcom/google/ar/core/G;->c:Lcom/google/ar/core/dependencies/h;

    const/4 p1, 0x3

    iput p1, p0, Lcom/google/ar/core/G;->i:I

    iget-object p1, p0, Lcom/google/ar/core/G;->a:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Runnable;

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    iget-object p0, p0, Lcom/google/ar/core/H;->a:Lcom/google/ar/core/G;

    monitor-enter p0

    :try_start_0
    const-string p1, "ARCore-InstallService"

    const-string v0, "Install service disconnected"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    iput p1, p0, Lcom/google/ar/core/G;->i:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/ar/core/G;->c:Lcom/google/ar/core/dependencies/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
