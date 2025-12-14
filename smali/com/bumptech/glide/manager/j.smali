.class public final Lcom/bumptech/glide/manager/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field public static final w:LR7/a;


# instance fields
.field public volatile a:Lcom/bumptech/glide/l;

.field public final b:Ljava/util/HashMap;

.field public final p:Ljava/util/HashMap;

.field public final q:Landroid/os/Handler;

.field public final r:LR7/a;

.field public final s:LN/f;

.field public final t:LN/f;

.field public final u:LE5/v;

.field public final v:Lcom/bumptech/glide/manager/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LR7/a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/bumptech/glide/manager/j;->w:LR7/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/manager/j;->b:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/manager/j;->p:Ljava/util/HashMap;

    new-instance v0, LN/f;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LN/A;-><init>(I)V

    iput-object v0, p0, Lcom/bumptech/glide/manager/j;->s:LN/f;

    new-instance v0, LN/f;

    invoke-direct {v0, v1}, LN/A;-><init>(I)V

    iput-object v0, p0, Lcom/bumptech/glide/manager/j;->t:LN/f;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-object v0, Lcom/bumptech/glide/manager/j;->w:LR7/a;

    iput-object v0, p0, Lcom/bumptech/glide/manager/j;->r:LR7/a;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/bumptech/glide/manager/j;->q:Landroid/os/Handler;

    new-instance v1, Lcom/bumptech/glide/manager/g;

    invoke-direct {v1, v0}, Lcom/bumptech/glide/manager/g;-><init>(LR7/a;)V

    iput-object v1, p0, Lcom/bumptech/glide/manager/j;->v:Lcom/bumptech/glide/manager/g;

    sget-object v0, LZ3/w;->e:Ljava/io/File;

    new-instance v0, LE5/v;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, LE5/v;-><init>(I)V

    iput-object v0, p0, Lcom/bumptech/glide/manager/j;->u:LE5/v;

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/app/Activity;
    .locals 1

    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/app/Activity;

    return-object p0

    :cond_0
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_1

    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/bumptech/glide/manager/j;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static b(Landroid/app/FragmentManager;LN/f;)V
    .locals 2

    invoke-virtual {p0}, Landroid/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, LN/A;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/app/Fragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/bumptech/glide/manager/j;->b(Landroid/app/FragmentManager;LN/f;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static c(Ljava/util/List;LN/f;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/f0;

    move-result-object v0

    iget-object v0, v0, Landroidx/fragment/app/f0;->c:Landroidx/fragment/app/o0;

    invoke-virtual {v0}, Landroidx/fragment/app/o0;->f()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0, p1}, Lcom/bumptech/glide/manager/j;->c(Ljava/util/List;LN/f;)V

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public final d(Landroid/app/Activity;Landroid/app/FragmentManager;Landroid/app/Fragment;Z)Lcom/bumptech/glide/l;
    .locals 2

    invoke-virtual {p0, p2, p3}, Lcom/bumptech/glide/manager/j;->h(Landroid/app/FragmentManager;Landroid/app/Fragment;)Lcom/bumptech/glide/manager/i;

    move-result-object p2

    iget-object p3, p2, Lcom/bumptech/glide/manager/i;->d:Lcom/bumptech/glide/l;

    if-nez p3, :cond_1

    invoke-static {p1}, Lcom/bumptech/glide/b;->b(Landroid/content/Context;)Lcom/bumptech/glide/b;

    move-result-object p3

    iget-object p0, p0, Lcom/bumptech/glide/manager/j;->r:LR7/a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/bumptech/glide/l;

    iget-object v0, p2, Lcom/bumptech/glide/manager/i;->a:Lb1/b;

    iget-object v1, p2, Lcom/bumptech/glide/manager/i;->b:LO9/a;

    invoke-direct {p0, p3, v0, v1, p1}, Lcom/bumptech/glide/l;-><init>(Lcom/bumptech/glide/b;Lcom/bumptech/glide/manager/d;Lcom/bumptech/glide/manager/k;Landroid/content/Context;)V

    if-eqz p4, :cond_0

    invoke-virtual {p0}, Lcom/bumptech/glide/l;->onStart()V

    :cond_0
    iput-object p0, p2, Lcom/bumptech/glide/manager/i;->d:Lcom/bumptech/glide/l;

    move-object p3, p0

    :cond_1
    return-object p3
.end method

.method public final e(Landroid/app/Activity;)Lcom/bumptech/glide/l;
    .locals 3

    invoke-static {}, Ll4/l;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/manager/j;->f(Landroid/content/Context;)Lcom/bumptech/glide/l;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p1, Landroidx/fragment/app/J;

    if-eqz v0, :cond_1

    check-cast p1, Landroidx/fragment/app/J;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/manager/j;->g(Landroidx/fragment/app/J;)Lcom/bumptech/glide/l;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/bumptech/glide/manager/j;->u:LE5/v;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {p1}, Lcom/bumptech/glide/manager/j;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v1, 0x1

    :goto_1
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v2, v1}, Lcom/bumptech/glide/manager/j;->d(Landroid/app/Activity;Landroid/app/FragmentManager;Landroid/app/Fragment;Z)Lcom/bumptech/glide/l;

    move-result-object p0

    return-object p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "You cannot start a load for a destroyed activity"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final f(Landroid/content/Context;)Lcom/bumptech/glide/l;
    .locals 4

    if-eqz p1, :cond_5

    sget-object v0, Ll4/l;->a:[C

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_2

    instance-of v0, p1, Landroid/app/Application;

    if-nez v0, :cond_2

    instance-of v0, p1, Landroidx/fragment/app/J;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/fragment/app/J;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/manager/j;->g(Landroidx/fragment/app/J;)Lcom/bumptech/glide/l;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/manager/j;->e(Landroid/app/Activity;)Lcom/bumptech/glide/l;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of v0, p1, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/manager/j;->f(Landroid/content/Context;)Lcom/bumptech/glide/l;

    move-result-object p0

    return-object p0

    :cond_2
    iget-object v0, p0, Lcom/bumptech/glide/manager/j;->a:Lcom/bumptech/glide/l;

    if-nez v0, :cond_4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/manager/j;->a:Lcom/bumptech/glide/l;

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/b;->b(Landroid/content/Context;)Lcom/bumptech/glide/b;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/manager/j;->r:LR7/a;

    new-instance v2, Lu5/d;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    new-instance v3, LF6/e;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/bumptech/glide/l;

    invoke-direct {v1, v0, v2, v3, p1}, Lcom/bumptech/glide/l;-><init>(Lcom/bumptech/glide/b;Lcom/bumptech/glide/manager/d;Lcom/bumptech/glide/manager/k;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/bumptech/glide/manager/j;->a:Lcom/bumptech/glide/l;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_3
    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_4
    :goto_2
    iget-object p0, p0, Lcom/bumptech/glide/manager/j;->a:Lcom/bumptech/glide/l;

    return-object p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "You cannot start a load on a null Context"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final g(Landroidx/fragment/app/J;)Lcom/bumptech/glide/l;
    .locals 7

    invoke-static {}, Ll4/l;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/manager/j;->f(Landroid/content/Context;)Lcom/bumptech/glide/l;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/bumptech/glide/manager/j;->u:LE5/v;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/bumptech/glide/manager/j;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_0
    move v6, v0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :goto_2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/b;->b(Landroid/content/Context;)Lcom/bumptech/glide/b;

    move-result-object v3

    invoke-virtual {p1}, Landroidx/activity/p;->getLifecycle()Landroidx/lifecycle/D;

    move-result-object v4

    invoke-virtual {p1}, Landroidx/fragment/app/J;->getSupportFragmentManager()Landroidx/fragment/app/f0;

    move-result-object v5

    iget-object v1, p0, Lcom/bumptech/glide/manager/j;->v:Lcom/bumptech/glide/manager/g;

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/bumptech/glide/manager/g;->a(Landroid/content/Context;Lcom/bumptech/glide/b;Landroidx/lifecycle/D;Landroidx/fragment/app/f0;Z)Lcom/bumptech/glide/l;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "You cannot start a load for a destroyed activity"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final h(Landroid/app/FragmentManager;Landroid/app/Fragment;)Lcom/bumptech/glide/manager/i;
    .locals 4

    iget-object v0, p0, Lcom/bumptech/glide/manager/j;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/manager/i;

    if-nez v1, :cond_2

    const-string v1, "com.bumptech.glide.manager"

    invoke-virtual {p1, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/manager/i;

    if-nez v2, :cond_1

    new-instance v2, Lcom/bumptech/glide/manager/i;

    invoke-direct {v2}, Lcom/bumptech/glide/manager/i;-><init>()V

    iput-object p2, v2, Lcom/bumptech/glide/manager/i;->f:Landroid/app/Fragment;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {v2, p2}, Lcom/bumptech/glide/manager/i;->a(Landroid/app/Activity;)V

    :cond_0
    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p2

    invoke-virtual {p2, v2, v1}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    iget-object p0, p0, Lcom/bumptech/glide/manager/j;->q:Landroid/os/Handler;

    const/4 p2, 0x1

    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    move-object v1, v2

    :cond_2
    return-object v1
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 14

    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget v3, p1, Landroid/os/Message;->what:I

    iget-object v4, p0, Lcom/bumptech/glide/manager/j;->q:Landroid/os/Handler;

    const-string v5, "We failed to add our Fragment the first time around, trying again..."

    const/4 v6, 0x3

    const-string v7, "com.bumptech.glide.manager"

    const/4 v8, 0x5

    const-string v9, "RMRetriever"

    const/4 v10, 0x0

    if-eq v3, v1, :cond_9

    const/4 v11, 0x2

    if-eq v3, v11, :cond_1

    move v1, v2

    move-object p1, v10

    goto/16 :goto_a

    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroidx/fragment/app/f0;

    iget-object p0, p0, Lcom/bumptech/glide/manager/j;->p:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bumptech/glide/manager/p;

    invoke-virtual {p1, v7}, Landroidx/fragment/app/f0;->D(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v12

    check-cast v12, Lcom/bumptech/glide/manager/p;

    if-ne v12, v3, :cond_2

    goto :goto_3

    :cond_2
    if-nez v0, :cond_6

    iget-boolean v0, p1, Landroidx/fragment/app/f0;->K:Z

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    new-instance p0, Landroidx/fragment/app/a;

    invoke-direct {p0, p1}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/f0;)V

    invoke-virtual {p0, v2, v3, v7, v1}, Landroidx/fragment/app/a;->h(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    if-eqz v12, :cond_4

    invoke-virtual {p0, v12}, Landroidx/fragment/app/a;->j(Landroidx/fragment/app/Fragment;)V

    :cond_4
    iget-boolean v0, p0, Landroidx/fragment/app/a;->g:Z

    if-nez v0, :cond_5

    iput-boolean v2, p0, Landroidx/fragment/app/a;->h:Z

    iget-object v0, p0, Landroidx/fragment/app/a;->r:Landroidx/fragment/app/f0;

    invoke-virtual {v0, p0, v1}, Landroidx/fragment/app/f0;->A(Landroidx/fragment/app/a;Z)V

    invoke-virtual {v4, v11, v1, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    invoke-static {v9, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_f

    invoke-static {v9, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This transaction is already being added to the back stack"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_1
    iget-boolean v0, p1, Landroidx/fragment/app/f0;->K:Z

    if-eqz v0, :cond_7

    invoke-static {v9, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "Parent was destroyed before our Fragment could be added, all requests for the destroyed parent are cancelled"

    invoke-static {v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_7
    const/4 v0, 0x6

    invoke-static {v9, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "ERROR: Tried adding Fragment twice and failed twice, giving up and cancelling all associated requests! This probably means you\'re starting loads in a unit test with an Activity that you haven\'t created and never create. If you\'re using Robolectric, create the Activity as part of your test setup"

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_2
    iget-object v0, v3, Lcom/bumptech/glide/manager/p;->a:Lb1/b;

    invoke-virtual {v0}, Lb1/b;->b()V

    :goto_3
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    :goto_4
    move v2, v1

    goto/16 :goto_a

    :cond_9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/app/FragmentManager;

    iget-object p0, p0, Lcom/bumptech/glide/manager/j;->b:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bumptech/glide/manager/i;

    invoke-virtual {p1, v7}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v11

    check-cast v11, Lcom/bumptech/glide/manager/i;

    if-ne v11, v3, :cond_a

    goto/16 :goto_9

    :cond_a
    if-eqz v11, :cond_c

    iget-object v12, v11, Lcom/bumptech/glide/manager/i;->d:Lcom/bumptech/glide/l;

    if-nez v12, :cond_b

    goto :goto_5

    :cond_b
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "We\'ve added two fragments with requests! Old: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " New: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    :goto_5
    if-nez v0, :cond_10

    invoke-virtual {p1}, Landroid/app/FragmentManager;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_7

    :cond_d
    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0, v3, v7}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p0

    if-eqz v11, :cond_e

    invoke-virtual {p0, v11}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    :cond_e
    invoke-virtual {p0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    invoke-virtual {v4, v1, v1, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    invoke-static {v9, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_f

    invoke-static {v9, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    :goto_6
    move-object p1, v10

    move v13, v2

    move v2, v1

    move v1, v13

    goto :goto_a

    :cond_10
    :goto_7
    invoke-static {v9, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p1}, Landroid/app/FragmentManager;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "Parent was destroyed before our Fragment could be added"

    invoke-static {v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_11
    const-string v0, "Tried adding Fragment twice and failed twice, giving up!"

    invoke-static {v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    :goto_8
    iget-object v0, v3, Lcom/bumptech/glide/manager/i;->a:Lb1/b;

    invoke-virtual {v0}, Lb1/b;->b()V

    :goto_9
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    goto/16 :goto_4

    :goto_a
    invoke-static {v9, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_13

    if-eqz v1, :cond_13

    if-nez v10, :cond_13

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Failed to remove expected request manager fragment, manager: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v9, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    return v2
.end method
