.class public final synthetic LQ6/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, LQ6/k;->a:I

    iput-object p2, p0, LQ6/k;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 5

    iget v0, p0, LQ6/k;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, LQ6/k;->b:Ljava/lang/Object;

    check-cast p0, Lt3/j;

    const-string v0, "Binder died"

    invoke-virtual {p0, v0}, Lt3/j;->onFailure(Ljava/lang/String;)V

    return-void

    :pswitch_0
    iget-object p0, p0, LQ6/k;->b:Ljava/lang/Object;

    check-cast p0, LQ6/n;

    iget-object v0, p0, LQ6/n;->b:LQ6/i;

    const-string v1, "reportBinderDeath"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, LQ6/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, LQ6/n;->i:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, LQ6/n;->b:LQ6/i;

    iget-object v1, p0, LQ6/n;->c:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%s : Binder has died."

    invoke-virtual {v0, v2, v1}, LQ6/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, LQ6/n;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LQ6/j;

    new-instance v2, Landroid/os/RemoteException;

    iget-object v3, p0, LQ6/n;->c:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, " : Binder has died."

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, LQ6/j;->a:LR5/i;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, LR5/i;->c(Ljava/lang/Exception;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, LQ6/n;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, LQ6/n;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, LQ6/n;->d()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
