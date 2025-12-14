.class public final Lz7/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz7/e;
.implements Lz7/g;


# instance fields
.field public final a:Lcom/google/firebase/components/g;

.field public final b:Landroid/content/Context;

.field public final c:LC7/a;

.field public final d:Ljava/util/Set;

.field public final e:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;LC7/a;Ljava/util/concurrent/Executor;)V
    .locals 2

    new-instance v0, Lcom/google/firebase/components/g;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p1, p2}, Lcom/google/firebase/components/g;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lz7/c;->a:Lcom/google/firebase/components/g;

    iput-object p3, p0, Lz7/c;->d:Ljava/util/Set;

    iput-object p5, p0, Lz7/c;->e:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Lz7/c;->c:LC7/a;

    iput-object p1, p0, Lz7/c;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()Lz7/f;
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lz7/c;->a:Lcom/google/firebase/components/g;

    invoke-virtual {v2}, Lcom/google/firebase/components/g;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lz7/h;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v2, v0, v1}, Lz7/h;->g(J)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    monitor-exit v2

    if-eqz v0, :cond_0

    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lz7/h;->d(J)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v2, Lz7/h;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "last-used-date"

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual {v2, v0}, Lz7/h;->f(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit v2

    sget-object v0, Lz7/f;->GLOBAL:Lz7/f;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0

    :cond_0
    sget-object v0, Lz7/f;->NONE:Lz7/f;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_2
    move-exception v0

    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v0

    :goto_0
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw v0
.end method

.method public final b()LR5/p;
    .locals 2

    iget-object v0, p0, Lz7/c;->b:Landroid/content/Context;

    invoke-static {v0}, LG5/o;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, ""

    invoke-static {p0}, LG5/G;->f(Ljava/lang/Object;)LR5/p;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lz7/b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lz7/b;-><init>(Lz7/c;I)V

    iget-object p0, p0, Lz7/c;->e:Ljava/util/concurrent/Executor;

    invoke-static {p0, v0}, LG5/G;->d(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)LR5/p;

    move-result-object p0

    return-object p0
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lz7/c;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    invoke-static {v1}, LG5/G;->f(Ljava/lang/Object;)LR5/p;

    return-void

    :cond_0
    iget-object v0, p0, Lz7/c;->b:Landroid/content/Context;

    invoke-static {v0}, LG5/o;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v1}, LG5/G;->f(Ljava/lang/Object;)LR5/p;

    return-void

    :cond_1
    new-instance v0, Lz7/b;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lz7/b;-><init>(Lz7/c;I)V

    iget-object p0, p0, Lz7/c;->e:Ljava/util/concurrent/Executor;

    invoke-static {p0, v0}, LG5/G;->d(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)LR5/p;

    return-void
.end method
