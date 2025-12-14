.class public final LB1/h;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, LB1/h;->a:I

    iput-object p2, p0, LB1/h;->b:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 24

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/16 v6, 0x8

    const-wide v7, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    const/4 v9, 0x7

    const/4 v10, 0x3

    const/4 v11, 0x2

    const/4 v12, 0x0

    iget v14, v0, LB1/h;->a:I

    packed-switch v14, :pswitch_data_0

    move-object/from16 v1, p1

    check-cast v1, Lv2/H;

    move-object/from16 v2, p2

    check-cast v2, Lv2/H;

    const-string v3, "prependHint"

    invoke-static {v1, v3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "appendHint"

    invoke-static {v2, v3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v1, Lv2/H;->a:Lv2/C1;

    sget-object v4, Lv2/P;->PREPEND:Lv2/P;

    iget-object v0, v0, LB1/h;->b:Ljava/lang/Object;

    check-cast v0, Lv2/C1;

    invoke-static {v0, v3, v4}, Lv2/F;->b(Lv2/C1;Lv2/C1;Lv2/P;)Z

    move-result v3

    if-eqz v3, :cond_0

    iput-object v0, v1, Lv2/H;->a:Lv2/C1;

    iget-object v1, v1, Lv2/H;->b:LQc/m0;

    invoke-virtual {v1, v0}, LQc/m0;->a(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, v2, Lv2/H;->a:Lv2/C1;

    sget-object v3, Lv2/P;->APPEND:Lv2/P;

    invoke-static {v0, v1, v3}, Lv2/F;->b(Lv2/C1;Lv2/C1;Lv2/P;)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object v0, v2, Lv2/H;->a:Lv2/C1;

    iget-object v1, v2, Lv2/H;->b:LQc/m0;

    invoke-virtual {v1, v0}, LQc/m0;->a(Ljava/lang/Object;)Z

    :cond_1
    sget-object v0, Ldb/r;->a:Ldb/r;

    return-object v0

    :pswitch_0
    move-object/from16 v1, p1

    check-cast v1, Lm0/m;

    move-object/from16 v2, p2

    check-cast v2, Lm0/k;

    instance-of v3, v2, Lm0/g;

    if-eqz v3, :cond_2

    check-cast v2, Lm0/g;

    iget-object v2, v2, Lm0/g;->a:Ltb/m;

    invoke-static {v10, v2}, Ltb/z;->e(ILjava/lang/Object;)V

    sget-object v3, Lm0/j;->a:Lm0/j;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v0, v0, LB1/h;->b:Ljava/lang/Object;

    check-cast v0, La0/m;

    invoke-interface {v2, v3, v0, v4}, Lsb/o;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lm0/m;

    invoke-static {v0, v2}, La/a;->f(La0/m;Lm0/m;)Lm0/m;

    move-result-object v2

    :cond_2
    invoke-interface {v1, v2}, Lm0/m;->g(Lm0/m;)Lm0/m;

    move-result-object v0

    return-object v0

    :pswitch_1
    move-object/from16 v1, p1

    check-cast v1, La0/m;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    and-int/lit8 v2, v2, 0xb

    if-ne v2, v11, :cond_4

    move-object v2, v1

    check-cast v2, La0/q;

    invoke-virtual {v2}, La0/q;->x()Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, La0/q;->K()V

    goto :goto_1

    :cond_4
    :goto_0
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v0, v0, LB1/h;->b:Ljava/lang/Object;

    check-cast v0, Li0/a;

    invoke-virtual {v0, v1, v2}, Li0/a;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    sget-object v0, Ldb/r;->a:Ldb/r;

    return-object v0

    :pswitch_2
    move-object/from16 v1, p1

    check-cast v1, Ljava/util/Set;

    move-object/from16 v14, p2

    check-cast v14, Lk0/h;

    instance-of v14, v1, Lc0/f;

    const/4 v15, 0x4

    if-eqz v14, :cond_8

    move-object v14, v1

    check-cast v14, Lc0/f;

    iget-object v14, v14, Lc0/f;->a:LN/v;

    iget-object v12, v14, LN/v;->b:[Ljava/lang/Object;

    iget-object v14, v14, LN/v;->a:[J

    array-length v13, v14

    sub-int/2addr v13, v11

    if-ltz v13, :cond_c

    const/4 v11, 0x0

    :goto_2
    aget-wide v2, v14, v11

    not-long v4, v2

    shl-long/2addr v4, v9

    and-long/2addr v4, v2

    and-long/2addr v4, v7

    cmp-long v4, v4, v7

    if-eqz v4, :cond_7

    sub-int v4, v11, v13

    not-int v4, v4

    ushr-int/lit8 v4, v4, 0x1f

    rsub-int/lit8 v4, v4, 0x8

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v4, :cond_6

    const-wide/16 v18, 0xff

    and-long v20, v2, v18

    const-wide/16 v16, 0x80

    cmp-long v20, v20, v16

    if-gez v20, :cond_5

    shl-int/lit8 v20, v11, 0x3

    add-int v20, v20, v5

    aget-object v10, v12, v20

    instance-of v7, v10, Lk0/s;

    if-eqz v7, :cond_b

    check-cast v10, Lk0/s;

    invoke-virtual {v10, v15}, Lk0/s;->a(I)Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_5

    :cond_5
    shr-long/2addr v2, v6

    const/4 v7, 0x1

    add-int/2addr v5, v7

    const-wide v7, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    const/4 v10, 0x3

    goto :goto_3

    :cond_6
    const/4 v7, 0x1

    if-ne v4, v6, :cond_c

    goto :goto_4

    :cond_7
    const/4 v7, 0x1

    :goto_4
    if-eq v11, v13, :cond_c

    add-int/2addr v11, v7

    const-wide v7, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    const/4 v10, 0x3

    goto :goto_2

    :cond_8
    move-object v2, v1

    check-cast v2, Ljava/lang/Iterable;

    instance-of v3, v2, Ljava/util/Collection;

    if-eqz v3, :cond_9

    move-object v3, v2

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_9

    goto :goto_6

    :cond_9
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lk0/s;

    if-eqz v4, :cond_b

    check-cast v3, Lk0/s;

    invoke-virtual {v3, v15}, Lk0/s;->a(I)Z

    move-result v3

    if-eqz v3, :cond_a

    :cond_b
    :goto_5
    iget-object v0, v0, LB1/h;->b:Ljava/lang/Object;

    check-cast v0, LPc/i;

    invoke-interface {v0, v1}, LPc/B;->k(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    :goto_6
    sget-object v0, Ldb/r;->a:Ldb/r;

    return-object v0

    :pswitch_3
    move-object/from16 v2, p1

    check-cast v2, Ljava/util/Set;

    move-object/from16 v3, p2

    check-cast v3, Lk0/h;

    iget-object v0, v0, LB1/h;->b:Ljava/lang/Object;

    check-cast v0, La0/p0;

    iget-object v3, v0, La0/p0;->c:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v4, v0, La0/p0;->s:LQc/A0;

    invoke-virtual {v4}, LQc/A0;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, La0/j0;

    sget-object v5, La0/j0;->Idle:La0/j0;

    invoke-virtual {v4, v5}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v4

    if-ltz v4, :cond_14

    iget-object v1, v0, La0/p0;->h:LN/v;

    instance-of v4, v2, Lc0/f;

    if-eqz v4, :cond_11

    check-cast v2, Lc0/f;

    iget-object v2, v2, Lc0/f;->a:LN/v;

    iget-object v4, v2, LN/v;->b:[Ljava/lang/Object;

    iget-object v2, v2, LN/v;->a:[J

    array-length v5, v2

    sub-int/2addr v5, v11

    if-ltz v5, :cond_13

    const/4 v7, 0x0

    :goto_7
    aget-wide v10, v2, v7

    not-long v12, v10

    shl-long/2addr v12, v9

    and-long/2addr v12, v10

    const-wide v14, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v12, v14

    cmp-long v8, v12, v14

    if-eqz v8, :cond_10

    sub-int v8, v7, v5

    not-int v8, v8

    ushr-int/lit8 v8, v8, 0x1f

    rsub-int/lit8 v8, v8, 0x8

    const/4 v12, 0x0

    :goto_8
    if-ge v12, v8, :cond_f

    const-wide/16 v18, 0xff

    and-long v22, v10, v18

    const-wide/16 v16, 0x80

    cmp-long v13, v22, v16

    if-gez v13, :cond_e

    const/4 v13, 0x3

    shl-int/lit8 v20, v7, 0x3

    add-int v20, v20, v12

    aget-object v9, v4, v20

    instance-of v13, v9, Lk0/s;

    if-eqz v13, :cond_d

    move-object v13, v9

    check-cast v13, Lk0/s;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lk0/s;->a(I)Z

    move-result v13

    if-nez v13, :cond_d

    goto :goto_9

    :catchall_0
    move-exception v0

    goto :goto_c

    :cond_d
    invoke-virtual {v1, v9}, LN/v;->a(Ljava/lang/Object;)Z

    :cond_e
    :goto_9
    shr-long/2addr v10, v6

    const/4 v9, 0x1

    add-int/2addr v12, v9

    const/4 v9, 0x7

    const-wide v14, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    goto :goto_8

    :cond_f
    const/4 v9, 0x1

    const-wide/16 v16, 0x80

    const-wide/16 v18, 0xff

    if-ne v8, v6, :cond_13

    goto :goto_a

    :cond_10
    const/4 v9, 0x1

    const-wide/16 v16, 0x80

    const-wide/16 v18, 0xff

    :goto_a
    if-eq v7, v5, :cond_13

    add-int/2addr v7, v9

    const/4 v9, 0x7

    goto :goto_7

    :cond_11
    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lk0/s;

    if-eqz v5, :cond_12

    move-object v5, v4

    check-cast v5, Lk0/s;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lk0/s;->a(I)Z

    move-result v5

    if-nez v5, :cond_12

    goto :goto_b

    :cond_12
    invoke-virtual {v1, v4}, LN/v;->a(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_13
    invoke-virtual {v0}, La0/p0;->t()LNc/j;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_14
    monitor-exit v3

    if-eqz v1, :cond_15

    sget-object v0, Ldb/r;->a:Ldb/r;

    check-cast v1, LNc/k;

    invoke-virtual {v1, v0}, LNc/k;->resumeWith(Ljava/lang/Object;)V

    :cond_15
    sget-object v0, Ldb/r;->a:Ldb/r;

    return-object v0

    :goto_c
    monitor-exit v3

    throw v0

    :pswitch_4
    move-object/from16 v9, p1

    check-cast v9, La0/m;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    and-int/lit8 v1, v1, 0xb

    if-ne v1, v11, :cond_17

    move-object v1, v9

    check-cast v1, La0/q;

    invoke-virtual {v1}, La0/q;->x()Z

    move-result v2

    if-nez v2, :cond_16

    goto :goto_d

    :cond_16
    invoke-virtual {v1}, La0/q;->K()V

    goto :goto_f

    :cond_17
    :goto_d
    sget-object v1, Lx1/k;->e:La0/L0;

    move-object v2, v9

    check-cast v2, La0/q;

    invoke-virtual {v2, v1}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LJ1/b;

    iget-object v1, v1, LJ1/b;->v:Lf2/a;

    iget-object v0, v0, LB1/h;->b:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, LR1/y;

    sget-object v0, LS1/a;->b:Ljava/util/List;

    iget-object v0, v4, LR1/x;->c:Lf2/a;

    if-nez v0, :cond_18

    move-object v6, v1

    goto :goto_e

    :cond_18
    move-object v6, v0

    :goto_e
    const/16 v10, 0x230

    const/16 v11, 0x18

    const/4 v5, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v4 .. v11}, LG5/w3;->b(LR1/x;ILf2/a;Lx1/r;ILa0/m;II)V

    :goto_f
    sget-object v0, Ldb/r;->a:Ldb/r;

    return-object v0

    :pswitch_5
    move-object/from16 v1, p1

    check-cast v1, La0/m;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    and-int/lit8 v2, v2, 0xb

    if-ne v2, v11, :cond_1a

    move-object v2, v1

    check-cast v2, La0/q;

    invoke-virtual {v2}, La0/q;->x()Z

    move-result v3

    if-nez v3, :cond_19

    goto :goto_10

    :cond_19
    invoke-virtual {v2}, La0/q;->K()V

    goto :goto_11

    :cond_1a
    :goto_10
    const/16 v2, 0x46

    iget-object v0, v0, LB1/h;->b:Ljava/lang/Object;

    check-cast v0, Lf2/a;

    invoke-static {v0, v1, v2}, LG5/x3;->a(Lf2/a;La0/m;I)V

    :goto_11
    sget-object v0, Ldb/r;->a:Ldb/r;

    return-object v0

    :pswitch_6
    move-object/from16 v1, p1

    check-cast v1, LH0/j;

    iget-wide v1, v1, LH0/j;->a:J

    move-object/from16 v3, p2

    check-cast v3, LH0/k;

    const-string v4, "<anonymous parameter 1>"

    invoke-static {v3, v4}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    long-to-int v1, v1

    iget-object v0, v0, LB1/h;->b:Ljava/lang/Object;

    check-cast v0, Lm0/c;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lm0/c;->a(II)I

    move-result v0

    invoke-static {v2, v0}, LG5/U2;->a(II)J

    move-result-wide v0

    new-instance v2, LH0/i;

    invoke-direct {v2, v0, v1}, LH0/i;-><init>(J)V

    return-object v2

    :pswitch_7
    move-object/from16 v2, p1

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    move-object/from16 v3, p2

    check-cast v3, Lib/f;

    invoke-interface {v3}, Lib/f;->getKey()Lib/g;

    move-result-object v4

    iget-object v0, v0, LB1/h;->b:Ljava/lang/Object;

    check-cast v0, LRc/H;

    iget-object v0, v0, LRc/H;->b:Lib/h;

    invoke-interface {v0, v4}, Lib/h;->get(Lib/g;)Lib/f;

    move-result-object v0

    sget-object v5, LNc/i0;->a:LNc/i0;

    if-eq v4, v5, :cond_1c

    if-eq v3, v0, :cond_1b

    const/high16 v0, -0x80000000

    goto :goto_12

    :cond_1b
    const/4 v0, 0x1

    add-int/2addr v0, v2

    :goto_12
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_17

    :cond_1c
    move-object v4, v0

    check-cast v4, LNc/j0;

    check-cast v3, LNc/j0;

    :goto_13
    if-nez v3, :cond_1d

    goto :goto_15

    :cond_1d
    if-ne v3, v4, :cond_1e

    :goto_14
    move-object v1, v3

    goto :goto_15

    :cond_1e
    instance-of v0, v3, LUc/w;

    if-nez v0, :cond_21

    goto :goto_14

    :goto_15
    if-ne v1, v4, :cond_20

    if-nez v4, :cond_1f

    goto :goto_16

    :cond_1f
    const/4 v5, 0x1

    add-int/2addr v2, v5

    :goto_16
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_17
    return-object v0

    :cond_20
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Flow invariant is violated:\n\t\tEmission from another coroutine is detected.\n\t\tChild of "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", expected child of "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ".\n\t\tFlowCollector is not thread-safe and concurrent emissions are prohibited.\n\t\tTo mitigate this restriction please use \'channelFlow\' builder instead of \'flow\'"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    const/4 v5, 0x1

    invoke-interface {v3}, LNc/j0;->getParent()LNc/j0;

    move-result-object v3

    goto :goto_13

    :pswitch_8
    move-object/from16 v1, p1

    check-cast v1, La0/m;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    and-int/lit8 v2, v2, 0xb

    if-ne v2, v11, :cond_23

    move-object v2, v1

    check-cast v2, La0/q;

    invoke-virtual {v2}, La0/q;->x()Z

    move-result v3

    if-nez v3, :cond_22

    goto :goto_18

    :cond_22
    invoke-virtual {v2}, La0/q;->K()V

    goto :goto_19

    :cond_23
    :goto_18
    new-instance v2, LB1/g;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v0, v0, LB1/h;->b:Ljava/lang/Object;

    check-cast v0, Lsb/o;

    invoke-interface {v0, v2, v1, v3}, Lsb/o;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_19
    sget-object v0, Ldb/r;->a:Ldb/r;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
