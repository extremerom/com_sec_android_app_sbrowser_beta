.class public final synthetic LQ7/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(LU7/e;LX4/i;LJ7/c;LU7/d;LR5/i;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, LQ7/n;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LQ7/n;->b:Ljava/lang/Object;

    iput-object p2, p0, LQ7/n;->c:Ljava/lang/Object;

    iput-object p3, p0, LQ7/n;->d:Ljava/lang/Object;

    iput-object p4, p0, LQ7/n;->e:Ljava/lang/Object;

    iput-object p5, p0, LQ7/n;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lp3/s;Lq3/j;Ljava/util/UUID;Lf3/l;Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, LQ7/n;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LQ7/n;->f:Ljava/lang/Object;

    iput-object p2, p0, LQ7/n;->b:Ljava/lang/Object;

    iput-object p3, p0, LQ7/n;->c:Ljava/lang/Object;

    iput-object p4, p0, LQ7/n;->d:Ljava/lang/Object;

    iput-object p5, p0, LQ7/n;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget v0, p0, LQ7/n;->a:I

    packed-switch v0, :pswitch_data_0

    :try_start_0
    iget-object v0, p0, LQ7/n;->b:Ljava/lang/Object;

    check-cast v0, Lq3/j;

    iget-object v0, v0, Lq3/h;->a:Ljava/lang/Object;

    instance-of v0, v0, Lq3/a;

    if-nez v0, :cond_1

    iget-object v0, p0, LQ7/n;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, LQ7/n;->f:Ljava/lang/Object;

    check-cast v1, Lp3/s;

    iget-object v1, v1, Lp3/s;->c:Lo3/r;

    invoke-virtual {v1, v0}, Lo3/r;->m(Ljava/lang/String;)Lo3/q;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, v1, Lo3/q;->b:Lf3/E;

    invoke-virtual {v2}, Lf3/E;->a()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, LQ7/n;->f:Ljava/lang/Object;

    check-cast v2, Lp3/s;

    iget-object v2, v2, Lp3/s;->b:Ln3/a;

    iget-object v3, p0, LQ7/n;->d:Ljava/lang/Object;

    check-cast v3, Lf3/l;

    check-cast v2, Lg3/d;

    invoke-virtual {v2, v0, v3}, Lg3/d;->g(Ljava/lang/String;Lf3/l;)V

    iget-object v0, p0, LQ7/n;->e:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    invoke-static {v1}, LAd/a;->a(Lo3/q;)Lo3/j;

    move-result-object v1

    iget-object v2, p0, LQ7/n;->d:Ljava/lang/Object;

    check-cast v2, Lf3/l;

    invoke-static {v0, v1, v2}, Ln3/b;->a(Landroid/content/Context;Lo3/j;Lf3/l;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, LQ7/n;->e:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    const-string v0, "Calls to setForegroundAsync() must complete before a ListenableWorker signals completion of work by returning an instance of Result."

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    iget-object v0, p0, LQ7/n;->b:Ljava/lang/Object;

    check-cast v0, Lq3/j;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lq3/j;->j(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    iget-object p0, p0, LQ7/n;->b:Ljava/lang/Object;

    check-cast p0, Lq3/j;

    invoke-virtual {p0, v0}, Lq3/j;->k(Ljava/lang/Throwable;)Z

    :goto_2
    return-void

    :pswitch_0
    iget-object v0, p0, LQ7/n;->e:Ljava/lang/Object;

    check-cast v0, LU7/d;

    iget-object v1, p0, LQ7/n;->f:Ljava/lang/Object;

    check-cast v1, LR5/i;

    iget-object v2, p0, LQ7/n;->b:Ljava/lang/Object;

    check-cast v2, LU7/e;

    iget-object v3, p0, LQ7/n;->c:Ljava/lang/Object;

    check-cast v3, LX4/i;

    iget-object v3, v3, LX4/i;->b:Ljava/lang/Object;

    check-cast v3, LR5/p;

    invoke-virtual {v3}, LR5/p;->k()Z

    move-result v4

    iget-object p0, p0, LQ7/n;->d:Ljava/lang/Object;

    check-cast p0, LJ7/c;

    if-eqz v4, :cond_2

    invoke-virtual {p0}, LJ7/c;->g()V

    goto :goto_6

    :cond_2
    iget-object v4, v2, LU7/e;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    :try_start_1
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v2}, LU7/e;->a()V

    const/4 v2, 0x1

    invoke-virtual {v4, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_4

    :cond_3
    :goto_3
    invoke-virtual {v3}, LR5/p;->k()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, LJ7/c;->g()V

    goto :goto_6

    :cond_4
    invoke-virtual {v0}, LU7/d;->call()Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-virtual {v3}, LR5/p;->k()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, LJ7/c;->g()V

    goto :goto_6

    :cond_5
    invoke-virtual {v1, v0}, LR5/i;->b(Ljava/lang/Object;)V

    goto :goto_6

    :goto_4
    new-instance v2, LM7/a;

    const-string v4, "Internal error has occurred when executing ML Kit tasks"

    invoke-direct {v2, v4, v0}, LM7/a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_5
    invoke-virtual {v3}, LR5/p;->k()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p0}, LJ7/c;->g()V

    goto :goto_6

    :cond_6
    invoke-virtual {v1, v0}, LR5/i;->a(Ljava/lang/Exception;)V

    :goto_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
