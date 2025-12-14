.class public abstract LUc/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LQ6/i;

.field public static final b:LQ6/i;

.field public static final c:LQ6/i;

.field public static final d:LQ6/i;

.field public static final e:LQ6/i;

.field public static final f:LQ6/i;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    new-instance v0, LQ6/i;

    const-string v1, "NO_DECISION"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LQ6/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, LUc/a;->a:LQ6/i;

    new-instance v0, LQ6/i;

    const-string v1, "CLOSED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LQ6/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, LUc/a;->b:LQ6/i;

    new-instance v0, LQ6/i;

    const-string v1, "UNDEFINED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LQ6/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, LUc/a;->c:LQ6/i;

    new-instance v0, LQ6/i;

    const-string v1, "REUSABLE_CLAIMED"

    invoke-direct {v0, v1, v2}, LQ6/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, LUc/a;->d:LQ6/i;

    new-instance v0, LQ6/i;

    const-string v1, "CONDITION_FALSE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LQ6/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, LUc/a;->e:LQ6/i;

    new-instance v0, LQ6/i;

    const-string v1, "NO_THREAD_ELEMENTS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LQ6/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, LUc/a;->f:LQ6/i;

    return-void
.end method

.method public static final a(Lsb/k;Ljava/lang/Object;LI5/b;)LI5/b;
    .locals 1

    :try_start_0
    invoke-interface {p0, p1}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eq v0, p0, :cond_0

    invoke-static {p2, p0}, LG5/y2;->b(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_0
    return-object p2

    :cond_0
    new-instance p2, LI5/b;

    const-string v0, "Exception in undelivered element handler for "

    invoke-static {p1, v0}, Lt/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p2
.end method

.method public static final b(I)V
    .locals 1

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    return-void

    :cond_0
    const-string v0, "Expected positive parallelism level, but got "

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/autofill/password/k;->i(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final c(LUc/x;JLsb/n;)Ljava/lang/Object;
    .locals 4

    :goto_0
    iget-wide v0, p0, LUc/x;->c:J

    cmp-long v0, v0, p1

    if-ltz v0, :cond_1

    invoke-virtual {p0}, LUc/x;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    return-object p0

    :cond_1
    :goto_1
    sget-object v0, LUc/d;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, LUc/a;->b:LQ6/i;

    if-ne v0, v1, :cond_2

    return-object v1

    :cond_2
    check-cast v0, LUc/d;

    check-cast v0, LUc/x;

    if-eqz v0, :cond_4

    :cond_3
    :goto_2
    move-object p0, v0

    goto :goto_0

    :cond_4
    iget-wide v0, p0, LUc/x;->c:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p3, v0, p0}, Lsb/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LUc/x;

    :cond_5
    sget-object v1, LUc/d;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p0}, LUc/x;->d()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, LUc/d;->e()V

    goto :goto_2

    :cond_6
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    goto :goto_0
.end method

