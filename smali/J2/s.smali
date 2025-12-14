.class public final LJ2/s;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LJ2/U;

.field public final b:[Ljava/lang/String;

.field public final c:LJ2/C0;

.field public final d:Ljava/util/LinkedHashMap;

.field public final e:Ljava/util/concurrent/locks/ReentrantLock;

.field public final f:LJ2/m;

.field public final g:LJ2/m;

.field public final h:LL8/a;

.field public i:Landroid/content/Intent;

.field public j:LJ2/A;

.field public final k:Ljava/lang/Object;


# direct methods
.method public varargs constructor <init>(LJ2/U;Ljava/util/HashMap;Ljava/util/HashMap;[Ljava/lang/String;)V
    .locals 14

    move-object v8, p0

    move-object v9, p1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v9, v8, LJ2/s;->a:LJ2/U;

    move-object/from16 v10, p4

    iput-object v10, v8, LJ2/s;->b:[Ljava/lang/String;

    new-instance v11, LJ2/C0;

    invoke-virtual {p1}, LJ2/U;->getUseTempTrackingTable$room_runtime_release()Z

    move-result v12

    new-instance v13, LJ2/p;

    const-class v3, LJ2/s;

    const-string v4, "notifyInvalidatedObservers"

    const/4 v1, 0x1

    const-string v5, "notifyInvalidatedObservers(Ljava/util/Set;)V"

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v13

    move-object v2, p0

    invoke-direct/range {v0 .. v7}, LJ2/p;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    move-object v0, v11

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move v5, v12

    move-object v6, v13

    invoke-direct/range {v0 .. v6}, LJ2/C0;-><init>(LJ2/U;Ljava/util/HashMap;Ljava/util/HashMap;[Ljava/lang/String;ZLJ2/p;)V

    iput-object v11, v8, LJ2/s;->c:LJ2/C0;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, v8, LJ2/s;->d:Ljava/util/LinkedHashMap;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, v8, LJ2/s;->e:Ljava/util/concurrent/locks/ReentrantLock;

    new-instance v0, LJ2/m;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LJ2/m;-><init>(LJ2/s;I)V

    iput-object v0, v8, LJ2/s;->f:LJ2/m;

    new-instance v0, LJ2/m;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, LJ2/m;-><init>(LJ2/s;I)V

    iput-object v0, v8, LJ2/s;->g:LJ2/m;

    new-instance v0, LL8/a;

    invoke-direct {v0, p1}, LL8/a;-><init>(LJ2/U;)V

    iput-object v0, v8, LJ2/s;->h:LL8/a;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v8, LJ2/s;->k:Ljava/lang/Object;

    new-instance v0, LJ2/m;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, LJ2/m;-><init>(LJ2/s;I)V

    iput-object v0, v11, LJ2/C0;->k:Lsb/a;

    return-void
.end method


# virtual methods
.method public final a(LJ2/n;)Z
    .locals 5

    iget-object v0, p1, LJ2/n;->a:[Ljava/lang/String;

    iget-object v1, p0, LJ2/s;->c:LJ2/C0;

    invoke-virtual {v1, v0}, LJ2/C0;->g([Ljava/lang/String;)Ldb/j;

    move-result-object v0

    iget-object v2, v0, Ldb/j;->a:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    iget-object v0, v0, Ldb/j;->b:Ljava/lang/Object;

    check-cast v0, [I

    new-instance v3, LJ2/F;

    invoke-direct {v3, p1, v0, v2}, LJ2/F;-><init>(LJ2/n;[I[Ljava/lang/String;)V

    iget-object v2, p0, LJ2/s;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-object p0, p0, LJ2/s;->d:Ljava/util/LinkedHashMap;

    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1, p0}, Lfb/B;->j(Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LJ2/F;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    invoke-interface {p0, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LJ2/F;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-nez p0, :cond_1

    iget-object p0, v1, LJ2/C0;->h:Lcom/samsung/android/scloud/lib/setting/e;

    invoke-virtual {p0, v0}, Lcom/samsung/android/scloud/lib/setting/e;->l([I)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0

    :goto_2
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p0
.end method

.method public final b(LJ2/n;)V
    .locals 2

    const-string v0, "observer"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LJ2/s;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v1, p0, LJ2/s;->d:Ljava/util/LinkedHashMap;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LJ2/F;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-eqz p1, :cond_0

    iget-object v0, p0, LJ2/s;->c:LJ2/C0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "tableIds"

    iget-object p1, p1, LJ2/F;->b:[I

    invoke-static {p1, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, LJ2/C0;->h:Lcom/samsung/android/scloud/lib/setting/e;

    invoke-virtual {v0, p1}, Lcom/samsung/android/scloud/lib/setting/e;->m([I)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, LJ2/q;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, LJ2/q;-><init>(LJ2/s;Lib/c;)V

    invoke-static {p1}, LG5/a4;->c(Lsb/n;)Ljava/lang/Object;

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p0
.end method

.method public final c(Lkb/i;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, LJ2/s;->a:LJ2/U;

    invoke-virtual {v0}, LJ2/U;->inCompatibilityMode$room_runtime_release()Z

    move-result v1

    sget-object v2, Ldb/r;->a:Ldb/r;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, LJ2/U;->isOpenInternal()Z

    move-result v0

    if-nez v0, :cond_0

    return-object v2

    :cond_0
    iget-object p0, p0, LJ2/s;->c:LJ2/C0;

    invoke-virtual {p0, p1}, LJ2/C0;->f(Lkb/c;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    if-ne p0, p1, :cond_1

    return-object p0

    :cond_1
    return-object v2
.end method
