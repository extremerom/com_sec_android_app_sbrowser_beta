.class public final LC1/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc2/w;


# instance fields
.field public final a:Ljava/util/concurrent/ConcurrentHashMap;

.field public final synthetic b:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, LC1/y;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, LC1/y;->a:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static final f(LC1/m;Landroid/content/Context;Lkb/c;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p2, LZ1/t;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, LZ1/t;

    iget v1, v0, LZ1/t;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, LZ1/t;->c:I

    goto :goto_0

    :cond_0
    new-instance v0, LZ1/t;

    invoke-direct {v0, p2}, Lkb/c;-><init>(Lib/c;)V

    :goto_0
    iget-object p2, v0, LZ1/t;->b:Ljava/lang/Object;

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v0, LZ1/t;->c:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, LZ1/t;->a:Ljava/util/Map;

    check-cast p0, Ljava/util/Map;

    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    sget-object p2, LZ1/v;->a:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p0, Lc2/m;->a:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, LZ1/i;

    if-eqz p2, :cond_8

    iget-object p2, p2, LZ1/i;->a:Ljava/util/LinkedHashMap;

    check-cast p0, LZ1/p;

    iput-object p2, v0, LZ1/t;->a:Ljava/util/Map;

    iput v3, v0, LZ1/t;->c:I

    invoke-virtual {p0, p1, v0}, LZ1/p;->o(Landroid/content/Context;Lkb/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    move-object v5, p2

    move-object p2, p0

    move-object p0, v5

    :goto_1
    check-cast p2, LZ1/i;

    iget-object p1, p2, LZ1/i;->a:Ljava/util/LinkedHashMap;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_5

    :cond_4
    move v3, v0

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LM1/b;

    iget v1, v1, LM1/b;->a:I

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lp1/b;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    new-instance v4, LM1/b;

    invoke-direct {v4, v1}, LM1/b;-><init>(I)V

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v2, LM1/b;

    invoke-direct {v2, v1}, LM1/b;-><init>(I)V

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p2, v1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    :cond_7
    :goto_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_8
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 4

    const-string v0, "GWT:SessionScope"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "closeSession "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "msg"

    invoke-static {v1, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Le7/a;->a:Ljava/lang/String;

    const-string v3, " "

    invoke-static {v2, v3, v1, v0}, Lw2/j;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, LC1/y;->a:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, LC1/y;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LC1/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, LC1/m;->c()V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final b(Landroid/content/Context;Ljava/lang/String;Lib/c;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, LC1/y;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LC1/m;

    if-eqz p0, :cond_1

    iget-object p1, p0, Lc2/m;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, LC1/m;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    const-string p1, "get(...)"

    invoke-static {p0, p1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final c(Landroid/content/Context;Lc2/m;Lkb/c;)Ljava/lang/Object;
    .locals 10

    instance-of v0, p3, LC1/n;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, LC1/n;

    iget v1, v0, LC1/n;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, LC1/n;->c:I

    goto :goto_0

    :cond_0
    new-instance v0, LC1/n;

    invoke-direct {v0, p0, p3}, LC1/n;-><init>(LC1/y;Lkb/c;)V

    :goto_0
    iget-object p3, v0, LC1/n;->a:Ljava/lang/Object;

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v0, LC1/n;->c:I

    sget-object v3, Ldb/r;->a:Ldb/r;

    const-string v4, " "

    const-string v5, "msg"

    const-string v6, "GWT:SessionScope"

    const/4 v7, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v7, :cond_1

    :try_start_0
    invoke-static {p3}, LG5/A2;->f(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p3}, LG5/A2;->f(Ljava/lang/Object;)V

    instance-of p3, p2, LC1/m;

    if-nez p3, :cond_3

    return-object v3

    :cond_3
    iget-object p3, p2, Lc2/m;->a:Ljava/lang/String;

    sget-object v2, LC1/B;->a:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "startSession "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", "

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " / thread : "

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, v5}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Le7/a;->a:Ljava/lang/String;

    invoke-static {v2, v4, p3, v6}, Lw2/j;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p3, p0, LC1/y;->a:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p2, Lc2/m;->a:Ljava/lang/String;

    invoke-virtual {p3, v2, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, LC1/m;

    if-eqz p3, :cond_4

    invoke-virtual {p3}, LC1/m;->c()V

    :cond_4
    move-object p3, p2

    check-cast p3, LC1/m;

    iget-object p3, p3, LC1/m;->d:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :cond_5
    invoke-virtual {p3, v2, v8}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    goto :goto_1

    :cond_6
    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v9

    if-eq v9, v2, :cond_5

    :goto_1
    :try_start_1
    check-cast p2, LC1/m;

    iput v7, v0, LC1/n;->c:I

    invoke-virtual {p0, p2, p1, v0}, LC1/y;->e(LC1/m;Landroid/content/Context;Lib/c;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    if-ne p0, v1, :cond_7

    return-object v1

    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Exception "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " occurred at coroutine session"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v5}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Le7/a;->a:Ljava/lang/String;

    invoke-static {p1, v4, p0, v6}, Lw2/j;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_3
    return-object v3
.end method

.method public final d(Ljava/lang/String;)Lc2/m;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LC1/y;->a:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, LC1/y;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LC1/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final e(LC1/m;Landroid/content/Context;Lib/c;)Ljava/lang/Object;
    .locals 12

    const/4 v0, 0x0

    const-string v1, "msg"

    const-string v2, " "

    sget-object v3, Ldb/r;->a:Ldb/r;

    iget v4, p0, LC1/y;->b:I

    packed-switch v4, :pswitch_data_0

    instance-of v4, p3, LZ1/r;

    if-eqz v4, :cond_0

    move-object v4, p3

    check-cast v4, LZ1/r;

    iget v5, v4, LZ1/r;->e:I

    const/high16 v6, -0x80000000

    and-int v7, v5, v6

    if-eqz v7, :cond_0

    sub-int/2addr v5, v6

    iput v5, v4, LZ1/r;->e:I

    goto :goto_0

    :cond_0
    new-instance v4, LZ1/r;

    check-cast p3, Lkb/c;

    invoke-direct {v4, p0, p3}, LZ1/r;-><init>(LC1/y;Lkb/c;)V

    :goto_0
    iget-object p0, v4, LZ1/r;->c:Ljava/lang/Object;

    sget-object p3, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v5, v4, LZ1/r;->e:I

    const-string v6, "-preview composition"

    const-string v7, " occurred while "

    const/4 v8, 0x2

    const/4 v9, 0x1

    const-string v10, "GWT:PreviewSessionManager"

    if-eqz v5, :cond_3

    if-eq v5, v9, :cond_2

    if-ne v5, v8, :cond_1

    iget-object p1, v4, LZ1/r;->a:Ljava/lang/Object;

    check-cast p1, LC1/m;

    :try_start_0
    invoke-static {p0}, LG5/A2;->f(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_6

    :catch_0
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception p0

    goto/16 :goto_4

    :catch_2
    move-exception p0

    goto/16 :goto_5

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p1, v4, LZ1/r;->b:LC1/m;

    iget-object p2, v4, LZ1/r;->a:Ljava/lang/Object;

    check-cast p2, Landroid/content/Context;

    invoke-static {p0}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    invoke-static {p0}, LG5/A2;->f(Ljava/lang/Object;)V

    instance-of p0, p1, LZ1/p;

    if-nez p0, :cond_4

    goto/16 :goto_6

    :cond_4
    iput-object p2, v4, LZ1/r;->a:Ljava/lang/Object;

    iput-object p1, v4, LZ1/r;->b:LC1/m;

    iput v9, v4, LZ1/r;->e:I

    invoke-static {p1, p2, v4}, LC1/y;->f(LC1/m;Landroid/content/Context;Lkb/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, p3, :cond_5

    :goto_1
    move-object v3, p3

    goto/16 :goto_6

    :cond_5
    :goto_2
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    iget-object v5, p1, Lc2/m;->a:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v11, "State of "

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " changed : "

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v9, Le7/a;->a:Ljava/lang/String;

    invoke-static {v9, v2, v5, v10}, Lw2/j;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_6

    :try_start_1
    new-instance p0, LZ1/s;

    invoke-direct {p0, p1, p2, v0}, LZ1/s;-><init>(LC1/m;Landroid/content/Context;Lib/c;)V

    iput-object p1, v4, LZ1/r;->a:Ljava/lang/Object;

    iput-object v0, v4, LZ1/r;->b:LC1/m;

    iput v8, v4, LZ1/r;->e:I

    const-wide/16 v8, 0xfa0

    invoke-static {v8, v9, p0, v4}, LNc/E;->L(JLsb/n;Lkb/c;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/util/ConcurrentModificationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-ne p0, p3, :cond_6

    goto :goto_1

    :goto_3
    iget-object p1, p1, Lc2/m;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Exception "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Le7/a;->a:Ljava/lang/String;

    invoke-static {p1, v2, p0, v10}, Lw2/j;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :goto_4
    iget-object p1, p1, Lc2/m;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "ConcurrentModificationException "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Le7/a;->a:Ljava/lang/String;

    invoke-static {p1, v2, p0, v10}, Lw2/j;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :goto_5
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "PreviewSession is finished by "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Le7/a;->a:Ljava/lang/String;

    invoke-static {p1, v2, p0, v10}, Lw2/j;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_6
    return-object v3

    :pswitch_0
    instance-of p0, p1, LC1/s;

    if-nez p0, :cond_7

    goto :goto_7

    :cond_7
    iget-object p0, p1, Lc2/m;->a:Ljava/lang/String;

    new-instance p3, LC1/x;

    invoke-direct {p3, p1, p2, v0}, LC1/x;-><init>(LC1/m;Landroid/content/Context;Lib/c;)V

    sget-object p1, LC1/B;->a:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "sessionT-"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LNc/E;->A(Ljava/lang/String;)LNc/a0;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v4, "Start "

    invoke-direct {p2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " coroutine at multi-process context / "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Le7/a;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "GWT:MultiProcessContext"

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, LNc/E;->c(Lib/h;)LUc/e;

    move-result-object p2

    new-instance v1, LC1/A;

    invoke-direct {v1, p3, p0, p1, v0}, LC1/A;-><init>(LC1/x;Ljava/lang/String;LNc/a0;Lib/c;)V

    const/4 p0, 0x3

    invoke-static {p2, v0, v0, v1, p0}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    sget-object p0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    :goto_7
    return-object v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
