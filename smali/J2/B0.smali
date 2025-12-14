.class public final LJ2/B0;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public a:I

.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:LJ2/C0;


# direct methods
.method public constructor <init>(LJ2/C0;Lib/c;)V
    .locals 0

    iput-object p1, p0, LJ2/B0;->c:LJ2/C0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 1

    new-instance v0, LJ2/B0;

    iget-object p0, p0, LJ2/B0;->c:LJ2/C0;

    invoke-direct {v0, p0, p2}, LJ2/B0;-><init>(LJ2/C0;Lib/c;)V

    iput-object p1, v0, LJ2/B0;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LJ2/m0;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, LJ2/B0;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, LJ2/B0;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, LJ2/B0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v0, p0

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v0, LJ2/B0;->a:I

    sget-object v3, Ldb/r;->a:Ldb/r;

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-eqz v2, :cond_2

    if-eq v2, v4, :cond_1

    if-ne v2, v5, :cond_0

    invoke-static/range {p1 .. p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v2, v0, LJ2/B0;->b:Ljava/lang/Object;

    check-cast v2, LJ2/m0;

    invoke-static/range {p1 .. p1}, LG5/A2;->f(Ljava/lang/Object;)V

    move-object/from16 v6, p1

    goto :goto_0

    :cond_2
    invoke-static/range {p1 .. p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object v2, v0, LJ2/B0;->b:Ljava/lang/Object;

    check-cast v2, LJ2/m0;

    iput-object v2, v0, LJ2/B0;->b:Ljava/lang/Object;

    iput v4, v0, LJ2/B0;->a:I

    invoke-interface {v2, v0}, LJ2/m0;->b(Lkb/i;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v1, :cond_3

    return-object v1

    :cond_3
    :goto_0
    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_4

    return-object v3

    :cond_4
    iget-object v6, v0, LJ2/B0;->c:LJ2/C0;

    iget-object v7, v6, LJ2/C0;->h:Lcom/samsung/android/scloud/lib/setting/e;

    iget-object v8, v7, Lcom/samsung/android/scloud/lib/setting/e;->d:Ljava/lang/Object;

    check-cast v8, [J

    iget-object v9, v7, Lcom/samsung/android/scloud/lib/setting/e;->c:Ljava/lang/Object;

    check-cast v9, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v9}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-boolean v10, v7, Lcom/samsung/android/scloud/lib/setting/e;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v11, 0x0

    if-nez v10, :cond_5

    invoke-virtual {v9}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move-object v13, v11

    goto :goto_6

    :cond_5
    const/4 v10, 0x0

    :try_start_1
    iput-boolean v10, v7, Lcom/samsung/android/scloud/lib/setting/e;->b:Z

    array-length v12, v8

    new-array v13, v12, [LJ2/D;

    move v14, v10

    move v15, v14

    :goto_1
    if-ge v14, v12, :cond_9

    aget-wide v16, v8, v14

    const-wide/16 v18, 0x0

    cmp-long v16, v16, v18

    if-lez v16, :cond_6

    goto :goto_2

    :cond_6
    move v4, v10

    :goto_2
    iget-object v10, v7, Lcom/samsung/android/scloud/lib/setting/e;->e:Ljava/lang/Object;

    check-cast v10, [Z

    aget-boolean v5, v10, v14

    if-eq v4, v5, :cond_8

    aput-boolean v4, v10, v14

    if-eqz v4, :cond_7

    sget-object v4, LJ2/D;->ADD:LJ2/D;

    :goto_3
    const/4 v15, 0x1

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_8

    :cond_7
    sget-object v4, LJ2/D;->REMOVE:LJ2/D;

    goto :goto_3

    :cond_8
    sget-object v4, LJ2/D;->NO_OP:LJ2/D;

    :goto_4
    aput-object v4, v13, v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v14, v14, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v10, 0x0

    goto :goto_1

    :cond_9
    if-eqz v15, :cond_a

    goto :goto_5

    :cond_a
    move-object v13, v11

    :goto_5
    invoke-virtual {v9}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_6
    if-eqz v13, :cond_b

    sget-object v4, LJ2/l0;->IMMEDIATE:LJ2/l0;

    new-instance v5, LJ2/A0;

    invoke-direct {v5, v13, v6, v2, v11}, LJ2/A0;-><init>([LJ2/D;LJ2/C0;LJ2/m0;Lib/c;)V

    iput-object v11, v0, LJ2/B0;->b:Ljava/lang/Object;

    const/4 v6, 0x2

    iput v6, v0, LJ2/B0;->a:I

    invoke-interface {v2, v4, v5, v0}, LJ2/m0;->d(LJ2/l0;Lsb/n;Lkb/i;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_b

    return-object v1

    :cond_b
    :goto_7
    return-object v3

    :goto_8
    invoke-virtual {v9}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method
