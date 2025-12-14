.class public final Lg3/n;
.super LG5/c3;
.source "SourceFile"


# static fields
.field public static k:Lg3/n;

.field public static l:Lg3/n;

.field public static final m:Ljava/lang/Object;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lf3/c;

.field public final c:Landroidx/work/impl/WorkDatabase;

.field public final d:Lr3/a;

.field public final e:Ljava/util/List;

.field public final f:Lg3/d;

.field public final g:LP7/c;

.field public h:Z

.field public i:Landroid/content/BroadcastReceiver$PendingResult;

.field public final j:Lm3/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "WorkManagerImpl"

    invoke-static {v0}, Lf3/u;->f(Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lg3/n;->k:Lg3/n;

    sput-object v0, Lg3/n;->l:Lg3/n;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lg3/n;->m:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lf3/c;Lr3/a;Landroidx/work/impl/WorkDatabase;Ljava/util/List;Lg3/d;Lm3/j;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lg3/n;->h:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lg3/m;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lf3/u;

    iget v1, p2, Lf3/c;->h:I

    invoke-direct {v0, v1}, Lf3/u;-><init>(I)V

    sget-object v1, Lf3/u;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sput-object v0, Lf3/u;->c:Lf3/u;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object p1, p0, Lg3/n;->a:Landroid/content/Context;

    iput-object p3, p0, Lg3/n;->d:Lr3/a;

    iput-object p4, p0, Lg3/n;->c:Landroidx/work/impl/WorkDatabase;

    iput-object p6, p0, Lg3/n;->f:Lg3/d;

    iput-object p7, p0, Lg3/n;->j:Lm3/j;

    iput-object p2, p0, Lg3/n;->b:Lf3/c;

    iput-object p5, p0, Lg3/n;->e:Ljava/util/List;

    new-instance p7, LP7/c;

    const/16 v0, 0x12

    invoke-direct {p7, v0, p4}, LP7/c;-><init>(ILjava/lang/Object;)V

    iput-object p7, p0, Lg3/n;->g:LP7/c;

    iget-object p7, p3, Lr3/a;->a:LJ2/k0;

    sget-object v0, Lg3/h;->a:Ljava/lang/String;

    new-instance v0, Lg3/g;

    invoke-direct {v0, p7, p5, p2, p4}, Lg3/g;-><init>(Ljava/util/concurrent/Executor;Ljava/util/List;Lf3/c;Landroidx/work/impl/WorkDatabase;)V

    invoke-virtual {p6, v0}, Lg3/d;->a(Lg3/b;)V

    new-instance p2, Lp3/g;

    invoke-direct {p2, p1, p0}, Lp3/g;-><init>(Landroid/content/Context;Lg3/n;)V

    invoke-virtual {p3, p2}, Lr3/a;->a(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot initialize WorkManager in direct boot mode"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static g(Landroid/content/Context;)Lg3/n;
    .locals 2

    sget-object v0, Lg3/n;->m:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v1, Lg3/n;->k:Lg3/n;

    if-eqz v1, :cond_0

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    sget-object v1, Lg3/n;->l:Lg3/n;

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-nez v1, :cond_2

    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    instance-of v1, p0, Lf3/b;

    if-eqz v1, :cond_1

    move-object v1, p0

    check-cast v1, Lf3/b;

    invoke-interface {v1}, Lf3/b;->getWorkManagerConfiguration()Lf3/c;

    move-result-object v1

    invoke-static {p0, v1}, Lg3/n;->h(Landroid/content/Context;Lf3/c;)V

    invoke-static {p0}, Lg3/n;->g(Landroid/content/Context;)Lg3/n;

    move-result-object v1

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_3

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "WorkManager is not initialized properly.  You have explicitly disabled WorkManagerInitializer in your manifest, have not manually called WorkManager#initialize at this point, and your Application does not implement Configuration.Provider."

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object v1

    :goto_2
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0

    :goto_3
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method

.method public static h(Landroid/content/Context;Lf3/c;)V
    .locals 3

    sget-object v0, Lg3/n;->m:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lg3/n;->k:Lg3/n;

    if-eqz v1, :cond_1

    sget-object v2, Lg3/n;->l:Lg3/n;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "WorkManager is already initialized.  Did you try to initialize it manually without disabling WorkManagerInitializer? See WorkManager#initialize(Context, Configuration) or the class level Javadoc for more information."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    if-nez v1, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sget-object v1, Lg3/n;->l:Lg3/n;

    if-nez v1, :cond_2

    invoke-static {p0, p1}, Lg3/p;->a(Landroid/content/Context;Lf3/c;)Lg3/n;

    move-result-object p0

    sput-object p0, Lg3/n;->l:Lg3/n;

    :cond_2
    sget-object p0, Lg3/n;->l:Lg3/n;

    sput-object p0, Lg3/n;->k:Lg3/n;

    :cond_3
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public final i()V
    .locals 2

    sget-object v0, Lg3/n;->m:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lg3/n;->h:Z

    iget-object v1, p0, Lg3/n;->i:Landroid/content/BroadcastReceiver$PendingResult;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    const/4 v1, 0x0

    iput-object v1, p0, Lg3/n;->i:Landroid/content/BroadcastReceiver$PendingResult;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final j()V
    .locals 4

    sget-object v0, Lj3/c;->f:Ljava/lang/String;

    iget-object v0, p0, Lg3/n;->a:Landroid/content/Context;

    const-string v1, "jobscheduler"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobScheduler;

    if-eqz v1, :cond_0

    invoke-static {v0, v1}, Lj3/c;->e(Landroid/content/Context;Landroid/app/job/JobScheduler;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getId()I

    move-result v2

    invoke-static {v1, v2}, Lj3/c;->c(Landroid/app/job/JobScheduler;I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lg3/n;->c:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->h()Lo3/r;

    move-result-object v1

    iget-object v2, v1, Lo3/r;->a:Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v2}, LJ2/U;->assertNotSuspendingTransaction()V

    iget-object v1, v1, Lo3/r;->n:Lo3/h;

    invoke-virtual {v1}, LJ2/i0;->a()LT2/h;

    move-result-object v3

    invoke-virtual {v2}, LJ2/U;->beginTransaction()V

    :try_start_0
    invoke-interface {v3}, LT2/h;->u()I

    invoke-virtual {v2}, LJ2/U;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, LJ2/U;->endTransaction()V

    invoke-virtual {v1, v3}, LJ2/i0;->r(LT2/h;)V

    iget-object v1, p0, Lg3/n;->b:Lf3/c;

    iget-object p0, p0, Lg3/n;->e:Ljava/util/List;

    invoke-static {v1, v0, p0}, Lg3/h;->b(Lf3/c;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v2}, LJ2/U;->endTransaction()V

    invoke-virtual {v1, v3}, LJ2/i0;->r(LT2/h;)V

    throw p0
.end method
