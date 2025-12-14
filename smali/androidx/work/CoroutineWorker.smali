.class public abstract Landroidx/work/CoroutineWorker;
.super Lf3/t;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008&\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Landroidx/work/CoroutineWorker;",
        "Lf3/t;",
        "Landroid/content/Context;",
        "appContext",
        "Landroidx/work/WorkerParameters;",
        "params",
        "<init>",
        "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V",
        "work-runtime_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field public final e:LNc/m0;

.field public final f:Lq3/j;

.field public final g:LWc/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/work/WorkerParameters;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "appContext"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lf3/t;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    invoke-static {}, LNc/E;->d()LNc/m0;

    move-result-object p1

    iput-object p1, p0, Landroidx/work/CoroutineWorker;->e:LNc/m0;

    new-instance p1, Lq3/j;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/CoroutineWorker;->f:Lq3/j;

    new-instance v0, Lcom/sec/android/app/sbrowser/tab_sync/o;

    const/16 v1, 0x8

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/sbrowser/tab_sync/o;-><init>(ILjava/lang/Object;)V

    iget-object p2, p2, Landroidx/work/WorkerParameters;->g:Lr3/a;

    iget-object p2, p2, Lr3/a;->a:LJ2/k0;

    invoke-virtual {p1, v0, p2}, Lq3/h;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    sget-object p1, LNc/N;->a:LWc/f;

    iput-object p1, p0, Landroidx/work/CoroutineWorker;->g:LWc/f;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/common/util/concurrent/y;
    .locals 4

    invoke-static {}, LNc/E;->d()LNc/m0;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/work/CoroutineWorker;->g()LNc/x;

    move-result-object v1

    invoke-virtual {v1, v0}, Lib/a;->plus(Lib/h;)Lib/h;

    move-result-object v1

    invoke-static {v1}, LNc/E;->c(Lib/h;)LUc/e;

    move-result-object v1

    new-instance v2, Lf3/o;

    invoke-direct {v2, v0}, Lf3/o;-><init>(LNc/m0;)V

    new-instance v0, Lf3/g;

    const/4 v3, 0x0

    invoke-direct {v0, v2, p0, v3}, Lf3/g;-><init>(Lf3/o;Landroidx/work/CoroutineWorker;Lib/c;)V

    const/4 p0, 0x3

    invoke-static {v1, v3, v3, v0, p0}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    return-object v2
.end method

.method public final b()V
    .locals 1

    iget-object p0, p0, Landroidx/work/CoroutineWorker;->f:Lq3/j;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lq3/h;->cancel(Z)Z

    return-void
.end method

.method public final c()Lq3/j;
    .locals 4

    invoke-virtual {p0}, Landroidx/work/CoroutineWorker;->g()LNc/x;

    move-result-object v0

    iget-object v1, p0, Landroidx/work/CoroutineWorker;->e:LNc/m0;

    invoke-virtual {v0, v1}, Lib/a;->plus(Lib/h;)Lib/h;

    move-result-object v0

    invoke-static {v0}, LNc/E;->c(Lib/h;)LUc/e;

    move-result-object v0

    new-instance v1, Lf3/h;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lf3/h;-><init>(Landroidx/work/CoroutineWorker;Lib/c;)V

    const/4 v3, 0x3

    invoke-static {v0, v2, v2, v1, v3}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    iget-object p0, p0, Landroidx/work/CoroutineWorker;->f:Lq3/j;

    return-object p0
.end method

.method public abstract f(Lkb/c;)Ljava/lang/Object;
.end method

.method public g()LNc/x;
    .locals 0

    iget-object p0, p0, Landroidx/work/CoroutineWorker;->g:LWc/f;

    return-object p0
.end method
