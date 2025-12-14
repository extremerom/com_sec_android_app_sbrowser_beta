.class public final LR5/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LR5/p;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LR5/p;

    invoke-direct {v0}, LR5/p;-><init>()V

    iput-object v0, p0, LR5/i;->a:LR5/p;

    return-void
.end method

.method public constructor <init>(LX4/i;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LR5/p;

    invoke-direct {v0}, LR5/p;-><init>()V

    iput-object v0, p0, LR5/i;->a:LR5/p;

    new-instance v0, LB3/c;

    invoke-direct {v0, p0}, LB3/c;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, LO9/a;

    const/4 v1, 0x6

    invoke-direct {p0, v1, v0}, LO9/a;-><init>(ILjava/lang/Object;)V

    sget-object v0, LR5/j;->a:LH4/s;

    iget-object p1, p1, LX4/i;->b:Ljava/lang/Object;

    check-cast p1, LR5/p;

    invoke-virtual {p1, v0, p0}, LR5/p;->f(Ljava/util/concurrent/Executor;LR5/e;)LR5/p;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Exception;)V
    .locals 0

    iget-object p0, p0, LR5/i;->a:LR5/p;

    invoke-virtual {p0, p1}, LR5/p;->o(Ljava/lang/Exception;)V

    return-void
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, LR5/i;->a:LR5/p;

    invoke-virtual {p0, p1}, LR5/p;->p(Ljava/lang/Object;)V

    return-void
.end method

.method public final c(Ljava/lang/Exception;)Z
    .locals 2

    iget-object p0, p0, LR5/i;->a:LR5/p;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "Exception must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/o;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LR5/p;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, LR5/p;->c:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    const/4 p0, 0x0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, LR5/p;->c:Z

    iput-object p1, p0, LR5/p;->f:Ljava/lang/Exception;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, LR5/p;->b:Lcom/bumptech/glide/manager/o;

    invoke-virtual {p1, p0}, Lcom/bumptech/glide/manager/o;->i(LR5/h;)V

    move p0, v1

    :goto_0
    return p0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final d(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, LR5/i;->a:LR5/p;

    invoke-virtual {p0, p1}, LR5/p;->r(Ljava/lang/Object;)Z

    return-void
.end method
