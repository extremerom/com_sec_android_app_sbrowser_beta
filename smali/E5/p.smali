.class public final synthetic LE5/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, LE5/p;->a:I

    iput-object p2, p0, LE5/p;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 4

    iget v0, p0, LE5/p;->a:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "google_sdk_flags"

    const/4 v1, 0x0

    iget-object p0, p0, LE5/p;->b:Ljava/lang/Object;

    check-cast p0, Landroid/content/Context;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object p0, p0, LE5/p;->b:Ljava/lang/Object;

    check-cast p0, Lk2/a;

    iget-object v0, p0, Lk2/a;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/16 v0, 0xa

    const/4 v2, 0x0

    :try_start_0
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Lk2/a;->g:LX4/c;

    invoke-virtual {v0}, LX4/c;->c()V

    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v2}, Lk2/a;->a(Ljava/lang/Object;)V

    return-object v2

    :catchall_0
    move-exception v0

    :try_start_1
    iget-object v3, p0, Lk2/a;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v2}, Lk2/a;->a(Ljava/lang/Object;)V

    throw v0

    :pswitch_1
    iget-object v0, p0, LE5/p;->b:Ljava/lang/Object;

    check-cast v0, LO3/c;

    monitor-enter v0

    :try_start_2
    iget-object v1, p0, LE5/p;->b:Ljava/lang/Object;

    check-cast v1, LO3/c;

    iget-object v2, v1, LO3/c;->i:Ljava/io/BufferedWriter;

    if-nez v2, :cond_0

    monitor-exit v0

    goto :goto_0

    :catchall_2
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, LO3/c;->B()V

    iget-object v1, p0, LE5/p;->b:Ljava/lang/Object;

    check-cast v1, LO3/c;

    invoke-virtual {v1}, LO3/c;->h()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, LE5/p;->b:Ljava/lang/Object;

    check-cast v1, LO3/c;

    invoke-virtual {v1}, LO3/c;->t()V

    iget-object p0, p0, LE5/p;->b:Ljava/lang/Object;

    check-cast p0, LO3/c;

    const/4 v1, 0x0

    iput v1, p0, LO3/c;->k:I

    :cond_1
    monitor-exit v0

    :goto_0
    const/4 p0, 0x0

    return-object p0

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p0

    :pswitch_2
    iget-object p0, p0, LE5/p;->b:Ljava/lang/Object;

    check-cast p0, LG5/f4;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/google/android/gms/common/internal/m;->c:Lcom/google/android/gms/common/internal/m;

    iget-object p0, p0, LG5/f4;->g:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_3
    iget-object p0, p0, LE5/p;->b:Ljava/lang/Object;

    check-cast p0, LE5/r;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/google/android/gms/common/internal/m;->c:Lcom/google/android/gms/common/internal/m;

    iget-object p0, p0, LE5/r;->a:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
