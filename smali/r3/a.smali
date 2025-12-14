.class public final Lr3/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LJ2/k0;

.field public final b:LNc/x;

.field public final c:Landroid/os/Handler;

.field public final d:LH4/s;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lr3/a;->c:Landroid/os/Handler;

    new-instance v0, LH4/s;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, LH4/s;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lr3/a;->d:LH4/s;

    new-instance v0, LJ2/k0;

    invoke-direct {v0, p1}, LJ2/k0;-><init>(Ljava/util/concurrent/ExecutorService;)V

    iput-object v0, p0, Lr3/a;->a:LJ2/k0;

    invoke-static {v0}, LNc/E;->n(Ljava/util/concurrent/Executor;)LNc/x;

    move-result-object p1

    iput-object p1, p0, Lr3/a;->b:LNc/x;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Lr3/a;->a:LJ2/k0;

    invoke-virtual {p0, p1}, LJ2/k0;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
