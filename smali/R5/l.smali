.class public final LR5/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LR5/m;
.implements LR5/e;
.implements LR5/d;
.implements LR5/b;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/util/concurrent/Executor;

.field public d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(LR5/n;LR5/b;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, LR5/l;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LR5/l;->b:Ljava/lang/Object;

    iput-object p1, p0, LR5/l;->c:Ljava/util/concurrent/Executor;

    iput-object p2, p0, LR5/l;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;LR5/c;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, LR5/l;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LR5/l;->b:Ljava/lang/Object;

    iput-object p1, p0, LR5/l;->c:Ljava/util/concurrent/Executor;

    iput-object p2, p0, LR5/l;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;LR5/d;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, LR5/l;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LR5/l;->b:Ljava/lang/Object;

    iput-object p1, p0, LR5/l;->c:Ljava/util/concurrent/Executor;

    iput-object p2, p0, LR5/l;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;LR5/e;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, LR5/l;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LR5/l;->b:Ljava/lang/Object;

    iput-object p1, p0, LR5/l;->c:Ljava/util/concurrent/Executor;

    iput-object p2, p0, LR5/l;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;LR5/g;LR5/p;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, LR5/l;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LR5/l;->c:Ljava/util/concurrent/Executor;

    iput-object p2, p0, LR5/l;->b:Ljava/lang/Object;

    iput-object p3, p0, LR5/l;->d:Ljava/lang/Object;

    return-void
.end method

.method private final c(LR5/h;)V
    .locals 4

    invoke-virtual {p1}, LR5/h;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, LR5/l;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LR5/l;->d:Ljava/lang/Object;

    check-cast v1, LR5/e;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, LR5/l;->c:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/common/util/concurrent/v;

    const/16 v2, 0xc

    const/4 v3, 0x0

    invoke-direct {v1, v2, p0, p1, v3}, Lcom/google/common/util/concurrent/v;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_1
    return-void
.end method


# virtual methods
.method public final a(LR5/h;)V
    .locals 4

    iget v0, p0, LR5/l;->a:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/google/common/util/concurrent/v;

    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, p1, v2}, Lcom/google/common/util/concurrent/v;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    iget-object p0, p0, LR5/l;->c:Ljava/util/concurrent/Executor;

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :pswitch_0
    invoke-direct {p0, p1}, LR5/l;->c(LR5/h;)V

    return-void

    :pswitch_1
    invoke-virtual {p1}, LR5/h;->l()Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, p1

    check-cast v0, LR5/p;

    iget-boolean v0, v0, LR5/p;->d:Z

    if-nez v0, :cond_1

    iget-object v0, p0, LR5/l;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LR5/l;->d:Ljava/lang/Object;

    check-cast v1, LR5/d;

    if-nez v1, :cond_0

    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, LR5/l;->c:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/common/util/concurrent/v;

    const/16 v2, 0xb

    const/4 v3, 0x0

    invoke-direct {v1, v2, p0, p1, v3}, Lcom/google/common/util/concurrent/v;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_1
    :goto_1
    return-void

    :pswitch_2
    iget-object v0, p0, LR5/l;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_2
    iget-object v1, p0, LR5/l;->d:Ljava/lang/Object;

    check-cast v1, LR5/c;

    if-nez v1, :cond_2

    monitor-exit v0

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_3

    :cond_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v0, p0, LR5/l;->c:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/common/util/concurrent/v;

    const/16 v2, 0xa

    const/4 v3, 0x0

    invoke-direct {v1, v2, p0, p1, v3}, Lcom/google/common/util/concurrent/v;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_2
    return-void

    :goto_3
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :pswitch_3
    check-cast p1, LR5/p;

    iget-boolean p1, p1, LR5/p;->d:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, LR5/l;->b:Ljava/lang/Object;

    monitor-enter p1

    :try_start_4
    iget-object v0, p0, LR5/l;->d:Ljava/lang/Object;

    check-cast v0, LR5/b;

    if-nez v0, :cond_3

    monitor-exit p1

    goto :goto_7

    :catchall_2
    move-exception p0

    goto :goto_6

    :cond_3
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    iget-object p1, p0, LR5/l;->c:Ljava/util/concurrent/Executor;

    check-cast p1, LR5/n;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, LR5/l;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_5
    iget-object p0, p0, LR5/l;->d:Ljava/lang/Object;

    check-cast p0, LR5/b;

    if-eqz p0, :cond_4

    invoke-interface {p0}, LR5/b;->h()V

    goto :goto_4

    :catchall_3
    move-exception p0

    goto :goto_5

    :cond_4
    :goto_4
    monitor-exit v0

    goto :goto_7

    :goto_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw p0

    :goto_6
    :try_start_6
    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p0

    :cond_5
    :goto_7
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b()V
    .locals 2

    iget v0, p0, LR5/l;->a:I

    packed-switch v0, :pswitch_data_0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_0
    iget-object v0, p0, LR5/l;->b:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, LR5/l;->d:Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :pswitch_1
    iget-object v0, p0, LR5/l;->b:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_1
    iput-object v1, p0, LR5/l;->d:Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :pswitch_2
    iget-object v0, p0, LR5/l;->b:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, LR5/l;->d:Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p0

    :pswitch_3
    iget-object v0, p0, LR5/l;->b:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_3
    iput-object v1, p0, LR5/l;->d:Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_3
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public h()V
    .locals 0

    iget-object p0, p0, LR5/l;->d:Ljava/lang/Object;

    check-cast p0, LR5/p;

    invoke-virtual {p0}, LR5/p;->q()V

    return-void
.end method

.method public onFailure(Ljava/lang/Exception;)V
    .locals 0

    iget-object p0, p0, LR5/l;->d:Ljava/lang/Object;

    check-cast p0, LR5/p;

    invoke-virtual {p0, p1}, LR5/p;->o(Ljava/lang/Exception;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, LR5/l;->d:Ljava/lang/Object;

    check-cast p0, LR5/p;

    invoke-virtual {p0, p1}, LR5/p;->p(Ljava/lang/Object;)V

    return-void
.end method