.method public static final d(Ljava/lang/Object;)LUc/x;
    .locals 1

    sget-object v0, LUc/a;->b:LQ6/i;

    if-eq p0, v0, :cond_0

    check-cast p0, LUc/x;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Does not contain segment"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final e(Lib/h;Ljava/lang/Throwable;)V
    .locals 4

    sget-object v0, LUc/f;->a:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LNc/z;

    :try_start_0
    invoke-interface {v1, p0, p1}, LNc/z;->handleException(Lib/h;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    if-ne p1, v1, :cond_0

    move-object v2, p1

    goto :goto_1

    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Exception while trying to handle coroutine exception"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v2, p1}, LG5/y2;->b(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    :try_start_1
    new-instance v0, LUc/g;

    invoke-direct {v0, p0}, LUc/g;-><init>(Lib/h;)V

    invoke-static {p1, v0}, LG5/y2;->b(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final f(Ljava/lang/Object;)Z
    .locals 1

    sget-object v0, LUc/a;->b:LQ6/i;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    if-nez p0, :cond_0

    move-object p0, p1

    goto :goto_0

    :cond_0
    instance-of v0, p0, Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static final h(Lib/h;Ljava/lang/Object;)V
    .locals 4

    sget-object v0, LUc/a;->f:LQ6/i;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    instance-of v0, p1, LUc/E;

    if-eqz v0, :cond_2

    check-cast p1, LUc/E;

    iget-object p0, p1, LUc/E;->c:[LUc/B;

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_3

    :goto_0
    add-int/lit8 v1, v0, -0x1

    aget-object v2, p0, v0

    invoke-static {v2}, Ltb/k;->c(Ljava/lang/Object;)V

    iget-object v3, p1, LUc/E;->b:[Ljava/lang/Object;

    aget-object v0, v3, v0

    invoke-virtual {v2, v0}, LUc/B;->d(Ljava/lang/Object;)V

    if-gez v1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    sget-object v0, LUc/A;->c:LUc/A;

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Lib/h;->fold(Ljava/lang/Object;Lsb/n;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>"

    invoke-static {p0, v0}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, LUc/B;

    invoke-virtual {p0, p1}, LUc/B;->d(Ljava/lang/Object;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public static final i(Lib/c;Ljava/lang/Object;Lsb/k;)V
    .locals 6

    instance-of v0, p0, LUc/h;

    if-eqz v0, :cond_a

    check-cast p0, LUc/h;

    invoke-static {p1}, Ldb/m;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    new-instance v0, LNc/t;

    invoke-direct {v0, p1, p2}, LNc/t;-><init>(Ljava/lang/Object;Lsb/k;)V

    goto :goto_0

    :cond_0
    move-object v0, p1

    goto :goto_0

    :cond_1
    new-instance p2, LNc/s;

    const/4 v1, 0x0

    invoke-direct {p2, v1, v0}, LNc/s;-><init>(ZLjava/lang/Throwable;)V

    move-object v0, p2

    :goto_0
    iget-object p2, p0, LUc/h;->e:Lkb/c;

    invoke-interface {p2}, Lib/c;->getContext()Lib/h;

    move-result-object v1

    iget-object v2, p0, LUc/h;->d:LNc/x;

    invoke-virtual {v2, v1}, LNc/x;->H(Lib/h;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    iput-object v0, p0, LUc/h;->f:Ljava/lang/Object;

    iput v3, p0, LNc/L;->c:I

    invoke-interface {p2}, Lib/c;->getContext()Lib/h;

    move-result-object p1

    invoke-virtual {v2, p1, p0}, LNc/x;->v(Lib/h;Ljava/lang/Runnable;)V

    goto/16 :goto_5

    :cond_2
    invoke-static {}, LNc/F0;->a()LNc/Y;

    move-result-object v1

    invoke-virtual {v1}, LNc/Y;->W()Z

    move-result v2

    if-eqz v2, :cond_3

    iput-object v0, p0, LUc/h;->f:Ljava/lang/Object;

    iput v3, p0, LNc/L;->c:I

    invoke-virtual {v1, p0}, LNc/Y;->S(LNc/L;)V

    goto/16 :goto_5

    :cond_3
    invoke-virtual {v1, v3}, LNc/Y;->V(Z)V

    const/4 v2, 0x0

    :try_start_0
    invoke-interface {p2}, Lib/c;->getContext()Lib/h;

    move-result-object v4

    sget-object v5, LNc/i0;->a:LNc/i0;

    invoke-interface {v4, v5}, Lib/h;->get(Lib/g;)Lib/f;

    move-result-object v4

    check-cast v4, LNc/j0;

    if-eqz v4, :cond_4

    invoke-interface {v4}, LNc/j0;->b()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-interface {v4}, LNc/j0;->f()Ljava/util/concurrent/CancellationException;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, LUc/h;->b(Ljava/lang/Object;Ljava/util/concurrent/CancellationException;)V

    invoke-static {p1}, LG5/A2;->c(Ljava/lang/Throwable;)Ldb/l;

    move-result-object p1

    invoke-virtual {p0, p1}, LUc/h;->resumeWith(Ljava/lang/Object;)V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_4
    iget-object v0, p0, LUc/h;->g:Ljava/lang/Object;

    invoke-interface {p2}, Lib/c;->getContext()Lib/h;

    move-result-object v4

    invoke-static {v4, v0}, LUc/a;->n(Lib/h;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v5, LUc/a;->f:LQ6/i;

    if-eq v0, v5, :cond_5

    invoke-static {p2, v4, v0}, LNc/E;->J(Lib/c;Lib/h;Ljava/lang/Object;)LNc/L0;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_5
    move-object v5, v2

    :goto_1
    :try_start_1
    invoke-interface {p2, p1}, Lib/c;->resumeWith(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v5, :cond_6

    :try_start_2
    invoke-virtual {v5}, LNc/L0;->j0()Z

    move-result p1

    if-eqz p1, :cond_7

    :cond_6
    invoke-static {v4, v0}, LUc/a;->h(Lib/h;Ljava/lang/Object;)V

    :cond_7
    :goto_2
    invoke-virtual {v1}, LNc/Y;->d0()Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez p1, :cond_7

    :goto_3
    invoke-virtual {v1, v3}, LNc/Y;->K(Z)V

    goto :goto_5

    :catchall_1
    move-exception p1

    if-eqz v5, :cond_8

    :try_start_3
    invoke-virtual {v5}, LNc/L0;->j0()Z

    move-result p2

    if-eqz p2, :cond_9

    :cond_8
    invoke-static {v4, v0}, LUc/a;->h(Lib/h;Ljava/lang/Object;)V

    :cond_9
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_4
    :try_start_4
    invoke-virtual {p0, p1, v2}, LNc/L;->g(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception p0

    invoke-virtual {v1, v3}, LNc/Y;->K(Z)V

    throw p0

    :cond_a
    invoke-interface {p0, p1}, Lib/c;->resumeWith(Ljava/lang/Object;)V

    :goto_5
    return-void
.end method

.method public static synthetic j(Lib/c;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, LUc/a;->i(Lib/c;Ljava/lang/Object;Lsb/k;)V

    return-void
.end method

.method public static final k(Ljava/lang/String;JJJ)J
    .locals 22

    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    move-wide/from16 v3, p5

    const/4 v5, 0x1

    sget v6, LUc/z;->a:I

    :try_start_0
    invoke-static/range {p0 .. p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v7, 0x0

    :goto_0
    if-nez v7, :cond_0

    move-wide/from16 v5, p1

    goto/16 :goto_6

    :cond_0
    const/16 v8, 0xa

    invoke-static {v8}, LG5/W3;->a(I)V

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_2

    :cond_1
    :goto_1
    const/4 v6, 0x0

    goto/16 :goto_5

    :cond_2
    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x30

    invoke-static {v11, v12}, Ltb/k;->h(II)I

    move-result v12

    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    if-gez v12, :cond_5

    if-ne v9, v5, :cond_3

    goto :goto_1

    :cond_3
    const/16 v12, 0x2b

    if-eq v11, v12, :cond_6

    const/16 v10, 0x2d

    if-eq v11, v10, :cond_4

    goto :goto_1

    :cond_4
    const-wide/high16 v13, -0x8000000000000000L

    move v10, v5

    :cond_5
    move v11, v10

    goto :goto_2

    :cond_6
    move v11, v10

    move v10, v5

    :goto_2
    const-wide v15, -0x38e38e38e38e38eL    # -2.772000429909333E291

    const-wide/16 v17, 0x0

    move-wide/from16 v5, v17

    move-wide/from16 v18, v15

    :goto_3
    if-ge v10, v9, :cond_a

    invoke-virtual {v7, v10}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-static {v12, v8}, Ljava/lang/Character;->digit(II)I

    move-result v12

    if-gez v12, :cond_7

    goto :goto_1

    :cond_7
    cmp-long v20, v5, v18

    if-gez v20, :cond_8

    cmp-long v18, v18, v15

    if-nez v18, :cond_1

    int-to-long v3, v8

    div-long v18, v13, v3

    cmp-long v3, v5, v18

    if-gez v3, :cond_8

    goto :goto_1

    :cond_8
    int-to-long v3, v8

    mul-long/2addr v5, v3

    int-to-long v3, v12

    add-long v20, v13, v3

    cmp-long v12, v5, v20

    if-gez v12, :cond_9

    goto :goto_1

    :cond_9
    sub-long/2addr v5, v3

    const/4 v3, 0x1

    add-int/2addr v10, v3

    move-wide/from16 v3, p5

    goto :goto_3

    :cond_a
    if-eqz v11, :cond_b

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    :goto_4
    move-object v6, v3

    goto :goto_5

    :cond_b
    neg-long v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_4

    :goto_5
    const/16 v3, 0x27

    const-string v4, "System property \'"

    if-eqz v6, :cond_e

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v7, v1, v5

    if-gtz v7, :cond_c

    move-wide/from16 v7, p5

    cmp-long v9, v5, v7

    if-gtz v9, :cond_d

    :goto_6
    return-wide v5

    :cond_c
    move-wide/from16 v7, p5

    :cond_d
    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' should be in range "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ".."

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", but is \'"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_e
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' has unrecognized value \'"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static l(ILjava/lang/String;III)I
    .locals 7

    and-int/lit8 v0, p4, 0x4

    if-eqz v0, :cond_0

    const/4 p2, 0x1

    :cond_0
    and-int/lit8 p4, p4, 0x8

    if-eqz p4, :cond_1

    const p3, 0x7fffffff

    :cond_1
    int-to-long v1, p0

    int-to-long v3, p2

    int-to-long v5, p3

    move-object v0, p1

    invoke-static/range {v0 .. v6}, LUc/a;->k(Ljava/lang/String;JJJ)J

    move-result-wide p0

    long-to-int p0, p0

    return p0
.end method

.method public static final m(Lib/h;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, LUc/A;->b:LUc/A;

    invoke-interface {p0, v0, v1}, Lib/h;->fold(Ljava/lang/Object;Lsb/n;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    return-object p0
.end method

.method public static final n(Lib/h;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    if-nez p1, :cond_0

    invoke-static {p0}, LUc/a;->m(Lib/h;)Ljava/lang/Object;

    move-result-object p1

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-ne p1, v0, :cond_1

    sget-object p0, LUc/a;->f:LQ6/i;

    goto :goto_0

    :cond_1
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    new-instance v0, LUc/E;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-direct {v0, p1, p0}, LUc/E;-><init>(ILib/h;)V

    sget-object p1, LUc/A;->d:LUc/A;

    invoke-interface {p0, v0, p1}, Lib/h;->fold(Ljava/lang/Object;Lsb/n;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_2
    check-cast p1, LUc/B;

    invoke-virtual {p1, p0}, LUc/B;->g(Lib/h;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method
