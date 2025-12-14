.class public final LP6/e;
.super LQ6/j;
.source "SourceFile"


# instance fields
.field public final synthetic b:I

.field public final synthetic c:LR5/i;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(LP6/g;LR5/i;Ljava/lang/String;LR5/i;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, LP6/e;->b:I

    iput-object p1, p0, LP6/e;->e:Ljava/lang/Object;

    iput-object p3, p0, LP6/e;->d:Ljava/lang/Object;

    iput-object p4, p0, LP6/e;->c:LR5/i;

    invoke-direct {p0, p2}, LQ6/j;-><init>(LR5/i;)V

    return-void
.end method

.method public constructor <init>(LQ6/n;LR5/i;LR5/i;LP6/e;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, LP6/e;->b:I

    iput-object p1, p0, LP6/e;->e:Ljava/lang/Object;

    iput-object p3, p0, LP6/e;->c:LR5/i;

    iput-object p4, p0, LP6/e;->d:Ljava/lang/Object;

    invoke-direct {p0, p2}, LQ6/j;-><init>(LR5/i;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    iget v0, p0, LP6/e;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LP6/e;->e:Ljava/lang/Object;

    check-cast v0, LQ6/n;

    iget-object v0, v0, LQ6/n;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LP6/e;->e:Ljava/lang/Object;

    check-cast v1, LQ6/n;

    iget-object v2, p0, LP6/e;->c:LR5/i;

    iget-object v3, v1, LQ6/n;->e:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v3, v2, LR5/i;->a:LR5/p;

    new-instance v4, LL8/a;

    const/4 v5, 0x5

    invoke-direct {v4, v5, v1, v2}, LL8/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, LR5/p;->a(LR5/c;)LR5/p;

    iget-object v1, p0, LP6/e;->e:Ljava/lang/Object;

    check-cast v1, LQ6/n;

    iget-object v1, v1, LQ6/n;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, LP6/e;->e:Ljava/lang/Object;

    check-cast v1, LQ6/n;

    iget-object v1, v1, LQ6/n;->b:LQ6/i;

    const-string v2, "Already connected to the service."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, LQ6/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, LP6/e;->e:Ljava/lang/Object;

    check-cast v1, LQ6/n;

    iget-object p0, p0, LP6/e;->d:Ljava/lang/Object;

    check-cast p0, LP6/e;

    invoke-static {v1, p0}, LQ6/n;->b(LQ6/n;LP6/e;)V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :pswitch_0
    iget-object v0, p0, LP6/e;->c:LR5/i;

    iget-object v1, p0, LP6/e;->e:Ljava/lang/Object;

    check-cast v1, LP6/g;

    iget-object p0, p0, LP6/e;->d:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    :try_start_1
    iget-object v2, v1, LP6/g;->a:LQ6/n;

    iget-object v2, v2, LQ6/n;->m:LQ6/g;

    iget-object v3, v1, LP6/g;->b:Ljava/lang/String;

    invoke-static {v1, p0}, LP6/g;->a(LP6/g;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    new-instance v5, LP6/f;

    invoke-direct {v5, v1, v0, p0}, LP6/f;-><init>(LP6/g;LR5/i;Ljava/lang/String;)V

    invoke-interface {v2, v3, v4, v5}, LQ6/g;->P(Ljava/lang/String;Landroid/os/Bundle;LP6/f;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    sget-object v2, LP6/g;->e:LQ6/i;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x6

    const-string v4, "PlayCore"

    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v2, v2, LQ6/i;->b:Ljava/lang/String;

    const-string v3, "requestUpdateInfo(%s)"

    invoke-static {v2, v3, p0}, LQ6/i;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v0, p0}, LR5/i;->c(Ljava/lang/Exception;)Z

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
