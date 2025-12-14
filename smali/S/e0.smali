.class public final LS/e0;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;I)V
    .locals 0

    iput p4, p0, LS/e0;->a:I

    iput-object p1, p0, LS/e0;->c:Ljava/lang/Object;

    iput p2, p0, LS/e0;->b:I

    iput-object p3, p0, LS/e0;->d:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 23

    move-object/from16 v0, p0

    iget v1, v0, LS/e0;->a:I

    packed-switch v1, :pswitch_data_0

    move-object/from16 v1, p1

    check-cast v1, La0/r;

    iget-object v2, v0, LS/e0;->c:Ljava/lang/Object;

    check-cast v2, La0/i0;

    iget v3, v2, La0/i0;->e:I

    iget v4, v0, LS/e0;->b:I

    if-ne v3, v4, :cond_7

    iget-object v3, v2, La0/i0;->f:LN/r;

    iget-object v0, v0, LS/e0;->d:Ljava/lang/Object;

    check-cast v0, LN/r;

    invoke-static {v0, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    instance-of v3, v1, La0/u;

    if-eqz v3, :cond_7

    iget-object v3, v0, LN/r;->a:[J

    array-length v5, v3

    add-int/lit8 v5, v5, -0x2

    if-ltz v5, :cond_7

    const/4 v7, 0x0

    :goto_0
    aget-wide v8, v3, v7

    not-long v10, v8

    const/4 v12, 0x7

    shl-long/2addr v10, v12

    and-long/2addr v10, v8

    const-wide v13, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v10, v13

    cmp-long v10, v10, v13

    if-eqz v10, :cond_6

    sub-int v10, v7, v5

    not-int v10, v10

    ushr-int/lit8 v10, v10, 0x1f

    const/16 v11, 0x8

    rsub-int/lit8 v10, v10, 0x8

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v10, :cond_5

    const-wide/16 v14, 0xff

    and-long v16, v8, v14

    const-wide/16 v18, 0x80

    cmp-long v16, v16, v18

    if-gez v16, :cond_4

    shl-int/lit8 v16, v7, 0x3

    add-int v16, v16, v13

    iget-object v6, v0, LN/r;->b:[Ljava/lang/Object;

    aget-object v6, v6, v16

    iget-object v11, v0, LN/r;->c:[I

    aget v11, v11, v16

    const/16 v17, 0x1

    if-eq v11, v4, :cond_0

    move/from16 v11, v17

    goto :goto_2

    :cond_0
    const/4 v11, 0x0

    :goto_2
    if-eqz v11, :cond_2

    move-object v12, v1

    check-cast v12, La0/u;

    iget-object v14, v12, La0/u;->g:LB3/c;

    invoke-virtual {v14, v6, v2}, LB3/c;->s(Ljava/lang/Object;Ljava/lang/Object;)Z

    instance-of v14, v6, La0/E;

    if-eqz v14, :cond_2

    move-object v14, v6

    check-cast v14, La0/E;

    iget-object v15, v12, La0/u;->g:LB3/c;

    iget-object v15, v15, LB3/c;->a:Ljava/lang/Object;

    check-cast v15, LN/s;

    invoke-virtual {v15, v14}, LN/s;->a(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1

    iget-object v12, v12, La0/u;->j:LB3/c;

    invoke-virtual {v12, v14}, LB3/c;->t(Ljava/lang/Object;)V

    :cond_1
    iget-object v12, v2, La0/i0;->g:LN/s;

    if-eqz v12, :cond_2

    invoke-virtual {v12, v6}, LN/s;->f(Ljava/lang/Object;)V

    :cond_2
    if-eqz v11, :cond_3

    iget v6, v0, LN/r;->e:I

    add-int/lit8 v6, v6, -0x1

    iput v6, v0, LN/r;->e:I

    iget-object v6, v0, LN/r;->a:[J

    iget v11, v0, LN/r;->d:I

    shr-int/lit8 v12, v16, 0x3

    and-int/lit8 v14, v16, 0x7

    shl-int/lit8 v14, v14, 0x3

    aget-wide v21, v6, v12

    move-object v15, v1

    move-object/from16 v17, v2

    const-wide/16 v19, 0xff

    shl-long v1, v19, v14

    not-long v1, v1

    and-long v1, v21, v1

    const-wide/16 v19, 0xfe

    shl-long v19, v19, v14

    or-long v1, v1, v19

    aput-wide v1, v6, v12

    add-int/lit8 v12, v16, -0x7

    and-int/2addr v12, v11

    const/4 v14, 0x7

    and-int/2addr v11, v14

    add-int/2addr v12, v11

    shr-int/lit8 v11, v12, 0x3

    aput-wide v1, v6, v11

    iget-object v1, v0, LN/r;->b:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, v1, v16

    goto :goto_3

    :cond_3
    move-object v15, v1

    move-object/from16 v17, v2

    const/4 v14, 0x7

    :goto_3
    const/16 v1, 0x8

    goto :goto_4

    :cond_4
    move-object v15, v1

    move-object/from16 v17, v2

    move v14, v12

    move v1, v11

    :goto_4
    shr-long/2addr v8, v1

    add-int/lit8 v13, v13, 0x1

    move v11, v1

    move v12, v14

    move-object v1, v15

    move-object/from16 v2, v17

    goto/16 :goto_1

    :cond_5
    move-object v15, v1

    move-object/from16 v17, v2

    move v1, v11

    if-ne v10, v1, :cond_7

    goto :goto_5

    :cond_6
    move-object v15, v1

    move-object/from16 v17, v2

    :goto_5
    if-eq v7, v5, :cond_7

    add-int/lit8 v7, v7, 0x1

    move-object v1, v15

    move-object/from16 v2, v17

    goto/16 :goto_0

    :cond_7
    sget-object v0, Ldb/r;->a:Ldb/r;

    return-object v0

    :pswitch_0
    move-object/from16 v1, p1

    check-cast v1, Lr0/b;

    iget-wide v1, v1, Lr0/b;->a:J

    iget-object v3, v0, LS/e0;->c:Ljava/lang/Object;

    check-cast v3, LS/k0;

    iget-object v4, v3, LS/k0;->c:La0/a0;

    invoke-interface {v4}, La0/K0;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lw0/d;

    invoke-virtual {v4}, Lw0/d;->d()Lw0/g;

    move-result-object v5

    if-eqz v5, :cond_8

    iget v6, v0, LS/e0;->b:I

    invoke-virtual {v5, v6, v1, v2}, Lw0/g;->c(IJ)J

    move-result-wide v5

    goto :goto_6

    :cond_8
    sget-wide v5, Lr0/b;->b:J

    :goto_6
    invoke-static {v1, v2, v5, v6}, Lr0/b;->c(JJ)J

    move-result-wide v1

    const/high16 v7, -0x40800000    # -1.0f

    iget-boolean v8, v3, LS/k0;->b:Z

    if-eqz v8, :cond_9

    invoke-static {v1, v2, v7}, Lr0/b;->e(JF)J

    move-result-wide v9

    goto :goto_7

    :cond_9
    move-wide v9, v1

    :goto_7
    invoke-virtual {v3, v9, v10}, LS/k0;->e(J)F

    move-result v9

    iget-object v10, v0, LS/e0;->d:Ljava/lang/Object;

    check-cast v10, LS/N;

    invoke-interface {v10, v9}, LS/N;->scrollBy(F)F

    move-result v9

    invoke-virtual {v3, v9}, LS/k0;->f(F)J

    move-result-wide v9

    if-eqz v8, :cond_a

    invoke-static {v9, v10, v7}, Lr0/b;->e(JF)J

    move-result-wide v9

    :cond_a
    invoke-static {v1, v2, v9, v10}, Lr0/b;->c(JJ)J

    move-result-wide v14

    invoke-virtual {v4}, Lw0/d;->d()Lw0/g;

    move-result-object v11

    if-eqz v11, :cond_b

    iget v0, v0, LS/e0;->b:I

    move-wide v12, v9

    move/from16 v16, v0

    invoke-virtual/range {v11 .. v16}, Lw0/g;->i(JJI)J

    move-result-wide v0

    goto :goto_8

    :cond_b
    sget-wide v0, Lr0/b;->b:J

    :goto_8
    invoke-static {v5, v6, v9, v10}, Lr0/b;->d(JJ)J

    move-result-wide v2

    invoke-static {v2, v3, v0, v1}, Lr0/b;->d(JJ)J

    move-result-wide v0

    new-instance v2, Lr0/b;

    invoke-direct {v2, v0, v1}, Lr0/b;-><init>(J)V

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
