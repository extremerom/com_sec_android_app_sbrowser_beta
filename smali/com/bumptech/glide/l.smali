.class public final Lcom/bumptech/glide/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ComponentCallbacks2;
.implements Lcom/bumptech/glide/manager/e;


# static fields
.field public static final k:Lh4/h;


# instance fields
.field public final a:Lcom/bumptech/glide/b;

.field public final b:Landroid/content/Context;

.field public final c:Lcom/bumptech/glide/manager/d;

.field public final d:Lcom/bumptech/glide/manager/o;

.field public final e:Lcom/bumptech/glide/manager/k;

.field public final f:Lcom/bumptech/glide/manager/q;

.field public final g:LH6/p;

.field public final h:Lcom/bumptech/glide/manager/b;

.field public final i:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final j:Lh4/h;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lh4/h;

    invoke-direct {v0}, Lh4/a;-><init>()V

    const-class v1, Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lh4/a;->c(Ljava/lang/Class;)Lh4/a;

    move-result-object v0

    check-cast v0, Lh4/h;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lh4/a;->n:Z

    sput-object v0, Lcom/bumptech/glide/l;->k:Lh4/h;

    new-instance v0, Lh4/h;

    invoke-direct {v0}, Lh4/a;-><init>()V

    const-class v2, Ld4/b;

    invoke-virtual {v0, v2}, Lh4/a;->c(Ljava/lang/Class;)Lh4/a;

    move-result-object v0

    check-cast v0, Lh4/h;

    iput-boolean v1, v0, Lh4/a;->n:Z

    sget-object v0, LS3/n;->c:LS3/n;

    new-instance v1, Lh4/h;

    invoke-direct {v1}, Lh4/a;-><init>()V

    invoke-virtual {v1, v0}, Lh4/a;->d(LS3/n;)Lh4/a;

    move-result-object v0

    check-cast v0, Lh4/h;

    sget-object v1, Lcom/bumptech/glide/f;->LOW:Lcom/bumptech/glide/f;

    invoke-virtual {v0, v1}, Lh4/a;->j(Lcom/bumptech/glide/f;)Lh4/a;

    move-result-object v0

    check-cast v0, Lh4/h;

    invoke-virtual {v0}, Lh4/a;->p()Lh4/a;

    move-result-object v0

    check-cast v0, Lh4/h;

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/b;Lcom/bumptech/glide/manager/d;Lcom/bumptech/glide/manager/k;Landroid/content/Context;)V
    .locals 5

    new-instance v0, Lcom/bumptech/glide/manager/o;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/bumptech/glide/manager/o;-><init>(I)V

    iget-object v1, p1, Lcom/bumptech/glide/b;->g:Lz7/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Lcom/bumptech/glide/manager/q;

    invoke-direct {v2}, Lcom/bumptech/glide/manager/q;-><init>()V

    iput-object v2, p0, Lcom/bumptech/glide/l;->f:Lcom/bumptech/glide/manager/q;

    new-instance v2, LH6/p;

    const/16 v3, 0xc

    invoke-direct {v2, v3, p0}, LH6/p;-><init>(ILjava/lang/Object;)V

    iput-object v2, p0, Lcom/bumptech/glide/l;->g:LH6/p;

    iput-object p1, p0, Lcom/bumptech/glide/l;->a:Lcom/bumptech/glide/b;

    iput-object p2, p0, Lcom/bumptech/glide/l;->c:Lcom/bumptech/glide/manager/d;

    iput-object p3, p0, Lcom/bumptech/glide/l;->e:Lcom/bumptech/glide/manager/k;

    iput-object v0, p0, Lcom/bumptech/glide/l;->d:Lcom/bumptech/glide/manager/o;

    iput-object p4, p0, Lcom/bumptech/glide/l;->b:Landroid/content/Context;

    invoke-virtual {p4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    new-instance p4, Lcom/bumptech/glide/k;

    invoke-direct {p4, p0, v0}, Lcom/bumptech/glide/k;-><init>(Lcom/bumptech/glide/l;Lcom/bumptech/glide/manager/o;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p3, v0}, LV0/a;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "ConnectivityMonitor"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz v0, :cond_1

    const-string v4, "ACCESS_NETWORK_STATE permission granted, registering connectivity monitor"

    goto :goto_1

    :cond_1
    const-string v4, "ACCESS_NETWORK_STATE permission missing, cannot register connectivity monitor"

    :goto_1
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eqz v0, :cond_3

    new-instance v0, Lcom/bumptech/glide/manager/c;

    invoke-direct {v0, p3, p4}, Lcom/bumptech/glide/manager/c;-><init>(Landroid/content/Context;Lcom/bumptech/glide/k;)V

    goto :goto_2

    :cond_3
    new-instance v0, Lcom/bumptech/glide/manager/h;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    :goto_2
    iput-object v0, p0, Lcom/bumptech/glide/l;->h:Lcom/bumptech/glide/manager/b;

    iget-object p3, p1, Lcom/bumptech/glide/b;->h:Ljava/util/ArrayList;

    monitor-enter p3

    :try_start_0
    iget-object p4, p1, Lcom/bumptech/glide/b;->h:Ljava/util/ArrayList;

    invoke-virtual {p4, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_8

    iget-object p4, p1, Lcom/bumptech/glide/b;->h:Ljava/util/ArrayList;

    invoke-virtual {p4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    invoke-static {}, Ll4/l;->i()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-static {}, Ll4/l;->f()Landroid/os/Handler;

    move-result-object p3

    invoke-virtual {p3, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    :cond_4
    invoke-interface {p2, p0}, Lcom/bumptech/glide/manager/d;->f(Lcom/bumptech/glide/manager/e;)V

    :goto_3
    invoke-interface {p2, v0}, Lcom/bumptech/glide/manager/d;->f(Lcom/bumptech/glide/manager/e;)V

    new-instance p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object p3, p1, Lcom/bumptech/glide/b;->d:Lcom/bumptech/glide/e;

    iget-object p3, p3, Lcom/bumptech/glide/e;->e:Ljava/util/List;

    invoke-direct {p2, p3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p2, p0, Lcom/bumptech/glide/l;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object p1, p1, Lcom/bumptech/glide/b;->d:Lcom/bumptech/glide/e;

    monitor-enter p1

    :try_start_1
    iget-object p2, p1, Lcom/bumptech/glide/e;->j:Lh4/h;

    if-nez p2, :cond_5

    iget-object p2, p1, Lcom/bumptech/glide/e;->d:LO7/a;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lh4/h;

    invoke-direct {p2}, Lh4/a;-><init>()V

    iput-boolean v1, p2, Lh4/a;->n:Z

    iput-object p2, p1, Lcom/bumptech/glide/e;->j:Lh4/h;

    goto :goto_4

    :catchall_0
    move-exception p0

    goto :goto_6

    :cond_5
    :goto_4
    iget-object p2, p1, Lcom/bumptech/glide/e;->j:Lh4/h;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p1

    monitor-enter p0

    :try_start_2
    invoke-virtual {p2}, Lh4/a;->b()Lh4/a;

    move-result-object p1

    check-cast p1, Lh4/h;

    iget-boolean p2, p1, Lh4/a;->n:Z

    if-eqz p2, :cond_7

    iget-boolean p2, p1, Lh4/a;->p:Z

    if-eqz p2, :cond_6

    goto :goto_5

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "You cannot auto lock an already locked options object, try clone() first"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    :goto_5
    iput-boolean v1, p1, Lh4/a;->p:Z

    iput-boolean v1, p1, Lh4/a;->n:Z

    iput-object p1, p0, Lcom/bumptech/glide/l;->j:Lh4/h;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :goto_6
    :try_start_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0

    :catchall_2
    move-exception p0

    goto :goto_7

    :cond_8
    :try_start_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot register already registered manager"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_7
    monitor-exit p3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p0
.end method


# virtual methods
.method public final a()Lcom/bumptech/glide/j;
    .locals 4

    new-instance v0, Lcom/bumptech/glide/j;

    iget-object v1, p0, Lcom/bumptech/glide/l;->a:Lcom/bumptech/glide/b;

    iget-object v2, p0, Lcom/bumptech/glide/l;->b:Landroid/content/Context;

    const-class v3, Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, p0, v3, v2}, Lcom/bumptech/glide/j;-><init>(Lcom/bumptech/glide/b;Lcom/bumptech/glide/l;Ljava/lang/Class;Landroid/content/Context;)V

    sget-object p0, Lcom/bumptech/glide/l;->k:Lh4/h;

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/j;->w(Lh4/a;)Lcom/bumptech/glide/j;

    move-result-object p0

    return-object p0
.end method

.method public final b(Li4/d;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/l;->f(Li4/d;)Z

    move-result v0

    invoke-interface {p1}, Li4/d;->getRequest()Lh4/c;

    move-result-object v1

    if-nez v0, :cond_3

    iget-object p0, p0, Lcom/bumptech/glide/l;->a:Lcom/bumptech/glide/b;

    iget-object v0, p0, Lcom/bumptech/glide/b;->h:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/bumptech/glide/b;->h:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/l;

    invoke-virtual {v2, p1}, Lcom/bumptech/glide/l;->f(Li4/d;)Z

    move-result v2

    if-eqz v2, :cond_1

    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    const/4 p0, 0x0

    invoke-interface {p1, p0}, Li4/d;->setRequest(Lh4/c;)V

    invoke-interface {v1}, Lh4/c;->clear()V

    goto :goto_1

    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_3
    :goto_1
    return-void
.end method

.method public final c(Ljava/lang/String;)Lcom/bumptech/glide/j;
    .locals 4

    new-instance v0, Lcom/bumptech/glide/j;

    iget-object v1, p0, Lcom/bumptech/glide/l;->a:Lcom/bumptech/glide/b;

    iget-object v2, p0, Lcom/bumptech/glide/l;->b:Landroid/content/Context;

    const-class v3, Landroid/graphics/drawable/Drawable;

    invoke-direct {v0, v1, p0, v3, v2}, Lcom/bumptech/glide/j;-><init>(Lcom/bumptech/glide/b;Lcom/bumptech/glide/l;Ljava/lang/Class;Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/j;->D(Ljava/lang/Object;)Lcom/bumptech/glide/j;

    move-result-object p0

    return-object p0
.end method

.method public final declared-synchronized d()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/l;->d:Lcom/bumptech/glide/manager/o;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/bumptech/glide/manager/o;->b:Z

    iget-object v1, v0, Lcom/bumptech/glide/manager/o;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    invoke-static {v1}, Ll4/l;->e(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lh4/c;

    invoke-interface {v2}, Lh4/c;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Lh4/c;->pause()V

    iget-object v3, v0, Lcom/bumptech/glide/manager/o;->d:Ljava/lang/Object;

    check-cast v3, Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized e()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/l;->d:Lcom/bumptech/glide/manager/o;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/bumptech/glide/manager/o;->b:Z

    iget-object v1, v0, Lcom/bumptech/glide/manager/o;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    invoke-static {v1}, Ll4/l;->e(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lh4/c;

    invoke-interface {v2}, Lh4/c;->g()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v2}, Lh4/c;->isRunning()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v2}, Lh4/c;->i()V

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lcom/bumptech/glide/manager/o;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized f(Li4/d;)Z
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Li4/d;->getRequest()Lh4/c;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/bumptech/glide/l;->d:Lcom/bumptech/glide/manager/o;

    invoke-virtual {v2, v0}, Lcom/bumptech/glide/manager/o;->c(Lh4/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bumptech/glide/l;->f:Lcom/bumptech/glide/manager/q;

    iget-object v0, v0, Lcom/bumptech/glide/manager/q;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Li4/d;->setRequest(Lh4/c;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized onDestroy()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/l;->f:Lcom/bumptech/glide/manager/q;

    invoke-virtual {v0}, Lcom/bumptech/glide/manager/q;->onDestroy()V

    iget-object v0, p0, Lcom/bumptech/glide/l;->f:Lcom/bumptech/glide/manager/q;

    iget-object v0, v0, Lcom/bumptech/glide/manager/q;->a:Ljava/util/Set;

    invoke-static {v0}, Ll4/l;->e(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li4/d;

    invoke-virtual {p0, v1}, Lcom/bumptech/glide/l;->b(Li4/d;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/l;->f:Lcom/bumptech/glide/manager/q;

    iget-object v0, v0, Lcom/bumptech/glide/manager/q;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/bumptech/glide/l;->d:Lcom/bumptech/glide/manager/o;

    iget-object v1, v0, Lcom/bumptech/glide/manager/o;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    invoke-static {v1}, Ll4/l;->e(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lh4/c;

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/manager/o;->c(Lh4/c;)Z

    goto :goto_1

    :cond_1
    iget-object v0, v0, Lcom/bumptech/glide/manager/o;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    iget-object v0, p0, Lcom/bumptech/glide/l;->c:Lcom/bumptech/glide/manager/d;

    invoke-interface {v0, p0}, Lcom/bumptech/glide/manager/d;->d(Lcom/bumptech/glide/manager/e;)V

    iget-object v0, p0, Lcom/bumptech/glide/l;->c:Lcom/bumptech/glide/manager/d;

    iget-object v1, p0, Lcom/bumptech/glide/l;->h:Lcom/bumptech/glide/manager/b;

    invoke-interface {v0, v1}, Lcom/bumptech/glide/manager/d;->d(Lcom/bumptech/glide/manager/e;)V

    iget-object v0, p0, Lcom/bumptech/glide/l;->g:LH6/p;

    invoke-static {}, Ll4/l;->f()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/bumptech/glide/l;->a:Lcom/bumptech/glide/b;

    iget-object v1, v0, Lcom/bumptech/glide/b;->h:Ljava/util/ArrayList;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, v0, Lcom/bumptech/glide/b;->h:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v0, v0, Lcom/bumptech/glide/b;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    goto :goto_2

    :cond_2
    :try_start_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot unregister not yet registered manager"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    throw v0

    :goto_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public final onLowMemory()V
    .locals 0

    return-void
.end method

.method public final declared-synchronized onStart()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/bumptech/glide/l;->e()V

    iget-object v0, p0, Lcom/bumptech/glide/l;->f:Lcom/bumptech/glide/manager/q;

    invoke-virtual {v0}, Lcom/bumptech/glide/manager/q;->onStart()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized onStop()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/bumptech/glide/l;->d()V

    iget-object v0, p0, Lcom/bumptech/glide/l;->f:Lcom/bumptech/glide/manager/q;

    invoke-virtual {v0}, Lcom/bumptech/glide/manager/q;->onStop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final onTrimMemory(I)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized toString()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{tracker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bumptech/glide/l;->d:Lcom/bumptech/glide/manager/o;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", treeNode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bumptech/glide/l;->e:Lcom/bumptech/glide/manager/k;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
