.class public final Lp3/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lp3/w;

.field public final b:Lo3/j;


# direct methods
.method public constructor <init>(Lp3/w;Lo3/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp3/v;->a:Lp3/w;

    iput-object p2, p0, Lp3/v;->b:Lo3/j;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const-string v0, "Timer with "

    iget-object v1, p0, Lp3/v;->a:Lp3/w;

    iget-object v1, v1, Lp3/w;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lp3/v;->a:Lp3/w;

    iget-object v2, v2, Lp3/w;->b:Ljava/util/HashMap;

    iget-object v3, p0, Lp3/v;->b:Lo3/j;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lp3/v;

    if-eqz v2, :cond_0

    iget-object v0, p0, Lp3/v;->a:Lp3/w;

    iget-object v0, v0, Lp3/w;->c:Ljava/util/HashMap;

    iget-object v2, p0, Lp3/v;->b:Lo3/j;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp3/u;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lp3/v;->b:Lo3/j;

    check-cast v0, Li3/g;

    invoke-static {}, Lf3/u;->d()Lf3/u;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exceeded time limits on execution for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v3, Li3/g;->o:Ljava/lang/String;

    invoke-virtual {v2, v3, p0}, Lf3/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, v0, Li3/g;->h:LJ2/k0;

    new-instance v2, Li3/f;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Li3/f;-><init>(Li3/g;I)V

    invoke-virtual {p0, v2}, LJ2/k0;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-static {}, Lf3/u;->d()Lf3/u;

    move-result-object v2

    const-string v3, "WrkTimerRunnable"

    iget-object p0, p0, Lp3/v;->b:Lo3/j;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " is already marked as complete."

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, v3, p0}, Lf3/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
