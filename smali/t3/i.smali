.class public final Lt3/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final e:Ljava/lang/String;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/concurrent/ExecutorService;

.field public final c:Ljava/lang/Object;

.field public d:Lt3/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ListenableWorkerImplClient"

    invoke-static {v0}, Lf3/u;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lt3/i;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt3/i;->a:Landroid/content/Context;

    iput-object p2, p0, Lt3/i;->b:Ljava/util/concurrent/ExecutorService;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt3/i;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/ComponentName;Lt3/k;)Lq3/j;
    .locals 9

    const-string v0, "Binding to "

    iget-object v1, p0, Lt3/i;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lt3/i;->d:Lt3/h;

    if-nez v2, :cond_0

    invoke-static {}, Lf3/u;->d()Lf3/u;

    move-result-object v2

    sget-object v3, Lt3/i;->e:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lf3/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lt3/h;

    invoke-direct {v0}, Lt3/h;-><init>()V

    iput-object v0, p0, Lt3/i;->d:Lt3/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object p1, p0, Lt3/i;->a:Landroid/content/Context;

    iget-object v2, p0, Lt3/i;->d:Lt3/h;

    const/4 v4, 0x1

    invoke-virtual {p1, v0, v2, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lt3/i;->d:Lt3/h;

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Unable to bind to service"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lf3/u;->d()Lf3/u;

    move-result-object v2

    const-string v4, "Unable to bind to service"

    invoke-virtual {v2, v3, v4, v0}, Lf3/u;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p1, p1, Lt3/h;->a:Lq3/j;

    invoke-virtual {p1, v0}, Lq3/j;->k(Ljava/lang/Throwable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_2
    iget-object v0, p0, Lt3/i;->d:Lt3/h;

    invoke-static {}, Lf3/u;->d()Lf3/u;

    move-result-object v2

    sget-object v3, Lt3/i;->e:Ljava/lang/String;

    const-string v4, "Unable to bind to service"

    invoke-virtual {v2, v3, v4, p1}, Lf3/u;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, v0, Lt3/h;->a:Lq3/j;

    invoke-virtual {v0, p1}, Lq3/j;->k(Ljava/lang/Throwable;)Z

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p1, p0, Lt3/i;->d:Lt3/h;

    iget-object p1, p1, Lt3/h;->a:Lq3/j;

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    new-instance v0, Lt3/j;

    invoke-direct {v0}, Lt3/j;-><init>()V

    new-instance v1, LG5/e4;

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object v2, v1

    move-object v3, p0

    move-object v4, p1

    move-object v5, v0

    move-object v6, p2

    invoke-direct/range {v2 .. v8}, LG5/e4;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IZ)V

    iget-object p0, p0, Lt3/i;->b:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {p1, v1, p0}, Lq3/h;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    iget-object p0, v0, Lt3/j;->a:Lq3/j;

    return-object p0

    :goto_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method
