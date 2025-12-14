.class public final Lcom/bumptech/glide/j;
.super Lh4/a;
.source "SourceFile"


# instance fields
.field public A:Lcom/bumptech/glide/j;

.field public final B:Z

.field public C:Z

.field public D:Z

.field public final s:Landroid/content/Context;

.field public final t:Lcom/bumptech/glide/l;

.field public final u:Ljava/lang/Class;

.field public final v:Lcom/bumptech/glide/e;

.field public w:Lcom/bumptech/glide/a;

.field public x:Ljava/lang/Object;

.field public y:Ljava/util/ArrayList;

.field public z:Lcom/bumptech/glide/j;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lh4/h;

    invoke-direct {v0}, Lh4/a;-><init>()V

    sget-object v1, LS3/n;->c:LS3/n;

    invoke-virtual {v0, v1}, Lh4/a;->d(LS3/n;)Lh4/a;

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

.method public constructor <init>(Lcom/bumptech/glide/b;Lcom/bumptech/glide/l;Ljava/lang/Class;Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Lh4/a;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/j;->B:Z

    iput-object p2, p0, Lcom/bumptech/glide/j;->t:Lcom/bumptech/glide/l;

    iput-object p3, p0, Lcom/bumptech/glide/j;->u:Ljava/lang/Class;

    iput-object p4, p0, Lcom/bumptech/glide/j;->s:Landroid/content/Context;

    iget-object p4, p2, Lcom/bumptech/glide/l;->a:Lcom/bumptech/glide/b;

    iget-object p4, p4, Lcom/bumptech/glide/b;->d:Lcom/bumptech/glide/e;

    iget-object p4, p4, Lcom/bumptech/glide/e;->f:LN/f;

    invoke-virtual {p4, p3}, LN/A;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/a;

    if-nez v0, :cond_1

    invoke-virtual {p4}, LN/f;->entrySet()Ljava/util/Set;

    move-result-object p4

    check-cast p4, LN/a;

    invoke-virtual {p4}, LN/a;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_0
    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {v2, p3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/a;

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    sget-object v0, Lcom/bumptech/glide/e;->k:Lcom/bumptech/glide/a;

    :cond_2
    iput-object v0, p0, Lcom/bumptech/glide/j;->w:Lcom/bumptech/glide/a;

    iget-object p1, p1, Lcom/bumptech/glide/b;->d:Lcom/bumptech/glide/e;

    iput-object p1, p0, Lcom/bumptech/glide/j;->v:Lcom/bumptech/glide/e;

    iget-object p1, p2, Lcom/bumptech/glide/l;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lh4/g;

    invoke-virtual {p0, p3}, Lcom/bumptech/glide/j;->v(Lh4/g;)Lcom/bumptech/glide/j;

    goto :goto_1

    :cond_3
    monitor-enter p2

    :try_start_0
    iget-object p1, p2, Lcom/bumptech/glide/l;->j:Lh4/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p2

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/j;->w(Lh4/a;)Lcom/bumptech/glide/j;

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public final A(Li4/d;Lh4/f;Lh4/a;Ljava/util/concurrent/Executor;)V
    .locals 14

    move-object v0, p0

    move-object v12, p1

    move-object/from16 v13, p3

    invoke-static {p1}, Ll4/f;->b(Ljava/lang/Object;)V

    iget-boolean v1, v0, Lcom/bumptech/glide/j;->C:Z

    if-eqz v1, :cond_5

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iget-object v6, v0, Lcom/bumptech/glide/j;->w:Lcom/bumptech/glide/a;

    iget-object v7, v13, Lh4/a;->c:Lcom/bumptech/glide/f;

    iget v8, v13, Lh4/a;->h:I

    iget v9, v13, Lh4/a;->g:I

    const/4 v5, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object/from16 v4, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    invoke-virtual/range {v1 .. v11}, Lcom/bumptech/glide/j;->x(Ljava/lang/Object;Li4/d;Lh4/f;Lh4/e;Lcom/bumptech/glide/a;Lcom/bumptech/glide/f;IILh4/a;Ljava/util/concurrent/Executor;)Lh4/c;

    move-result-object v1

    invoke-interface {p1}, Li4/d;->getRequest()Lh4/c;

    move-result-object v2

    invoke-interface {v1, v2}, Lh4/c;->d(Lh4/c;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, v13, Lh4/a;->f:Z

    if-nez v3, :cond_0

    invoke-interface {v2}, Lh4/c;->g()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Argument must not be null"

    invoke-static {v2, v0}, Ll4/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Lh4/c;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {v2}, Lh4/c;->i()V

    :cond_1
    return-void

    :cond_2
    :goto_0
    iget-object v2, v0, Lcom/bumptech/glide/j;->t:Lcom/bumptech/glide/l;

    invoke-virtual {v2, p1}, Lcom/bumptech/glide/l;->b(Li4/d;)V

    invoke-interface {p1, v1}, Li4/d;->setRequest(Lh4/c;)V

    iget-object v2, v0, Lcom/bumptech/glide/j;->t:Lcom/bumptech/glide/l;

    monitor-enter v2

    :try_start_0
    iget-object v0, v2, Lcom/bumptech/glide/l;->f:Lcom/bumptech/glide/manager/q;

    iget-object v0, v0, Lcom/bumptech/glide/manager/q;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, v2, Lcom/bumptech/glide/l;->d:Lcom/bumptech/glide/manager/o;

    iget-object v3, v0, Lcom/bumptech/glide/manager/o;->c:Ljava/lang/Object;

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-boolean v3, v0, Lcom/bumptech/glide/manager/o;->b:Z

    if-nez v3, :cond_3

    invoke-interface {v1}, Lh4/c;->i()V

    goto :goto_1

    :cond_3
    invoke-interface {v1}, Lh4/c;->clear()V

    const-string v3, "RequestTracker"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "Paused, delaying request"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v0, v0, Lcom/bumptech/glide/manager/o;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must call #load() before calling #into()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final B(Lh4/g;)Lcom/bumptech/glide/j;
    .locals 1

    iget-boolean v0, p0, Lh4/a;->p:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bumptech/glide/j;->y()Lcom/bumptech/glide/j;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/j;->B(Lh4/g;)Lcom/bumptech/glide/j;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/j;->y:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/j;->v(Lh4/g;)Lcom/bumptech/glide/j;

    move-result-object p0

    return-object p0
.end method

.method public final C(Landroid/net/Uri;)Lcom/bumptech/glide/j;
    .locals 5

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/j;->D(Ljava/lang/Object;)Lcom/bumptech/glide/j;

    move-result-object v0

    if-eqz p1, :cond_3

    const-string v1, "android.resource"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object p0, p0, Lcom/bumptech/glide/j;->s:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    invoke-virtual {v0, p1}, Lh4/a;->q(Landroid/content/res/Resources$Theme;)Lh4/a;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/j;

    sget-object v0, Lk4/b;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lk4/b;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LQ3/g;

    if-nez v2, :cond_2

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Cannot resolve info for"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AppVersionSignature"

    invoke-static {v4, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    new-instance v3, Lk4/d;

    invoke-direct {v3, v2}, Lk4/d;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, LQ3/g;

    if-nez v2, :cond_2

    move-object v2, v3

    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x30

    new-instance v0, Lk4/a;

    invoke-direct {v0, p0, v2}, Lk4/a;-><init>(ILQ3/g;)V

    invoke-virtual {p1, v0}, Lh4/a;->o(LQ3/g;)Lh4/a;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/bumptech/glide/j;

    :cond_3
    :goto_2
    return-object v0
.end method

.method public final D(Ljava/lang/Object;)Lcom/bumptech/glide/j;
    .locals 1

    iget-boolean v0, p0, Lh4/a;->p:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bumptech/glide/j;->y()Lcom/bumptech/glide/j;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/j;->D(Ljava/lang/Object;)Lcom/bumptech/glide/j;

    move-result-object p0

    return-object p0

    :cond_0
    iput-object p1, p0, Lcom/bumptech/glide/j;->x:Ljava/lang/Object;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/bumptech/glide/j;->C:Z

    invoke-virtual {p0}, Lh4/a;->m()V

    return-object p0
.end method

.method public final bridge synthetic a(Lh4/a;)Lh4/a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/j;->w(Lh4/a;)Lcom/bumptech/glide/j;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic b()Lh4/a;
    .locals 0

    invoke-virtual {p0}, Lcom/bumptech/glide/j;->y()Lcom/bumptech/glide/j;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/bumptech/glide/j;->y()Lcom/bumptech/glide/j;

    move-result-object p0

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/bumptech/glide/j;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/bumptech/glide/j;

    invoke-super {p0, p1}, Lh4/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/bumptech/glide/j;->u:Ljava/lang/Class;

    iget-object v2, p0, Lcom/bumptech/glide/j;->u:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/j;->w:Lcom/bumptech/glide/a;

    iget-object v2, p1, Lcom/bumptech/glide/j;->w:Lcom/bumptech/glide/a;

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/j;->x:Ljava/lang/Object;

    iget-object v2, p1, Lcom/bumptech/glide/j;->x:Ljava/lang/Object;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/j;->y:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/bumptech/glide/j;->y:Ljava/util/ArrayList;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/j;->z:Lcom/bumptech/glide/j;

    iget-object v2, p1, Lcom/bumptech/glide/j;->z:Lcom/bumptech/glide/j;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/j;->A:Lcom/bumptech/glide/j;

    iget-object v2, p1, Lcom/bumptech/glide/j;->A:Lcom/bumptech/glide/j;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/bumptech/glide/j;->B:Z

    iget-boolean v2, p1, Lcom/bumptech/glide/j;->B:Z

    if-ne v0, v2, :cond_0

    iget-boolean p0, p0, Lcom/bumptech/glide/j;->C:Z

    iget-boolean p1, p1, Lcom/bumptech/glide/j;->C:Z

    if-ne p0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    invoke-super {p0}, Lh4/a;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/bumptech/glide/j;->u:Ljava/lang/Class;

    invoke-static {v0, v1}, Ll4/l;->h(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/bumptech/glide/j;->w:Lcom/bumptech/glide/a;

    invoke-static {v0, v1}, Ll4/l;->h(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/bumptech/glide/j;->x:Ljava/lang/Object;

    invoke-static {v0, v1}, Ll4/l;->h(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/bumptech/glide/j;->y:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Ll4/l;->h(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/bumptech/glide/j;->z:Lcom/bumptech/glide/j;

    invoke-static {v0, v1}, Ll4/l;->h(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/bumptech/glide/j;->A:Lcom/bumptech/glide/j;

    invoke-static {v0, v1}, Ll4/l;->h(ILjava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ll4/l;->h(ILjava/lang/Object;)I

    move-result v0

    iget-boolean v1, p0, Lcom/bumptech/glide/j;->B:Z

    invoke-static {v1, v0}, Ll4/l;->g(II)I

    move-result v0

    iget-boolean p0, p0, Lcom/bumptech/glide/j;->C:Z

    invoke-static {p0, v0}, Ll4/l;->g(II)I

    move-result p0

    return p0
.end method

.method public final v(Lh4/g;)Lcom/bumptech/glide/j;
    .locals 1

    iget-boolean v0, p0, Lh4/a;->p:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bumptech/glide/j;->y()Lcom/bumptech/glide/j;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/j;->v(Lh4/g;)Lcom/bumptech/glide/j;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/bumptech/glide/j;->y:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/j;->y:Ljava/util/ArrayList;

    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/j;->y:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {p0}, Lh4/a;->m()V

    return-object p0
.end method

.method public final w(Lh4/a;)Lcom/bumptech/glide/j;
    .locals 0

    invoke-static {p1}, Ll4/f;->b(Ljava/lang/Object;)V

    invoke-super {p0, p1}, Lh4/a;->a(Lh4/a;)Lh4/a;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/j;

    return-object p0
.end method

.method public final x(Ljava/lang/Object;Li4/d;Lh4/f;Lh4/e;Lcom/bumptech/glide/a;Lcom/bumptech/glide/f;IILh4/a;Ljava/util/concurrent/Executor;)Lh4/c;
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v15, p1

    move-object/from16 v1, p5

    move-object/from16 v14, p9

    iget-object v2, v0, Lcom/bumptech/glide/j;->A:Lcom/bumptech/glide/j;

    if-eqz v2, :cond_0

    new-instance v2, Lh4/b;

    move-object/from16 v3, p4

    invoke-direct {v2, v15, v3}, Lh4/b;-><init>(Ljava/lang/Object;Lh4/e;)V

    move-object v12, v2

    move-object v13, v12

    goto :goto_0

    :cond_0
    move-object/from16 v3, p4

    const/4 v2, 0x0

    move-object v13, v2

    move-object v12, v3

    :goto_0
    iget-object v2, v0, Lcom/bumptech/glide/j;->z:Lcom/bumptech/glide/j;

    if-eqz v2, :cond_9

    iget-boolean v3, v0, Lcom/bumptech/glide/j;->D:Z

    if-nez v3, :cond_8

    iget-object v3, v2, Lcom/bumptech/glide/j;->w:Lcom/bumptech/glide/a;

    iget-boolean v4, v2, Lcom/bumptech/glide/j;->B:Z

    if-eqz v4, :cond_1

    move-object/from16 v18, v1

    goto :goto_1

    :cond_1
    move-object/from16 v18, v3

    :goto_1
    iget v2, v2, Lh4/a;->a:I

    const/16 v3, 0x8

    invoke-static {v2, v3}, Lh4/a;->e(II)Z

    move-result v2

    const/4 v11, 0x1

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/bumptech/glide/j;->z:Lcom/bumptech/glide/j;

    iget-object v2, v2, Lh4/a;->c:Lcom/bumptech/glide/f;

    :goto_2
    move-object/from16 v19, v2

    goto :goto_4

    :cond_2
    sget-object v2, Lcom/bumptech/glide/i;->b:[I

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    if-eq v2, v11, :cond_6

    const/4 v3, 0x2

    if-eq v2, v3, :cond_5

    const/4 v3, 0x3

    if-eq v2, v3, :cond_4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    goto :goto_3

    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unknown priority: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lh4/a;->c:Lcom/bumptech/glide/f;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    :goto_3
    sget-object v2, Lcom/bumptech/glide/f;->IMMEDIATE:Lcom/bumptech/glide/f;

    goto :goto_2

    :cond_5
    sget-object v2, Lcom/bumptech/glide/f;->HIGH:Lcom/bumptech/glide/f;

    goto :goto_2

    :cond_6
    sget-object v2, Lcom/bumptech/glide/f;->NORMAL:Lcom/bumptech/glide/f;

    goto :goto_2

    :goto_4
    iget-object v2, v0, Lcom/bumptech/glide/j;->z:Lcom/bumptech/glide/j;

    iget v3, v2, Lh4/a;->h:I

    iget v2, v2, Lh4/a;->g:I

    invoke-static/range {p7 .. p8}, Ll4/l;->j(II)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, v0, Lcom/bumptech/glide/j;->z:Lcom/bumptech/glide/j;

    iget v5, v4, Lh4/a;->h:I

    iget v4, v4, Lh4/a;->g:I

    invoke-static {v5, v4}, Ll4/l;->j(II)Z

    move-result v4

    if-nez v4, :cond_7

    iget v2, v14, Lh4/a;->h:I

    iget v3, v14, Lh4/a;->g:I

    move/from16 v20, v2

    move/from16 v21, v3

    goto :goto_5

    :cond_7
    move/from16 v21, v2

    move/from16 v20, v3

    :goto_5
    new-instance v10, Lh4/k;

    invoke-direct {v10, v15, v12}, Lh4/k;-><init>(Ljava/lang/Object;Lh4/e;)V

    iget-object v5, v0, Lcom/bumptech/glide/j;->x:Ljava/lang/Object;

    iget-object v12, v0, Lcom/bumptech/glide/j;->y:Ljava/util/ArrayList;

    iget-object v3, v0, Lcom/bumptech/glide/j;->v:Lcom/bumptech/glide/e;

    iget-object v9, v3, Lcom/bumptech/glide/e;->g:LS3/p;

    iget-object v8, v1, Lcom/bumptech/glide/a;->a:Lj4/a;

    new-instance v7, Lh4/j;

    move-object v1, v7

    iget-object v2, v0, Lcom/bumptech/glide/j;->s:Landroid/content/Context;

    iget-object v6, v0, Lcom/bumptech/glide/j;->u:Ljava/lang/Class;

    move-object/from16 v4, p1

    move-object/from16 v22, v7

    move-object/from16 v7, p9

    move-object/from16 v16, v8

    move/from16 v8, p7

    move-object/from16 v17, v9

    move/from16 v9, p8

    move-object/from16 p4, v10

    move-object/from16 v10, p6

    move-object/from16 v11, p2

    move-object/from16 v23, v12

    move-object/from16 v12, p3

    move-object/from16 v24, v13

    move-object/from16 v13, v23

    move-object/from16 v14, p4

    move-object/from16 v15, v17

    move-object/from16 v17, p10

    invoke-direct/range {v1 .. v17}, Lh4/j;-><init>(Landroid/content/Context;Lcom/bumptech/glide/e;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lh4/a;IILcom/bumptech/glide/f;Li4/d;Lh4/f;Ljava/util/ArrayList;Lh4/e;LS3/p;Lj4/a;Ljava/util/concurrent/Executor;)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/bumptech/glide/j;->D:Z

    iget-object v10, v0, Lcom/bumptech/glide/j;->z:Lcom/bumptech/glide/j;

    move-object v1, v10

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, v18

    move-object/from16 v7, v19

    move/from16 v8, v20

    move/from16 v9, v21

    move-object/from16 v11, p10

    invoke-virtual/range {v1 .. v11}, Lcom/bumptech/glide/j;->x(Ljava/lang/Object;Li4/d;Lh4/f;Lh4/e;Lcom/bumptech/glide/a;Lcom/bumptech/glide/f;IILh4/a;Ljava/util/concurrent/Executor;)Lh4/c;

    move-result-object v1

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/bumptech/glide/j;->D:Z

    move-object/from16 v2, p4

    move-object/from16 v3, v22

    iput-object v3, v2, Lh4/k;->c:Lh4/j;

    iput-object v1, v2, Lh4/k;->d:Lh4/c;

    move-object v11, v2

    :goto_6
    move-object/from16 v12, v24

    goto :goto_7

    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot use a request as both the main request and a thumbnail, consider using clone() on the request(s) passed to thumbnail()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    move-object/from16 v24, v13

    iget-object v5, v0, Lcom/bumptech/glide/j;->x:Ljava/lang/Object;

    iget-object v13, v0, Lcom/bumptech/glide/j;->y:Ljava/util/ArrayList;

    iget-object v3, v0, Lcom/bumptech/glide/j;->v:Lcom/bumptech/glide/e;

    iget-object v15, v3, Lcom/bumptech/glide/e;->g:LS3/p;

    iget-object v14, v1, Lcom/bumptech/glide/a;->a:Lj4/a;

    new-instance v18, Lh4/j;

    move-object/from16 v1, v18

    iget-object v2, v0, Lcom/bumptech/glide/j;->s:Landroid/content/Context;

    iget-object v6, v0, Lcom/bumptech/glide/j;->u:Ljava/lang/Class;

    move-object/from16 v4, p1

    move-object/from16 v7, p9

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p6

    move-object/from16 v11, p2

    move-object/from16 v16, v12

    move-object/from16 v12, p3

    move-object/from16 v17, v14

    move-object/from16 v14, v16

    move-object/from16 v16, v17

    move-object/from16 v17, p10

    invoke-direct/range {v1 .. v17}, Lh4/j;-><init>(Landroid/content/Context;Lcom/bumptech/glide/e;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lh4/a;IILcom/bumptech/glide/f;Li4/d;Lh4/f;Ljava/util/ArrayList;Lh4/e;LS3/p;Lj4/a;Ljava/util/concurrent/Executor;)V

    move-object/from16 v11, v18

    goto :goto_6

    :goto_7
    if-nez v12, :cond_a

    return-object v11

    :cond_a
    iget-object v1, v0, Lcom/bumptech/glide/j;->A:Lcom/bumptech/glide/j;

    iget v2, v1, Lh4/a;->h:I

    iget v1, v1, Lh4/a;->g:I

    invoke-static/range {p7 .. p8}, Ll4/l;->j(II)Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, v0, Lcom/bumptech/glide/j;->A:Lcom/bumptech/glide/j;

    iget v4, v3, Lh4/a;->h:I

    iget v3, v3, Lh4/a;->g:I

    invoke-static {v4, v3}, Ll4/l;->j(II)Z

    move-result v3

    if-nez v3, :cond_b

    move-object/from16 v3, p9

    iget v1, v3, Lh4/a;->h:I

    iget v2, v3, Lh4/a;->g:I

    move v7, v1

    move v8, v2

    goto :goto_8

    :cond_b
    move v8, v1

    move v7, v2

    :goto_8
    iget-object v9, v0, Lcom/bumptech/glide/j;->A:Lcom/bumptech/glide/j;

    iget-object v5, v9, Lcom/bumptech/glide/j;->w:Lcom/bumptech/glide/a;

    iget-object v6, v9, Lh4/a;->c:Lcom/bumptech/glide/f;

    move-object v0, v9

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v4, v12

    move-object/from16 v10, p10

    invoke-virtual/range {v0 .. v10}, Lcom/bumptech/glide/j;->x(Ljava/lang/Object;Li4/d;Lh4/f;Lh4/e;Lcom/bumptech/glide/a;Lcom/bumptech/glide/f;IILh4/a;Ljava/util/concurrent/Executor;)Lh4/c;

    move-result-object v0

    iput-object v11, v12, Lh4/b;->c:Lh4/c;

    iput-object v0, v12, Lh4/b;->d:Lh4/c;

    return-object v12
.end method

.method public final y()Lcom/bumptech/glide/j;
    .locals 2

    invoke-super {p0}, Lh4/a;->b()Lh4/a;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/j;

    iget-object v0, p0, Lcom/bumptech/glide/j;->w:Lcom/bumptech/glide/a;

    invoke-virtual {v0}, Lcom/bumptech/glide/a;->a()Lcom/bumptech/glide/a;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/j;->w:Lcom/bumptech/glide/a;

    iget-object v0, p0, Lcom/bumptech/glide/j;->y:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/bumptech/glide/j;->y:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/bumptech/glide/j;->y:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/j;->z:Lcom/bumptech/glide/j;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bumptech/glide/j;->y()Lcom/bumptech/glide/j;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/j;->z:Lcom/bumptech/glide/j;

    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/j;->A:Lcom/bumptech/glide/j;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/bumptech/glide/j;->y()Lcom/bumptech/glide/j;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/j;->A:Lcom/bumptech/glide/j;

    :cond_2
    return-object p0
.end method

.method public final z(Landroid/widget/ImageView;)V
    .locals 4

    invoke-static {}, Ll4/l;->a()V

    invoke-static {p1}, Ll4/f;->b(Ljava/lang/Object;)V

    iget v0, p0, Lh4/a;->a:I

    const/16 v1, 0x800

    invoke-static {v0, v1}, Lh4/a;->e(II)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/bumptech/glide/i;->a:[I

    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/bumptech/glide/j;->y()Lcom/bumptech/glide/j;

    move-result-object v0

    sget-object v2, LZ3/n;->c:LZ3/n;

    new-instance v3, LZ3/i;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v2, v3, v1}, Lh4/a;->l(LZ3/n;LZ3/e;Z)Lh4/a;

    move-result-object v0

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0}, Lcom/bumptech/glide/j;->y()Lcom/bumptech/glide/j;

    move-result-object v0

    sget-object v2, LZ3/n;->b:LZ3/n;

    new-instance v3, LZ3/v;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v2, v3, v1}, Lh4/a;->l(LZ3/n;LZ3/e;Z)Lh4/a;

    move-result-object v0

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0}, Lcom/bumptech/glide/j;->y()Lcom/bumptech/glide/j;

    move-result-object v0

    sget-object v2, LZ3/n;->c:LZ3/n;

    new-instance v3, LZ3/i;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v2, v3, v1}, Lh4/a;->l(LZ3/n;LZ3/e;Z)Lh4/a;

    move-result-object v0

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0}, Lcom/bumptech/glide/j;->y()Lcom/bumptech/glide/j;

    move-result-object v0

    sget-object v1, LZ3/n;->d:LZ3/n;

    new-instance v2, LZ3/h;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v1, v2}, Lh4/a;->f(LZ3/n;LZ3/e;)Lh4/a;

    move-result-object v0

    goto :goto_1

    :cond_0
    :goto_0
    move-object v0, p0

    :goto_1
    iget-object v1, p0, Lcom/bumptech/glide/j;->v:Lcom/bumptech/glide/e;

    iget-object v1, v1, Lcom/bumptech/glide/e;->c:LE5/v;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v1, Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/bumptech/glide/j;->u:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Li4/a;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Li4/a;-><init>(ILandroid/widget/ImageView;)V

    goto :goto_2

    :cond_1
    const-class v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Li4/a;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p1}, Li4/a;-><init>(ILandroid/widget/ImageView;)V

    :goto_2
    sget-object p1, Ll4/f;->a:LR5/n;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0, p1}, Lcom/bumptech/glide/j;->A(Li4/d;Lh4/f;Lh4/a;Ljava/util/concurrent/Executor;)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Unhandled class: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", try .as*(Class).transcode(ResourceTranscoder)"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
