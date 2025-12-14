.class public final Li3/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk3/e;
.implements Lp3/u;


# static fields
.field public static final o:Ljava/lang/String;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:I

.field public final c:Lo3/j;

.field public final d:Li3/i;

.field public final e:LP7/c;

.field public final f:Ljava/lang/Object;

.field public g:I

.field public final h:LJ2/k0;

.field public final i:LH4/s;

.field public j:Landroid/os/PowerManager$WakeLock;

.field public k:Z

.field public final l:Lg3/i;

.field public final m:LNc/x;

.field public volatile n:LNc/m0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "DelayMetCommandHandler"

    invoke-static {v0}, Lf3/u;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Li3/g;->o:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILi3/i;Lg3/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li3/g;->a:Landroid/content/Context;

    iput p2, p0, Li3/g;->b:I

    iput-object p3, p0, Li3/g;->d:Li3/i;

    iget-object p1, p4, Lg3/i;->a:Lo3/j;

    iput-object p1, p0, Li3/g;->c:Lo3/j;

    iput-object p4, p0, Li3/g;->l:Lg3/i;

    iget-object p1, p3, Li3/i;->e:Lg3/n;

    iget-object p1, p1, Lg3/n;->j:Lm3/j;

    iget-object p2, p3, Li3/i;->b:Lr3/a;

    iget-object p3, p2, Lr3/a;->a:LJ2/k0;

    iput-object p3, p0, Li3/g;->h:LJ2/k0;

    iget-object p3, p2, Lr3/a;->d:LH4/s;

    iput-object p3, p0, Li3/g;->i:LH4/s;

    iget-object p2, p2, Lr3/a;->b:LNc/x;

    iput-object p2, p0, Li3/g;->m:LNc/x;

    new-instance p2, LP7/c;

    invoke-direct {p2, p1}, LP7/c;-><init>(Lm3/j;)V

    iput-object p2, p0, Li3/g;->e:LP7/c;

    const/4 p1, 0x0

    iput-boolean p1, p0, Li3/g;->k:Z

    iput p1, p0, Li3/g;->g:I

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li3/g;->f:Ljava/lang/Object;

    return-void
.end method

