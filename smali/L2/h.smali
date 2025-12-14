.class public final LL2/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LL2/b;


# instance fields
.field public final a:LL2/n;

.field public final b:LL2/n;

.field public final c:Ljava/lang/ThreadLocal;

.field public final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final e:J


# direct methods
.method public constructor <init>(LA7/h;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, LL2/h;->c:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, LL2/h;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    sget v0, LLc/a;->c:I

    const/16 v0, 0x1e

    sget-object v1, LLc/c;->SECONDS:LLc/c;

    invoke-static {v0, v1}, LOd/b;->h(ILLc/c;)J

    move-result-wide v0

    iput-wide v0, p0, LL2/h;->e:J

    new-instance v0, LL2/n;

    new-instance v1, LJ2/L;

    const/4 v2, 0x4

    invoke-direct {v1, v2, p1}, LJ2/L;-><init>(ILjava/lang/Object;)V

    const/4 p1, 0x1

    invoke-direct {v0, p1, v1}, LL2/n;-><init>(ILsb/a;)V

    iput-object v0, p0, LL2/h;->a:LL2/n;

    iput-object v0, p0, LL2/h;->b:LL2/n;

    return-void
.end method

.method public constructor <init>(LA7/h;Ljava/lang/String;I)V
    .locals 5

    const/4 v0, 0x1

    const-string v1, "fileName"

    invoke-static {p2, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/lang/ThreadLocal;

    invoke-direct {v1}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v1, p0, LL2/h;->c:Ljava/lang/ThreadLocal;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, LL2/h;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    sget v1, LLc/a;->c:I

    const/16 v1, 0x1e

    sget-object v3, LLc/c;->SECONDS:LLc/c;

    invoke-static {v1, v3}, LOd/b;->h(ILLc/c;)J

    move-result-wide v3

    iput-wide v3, p0, LL2/h;->e:J

    if-lez p3, :cond_0

    new-instance v1, LL2/n;

    new-instance v3, LL2/c;

    invoke-direct {v3, p1, p2, v2}, LL2/c;-><init>(LA7/h;Ljava/lang/String;I)V

    invoke-direct {v1, p3, v3}, LL2/n;-><init>(ILsb/a;)V

    iput-object v1, p0, LL2/h;->a:LL2/n;

    new-instance p3, LL2/n;

    new-instance v1, LL2/c;

    invoke-direct {v1, p1, p2, v0}, LL2/c;-><init>(LA7/h;Ljava/lang/String;I)V

    invoke-direct {p3, v0, v1}, LL2/n;-><init>(ILsb/a;)V

    iput-object p3, p0, LL2/h;->b:LL2/n;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Maximum number of readers must be greater than 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a(Z)V
    .locals 3

    if-eqz p1, :cond_0

    const-string p1, "reader"

    goto :goto_0

    :cond_0
    const-string p1, "writer"

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Timed out attempting to acquire a "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " connection."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n\nWriter pool:\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, LL2/h;->b:LL2/n;

    invoke-virtual {p1, v0}, LL2/n;->c(Ljava/lang/StringBuilder;)V

    const-string p1, "Reader pool:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, LL2/h;->a:LL2/n;

    invoke-virtual {p0, v0}, LL2/n;->c(Ljava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x5

    invoke-static {p1, p0}, LG5/j2;->e(ILjava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final close()V
    .locals 3

    iget-object v0, p0, LL2/h;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LL2/h;->a:LL2/n;

    invoke-virtual {v0}, LL2/n;->b()V

    iget-object p0, p0, LL2/h;->b:LL2/n;

    invoke-virtual {p0}, LL2/n;->b()V

    :cond_0
    return-void
.end method

.method public final h0(ZLsb/n;Lib/c;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v0, p3

    instance-of v4, v0, LL2/e;

    if-eqz v4, :cond_0

    move-object v4, v0

    check-cast v4, LL2/e;

    iget v5, v4, LL2/e;->j:I

    const/high16 v6, -0x80000000

    and-int v7, v5, v6

    if-eqz v7, :cond_0

    sub-int/2addr v5, v6

    iput v5, v4, LL2/e;->j:I

    goto :goto_0

    :cond_0
    new-instance v4, LL2/e;

    invoke-direct {v4, v1, v0}, LL2/e;-><init>(LL2/h;Lib/c;)V

    :goto_0
    iget-object v0, v4, LL2/e;->h:Ljava/lang/Object;

    sget-object v5, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v6, v4, LL2/e;->j:I

    const-string v7, "ROLLBACK TRANSACTION"

    const-string v8, "<this>"

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x4

    const/4 v13, 0x3

    const/4 v14, 0x2

    if-eqz v6, :cond_4

    if-eq v6, v10, :cond_3

    if-eq v6, v14, :cond_3

    if-eq v6, v13, :cond_2

    if-ne v6, v12, :cond_1

    iget-object v1, v4, LL2/e;->b:Ljava/lang/Object;

    check-cast v1, Ltb/w;

    iget-object v2, v4, LL2/e;->a:Ljava/lang/Object;

    check-cast v2, LL2/n;

    :try_start_0
    invoke-static {v0}, LG5/A2;->f(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_e

    :catchall_0
    move-exception v0

    move-object v14, v1

    :goto_1
    move-object v1, v0

    goto/16 :goto_10

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-boolean v1, v4, LL2/e;->g:Z

    iget-object v2, v4, LL2/e;->f:Ltb/w;

    iget-object v3, v4, LL2/e;->e:Lib/h;

    iget-object v6, v4, LL2/e;->d:Ltb/w;

    iget-object v13, v4, LL2/e;->c:LL2/n;

    iget-object v14, v4, LL2/e;->b:Ljava/lang/Object;

    check-cast v14, Lsb/n;

    iget-object v15, v4, LL2/e;->a:Ljava/lang/Object;

    check-cast v15, LL2/h;

    :try_start_1
    invoke-static {v0}, LG5/A2;->f(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_7

    :catchall_1
    move-exception v0

    move-object v9, v2

    move v2, v1

    move-object v1, v15

    move-object v15, v3

    move-object v3, v14

    goto/16 :goto_a

    :cond_3
    invoke-static {v0}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_4

    :cond_4
    invoke-static {v0}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object v0, v1, LL2/h;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, v1, LL2/h;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LL2/w;

    sget-object v15, LL2/a;->b:LE5/v;

    if-nez v6, :cond_6

    invoke-interface {v4}, Lib/c;->getContext()Lib/h;

    move-result-object v6

    invoke-interface {v6, v15}, Lib/h;->get(Lib/g;)Lib/f;

    move-result-object v6

    check-cast v6, LL2/a;

    if-eqz v6, :cond_5

    iget-object v6, v6, LL2/a;->a:LL2/w;

    goto :goto_2

    :cond_5
    move-object v6, v11

    :cond_6
    :goto_2
    if-eqz v6, :cond_b

    if-nez v2, :cond_8

    iget-boolean v1, v6, LL2/w;->b:Z

    if-nez v1, :cond_7

    goto :goto_3

    :cond_7
    const-string v0, "Cannot upgrade connection from reader to writer"

    invoke-static {v10, v0}, LG5/j2;->e(ILjava/lang/String;)V

    throw v11

    :cond_8
    :goto_3
    invoke-interface {v4}, Lib/c;->getContext()Lib/h;

    move-result-object v1

    invoke-interface {v1, v15}, Lib/h;->get(Lib/g;)Lib/f;

    move-result-object v1

    if-nez v1, :cond_9

    new-instance v1, LL2/a;

    invoke-direct {v1, v6}, LL2/a;-><init>(LL2/w;)V

    invoke-static {v0, v8}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, LUc/B;

    invoke-direct {v2, v6, v0}, LUc/B;-><init>(Ljava/lang/Object;Ljava/lang/ThreadLocal;)V

    invoke-static {v1, v2}, LG5/O3;->c(Lib/h;Lib/h;)Lib/h;

    move-result-object v0

    new-instance v1, LL2/f;

    invoke-direct {v1, v3, v6, v11}, LL2/f;-><init>(Lsb/n;LL2/w;Lib/c;)V

    iput v10, v4, LL2/e;->j:I

    invoke-static {v0, v1, v4}, LNc/E;->K(Lib/h;Lsb/n;Lib/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v5, :cond_a

    return-object v5

    :cond_9
    iput v14, v4, LL2/e;->j:I

    invoke-interface {v3, v6, v4}, Lsb/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v5, :cond_a

    return-object v5

    :cond_a
    :goto_4
    return-object v0

    :cond_b
    if-eqz v2, :cond_c

    iget-object v0, v1, LL2/h;->a:LL2/n;

    :goto_5
    move-object v6, v0

    goto :goto_6

    :cond_c
    iget-object v0, v1, LL2/h;->b:LL2/n;

    goto :goto_5

    :goto_6
    new-instance v14, Ltb/w;

    invoke-direct {v14}, Ljava/lang/Object;-><init>()V

    :try_start_2
    invoke-interface {v4}, Lib/c;->getContext()Lib/h;

    move-result-object v15

    new-instance v9, Ltb/w;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    :try_start_3
    iget-wide v12, v1, LL2/h;->e:J

    new-instance v0, LL2/d;

    invoke-direct {v0, v9, v6, v11}, LL2/d;-><init>(Ltb/w;LL2/n;Lib/c;)V

    iput-object v1, v4, LL2/e;->a:Ljava/lang/Object;

    iput-object v3, v4, LL2/e;->b:Ljava/lang/Object;

    iput-object v6, v4, LL2/e;->c:LL2/n;

    iput-object v14, v4, LL2/e;->d:Ltb/w;

    iput-object v15, v4, LL2/e;->e:Lib/h;

    iput-object v9, v4, LL2/e;->f:Ltb/w;

    iput-boolean v2, v4, LL2/e;->g:Z

    const/4 v10, 0x3

    iput v10, v4, LL2/e;->j:I

    invoke-static {v12, v13}, LNc/E;->H(J)J

    move-result-wide v12

    invoke-static {v12, v13, v0, v4}, LNc/E;->L(JLsb/n;Lkb/c;)Ljava/lang/Object;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-ne v0, v5, :cond_d

    return-object v5

    :cond_d
    move-object v13, v6

    move-object v6, v14

    move-object v14, v3

    move-object v3, v15

    move-object v15, v1

    move v1, v2

    move-object v2, v9

    :goto_7
    move-object v9, v2

    move-object v0, v11

    move v2, v1

    :goto_8
    move-object v1, v6

    goto :goto_b

    :goto_9
    move-object v13, v6

    move-object v6, v14

    goto :goto_a

    :catchall_2
    move-exception v0

    goto :goto_9

    :goto_a
    move-object v14, v3

    move-object v3, v15

    move-object v15, v1

    goto :goto_8

    :goto_b
    :try_start_4
    iget-object v6, v9, Ltb/w;->a:Ljava/lang/Object;

    check-cast v6, LL2/i;

    if-eqz v6, :cond_f

    new-instance v9, LL2/w;

    const-string v10, "context"

    invoke-static {v3, v10}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v3, v6, LL2/i;->c:Lib/h;

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    iput-object v3, v6, LL2/i;->d:Ljava/lang/Throwable;

    iget-object v3, v15, LL2/h;->a:LL2/n;

    iget-object v10, v15, LL2/h;->b:LL2/n;

    if-eq v3, v10, :cond_e

    if-eqz v2, :cond_e

    const/4 v3, 0x1

    goto :goto_c

    :cond_e
    const/4 v3, 0x0

    :goto_c
    invoke-direct {v9, v6, v3}, LL2/w;-><init>(LL2/i;Z)V

    goto :goto_d

    :catchall_3
    move-exception v0

    move-object v14, v1

    move-object v2, v13

    goto/16 :goto_1

    :cond_f
    move-object v9, v11

    :goto_d
    iput-object v9, v1, Ltb/w;->a:Ljava/lang/Object;

    instance-of v3, v0, LNc/H0;

    if-nez v3, :cond_15

    if-nez v0, :cond_14

    if-eqz v9, :cond_13

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, LL2/a;

    invoke-direct {v0, v9}, LL2/a;-><init>(LL2/w;)V

    iget-object v2, v15, LL2/h;->c:Ljava/lang/ThreadLocal;

    invoke-static {v2, v8}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, LUc/B;

    invoke-direct {v3, v9, v2}, LUc/B;-><init>(Ljava/lang/Object;Ljava/lang/ThreadLocal;)V

    invoke-static {v0, v3}, LG5/O3;->c(Lib/h;Lib/h;)Lib/h;

    move-result-object v0

    new-instance v2, LL2/g;

    invoke-direct {v2, v14, v1, v11}, LL2/g;-><init>(Lsb/n;Ltb/w;Lib/c;)V

    iput-object v13, v4, LL2/e;->a:Ljava/lang/Object;

    iput-object v1, v4, LL2/e;->b:Ljava/lang/Object;

    iput-object v11, v4, LL2/e;->c:LL2/n;

    iput-object v11, v4, LL2/e;->d:Ltb/w;

    iput-object v11, v4, LL2/e;->e:Lib/h;

    iput-object v11, v4, LL2/e;->f:Ltb/w;

    const/4 v3, 0x4

    iput v3, v4, LL2/e;->j:I

    invoke-static {v0, v2, v4}, LNc/E;->K(Lib/h;Lsb/n;Lib/c;)Ljava/lang/Object;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-ne v0, v5, :cond_10

    return-object v5

    :cond_10
    move-object v2, v13

    :goto_e
    :try_start_5
    iget-object v1, v1, Ltb/w;->a:Ljava/lang/Object;

    check-cast v1, LL2/w;

    if-eqz v1, :cond_12

    iget-object v3, v1, LL2/w;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    iget-object v1, v1, LL2/w;->a:LL2/i;

    if-eqz v3, :cond_11

    :try_start_6
    invoke-static {v7, v1}, LG5/j2;->b(Ljava/lang/String;LS2/a;)V
    :try_end_6
    .catch Landroid/database/SQLException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :catch_0
    :cond_11
    :try_start_7
    iput-object v11, v1, LL2/i;->c:Lib/h;

    iput-object v11, v1, LL2/i;->d:Ljava/lang/Throwable;

    invoke-virtual {v2, v1}, LL2/n;->d(LL2/i;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :catchall_4
    :cond_12
    return-object v0

    :cond_13
    :try_start_8
    const-string v0, "Required value was null."

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_14
    throw v0

    :cond_15
    invoke-virtual {v15, v2}, LL2/h;->a(Z)V

    throw v11
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :goto_f
    move-object v1, v0

    move-object v2, v6

    goto :goto_10

    :catchall_5
    move-exception v0

    goto :goto_f

    :goto_10
    :try_start_9
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    :catchall_6
    move-exception v0

    move-object v3, v0

    :try_start_a
    iget-object v0, v14, Ltb/w;->a:Ljava/lang/Object;

    check-cast v0, LL2/w;

    if-eqz v0, :cond_17

    iget-object v4, v0, LL2/w;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    iget-object v0, v0, LL2/w;->a:LL2/i;

    if-eqz v4, :cond_16

    :try_start_b
    invoke-static {v7, v0}, LG5/j2;->b(Ljava/lang/String;LS2/a;)V
    :try_end_b
    .catch Landroid/database/SQLException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    :catch_1
    :cond_16
    :try_start_c
    iput-object v11, v0, LL2/i;->c:Lib/h;

    iput-object v11, v0, LL2/i;->d:Ljava/lang/Throwable;

    invoke-virtual {v2, v0}, LL2/n;->d(LL2/i;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    goto :goto_11

    :catchall_7
    move-exception v0

    invoke-static {v1, v0}, LG5/y2;->b(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_17
    :goto_11
    throw v3

    :cond_18
    const/16 v0, 0x15

    const-string v1, "Connection pool is closed"

    invoke-static {v0, v1}, LG5/j2;->e(ILjava/lang/String;)V

    throw v11
.end method
