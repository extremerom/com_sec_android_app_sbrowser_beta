.class public final LR/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LR/z;


# instance fields
.field public final a:LR/x;

.field public b:Lr0/b;

.field public final c:Landroid/widget/EdgeEffect;

.field public final d:Landroid/widget/EdgeEffect;

.field public final e:Landroid/widget/EdgeEffect;

.field public final f:Landroid/widget/EdgeEffect;

.field public final g:Ljava/util/List;

.field public final h:Landroid/widget/EdgeEffect;

.field public final i:Landroid/widget/EdgeEffect;

.field public final j:Landroid/widget/EdgeEffect;

.field public final k:Landroid/widget/EdgeEffect;

.field public final l:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public final m:Z

.field public n:Z

.field public o:J

.field public p:Lx0/d;

.field public final q:Lm0/m;


# direct methods
.method public constructor <init>(Landroid/content/Context;LR/x;)V
    .locals 8

    const/4 v0, 0x1

    const-string v1, "context"

    invoke-static {p1, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, LR/d;->a:LR/x;

    invoke-static {p1}, LR/n;->b(Landroid/content/Context;)Landroid/widget/EdgeEffect;

    move-result-object p2

    iput-object p2, p0, LR/d;->c:Landroid/widget/EdgeEffect;

    invoke-static {p1}, LR/n;->b(Landroid/content/Context;)Landroid/widget/EdgeEffect;

    move-result-object v1

    iput-object v1, p0, LR/d;->d:Landroid/widget/EdgeEffect;

    invoke-static {p1}, LR/n;->b(Landroid/content/Context;)Landroid/widget/EdgeEffect;

    move-result-object v2

    iput-object v2, p0, LR/d;->e:Landroid/widget/EdgeEffect;

    invoke-static {p1}, LR/n;->b(Landroid/content/Context;)Landroid/widget/EdgeEffect;

    move-result-object v3

    iput-object v3, p0, LR/d;->f:Landroid/widget/EdgeEffect;

    filled-new-array {v2, p2, v3, v1}, [Landroid/widget/EdgeEffect;

    move-result-object p2

    invoke-static {p2}, Lfb/o;->g([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, LR/d;->g:Ljava/util/List;

    invoke-static {p1}, LR/n;->b(Landroid/content/Context;)Landroid/widget/EdgeEffect;

    move-result-object v1

    iput-object v1, p0, LR/d;->h:Landroid/widget/EdgeEffect;

    invoke-static {p1}, LR/n;->b(Landroid/content/Context;)Landroid/widget/EdgeEffect;

    move-result-object v1

    iput-object v1, p0, LR/d;->i:Landroid/widget/EdgeEffect;

    invoke-static {p1}, LR/n;->b(Landroid/content/Context;)Landroid/widget/EdgeEffect;

    move-result-object v1

    iput-object v1, p0, LR/d;->j:Landroid/widget/EdgeEffect;

    invoke-static {p1}, LR/n;->b(Landroid/content/Context;)Landroid/widget/EdgeEffect;

    move-result-object p1

    iput-object p1, p0, LR/d;->k:Landroid/widget/EdgeEffect;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EdgeEffect;

    iget-object v3, p0, LR/d;->a:LR/x;

    iget-wide v3, v3, LR/x;->a:J

    invoke-static {v3, v4}, Ls0/e;->e(J)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EdgeEffect;->setColor(I)V

    add-int/2addr v1, v0

    goto :goto_0

    :cond_0
    sget-object v3, Ldb/r;->a:Ldb/r;

    sget-object p1, La0/V;->c:La0/V;

    invoke-static {v3, p1}, La0/d;->E(Ljava/lang/Object;La0/A0;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object p1

    iput-object p1, p0, LR/d;->l:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    iput-boolean v0, p0, LR/d;->m:Z

    sget-wide p1, Lr0/d;->b:J

    iput-wide p1, p0, LR/d;->o:J

    new-instance p1, LB0/a;

    const/4 p2, 0x7

    invoke-direct {p1, p2, p0}, LB0/a;-><init>(ILjava/lang/Object;)V

    sget-object p2, LR/g;->a:Lm0/m;

    new-instance v6, LR/c;

    const/4 v0, 0x0

    invoke-direct {v6, p0, v0}, LR/c;-><init>(LR/d;Lib/c;)V

    sget-object v0, Lx0/i;->a:Lx0/a;

    new-instance v0, Landroidx/compose/ui/input/pointer/SuspendPointerInputElement;

    const/4 v5, 0x0

    const/4 v7, 0x6

    const/4 v4, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Landroidx/compose/ui/input/pointer/SuspendPointerInputElement;-><init>(Ljava/lang/Object;LS/a;[Ljava/lang/Object;Lsb/n;I)V

    invoke-interface {p2, v0}, Lm0/m;->g(Lm0/m;)Lm0/m;

    move-result-object p2

    new-instance v0, Lz0/D;

    invoke-direct {v0, p1}, Lz0/D;-><init>(LB0/a;)V

    invoke-interface {p2, v0}, Lm0/m;->g(Lm0/m;)Lm0/m;

    move-result-object p1

    new-instance p2, LR/l;

    invoke-direct {p2, p0}, LR/l;-><init>(LR/d;)V

    invoke-interface {p1, p2}, Lm0/m;->g(Lm0/m;)Lm0/m;

    move-result-object p1

    iput-object p1, p0, LR/d;->q:Lm0/m;

    return-void
.end method


# virtual methods
.method public final a(JILS/e0;)J
    .locals 18

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p4

    iget-wide v4, v0, LR/d;->o:J

    invoke-static {v4, v5}, Lr0/d;->b(J)F

    move-result v6

    const/4 v7, 0x0

    cmpg-float v6, v6, v7

    if-lez v6, :cond_2c

    invoke-static {v4, v5}, Lr0/d;->a(J)F

    move-result v4

    cmpg-float v4, v4, v7

    if-gtz v4, :cond_0

    goto/16 :goto_1c

    :cond_0
    iget-boolean v4, v0, LR/d;->n:Z

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v6, 0x1

    iget-object v8, v0, LR/d;->d:Landroid/widget/EdgeEffect;

    iget-object v9, v0, LR/d;->c:Landroid/widget/EdgeEffect;

    iget-object v10, v0, LR/d;->f:Landroid/widget/EdgeEffect;

    iget-object v11, v0, LR/d;->e:Landroid/widget/EdgeEffect;

    if-nez v4, :cond_5

    iget-wide v12, v0, LR/d;->o:J

    invoke-static {v12, v13}, Lr0/d;->b(J)F

    move-result v4

    div-float/2addr v4, v5

    invoke-static {v12, v13}, Lr0/d;->a(J)F

    move-result v12

    div-float/2addr v12, v5

    invoke-static {v4, v12}, LG5/A;->a(FF)J

    move-result-wide v12

    invoke-static {v11}, LR/n;->c(Landroid/widget/EdgeEffect;)F

    move-result v4

    cmpg-float v4, v4, v7

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    sget-wide v14, Lr0/b;->b:J

    invoke-virtual {v0, v14, v15, v12, v13}, LR/d;->h(JJ)F

    :goto_0
    invoke-static {v10}, LR/n;->c(Landroid/widget/EdgeEffect;)F

    move-result v4

    cmpg-float v4, v4, v7

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    sget-wide v14, Lr0/b;->b:J

    invoke-virtual {v0, v14, v15, v12, v13}, LR/d;->i(JJ)F

    :goto_1
    invoke-static {v9}, LR/n;->c(Landroid/widget/EdgeEffect;)F

    move-result v4

    cmpg-float v4, v4, v7

    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    sget-wide v14, Lr0/b;->b:J

    invoke-virtual {v0, v14, v15, v12, v13}, LR/d;->j(JJ)F

    :goto_2
    invoke-static {v8}, LR/n;->c(Landroid/widget/EdgeEffect;)F

    move-result v4

    cmpg-float v4, v4, v7

    if-nez v4, :cond_4

    goto :goto_3

    :cond_4
    sget-wide v14, Lr0/b;->b:J

    invoke-virtual {v0, v14, v15, v12, v13}, LR/d;->g(JJ)F

    :goto_3
    iput-boolean v6, v0, LR/d;->n:Z

    :cond_5
    iget-object v4, v0, LR/d;->b:Lr0/b;

    if-eqz v4, :cond_6

    iget-wide v4, v4, Lr0/b;->a:J

    goto :goto_4

    :cond_6
    iget-wide v12, v0, LR/d;->o:J

    invoke-static {v12, v13}, Lr0/d;->b(J)F

    move-result v4

    div-float/2addr v4, v5

    invoke-static {v12, v13}, Lr0/d;->a(J)F

    move-result v12

    div-float/2addr v12, v5

    invoke-static {v4, v12}, LG5/A;->a(FF)J

    move-result-wide v4

    :goto_4
    invoke-static/range {p1 .. p2}, Lr0/b;->b(J)F

    move-result v12

    cmpg-float v12, v12, v7

    if-nez v12, :cond_7

    :goto_5
    move v12, v7

    goto :goto_6

    :cond_7
    invoke-static {v9}, LR/n;->c(Landroid/widget/EdgeEffect;)F

    move-result v12

    cmpg-float v12, v12, v7

    if-nez v12, :cond_9

    invoke-static {v8}, LR/n;->c(Landroid/widget/EdgeEffect;)F

    move-result v12

    cmpg-float v12, v12, v7

    if-nez v12, :cond_8

    goto :goto_5

    :cond_8
    invoke-virtual {v0, v1, v2, v4, v5}, LR/d;->g(JJ)F

    move-result v12

    invoke-static {v8}, LR/n;->c(Landroid/widget/EdgeEffect;)F

    move-result v13

    cmpg-float v13, v13, v7

    if-nez v13, :cond_a

    invoke-virtual {v8}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_6

    :cond_9
    invoke-virtual {v0, v1, v2, v4, v5}, LR/d;->j(JJ)F

    move-result v12

    invoke-static {v9}, LR/n;->c(Landroid/widget/EdgeEffect;)F

    move-result v13

    cmpg-float v13, v13, v7

    if-nez v13, :cond_a

    invoke-virtual {v9}, Landroid/widget/EdgeEffect;->onRelease()V

    :cond_a
    :goto_6
    invoke-static/range {p1 .. p2}, Lr0/b;->a(J)F

    move-result v13

    cmpg-float v13, v13, v7

    if-nez v13, :cond_b

    :goto_7
    move v13, v7

    goto :goto_8

    :cond_b
    invoke-static {v11}, LR/n;->c(Landroid/widget/EdgeEffect;)F

    move-result v13

    cmpg-float v13, v13, v7

    if-nez v13, :cond_d

    invoke-static {v10}, LR/n;->c(Landroid/widget/EdgeEffect;)F

    move-result v13

    cmpg-float v13, v13, v7

    if-nez v13, :cond_c

    goto :goto_7

    :cond_c
    invoke-virtual {v0, v1, v2, v4, v5}, LR/d;->i(JJ)F

    move-result v13

    invoke-static {v10}, LR/n;->c(Landroid/widget/EdgeEffect;)F

    move-result v14

    cmpg-float v14, v14, v7

    if-nez v14, :cond_e

    invoke-virtual {v10}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_8

    :cond_d
    invoke-virtual {v0, v1, v2, v4, v5}, LR/d;->h(JJ)F

    move-result v13

    invoke-static {v11}, LR/n;->c(Landroid/widget/EdgeEffect;)F

    move-result v14

    cmpg-float v14, v14, v7

    if-nez v14, :cond_e

    invoke-virtual {v11}, Landroid/widget/EdgeEffect;->onRelease()V

    :cond_e
    :goto_8
    invoke-static {v13, v12}, LG5/A;->a(FF)J

    move-result-wide v12

    sget-wide v14, Lr0/b;->b:J

    cmp-long v14, v12, v14

    if-nez v14, :cond_f

    goto :goto_9

    :cond_f
    invoke-virtual/range {p0 .. p0}, LR/d;->f()V

    :goto_9
    invoke-static {v1, v2, v12, v13}, Lr0/b;->c(JJ)J

    move-result-wide v14

    new-instance v7, Lr0/b;

    invoke-direct {v7, v14, v15}, Lr0/b;-><init>(J)V

    invoke-virtual {v3, v7}, LS/e0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lr0/b;

    iget-wide v6, v3, Lr0/b;->a:J

    invoke-static {v14, v15, v6, v7}, Lr0/b;->c(JJ)J

    move-result-wide v14

    move/from16 v3, p3

    const/4 v1, 0x1

    if-ne v3, v1, :cond_10

    move v2, v1

    goto :goto_a

    :cond_10
    const/4 v2, 0x0

    :goto_a
    if-eqz v2, :cond_16

    invoke-static {v14, v15}, Lr0/b;->a(J)F

    move-result v2

    const/high16 v3, 0x3f000000    # 0.5f

    cmpl-float v2, v2, v3

    const/high16 v16, -0x41000000    # -0.5f

    if-lez v2, :cond_11

    invoke-virtual {v0, v14, v15, v4, v5}, LR/d;->h(JJ)F

    :goto_b
    move v2, v1

    goto :goto_c

    :cond_11
    invoke-static {v14, v15}, Lr0/b;->a(J)F

    move-result v2

    cmpg-float v2, v2, v16

    if-gez v2, :cond_12

    invoke-virtual {v0, v14, v15, v4, v5}, LR/d;->i(JJ)F

    goto :goto_b

    :cond_12
    const/4 v2, 0x0

    :goto_c
    invoke-static {v14, v15}, Lr0/b;->b(J)F

    move-result v17

    cmpl-float v3, v17, v3

    if-lez v3, :cond_13

    invoke-virtual {v0, v14, v15, v4, v5}, LR/d;->j(JJ)F

    :goto_d
    move v3, v1

    goto :goto_e

    :cond_13
    invoke-static {v14, v15}, Lr0/b;->b(J)F

    move-result v3

    cmpg-float v3, v3, v16

    if-gez v3, :cond_14

    invoke-virtual {v0, v14, v15, v4, v5}, LR/d;->g(JJ)F

    goto :goto_d

    :cond_14
    const/4 v3, 0x0

    :goto_e
    if-nez v2, :cond_15

    if-eqz v3, :cond_16

    :cond_15
    move v2, v1

    goto :goto_f

    :cond_16
    const/4 v2, 0x0

    :goto_f
    invoke-virtual {v11}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_19

    invoke-static/range {p1 .. p2}, Lr0/b;->a(J)F

    move-result v3

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_19

    invoke-static/range {p1 .. p2}, Lr0/b;->a(J)F

    move-result v3

    instance-of v4, v11, LR/r;

    if-eqz v4, :cond_17

    move-object v4, v11

    check-cast v4, LR/r;

    iget v5, v4, LR/r;->b:F

    add-float/2addr v5, v3

    iput v5, v4, LR/r;->b:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v5, v4, LR/r;->a:F

    cmpl-float v3, v3, v5

    if-lez v3, :cond_18

    invoke-virtual {v4}, LR/r;->onRelease()V

    goto :goto_10

    :cond_17
    invoke-virtual {v11}, Landroid/widget/EdgeEffect;->onRelease()V

    :cond_18
    :goto_10
    invoke-virtual {v11}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    goto :goto_11

    :cond_19
    const/4 v3, 0x0

    :goto_11
    invoke-virtual {v10}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v4

    if-nez v4, :cond_1e

    invoke-static/range {p1 .. p2}, Lr0/b;->a(J)F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1e

    invoke-static/range {p1 .. p2}, Lr0/b;->a(J)F

    move-result v4

    instance-of v5, v10, LR/r;

    if-eqz v5, :cond_1a

    move-object v5, v10

    check-cast v5, LR/r;

    iget v11, v5, LR/r;->b:F

    add-float/2addr v11, v4

    iput v11, v5, LR/r;->b:F

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v11, v5, LR/r;->a:F

    cmpl-float v4, v4, v11

    if-lez v4, :cond_1b

    invoke-virtual {v5}, LR/r;->onRelease()V

    goto :goto_12

    :cond_1a
    invoke-virtual {v10}, Landroid/widget/EdgeEffect;->onRelease()V

    :cond_1b
    :goto_12
    if-nez v3, :cond_1d

    invoke-virtual {v10}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-eqz v3, :cond_1c

    goto :goto_13

    :cond_1c
    const/4 v3, 0x0

    goto :goto_14

    :cond_1d
    :goto_13
    move v3, v1

    :cond_1e
    :goto_14
    invoke-virtual {v9}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v4

    if-nez v4, :cond_23

    invoke-static/range {p1 .. p2}, Lr0/b;->b(J)F

    move-result v4

    const/4 v5, 0x0

    cmpg-float v4, v4, v5

    if-gez v4, :cond_23

    invoke-static/range {p1 .. p2}, Lr0/b;->b(J)F

    move-result v4

    instance-of v5, v9, LR/r;

    if-eqz v5, :cond_1f

    move-object v5, v9

    check-cast v5, LR/r;

    iget v10, v5, LR/r;->b:F

    add-float/2addr v10, v4

    iput v10, v5, LR/r;->b:F

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v10, v5, LR/r;->a:F

    cmpl-float v4, v4, v10

    if-lez v4, :cond_20

    invoke-virtual {v5}, LR/r;->onRelease()V

    goto :goto_15

    :cond_1f
    invoke-virtual {v9}, Landroid/widget/EdgeEffect;->onRelease()V

    :cond_20
    :goto_15
    if-nez v3, :cond_22

    invoke-virtual {v9}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-eqz v3, :cond_21

    goto :goto_16

    :cond_21
    const/4 v3, 0x0

    goto :goto_17

    :cond_22
    :goto_16
    move v3, v1

    :cond_23
    :goto_17
    invoke-virtual {v8}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v4

    if-nez v4, :cond_28

    invoke-static/range {p1 .. p2}, Lr0/b;->b(J)F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_28

    invoke-static/range {p1 .. p2}, Lr0/b;->b(J)F

    move-result v4

    instance-of v5, v8, LR/r;

    if-eqz v5, :cond_24

    move-object v5, v8

    check-cast v5, LR/r;

    iget v9, v5, LR/r;->b:F

    add-float/2addr v9, v4

    iput v9, v5, LR/r;->b:F

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v9, v5, LR/r;->a:F

    cmpl-float v4, v4, v9

    if-lez v4, :cond_25

    invoke-virtual {v5}, LR/r;->onRelease()V

    goto :goto_18

    :cond_24
    invoke-virtual {v8}, Landroid/widget/EdgeEffect;->onRelease()V

    :cond_25
    :goto_18
    if-nez v3, :cond_27

    invoke-virtual {v8}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-eqz v3, :cond_26

    goto :goto_19

    :cond_26
    const/4 v3, 0x0

    goto :goto_1a

    :cond_27
    :goto_19
    move v3, v1

    :cond_28
    :goto_1a
    if-nez v3, :cond_2a

    if-eqz v2, :cond_29

    goto :goto_1b

    :cond_29
    const/4 v1, 0x0

    :cond_2a
    :goto_1b
    if-eqz v1, :cond_2b

    invoke-virtual/range {p0 .. p0}, LR/d;->f()V

    :cond_2b
    invoke-static {v12, v13, v6, v7}, Lr0/b;->d(JJ)J

    move-result-wide v0

    return-wide v0

    :cond_2c
    :goto_1c
    new-instance v0, Lr0/b;

    move-wide/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lr0/b;-><init>(J)V

    invoke-virtual {v3, v0}, LS/e0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr0/b;

    iget-wide v0, v0, Lr0/b;->a:J

    return-wide v0
.end method

.method public final b(JLS/j0;Lib/c;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    instance-of v5, v4, LR/a;

    if-eqz v5, :cond_0

    move-object v5, v4

    check-cast v5, LR/a;

    iget v6, v5, LR/a;->e:I

    const/high16 v7, -0x80000000

    and-int v8, v6, v7

    if-eqz v8, :cond_0

    sub-int/2addr v6, v7

    iput v6, v5, LR/a;->e:I

    goto :goto_0

    :cond_0
    new-instance v5, LR/a;

    check-cast v4, Lkb/c;

    invoke-direct {v5, v0, v4}, LR/a;-><init>(LR/d;Lkb/c;)V

    :goto_0
    iget-object v4, v5, LR/a;->c:Ljava/lang/Object;

    sget-object v6, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v7, v5, LR/a;->e:I

    sget-object v8, Ldb/r;->a:Ldb/r;

    const/4 v9, 0x0

    const/4 v10, 0x2

    const/4 v11, 0x1

    const/16 v12, 0x1f

    const-string v13, "<this>"

    if-eqz v7, :cond_3

    if-eq v7, v11, :cond_2

    if-ne v7, v10, :cond_1

    iget-wide v0, v5, LR/a;->b:J

    iget-object v2, v5, LR/a;->a:LR/d;

    invoke-static {v4}, LG5/A2;->f(Ljava/lang/Object;)V

    move-wide/from16 v18, v0

    move-object v0, v2

    move-wide/from16 v1, v18

    goto/16 :goto_10

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v4}, LG5/A2;->f(Ljava/lang/Object;)V

    goto/16 :goto_15

    :cond_3
    invoke-static {v4}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-wide v14, v0, LR/d;->o:J

    invoke-static {v14, v15}, Lr0/d;->b(J)F

    move-result v4

    cmpg-float v4, v4, v9

    if-lez v4, :cond_24

    invoke-static {v14, v15}, Lr0/d;->a(J)F

    move-result v4

    cmpg-float v4, v4, v9

    if-gtz v4, :cond_4

    goto/16 :goto_14

    :cond_4
    invoke-static/range {p1 .. p2}, LH0/o;->b(J)F

    move-result v4

    cmpl-float v4, v4, v9

    sget-object v7, LR/h;->a:LR/h;

    if-lez v4, :cond_9

    iget-object v4, v0, LR/d;->e:Landroid/widget/EdgeEffect;

    invoke-static {v4, v13}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v11, v12, :cond_5

    invoke-virtual {v7, v4}, LR/h;->b(Landroid/widget/EdgeEffect;)F

    move-result v14

    goto :goto_1

    :cond_5
    move v14, v9

    :goto_1
    cmpg-float v14, v14, v9

    if-nez v14, :cond_6

    goto :goto_3

    :cond_6
    invoke-static/range {p1 .. p2}, LH0/o;->b(J)F

    move-result v14

    invoke-static {v14}, LG5/p2;->e(F)I

    move-result v14

    if-lt v11, v12, :cond_7

    invoke-virtual {v4, v14}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_2

    :cond_7
    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-virtual {v4, v14}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    :cond_8
    :goto_2
    invoke-static/range {p1 .. p2}, LH0/o;->b(J)F

    move-result v4

    goto :goto_7

    :cond_9
    :goto_3
    invoke-static/range {p1 .. p2}, LH0/o;->b(J)F

    move-result v4

    cmpg-float v4, v4, v9

    if-gez v4, :cond_e

    iget-object v4, v0, LR/d;->f:Landroid/widget/EdgeEffect;

    invoke-static {v4, v13}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v11, v12, :cond_a

    invoke-virtual {v7, v4}, LR/h;->b(Landroid/widget/EdgeEffect;)F

    move-result v14

    goto :goto_4

    :cond_a
    move v14, v9

    :goto_4
    cmpg-float v14, v14, v9

    if-nez v14, :cond_b

    goto :goto_6

    :cond_b
    invoke-static/range {p1 .. p2}, LH0/o;->b(J)F

    move-result v14

    invoke-static {v14}, LG5/p2;->e(F)I

    move-result v14

    neg-int v14, v14

    if-lt v11, v12, :cond_c

    invoke-virtual {v4, v14}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_5

    :cond_c
    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v11

    if-eqz v11, :cond_d

    invoke-virtual {v4, v14}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    :cond_d
    :goto_5
    invoke-static/range {p1 .. p2}, LH0/o;->b(J)F

    move-result v4

    goto :goto_7

    :cond_e
    :goto_6
    move v4, v9

    :goto_7
    invoke-static/range {p1 .. p2}, LH0/o;->c(J)F

    move-result v11

    cmpl-float v11, v11, v9

    if-lez v11, :cond_13

    iget-object v11, v0, LR/d;->c:Landroid/widget/EdgeEffect;

    invoke-static {v11, v13}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v14, v12, :cond_f

    invoke-virtual {v7, v11}, LR/h;->b(Landroid/widget/EdgeEffect;)F

    move-result v15

    goto :goto_8

    :cond_f
    move v15, v9

    :goto_8
    cmpg-float v15, v15, v9

    if-nez v15, :cond_10

    goto :goto_a

    :cond_10
    invoke-static/range {p1 .. p2}, LH0/o;->c(J)F

    move-result v7

    invoke-static {v7}, LG5/p2;->e(F)I

    move-result v7

    if-lt v14, v12, :cond_11

    invoke-virtual {v11, v7}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_9

    :cond_11
    invoke-virtual {v11}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v14

    if-eqz v14, :cond_12

    invoke-virtual {v11, v7}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    :cond_12
    :goto_9
    invoke-static/range {p1 .. p2}, LH0/o;->c(J)F

    move-result v7

    goto :goto_e

    :cond_13
    :goto_a
    invoke-static/range {p1 .. p2}, LH0/o;->c(J)F

    move-result v11

    cmpg-float v11, v11, v9

    if-gez v11, :cond_18

    iget-object v11, v0, LR/d;->d:Landroid/widget/EdgeEffect;

    invoke-static {v11, v13}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v14, v12, :cond_14

    invoke-virtual {v7, v11}, LR/h;->b(Landroid/widget/EdgeEffect;)F

    move-result v7

    goto :goto_b

    :cond_14
    move v7, v9

    :goto_b
    cmpg-float v7, v7, v9

    if-nez v7, :cond_15

    goto :goto_d

    :cond_15
    invoke-static/range {p1 .. p2}, LH0/o;->c(J)F

    move-result v7

    invoke-static {v7}, LG5/p2;->e(F)I

    move-result v7

    neg-int v7, v7

    if-lt v14, v12, :cond_16

    invoke-virtual {v11, v7}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_c

    :cond_16
    invoke-virtual {v11}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v14

    if-eqz v14, :cond_17

    invoke-virtual {v11, v7}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    :cond_17
    :goto_c
    invoke-static/range {p1 .. p2}, LH0/o;->c(J)F

    move-result v7

    goto :goto_e

    :cond_18
    :goto_d
    move v7, v9

    :goto_e
    invoke-static {v4, v7}, LG5/X2;->a(FF)J

    move-result-wide v14

    sget-wide v16, LH0/o;->b:J

    cmp-long v4, v14, v16

    if-nez v4, :cond_19

    goto :goto_f

    :cond_19
    invoke-virtual/range {p0 .. p0}, LR/d;->f()V

    :goto_f
    invoke-static {v1, v2, v14, v15}, LH0/o;->d(JJ)J

    move-result-wide v1

    new-instance v4, LH0/o;

    invoke-direct {v4, v1, v2}, LH0/o;-><init>(J)V

    iput-object v0, v5, LR/a;->a:LR/d;

    iput-wide v1, v5, LR/a;->b:J

    iput v10, v5, LR/a;->e:I

    invoke-virtual {v3, v4, v5}, LS/j0;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v6, :cond_1a

    return-object v6

    :cond_1a
    :goto_10
    check-cast v4, LH0/o;

    iget-wide v3, v4, LH0/o;->a:J

    invoke-static {v1, v2, v3, v4}, LH0/o;->d(JJ)J

    move-result-wide v1

    const/4 v3, 0x0

    iput-boolean v3, v0, LR/d;->n:Z

    invoke-static {v1, v2}, LH0/o;->b(J)F

    move-result v3

    cmpl-float v3, v3, v9

    if-lez v3, :cond_1c

    invoke-static {v1, v2}, LH0/o;->b(J)F

    move-result v3

    invoke-static {v3}, LG5/p2;->e(F)I

    move-result v3

    iget-object v4, v0, LR/d;->e:Landroid/widget/EdgeEffect;

    invoke-static {v4, v13}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v12, :cond_1b

    invoke-virtual {v4, v3}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_11

    :cond_1b
    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v5

    if-eqz v5, :cond_1e

    invoke-virtual {v4, v3}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_11

    :cond_1c
    invoke-static {v1, v2}, LH0/o;->b(J)F

    move-result v3

    cmpg-float v3, v3, v9

    if-gez v3, :cond_1e

    invoke-static {v1, v2}, LH0/o;->b(J)F

    move-result v3

    invoke-static {v3}, LG5/p2;->e(F)I

    move-result v3

    neg-int v3, v3

    iget-object v4, v0, LR/d;->f:Landroid/widget/EdgeEffect;

    invoke-static {v4, v13}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v12, :cond_1d

    invoke-virtual {v4, v3}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_11

    :cond_1d
    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v5

    if-eqz v5, :cond_1e

    invoke-virtual {v4, v3}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    :cond_1e
    :goto_11
    invoke-static {v1, v2}, LH0/o;->c(J)F

    move-result v3

    cmpl-float v3, v3, v9

    if-lez v3, :cond_20

    invoke-static {v1, v2}, LH0/o;->c(J)F

    move-result v3

    invoke-static {v3}, LG5/p2;->e(F)I

    move-result v3

    iget-object v4, v0, LR/d;->c:Landroid/widget/EdgeEffect;

    invoke-static {v4, v13}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v12, :cond_1f

    invoke-virtual {v4, v3}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_12

    :cond_1f
    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v5

    if-eqz v5, :cond_22

    invoke-virtual {v4, v3}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_12

    :cond_20
    invoke-static {v1, v2}, LH0/o;->c(J)F

    move-result v3

    cmpg-float v3, v3, v9

    if-gez v3, :cond_22

    invoke-static {v1, v2}, LH0/o;->c(J)F

    move-result v3

    invoke-static {v3}, LG5/p2;->e(F)I

    move-result v3

    neg-int v3, v3

    iget-object v4, v0, LR/d;->d:Landroid/widget/EdgeEffect;

    invoke-static {v4, v13}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v12, :cond_21

    invoke-virtual {v4, v3}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_12

    :cond_21
    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v5

    if-eqz v5, :cond_22

    invoke-virtual {v4, v3}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    :cond_22
    :goto_12
    sget-wide v3, LH0/o;->b:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_23

    goto :goto_13

    :cond_23
    invoke-virtual {v0}, LR/d;->f()V

    :goto_13
    invoke-virtual {v0}, LR/d;->e()V

    return-object v8

    :cond_24
    :goto_14
    new-instance v0, LH0/o;

    invoke-direct {v0, v1, v2}, LH0/o;-><init>(J)V

    iput v11, v5, LR/a;->e:I

    invoke-virtual {v3, v0, v5}, LS/j0;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v6, :cond_25

    return-object v6

    :cond_25
    :goto_15
    return-object v8
.end method

.method public final c()Z
    .locals 7

    iget-object p0, p0, LR/d;->g:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EdgeEffect;

    const-string v4, "<this>"

    invoke-static {v3, v4}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1f

    const/4 v6, 0x0

    if-lt v4, v5, :cond_0

    sget-object v4, LR/h;->a:LR/h;

    invoke-virtual {v4, v3}, LR/h;->b(Landroid/widget/EdgeEffect;)F

    move-result v3

    goto :goto_1

    :cond_0
    move v3, v6

    :goto_1
    cmpg-float v3, v3, v6

    const/4 v4, 0x1

    if-nez v3, :cond_1

    move v3, v4

    goto :goto_2

    :cond_1
    move v3, v1

    :goto_2
    if-nez v3, :cond_2

    move v1, v4

    goto :goto_3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_3
    return v1
.end method

.method public final d()Lm0/m;
    .locals 0

    iget-object p0, p0, LR/d;->q:Lm0/m;

    return-object p0
.end method

.method public final e()V
    .locals 6

    iget-object v0, p0, LR/d;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EdgeEffect;

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->onRelease()V

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v5

    if-nez v5, :cond_1

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    move v4, v2

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v4, 0x1

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-eqz v4, :cond_3

    invoke-virtual {p0}, LR/d;->f()V

    :cond_3
    return-void
.end method

.method public final f()V
    .locals 1

    iget-boolean v0, p0, LR/d;->m:Z

    if-eqz v0, :cond_0

    sget-object v0, Ldb/r;->a:Ldb/r;

    iget-object p0, p0, LR/d;->l:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final g(JJ)F
    .locals 7

    invoke-static {p3, p4}, Lr0/b;->a(J)F

    move-result p3

    iget-wide v0, p0, LR/d;->o:J

    invoke-static {v0, v1}, Lr0/d;->b(J)F

    move-result p4

    div-float/2addr p3, p4

    invoke-static {p1, p2}, Lr0/b;->b(J)F

    move-result p4

    iget-wide v0, p0, LR/d;->o:J

    invoke-static {v0, v1}, Lr0/d;->a(J)F

    move-result v0

    div-float/2addr p4, v0

    neg-float p4, p4

    const/4 v0, 0x1

    int-to-float v0, v0

    sub-float/2addr v0, p3

    iget-object p3, p0, LR/d;->d:Landroid/widget/EdgeEffect;

    const-string v1, "<this>"

    invoke-static {p3, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    sget-object v3, LR/h;->a:LR/h;

    const/16 v4, 0x1f

    if-lt v2, v4, :cond_0

    invoke-virtual {v3, p3, p4, v0}, LR/h;->c(Landroid/widget/EdgeEffect;FF)F

    move-result p4

    goto :goto_0

    :cond_0
    invoke-virtual {p3, p4, v0}, Landroid/widget/EdgeEffect;->onPull(FF)V

    :goto_0
    neg-float p4, p4

    iget-wide v5, p0, LR/d;->o:J

    invoke-static {v5, v6}, Lr0/d;->a(J)F

    move-result p0

    mul-float/2addr p0, p4

    invoke-static {p3, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget p4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v0, 0x0

    if-lt p4, v4, :cond_1

    invoke-virtual {v3, p3}, LR/h;->b(Landroid/widget/EdgeEffect;)F

    move-result p3

    goto :goto_1

    :cond_1
    move p3, v0

    :goto_1
    cmpg-float p3, p3, v0

    if-nez p3, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {p1, p2}, Lr0/b;->b(J)F

    move-result p0

    :goto_2
    return p0
.end method

.method public final h(JJ)F
    .locals 7

    invoke-static {p3, p4}, Lr0/b;->b(J)F

    move-result p3

    iget-wide v0, p0, LR/d;->o:J

    invoke-static {v0, v1}, Lr0/d;->a(J)F

    move-result p4

    div-float/2addr p3, p4

    invoke-static {p1, p2}, Lr0/b;->a(J)F

    move-result p4

    iget-wide v0, p0, LR/d;->o:J

    invoke-static {v0, v1}, Lr0/d;->b(J)F

    move-result v0

    div-float/2addr p4, v0

    const/4 v0, 0x1

    int-to-float v0, v0

    sub-float/2addr v0, p3

    iget-object p3, p0, LR/d;->e:Landroid/widget/EdgeEffect;

    const-string v1, "<this>"

    invoke-static {p3, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    sget-object v3, LR/h;->a:LR/h;

    const/16 v4, 0x1f

    if-lt v2, v4, :cond_0

    invoke-virtual {v3, p3, p4, v0}, LR/h;->c(Landroid/widget/EdgeEffect;FF)F

    move-result p4

    goto :goto_0

    :cond_0
    invoke-virtual {p3, p4, v0}, Landroid/widget/EdgeEffect;->onPull(FF)V

    :goto_0
    iget-wide v5, p0, LR/d;->o:J

    invoke-static {v5, v6}, Lr0/d;->b(J)F

    move-result p0

    mul-float/2addr p0, p4

    invoke-static {p3, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget p4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v0, 0x0

    if-lt p4, v4, :cond_1

    invoke-virtual {v3, p3}, LR/h;->b(Landroid/widget/EdgeEffect;)F

    move-result p3

    goto :goto_1

    :cond_1
    move p3, v0

    :goto_1
    cmpg-float p3, p3, v0

    if-nez p3, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {p1, p2}, Lr0/b;->a(J)F

    move-result p0

    :goto_2
    return p0
.end method

.method public final i(JJ)F
    .locals 7

    invoke-static {p3, p4}, Lr0/b;->b(J)F

    move-result p3

    iget-wide v0, p0, LR/d;->o:J

    invoke-static {v0, v1}, Lr0/d;->a(J)F

    move-result p4

    div-float/2addr p3, p4

    invoke-static {p1, p2}, Lr0/b;->a(J)F

    move-result p4

    iget-wide v0, p0, LR/d;->o:J

    invoke-static {v0, v1}, Lr0/d;->b(J)F

    move-result v0

    div-float/2addr p4, v0

    neg-float p4, p4

    iget-object v0, p0, LR/d;->f:Landroid/widget/EdgeEffect;

    const-string v1, "<this>"

    invoke-static {v0, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    sget-object v3, LR/h;->a:LR/h;

    const/16 v4, 0x1f

    if-lt v2, v4, :cond_0

    invoke-virtual {v3, v0, p4, p3}, LR/h;->c(Landroid/widget/EdgeEffect;FF)F

    move-result p4

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p4, p3}, Landroid/widget/EdgeEffect;->onPull(FF)V

    :goto_0
    neg-float p3, p4

    iget-wide v5, p0, LR/d;->o:J

    invoke-static {v5, v6}, Lr0/d;->b(J)F

    move-result p0

    mul-float/2addr p0, p3

    invoke-static {v0, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 p4, 0x0

    if-lt p3, v4, :cond_1

    invoke-virtual {v3, v0}, LR/h;->b(Landroid/widget/EdgeEffect;)F

    move-result p3

    goto :goto_1

    :cond_1
    move p3, p4

    :goto_1
    cmpg-float p3, p3, p4

    if-nez p3, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {p1, p2}, Lr0/b;->a(J)F

    move-result p0

    :goto_2
    return p0
.end method

.method public final j(JJ)F
    .locals 7

    invoke-static {p3, p4}, Lr0/b;->a(J)F

    move-result p3

    iget-wide v0, p0, LR/d;->o:J

    invoke-static {v0, v1}, Lr0/d;->b(J)F

    move-result p4

    div-float/2addr p3, p4

    invoke-static {p1, p2}, Lr0/b;->b(J)F

    move-result p4

    iget-wide v0, p0, LR/d;->o:J

    invoke-static {v0, v1}, Lr0/d;->a(J)F

    move-result v0

    div-float/2addr p4, v0

    iget-object v0, p0, LR/d;->c:Landroid/widget/EdgeEffect;

    const-string v1, "<this>"

    invoke-static {v0, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    sget-object v3, LR/h;->a:LR/h;

    const/16 v4, 0x1f

    if-lt v2, v4, :cond_0

    invoke-virtual {v3, v0, p4, p3}, LR/h;->c(Landroid/widget/EdgeEffect;FF)F

    move-result p4

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p4, p3}, Landroid/widget/EdgeEffect;->onPull(FF)V

    :goto_0
    iget-wide v5, p0, LR/d;->o:J

    invoke-static {v5, v6}, Lr0/d;->a(J)F

    move-result p0

    mul-float/2addr p0, p4

    invoke-static {v0, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 p4, 0x0

    if-lt p3, v4, :cond_1

    invoke-virtual {v3, v0}, LR/h;->b(Landroid/widget/EdgeEffect;)F

    move-result p3

    goto :goto_1

    :cond_1
    move p3, p4

    :goto_1
    cmpg-float p3, p3, p4

    if-nez p3, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {p1, p2}, Lr0/b;->b(J)F

    move-result p0

    :goto_2
    return p0
.end method