.method public static a(Li3/g;)V
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Li3/g;->c:Lo3/j;

    iget v2, v0, Li3/g;->g:I

    iget-object v3, v1, Lo3/j;->a:Ljava/lang/String;

    sget-object v4, Li3/g;->o:Ljava/lang/String;

    const/4 v5, 0x2

    if-ge v2, v5, :cond_1

    iput v5, v0, Li3/g;->g:I

    invoke-static {}, Lf3/u;->d()Lf3/u;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Stopping work for WorkSpec "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lf3/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v9, Landroid/content/Intent;

    iget-object v2, v0, Li3/g;->a:Landroid/content/Context;

    const-class v5, Landroidx/work/impl/background/systemalarm/SystemAlarmService;

    invoke-direct {v9, v2, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v6, "ACTION_STOP_WORK"

    invoke-virtual {v9, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v9, v1}, Li3/c;->d(Landroid/content/Intent;Lo3/j;)V

    new-instance v12, LH/e;

    iget-object v15, v0, Li3/g;->d:Li3/i;

    iget v14, v0, Li3/g;->b:I

    const/4 v10, 0x6

    const/4 v11, 0x0

    move-object v6, v12

    move v7, v14

    move-object v8, v15

    invoke-direct/range {v6 .. v11}, LH/e;-><init>(ILjava/lang/Object;Ljava/lang/Object;IZ)V

    iget-object v0, v0, Li3/g;->i:LH4/s;

    invoke-virtual {v0, v12}, LH4/s;->execute(Ljava/lang/Runnable;)V

    iget-object v6, v15, Li3/i;->d:Lg3/d;

    invoke-virtual {v6, v3}, Lg3/d;->e(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {}, Lf3/u;->d()Lf3/u;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "WorkSpec "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " needs to be rescheduled"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v4, v3}, Lf3/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v2, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "ACTION_SCHEDULE_WORK"

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v3, v1}, Li3/c;->d(Landroid/content/Intent;Lo3/j;)V

    new-instance v1, LH/e;

    const/16 v17, 0x6

    const/16 v18, 0x0

    move-object v13, v1

    move-object/from16 v16, v3

    invoke-direct/range {v13 .. v18}, LH/e;-><init>(ILjava/lang/Object;Ljava/lang/Object;IZ)V

    invoke-virtual {v0, v1}, LH4/s;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lf3/u;->d()Lf3/u;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Processor does not have WorkSpec "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". No need to reschedule"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lf3/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lf3/u;->d()Lf3/u;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Already stopped work for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lf3/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static b(Li3/g;)V
    .locals 7

    iget v0, p0, Li3/g;->g:I

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput v0, p0, Li3/g;->g:I

    invoke-static {}, Lf3/u;->d()Lf3/u;

    move-result-object v0

    sget-object v1, Li3/g;->o:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onAllConstraintsMet for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Li3/g;->c:Lo3/j;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lf3/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Li3/g;->d:Li3/i;

    iget-object v0, v0, Li3/i;->d:Lg3/d;

    iget-object v1, p0, Li3/g;->l:Lg3/i;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lg3/d;->h(Lg3/i;LZ3/x;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Li3/g;->d:Li3/i;

    iget-object v0, v0, Li3/i;->c:Lp3/w;

    iget-object v1, p0, Li3/g;->c:Lo3/j;

    const-string v2, "Starting timer for "

    iget-object v3, v0, Lp3/w;->d:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Lf3/u;->d()Lf3/u;

    move-result-object v4

    sget-object v5, Lp3/w;->e:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Lf3/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lp3/w;->a(Lo3/j;)V

    new-instance v2, Lp3/v;

    invoke-direct {v2, v0, v1}, Lp3/v;-><init>(Lp3/w;Lo3/j;)V

    iget-object v4, v0, Lp3/w;->b:Ljava/util/HashMap;

    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v0, Lp3/w;->c:Ljava/util/HashMap;

    invoke-virtual {v4, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, v0, Lp3/w;->a:LX4/i;

    iget-object p0, p0, LX4/i;->b:Ljava/lang/Object;

    check-cast p0, Landroid/os/Handler;

    const-wide/32 v0, 0x927c0

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    invoke-virtual {p0}, Li3/g;->c()V

    goto :goto_0

    :cond_1
    invoke-static {}, Lf3/u;->d()Lf3/u;

    move-result-object v0

    sget-object v1, Li3/g;->o:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Already started work for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Li3/g;->c:Lo3/j;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lf3/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final c()V
    .locals 5

    const-string v0, "Releasing wakelock "

    iget-object v1, p0, Li3/g;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Li3/g;->n:LNc/m0;

    if-eqz v2, :cond_0

    iget-object v2, p0, Li3/g;->n:LNc/m0;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, LNc/t0;->a(Ljava/util/concurrent/CancellationException;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v2, p0, Li3/g;->d:Li3/i;

    iget-object v2, v2, Li3/i;->c:Lp3/w;

    iget-object v3, p0, Li3/g;->c:Lo3/j;

    invoke-virtual {v2, v3}, Lp3/w;->a(Lo3/j;)V

    iget-object v2, p0, Li3/g;->j:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lf3/u;->d()Lf3/u;

    move-result-object v2

    sget-object v3, Li3/g;->o:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Li3/g;->j:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "for WorkSpec "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Li3/g;->c:Lo3/j;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lf3/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Li3/g;->j:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_1
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final d()V
    .locals 5

    iget-object v0, p0, Li3/g;->c:Lo3/j;

    iget-object v0, v0, Lo3/j;->a:Ljava/lang/String;

    iget-object v1, p0, Li3/g;->a:Landroid/content/Context;

    const-string v2, " ("

    invoke-static {v0, v2}, Lt/b;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Li3/g;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lp3/p;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Li3/g;->j:Landroid/os/PowerManager$WakeLock;

    invoke-static {}, Lf3/u;->d()Lf3/u;

    move-result-object v1

    sget-object v2, Li3/g;->o:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Acquiring wakelock "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Li3/g;->j:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "for WorkSpec "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lf3/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Li3/g;->j:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v1, p0, Li3/g;->d:Li3/i;

    iget-object v1, v1, Li3/i;->e:Lg3/n;

    iget-object v1, v1, Lg3/n;->c:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->h()Lo3/r;

    move-result-object v1

    invoke-virtual {v1, v0}, Lo3/r;->m(Ljava/lang/String;)Lo3/q;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v0, p0, Li3/g;->h:LJ2/k0;

    new-instance v1, Li3/f;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Li3/f;-><init>(Li3/g;I)V

    invoke-virtual {v0, v1}, LJ2/k0;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    invoke-virtual {v1}, Lo3/q;->c()Z

    move-result v3

    iput-boolean v3, p0, Li3/g;->k:Z

    if-nez v3, :cond_1

    invoke-static {}, Lf3/u;->d()Lf3/u;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "No constraints for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lf3/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Li3/g;->h:LJ2/k0;

    new-instance v1, Li3/f;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Li3/f;-><init>(Li3/g;I)V

    invoke-virtual {v0, v1}, LJ2/k0;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Li3/g;->e:LP7/c;

    iget-object v2, p0, Li3/g;->m:LNc/x;

    invoke-static {v0, v1, v2, p0}, Lk3/h;->a(LP7/c;Lo3/q;LNc/x;Lk3/e;)LNc/m0;

    move-result-object v0

    iput-object v0, p0, Li3/g;->n:LNc/m0;

    :goto_0
    return-void
.end method

.method public final e(Lo3/q;Lk3/c;)V
    .locals 1

    instance-of p1, p2, Lk3/a;

    iget-object p2, p0, Li3/g;->h:LJ2/k0;

    if-eqz p1, :cond_0

    new-instance p1, Li3/f;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Li3/f;-><init>(Li3/g;I)V

    invoke-virtual {p2, p1}, LJ2/k0;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    new-instance p1, Li3/f;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Li3/f;-><init>(Li3/g;I)V

    invoke-virtual {p2, p1}, LJ2/k0;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public final f(Z)V
    .locals 12

    invoke-static {}, Lf3/u;->d()Lf3/u;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onExecuted "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Li3/g;->c:Lo3/j;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Li3/g;->o:Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Lf3/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Li3/g;->c()V

    const-class v0, Landroidx/work/impl/background/systemalarm/SystemAlarmService;

    iget v1, p0, Li3/g;->b:I

    iget-object v9, p0, Li3/g;->d:Li3/i;

    iget-object v10, p0, Li3/g;->i:LH4/s;

    iget-object v11, p0, Li3/g;->a:Landroid/content/Context;

    if-eqz p1, :cond_0

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v11, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p1, "ACTION_SCHEDULE_WORK"

    invoke-virtual {v6, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v6, v2}, Li3/c;->d(Landroid/content/Intent;Lo3/j;)V

    new-instance p1, LH/e;

    const/4 v7, 0x6

    const/4 v8, 0x0

    move-object v3, p1

    move v4, v1

    move-object v5, v9

    invoke-direct/range {v3 .. v8}, LH/e;-><init>(ILjava/lang/Object;Ljava/lang/Object;IZ)V

    invoke-virtual {v10, p1}, LH4/s;->execute(Ljava/lang/Runnable;)V

    :cond_0
    iget-boolean p0, p0, Li3/g;->k:Z

    if-eqz p0, :cond_1

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v11, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "ACTION_CONSTRAINTS_CHANGED"

    invoke-virtual {v6, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance p0, LH/e;

    const/4 v7, 0x6

    const/4 v8, 0x0

    move-object v3, p0

    move v4, v1

    move-object v5, v9

    invoke-direct/range {v3 .. v8}, LH/e;-><init>(ILjava/lang/Object;Ljava/lang/Object;IZ)V

    invoke-virtual {v10, p0}, LH4/s;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
