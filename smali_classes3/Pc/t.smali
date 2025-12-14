.class public final LPc/t;
.super LPc/i;
.source "SourceFile"


# instance fields
.field public final m:LPc/a;


# direct methods
.method public constructor <init>(ILPc/a;Lsb/k;)V
    .locals 0

    invoke-direct {p0, p1, p3}, LPc/i;-><init>(ILsb/k;)V

    iput-object p2, p0, LPc/t;->m:LPc/a;

    sget-object p0, LPc/a;->SUSPEND:LPc/a;

    if-eq p2, p0, :cond_1

    const/4 p0, 0x1

    if-lt p1, p0, :cond_0

    return-void

    :cond_0
    const-string p0, "Buffered channel capacity must be at least 1, but "

    const-string p2, " was specified"

    invoke-static {p1, p0, p2}, Lt/b;->f(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "This implementation does not support suspension for senders, use "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object p1, Ltb/x;->a:Ltb/y;

    const-class p2, LPc/i;

    invoke-virtual {p1, p2}, Ltb/y;->b(Ljava/lang/Class;)LAb/c;

    move-result-object p1

    invoke-interface {p1}, LAb/c;->w()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " instead"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final A()Z
    .locals 1

    iget-object p0, p0, LPc/t;->m:LPc/a;

    sget-object v0, LPc/a;->DROP_OLDEST:LPc/a;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final M(Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 19

    move-object/from16 v8, p0

    sget-object v0, LPc/a;->DROP_LATEST:LPc/a;

    sget-object v9, Ldb/r;->a:Ldb/r;

    iget-object v1, v8, LPc/t;->m:LPc/a;

    const/4 v10, 0x0

    if-ne v1, v0, :cond_3

    invoke-super/range {p0 .. p1}, LPc/i;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, LPc/o;

    if-eqz v1, :cond_2

    instance-of v1, v0, LPc/n;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_10

    iget-object v0, v8, LPc/i;->b:Lsb/k;

    if-eqz v0, :cond_10

    move-object/from16 v11, p1

    invoke-static {v0, v11, v10}, LUc/a;->a(Lsb/k;Ljava/lang/Object;LI5/b;)LI5/b;

    move-result-object v0

    if-nez v0, :cond_1

    goto/16 :goto_5

    :cond_1
    throw v0

    :cond_2
    :goto_0
    move-object v9, v0

    goto/16 :goto_5

    :cond_3
    move-object/from16 v11, p1

    sget-object v12, LPc/k;->d:LQ6/i;

    sget-object v0, LPc/i;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, v8}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LPc/q;

    :goto_1
    sget-object v1, LPc/i;->d:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v1, v8}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v1

    const-wide v3, 0xfffffffffffffffL

    and-long v13, v1, v3

    const/4 v3, 0x0

    invoke-virtual {v8, v1, v2, v3}, LPc/i;->x(JZ)Z

    move-result v15

    sget v7, LPc/k;->b:I

    int-to-long v4, v7

    div-long v1, v13, v4

    rem-long v10, v13, v4

    long-to-int v10, v10

    move-wide/from16 v16, v4

    iget-wide v3, v0, LUc/x;->c:J

    cmp-long v3, v3, v1

    if-eqz v3, :cond_6

    invoke-static {v8, v1, v2, v0}, LPc/i;->b(LPc/i;JLPc/q;)LPc/q;

    move-result-object v1

    if-nez v1, :cond_5

    if-eqz v15, :cond_4

    invoke-virtual/range {p0 .. p0}, LPc/i;->u()Ljava/lang/Throwable;

    move-result-object v0

    new-instance v9, LPc/n;

    invoke-direct {v9, v0}, LPc/n;-><init>(Ljava/lang/Throwable;)V

    goto/16 :goto_5

    :cond_4
    move-object/from16 v11, p1

    const/4 v10, 0x0

    goto :goto_1

    :cond_5
    move-object v11, v1

    goto :goto_2

    :cond_6
    move-object v11, v0

    :goto_2
    move-object/from16 v0, p0

    move-object v1, v11

    move v2, v10

    move-object/from16 v3, p1

    move-wide v4, v13

    move-object v6, v12

    move/from16 v18, v7

    move v7, v15

    invoke-static/range {v0 .. v7}, LPc/i;->d(LPc/i;LPc/q;ILjava/lang/Object;JLjava/lang/Object;Z)I

    move-result v0

    if-eqz v0, :cond_f

    const/4 v1, 0x1

    if-eq v0, v1, :cond_10

    const/4 v1, 0x2

    if-eq v0, v1, :cond_b

    const/4 v1, 0x3

    if-eq v0, v1, :cond_a

    const/4 v1, 0x4

    if-eq v0, v1, :cond_8

    const/4 v1, 0x5

    if-eq v0, v1, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {v11}, LUc/d;->a()V

    :goto_3
    move-object v0, v11

    const/4 v10, 0x0

    move-object/from16 v11, p1

    goto :goto_1

    :cond_8
    sget-object v0, LPc/i;->e:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, v8}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v0

    cmp-long v0, v13, v0

    if-gez v0, :cond_9

    invoke-virtual {v11}, LUc/d;->a()V

    :cond_9
    invoke-virtual/range {p0 .. p0}, LPc/i;->u()Ljava/lang/Throwable;

    move-result-object v0

    new-instance v9, LPc/n;

    invoke-direct {v9, v0}, LPc/n;-><init>(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unexpected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    if-eqz v15, :cond_c

    invoke-virtual {v11}, LUc/x;->i()V

    invoke-virtual/range {p0 .. p0}, LPc/i;->u()Ljava/lang/Throwable;

    move-result-object v0

    new-instance v9, LPc/n;

    invoke-direct {v9, v0}, LPc/n;-><init>(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_c
    instance-of v0, v12, LNc/N0;

    if-eqz v0, :cond_d

    move-object v0, v12

    check-cast v0, LNc/N0;

    goto :goto_4

    :cond_d
    const/4 v0, 0x0

    :goto_4
    if-eqz v0, :cond_e

    add-int v7, v10, v18

    invoke-interface {v0, v11, v7}, LNc/N0;->a(LUc/x;I)V

    :cond_e
    iget-wide v0, v11, LUc/x;->c:J

    mul-long v0, v0, v16

    int-to-long v2, v10

    add-long/2addr v0, v2

    invoke-virtual {v8, v0, v1}, LPc/i;->j(J)V

    goto :goto_5

    :cond_f
    invoke-virtual {v11}, LUc/d;->a()V

    :cond_10
    :goto_5
    return-object v9
.end method

.method public final g(Lib/c;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 p1, 0x1

    invoke-virtual {p0, p2, p1}, LPc/t;->M(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, LPc/n;

    if-eqz v0, :cond_1

    invoke-static {p1}, LPc/p;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    iget-object p1, p0, LPc/i;->b:Lsb/k;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, LUc/a;->a(Lsb/k;Ljava/lang/Object;LI5/b;)LI5/b;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, LPc/i;->u()Ljava/lang/Throwable;

    move-result-object p0

    invoke-static {p1, p0}, LG5/y2;->b(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    invoke-virtual {p0}, LPc/i;->u()Ljava/lang/Throwable;

    move-result-object p0

    throw p0

    :cond_1
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, LPc/t;->M(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
