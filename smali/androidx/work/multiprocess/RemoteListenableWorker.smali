.class public abstract Landroidx/work/multiprocess/RemoteListenableWorker;
.super Lf3/t;
.source "SourceFile"


# static fields
.field public static final h:Ljava/lang/String;


# instance fields
.field public final e:Landroidx/work/WorkerParameters;

.field public final f:Lt3/i;

.field public g:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "RemoteListenableWorker"

    invoke-static {v0}, Lf3/u;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/multiprocess/RemoteListenableWorker;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/work/WorkerParameters;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Lf3/t;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    iput-object p2, p0, Landroidx/work/multiprocess/RemoteListenableWorker;->e:Landroidx/work/WorkerParameters;

    new-instance v0, Lt3/i;

    iget-object p2, p2, Landroidx/work/WorkerParameters;->f:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, p1, p2}, Lt3/i;-><init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;)V

    iput-object v0, p0, Landroidx/work/multiprocess/RemoteListenableWorker;->f:Lt3/i;

    return-void
.end method


# virtual methods
.method public b()V
    .locals 4

    iget v0, p0, Lf3/t;->c:I

    iget-object v1, p0, Landroidx/work/multiprocess/RemoteListenableWorker;->g:Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroidx/work/multiprocess/RemoteListenableWorker;->f:Lt3/i;

    new-instance v3, LG6/b;

    invoke-direct {v3, v0, p0}, LG6/b;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v2, v1, v3}, Lt3/i;->a(Landroid/content/ComponentName;Lt3/k;)Lq3/j;

    :cond_0
    return-void
.end method

.method public final c()Lq3/j;
    .locals 10

    new-instance v0, Lq3/j;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget-object v1, p0, Lf3/t;->b:Landroidx/work/WorkerParameters;

    iget-object v2, v1, Landroidx/work/WorkerParameters;->b:Lf3/i;

    iget-object v3, p0, Landroidx/work/multiprocess/RemoteListenableWorker;->e:Landroidx/work/WorkerParameters;

    iget-object v3, v3, Landroidx/work/WorkerParameters;->a:Ljava/util/UUID;

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v3, "androidx.work.impl.workers.RemoteListenableWorker.ARGUMENT_PACKAGE_NAME"

    invoke-virtual {v2, v3}, Lf3/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "androidx.work.impl.workers.RemoteListenableWorker.ARGUMENT_CLASS_NAME"

    invoke-virtual {v2, v4}, Lf3/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    sget-object v5, Landroidx/work/multiprocess/RemoteListenableWorker;->h:Ljava/lang/String;

    if-eqz v4, :cond_0

    invoke-static {}, Lf3/u;->d()Lf3/u;

    move-result-object p0

    const-string v1, "Need to specify a package name for the Remote Service."

    invoke-virtual {p0, v5, v1}, Lf3/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lq3/j;->k(Ljava/lang/Throwable;)Z

    return-object v0

    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Lf3/u;->d()Lf3/u;

    move-result-object p0

    const-string v1, "Need to specify a class name for the Remote Service."

    invoke-virtual {p0, v5, v1}, Lf3/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lq3/j;->k(Ljava/lang/Throwable;)Z

    return-object v0

    :cond_1
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, v3, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/work/multiprocess/RemoteListenableWorker;->g:Landroid/content/ComponentName;

    iget-object v0, p0, Lf3/t;->a:Landroid/content/Context;

    invoke-static {v0}, Lg3/n;->g(Landroid/content/Context;)Lg3/n;

    move-result-object v7

    iget-object v0, p0, Landroidx/work/multiprocess/RemoteListenableWorker;->g:Landroid/content/ComponentName;

    new-instance v2, LZ3/x;

    const/16 v5, 0x19

    const/4 v9, 0x0

    move-object v4, v2

    move-object v6, p0

    invoke-direct/range {v4 .. v9}, LZ3/x;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)V

    iget-object v3, p0, Landroidx/work/multiprocess/RemoteListenableWorker;->f:Lt3/i;

    invoke-virtual {v3, v0, v2}, Lt3/i;->a(Landroid/content/ComponentName;Lt3/k;)Lq3/j;

    move-result-object v0

    new-instance v2, LI3/d;

    const/16 v3, 0x15

    invoke-direct {v2, v3, p0}, LI3/d;-><init>(ILjava/lang/Object;)V

    iget-object p0, v1, Landroidx/work/WorkerParameters;->f:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lq3/j;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v3, LN3/g;

    const/16 v4, 0x9

    invoke-direct {v3, v0, v4, v2, v1}, LN3/g;-><init>(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v3, p0}, Lq3/h;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object v1
.end method
