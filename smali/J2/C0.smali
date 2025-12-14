.class public final LJ2/C0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final l:[Ljava/lang/String;


# instance fields
.field public final a:LJ2/U;

.field public final b:Ljava/util/HashMap;

.field public final c:Ljava/util/HashMap;

.field public final d:Z

.field public final e:LJ2/p;

.field public final f:Ljava/util/LinkedHashMap;

.field public final g:[Ljava/lang/String;

.field public final h:Lcom/samsung/android/scloud/lib/setting/e;

.field public final i:LI3/d;

.field public final j:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public k:Lsb/a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "UPDATE"

    const-string v1, "DELETE"

    const-string v2, "INSERT"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, LJ2/C0;->l:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(LJ2/U;Ljava/util/HashMap;Ljava/util/HashMap;[Ljava/lang/String;ZLJ2/p;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LJ2/C0;->a:LJ2/U;

    iput-object p2, p0, LJ2/C0;->b:Ljava/util/HashMap;

    iput-object p3, p0, LJ2/C0;->c:Ljava/util/HashMap;

    iput-boolean p5, p0, LJ2/C0;->d:Z

    iput-object p6, p0, LJ2/C0;->e:LJ2/p;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, LJ2/C0;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p1, LB9/b;

    const/4 p3, 0x2

    invoke-direct {p1, p3}, LB9/b;-><init>(I)V

    iput-object p1, p0, LJ2/C0;->k:Lsb/a;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, LJ2/C0;->f:Ljava/util/LinkedHashMap;

    array-length p1, p4

    new-array p3, p1, [Ljava/lang/String;

    :goto_0
    const-string p5, "toLowerCase(...)"

    if-ge p2, p1, :cond_2

    aget-object p6, p4, p2

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p6, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p6

    invoke-static {p6, p5}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, LJ2/C0;->f:Ljava/util/LinkedHashMap;

    invoke-interface {v2, p6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, LJ2/C0;->b:Ljava/util/HashMap;

    aget-object v2, p4, p2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p5}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    move-object p6, v0

    :goto_2
    aput-object p6, p3, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    iput-object p3, p0, LJ2/C0;->g:[Ljava/lang/String;

    iget-object p1, p0, LJ2/C0;->b:Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    sget-object p4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p3, p4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, p5}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p6, p0, LJ2/C0;->f:Ljava/util/LinkedHashMap;

    invoke-interface {p6, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_3

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p2, p4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p5}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p4, p0, LJ2/C0;->f:Ljava/util/LinkedHashMap;

    invoke-static {p3, p4}, Lfb/B;->j(Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p3

    invoke-interface {p4, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_4
    new-instance p1, Lcom/samsung/android/scloud/lib/setting/e;

    iget-object p2, p0, LJ2/C0;->g:[Ljava/lang/String;

    array-length p2, p2

    invoke-direct {p1, p2}, Lcom/samsung/android/scloud/lib/setting/e;-><init>(I)V

    iput-object p1, p0, LJ2/C0;->h:Lcom/samsung/android/scloud/lib/setting/e;

    new-instance p1, LI3/d;

    iget-object p2, p0, LJ2/C0;->g:[Ljava/lang/String;

    array-length p2, p2

    invoke-direct {p1, p2}, LI3/d;-><init>(I)V

    iput-object p1, p0, LJ2/C0;->i:LI3/d;

    return-void
.end method

.method public static final a(LJ2/C0;LJ2/G;Lkb/c;)Ljava/lang/Object;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p2, LJ2/n0;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, LJ2/n0;

    iget v1, v0, LJ2/n0;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, LJ2/n0;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, LJ2/n0;

    invoke-direct {v0, p0, p2}, LJ2/n0;-><init>(LJ2/C0;Lkb/c;)V

    :goto_0
    iget-object p0, v0, LJ2/n0;->b:Ljava/lang/Object;

    sget-object p2, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, v0, LJ2/n0;->d:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v3, :cond_2

    if-ne v1, v2, :cond_1

    iget-object p1, v0, LJ2/n0;->a:Ljava/lang/Object;

    check-cast p1, Ljava/util/Set;

    invoke-static {p0}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p1, v0, LJ2/n0;->a:Ljava/lang/Object;

    check-cast p1, LJ2/G;

    invoke-static {p0}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p0}, LG5/A2;->f(Ljava/lang/Object;)V

    new-instance p0, LC9/a;

    const/16 v1, 0x12

    invoke-direct {p0, v1}, LC9/a;-><init>(I)V

    iput-object p1, v0, LJ2/n0;->a:Ljava/lang/Object;

    iput v3, v0, LJ2/n0;->d:I

    const-string v1, "SELECT * FROM room_table_modification_log WHERE invalidated = 1"

    invoke-interface {p1, v1, p0, v0}, LJ2/G;->a(Ljava/lang/String;Lsb/k;Lkb/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, p2, :cond_4

    goto :goto_3

    :cond_4
    :goto_1
    check-cast p0, Ljava/util/Set;

    move-object v1, p0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    iput-object p0, v0, LJ2/n0;->a:Ljava/lang/Object;

    iput v2, v0, LJ2/n0;->d:I

    const-string v1, "UPDATE room_table_modification_log SET invalidated = 0 WHERE invalidated = 1"

    invoke-static {p1, v1, v0}, LG5/A3;->c(LJ2/G;Ljava/lang/String;Lkb/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, p2, :cond_5

    goto :goto_3

    :cond_5
    move-object p1, p0

    :goto_2
    move-object p2, p1

    goto :goto_3

    :cond_6
    move-object p2, p0

    :goto_3
    return-object p2
.end method

.method public static final b(LJ2/C0;Lkb/c;)Ljava/lang/Object;
    .locals 7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, LJ2/s0;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, LJ2/s0;

    iget v1, v0, LJ2/s0;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, LJ2/s0;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, LJ2/s0;

    invoke-direct {v0, p0, p1}, LJ2/s0;-><init>(LJ2/C0;Lkb/c;)V

    :goto_0
    iget-object p1, v0, LJ2/s0;->c:Ljava/lang/Object;

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v0, LJ2/s0;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, LJ2/s0;->b:LK2/a;

    iget-object v0, v0, LJ2/s0;->a:LJ2/C0;

    :try_start_0
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, p0

    move-object p0, v0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p1, p0, LJ2/C0;->a:LJ2/U;

    invoke-virtual {p1}, LJ2/U;->getCloseBarrier$room_runtime_release()LK2/a;

    move-result-object v2

    invoke-virtual {v2}, LK2/a;->a()Z

    move-result v4

    sget-object v5, Lfb/x;->a:Lfb/x;

    if-eqz v4, :cond_3

    :try_start_1
    iget-object v4, p0, LJ2/C0;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v6, 0x0

    invoke-virtual {v4, v3, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v4, :cond_4

    :goto_1
    invoke-virtual {v2}, LK2/a;->b()V

    :cond_3
    move-object v1, v5

    goto :goto_5

    :cond_4
    :try_start_2
    iget-object v4, p0, LJ2/C0;->k:Lsb/a;

    invoke-interface {v4}, Lsb/a;->invoke()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_1

    :cond_5
    new-instance v4, LJ2/u0;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, LJ2/u0;-><init>(LJ2/C0;Lib/c;)V

    iput-object p0, v0, LJ2/s0;->a:LJ2/C0;

    iput-object v2, v0, LJ2/s0;->b:LK2/a;

    iput v3, v0, LJ2/s0;->e:I

    invoke-virtual {p1, v6, v4, v0}, LJ2/U;->useConnection$room_runtime_release(ZLsb/n;Lib/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    goto :goto_5

    :cond_6
    :goto_2
    move-object v1, p1

    check-cast v1, Ljava/util/Set;

    move-object p1, v1

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, LJ2/C0;->i:LI3/d;

    invoke-virtual {p1, v1}, LI3/d;->g(Ljava/util/Set;)V

    iget-object p0, p0, LJ2/C0;->e:LJ2/p;

    invoke-virtual {p0, v1}, LJ2/p;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p1

    move-object p0, v2

    goto :goto_4

    :cond_7
    :goto_3
    invoke-virtual {v2}, LK2/a;->b()V

    goto :goto_5

    :goto_4
    invoke-virtual {p0}, LK2/a;->b()V

    throw p1

    :goto_5
    return-object v1
.end method

.method public static final c(LJ2/C0;LJ2/m0;ILkb/c;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v4, v3, LJ2/w0;

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, LJ2/w0;

    iget v5, v4, LJ2/w0;->j:I

    const/high16 v6, -0x80000000

    and-int v7, v5, v6

    if-eqz v7, :cond_0

    sub-int/2addr v5, v6

    iput v5, v4, LJ2/w0;->j:I

    goto :goto_0

    :cond_0
    new-instance v4, LJ2/w0;

    invoke-direct {v4, v0, v3}, LJ2/w0;-><init>(LJ2/C0;Lkb/c;)V

    :goto_0
    iget-object v3, v4, LJ2/w0;->h:Ljava/lang/Object;

    sget-object v5, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v6, v4, LJ2/w0;->j:I

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v6, :cond_3

    if-eq v6, v8, :cond_2

    if-ne v6, v7, :cond_1

    iget v0, v4, LJ2/w0;->g:I

    iget v1, v4, LJ2/w0;->f:I

    iget v2, v4, LJ2/w0;->e:I

    iget-object v6, v4, LJ2/w0;->d:[Ljava/lang/String;

    iget-object v9, v4, LJ2/w0;->c:Ljava/lang/String;

    iget-object v10, v4, LJ2/w0;->b:LJ2/G;

    iget-object v11, v4, LJ2/w0;->a:LJ2/C0;

    invoke-static {v3}, LG5/A2;->f(Ljava/lang/Object;)V

    move v3, v8

    goto/16 :goto_4

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget v0, v4, LJ2/w0;->e:I

    iget-object v1, v4, LJ2/w0;->b:LJ2/G;

    iget-object v2, v4, LJ2/w0;->a:LJ2/C0;

    invoke-static {v3}, LG5/A2;->f(Ljava/lang/Object;)V

    move-object/from16 v16, v2

    move v2, v0

    move-object/from16 v0, v16

    goto :goto_1

    :cond_3
    invoke-static {v3}, LG5/A2;->f(Ljava/lang/Object;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "INSERT OR IGNORE INTO room_table_modification_log VALUES("

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", 0)"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v0, v4, LJ2/w0;->a:LJ2/C0;

    iput-object v1, v4, LJ2/w0;->b:LJ2/G;

    iput v2, v4, LJ2/w0;->e:I

    iput v8, v4, LJ2/w0;->j:I

    invoke-static {v1, v3, v4}, LG5/A3;->c(LJ2/G;Ljava/lang/String;Lkb/c;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v5, :cond_4

    goto :goto_5

    :cond_4
    :goto_1
    iget-object v3, v0, LJ2/C0;->g:[Ljava/lang/String;

    aget-object v3, v3, v2

    sget-object v6, LJ2/C0;->l:[Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x3

    move-object v11, v0

    move v0, v10

    move-object v10, v1

    move v1, v9

    move-object v9, v3

    :goto_2
    if-ge v1, v0, :cond_7

    aget-object v3, v6, v1

    iget-boolean v12, v11, LJ2/C0;->d:Z

    if-eqz v12, :cond_5

    const-string v12, "TEMP"

    goto :goto_3

    :cond_5
    const-string v12, ""

    :goto_3
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "room_table_modification_trigger_"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v14, 0x5f

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, "CREATE "

    const-string v15, " TRIGGER IF NOT EXISTS `"

    const-string v8, "` AFTER "

    invoke-static {v14, v12, v15, v13, v8}, Lcom/sec/android/app/sbrowser/autofill/password/k;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v12, " ON `"

    const-string v13, "` BEGIN UPDATE room_table_modification_log SET invalidated = 1 WHERE table_id = "

    invoke-static {v8, v3, v12, v9, v13}, LB/e;->B(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, " AND invalidated = 0; END"

    invoke-static {v8, v2, v3}, LB/e;->p(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v11, v4, LJ2/w0;->a:LJ2/C0;

    iput-object v10, v4, LJ2/w0;->b:LJ2/G;

    iput-object v9, v4, LJ2/w0;->c:Ljava/lang/String;

    iput-object v6, v4, LJ2/w0;->d:[Ljava/lang/String;

    iput v2, v4, LJ2/w0;->e:I

    iput v1, v4, LJ2/w0;->f:I

    iput v0, v4, LJ2/w0;->g:I

    iput v7, v4, LJ2/w0;->j:I

    invoke-static {v10, v3, v4}, LG5/A3;->c(LJ2/G;Ljava/lang/String;Lkb/c;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v5, :cond_6

    goto :goto_5

    :cond_6
    const/4 v3, 0x1

    :goto_4
    add-int/2addr v1, v3

    move v8, v3

    goto :goto_2

    :cond_7
    sget-object v5, Ldb/r;->a:Ldb/r;

    :goto_5
    return-object v5
.end method

.method public static final d(LJ2/C0;LJ2/m0;ILkb/c;)Ljava/lang/Object;
    .locals 9

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p3, LJ2/x0;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, LJ2/x0;

    iget v1, v0, LJ2/x0;->h:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, LJ2/x0;->h:I

    goto :goto_0

    :cond_0
    new-instance v0, LJ2/x0;

    invoke-direct {v0, p0, p3}, LJ2/x0;-><init>(LJ2/C0;Lkb/c;)V

    :goto_0
    iget-object p3, v0, LJ2/x0;->f:Ljava/lang/Object;

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v0, LJ2/x0;->h:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget p0, v0, LJ2/x0;->e:I

    iget p1, v0, LJ2/x0;->d:I

    iget-object p2, v0, LJ2/x0;->c:[Ljava/lang/String;

    iget-object v2, v0, LJ2/x0;->b:Ljava/lang/String;

    iget-object v4, v0, LJ2/x0;->a:LJ2/G;

    invoke-static {p3}, LG5/A2;->f(Ljava/lang/Object;)V

    move-object p3, p2

    move-object p2, v4

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p3}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p0, p0, LJ2/C0;->g:[Ljava/lang/String;

    aget-object p0, p0, p2

    sget-object p2, LJ2/C0;->l:[Ljava/lang/String;

    const/4 p3, 0x0

    const/4 v2, 0x3

    move v7, v2

    move-object v2, p0

    move p0, v7

    move-object v8, p2

    move-object p2, p1

    move p1, p3

    move-object p3, v8

    :goto_1
    if-ge p1, p0, :cond_4

    aget-object v4, p3, p1

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "room_table_modification_trigger_"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x5f

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "DROP TRIGGER IF EXISTS `"

    const/16 v6, 0x60

    invoke-static {v6, v5, v4}, LB/e;->m(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object p2, v0, LJ2/x0;->a:LJ2/G;

    iput-object v2, v0, LJ2/x0;->b:Ljava/lang/String;

    iput-object p3, v0, LJ2/x0;->c:[Ljava/lang/String;

    iput p1, v0, LJ2/x0;->d:I

    iput p0, v0, LJ2/x0;->e:I

    iput v3, v0, LJ2/x0;->h:I

    invoke-static {p2, v4, v0}, LG5/A3;->c(LJ2/G;Ljava/lang/String;Lkb/c;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_3

    goto :goto_3

    :cond_3
    :goto_2
    add-int/2addr p1, v3

    goto :goto_1

    :cond_4
    sget-object v1, Ldb/r;->a:Ldb/r;

    :goto_3
    return-object v1
.end method


# virtual methods
.method public final e(LJ2/m;LJ2/m;)V
    .locals 3

    const-string v0, "onRefreshScheduled"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onRefreshCompleted"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LJ2/C0;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, LJ2/m;->invoke()Ljava/lang/Object;

    iget-object p1, p0, LJ2/C0;->a:LJ2/U;

    invoke-virtual {p1}, LJ2/U;->getCoroutineScope()LNc/B;

    move-result-object p1

    new-instance v0, LNc/A;

    const-string v1, "Room Invalidation Tracker Refresh"

    invoke-direct {v0, v1}, LNc/A;-><init>(Ljava/lang/String;)V

    new-instance v1, LJ2/v0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p2, v2}, LJ2/v0;-><init>(LJ2/C0;LJ2/m;Lib/c;)V

    const/4 p0, 0x2

    invoke-static {p1, v0, v2, v1, p0}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    :cond_0
    return-void
.end method

.method public final f(Lkb/c;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p1, LJ2/y0;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, LJ2/y0;

    iget v1, v0, LJ2/y0;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, LJ2/y0;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, LJ2/y0;

    invoke-direct {v0, p0, p1}, LJ2/y0;-><init>(LJ2/C0;Lkb/c;)V

    :goto_0
    iget-object p1, v0, LJ2/y0;->b:Ljava/lang/Object;

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v0, LJ2/y0;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, LJ2/y0;->a:LK2/a;

    :try_start_0
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p1, p0, LJ2/C0;->a:LJ2/U;

    invoke-virtual {p1}, LJ2/U;->getCloseBarrier$room_runtime_release()LK2/a;

    move-result-object v2

    invoke-virtual {v2}, LK2/a;->a()Z

    move-result v4

    if-eqz v4, :cond_4

    :try_start_1
    new-instance v4, LJ2/B0;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, LJ2/B0;-><init>(LJ2/C0;Lib/c;)V

    iput-object v2, v0, LJ2/y0;->a:LK2/a;

    iput v3, v0, LJ2/y0;->d:I

    const/4 p0, 0x0

    invoke-virtual {p1, p0, v4, v0}, LJ2/U;->useConnection$room_runtime_release(ZLsb/n;Lib/c;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    move-object p0, v2

    :goto_1
    invoke-virtual {p0}, LK2/a;->b()V

    goto :goto_3

    :catchall_1
    move-exception p1

    move-object p0, v2

    :goto_2
    invoke-virtual {p0}, LK2/a;->b()V

    throw p1

    :cond_4
    :goto_3
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method public final g([Ljava/lang/String;)Ldb/j;
    .locals 7

    new-instance v0, Lgb/h;

    invoke-direct {v0}, Lgb/h;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const-string v4, "toLowerCase(...)"

    if-ge v3, v1, :cond_1

    aget-object v5, p1, v3

    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v4}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, LJ2/C0;->c:Ljava/util/HashMap;

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    if-eqz v4, :cond_0

    check-cast v4, Ljava/util/Collection;

    invoke-virtual {v0, v4}, Lgb/h;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v5}, Lgb/h;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lfb/F;->a(Lgb/h;)Lgb/h;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/AbstractCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    array-length v0, p1

    new-array v1, v0, [I

    :goto_2
    if-ge v2, v0, :cond_3

    aget-object v3, p1, v2

    iget-object v5, p0, LJ2/C0;->f:Ljava/util/LinkedHashMap;

    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v4}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "There is no table with name "

    invoke-virtual {p1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ldb/j;

    invoke-direct {p0, p1, v1}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method
