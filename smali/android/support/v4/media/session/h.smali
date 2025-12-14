.class public final Landroid/support/v4/media/session/h;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroid/support/v4/media/session/j;


# direct methods
.method public constructor <init>(Landroid/support/v4/media/session/j;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/media/session/h;->a:Landroid/support/v4/media/session/j;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Landroid/support/v4/media/session/h;->a:Landroid/support/v4/media/session/j;

    iget-object v0, v0, Landroid/support/v4/media/session/j;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/session/h;->a:Landroid/support/v4/media/session/j;

    iget-object v1, v1, Landroid/support/v4/media/session/j;->mSessionImpl:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/media/session/k;

    iget-object v2, p0, Landroid/support/v4/media/session/h;->a:Landroid/support/v4/media/session/j;

    iget-object v3, v2, Landroid/support/v4/media/session/j;->mCallbackHandler:Landroid/support/v4/media/session/h;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/support/v4/media/session/k;->c()Landroid/support/v4/media/session/j;

    move-result-object v0

    if-ne v2, v0, :cond_1

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lm2/a;

    invoke-interface {v1, p1}, Landroid/support/v4/media/session/k;->a(Lm2/a;)V

    iget-object p0, p0, Landroid/support/v4/media/session/h;->a:Landroid/support/v4/media/session/j;

    invoke-virtual {p0, v1, v3}, Landroid/support/v4/media/session/j;->handleMediaPlayPauseIfPendingOnHandler(Landroid/support/v4/media/session/k;Landroid/os/Handler;)V

    const/4 p0, 0x0

    invoke-interface {v1, p0}, Landroid/support/v4/media/session/k;->a(Lm2/a;)V

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_2
    :goto_1
    return-void
.end method
