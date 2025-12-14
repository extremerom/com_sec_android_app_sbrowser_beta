.class public final LV/y;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public final synthetic a:LU/t;

.field public final synthetic b:Z

.field public final synthetic c:LV/J;

.field public final synthetic d:LV/t;

.field public final synthetic e:LU/d;

.field public final synthetic f:LV/n;

.field public final synthetic g:LV/h;

.field public final synthetic h:I

.field public final synthetic i:Lm0/b;

.field public final synthetic j:Lm0/c;


# direct methods
.method public constructor <init>(LU/t;ZLV/J;LV/t;LU/d;LU/c;LV/n;LV/h;ILm0/b;Lm0/c;)V
    .locals 0

    iput-object p1, p0, LV/y;->a:LU/t;

    iput-boolean p2, p0, LV/y;->b:Z

    iput-object p3, p0, LV/y;->c:LV/J;

    iput-object p4, p0, LV/y;->d:LV/t;

    iput-object p5, p0, LV/y;->e:LU/d;

    iput-object p7, p0, LV/y;->f:LV/n;

    iput-object p8, p0, LV/y;->g:LV/h;

    iput p9, p0, LV/y;->h:I

    iput-object p10, p0, LV/y;->i:Lm0/b;

    iput-object p11, p0, LV/y;->j:Lm0/c;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 42

    move-object/from16 v0, p0

    move-object/from16 v14, p1

    check-cast v14, LW/k;

    move-object/from16 v4, p2

    check-cast v4, LH0/a;

    iget-wide v12, v4, LH0/a;->a:J

    const-string v4, "$this$null"

    invoke-static {v14, v4}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v15, LS/I;->Vertical:LS/I;

    const-string v4, "orientation"

    invoke-static {v15, v4}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v12, v13}, LH0/a;->a(J)I

    move-result v4

    const v5, 0x7fffffff

    if-eq v4, v5, :cond_70

    iget-object v4, v14, LW/k;->b:Lz0/M;

    invoke-interface {v4}, Lz0/z;->getLayoutDirection()LH0/k;

    move-result-object v5

    iget-object v6, v0, LV/y;->a:LU/t;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v7, "layoutDirection"

    invoke-static {v5, v7}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v8, LH0/k;->Ltr:LH0/k;

    if-ne v5, v8, :cond_0

    iget v5, v6, LU/t;->a:F

    goto :goto_0

    :cond_0
    iget v5, v6, LU/t;->c:F

    :goto_0
    invoke-interface {v4, v5}, LH0/b;->j(F)I

    move-result v5

    invoke-interface {v4}, Lz0/z;->getLayoutDirection()LH0/k;

    move-result-object v9

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v9, v7}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    if-ne v9, v8, :cond_1

    iget v7, v6, LU/t;->c:F

    goto :goto_1

    :cond_1
    iget v7, v6, LU/t;->a:F

    :goto_1
    invoke-interface {v4, v7}, LH0/b;->j(F)I

    move-result v7

    iget v8, v6, LU/t;->b:F

    invoke-interface {v4, v8}, LH0/b;->j(F)I

    move-result v8

    iget v6, v6, LU/t;->d:F

    invoke-interface {v4, v6}, LH0/b;->j(F)I

    move-result v6

    add-int v11, v8, v6

    add-int v10, v5, v7

    iget-boolean v9, v0, LV/y;->b:Z

    if-nez v9, :cond_2

    move v7, v8

    goto :goto_2

    :cond_2
    if-eqz v9, :cond_3

    move v7, v6

    :cond_3
    :goto_2
    sub-int v16, v11, v7

    neg-int v6, v10

    neg-int v1, v11

    invoke-static {v12, v13, v6, v1}, LG5/S2;->j(JII)J

    move-result-wide v17

    iget-object v1, v0, LV/y;->c:LV/J;

    iget-object v6, v0, LV/y;->d:LV/t;

    invoke-virtual {v1, v6}, LV/J;->d(LV/t;)V

    iget-object v3, v1, LV/J;->a:Lcom/samsung/android/scloud/lib/setting/e;

    iget-object v2, v1, LV/J;->e:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v2, v14}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    iget-object v2, v6, LV/t;->b:La0/E;

    invoke-virtual {v2}, La0/E;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LV/s;

    iget-object v2, v2, LV/s;->a:LV/g;

    invoke-static/range {v17 .. v18}, LH0/a;->b(J)I

    move-result v19

    invoke-static/range {v17 .. v18}, LH0/a;->a(J)I

    move-result v20

    move/from16 p1, v7

    iget-object v7, v2, LV/g;->a:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move/from16 p2, v10

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    iget-object v2, v2, LV/g;->b:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    iget-object v2, v0, LV/y;->e:LU/d;

    const-string v10, "Required value was null."

    if-eqz v2, :cond_6f

    invoke-interface {v2}, LU/d;->b()F

    move-result v7

    invoke-interface {v4, v7}, LH0/b;->j(F)I

    move-result v19

    iget-object v4, v6, LV/t;->a:LW/a;

    invoke-virtual {v4}, LW/a;->getItemCount()I

    move-result v7

    invoke-static {v12, v13}, LH0/a;->a(J)I

    move-result v4

    sub-int/2addr v4, v11

    if-eqz v9, :cond_5

    if-lez v4, :cond_4

    goto :goto_3

    :cond_4
    add-int/2addr v8, v4

    invoke-static {v5, v8}, LG5/U2;->a(II)J

    move-result-wide v20

    goto :goto_4

    :cond_5
    :goto_3
    invoke-static {v5, v8}, LG5/U2;->a(II)J

    move-result-wide v20

    :goto_4
    new-instance v8, LV/M;

    new-instance v22, LV/x;

    iget-boolean v5, v0, LV/y;->b:Z

    move-wide/from16 v26, v12

    iget-object v13, v0, LV/y;->f:LV/n;

    iget-object v12, v0, LV/y;->i:Lm0/b;

    move/from16 v23, v9

    iget-object v9, v0, LV/y;->j:Lm0/c;

    move-object/from16 v28, v2

    move v2, v4

    move-object/from16 v4, v22

    move/from16 v29, v5

    move v5, v7

    move/from16 v30, v2

    move-object v2, v6

    move/from16 v6, v19

    move/from16 v31, p1

    move/from16 v35, v7

    move-object v7, v14

    move-object/from16 p1, v8

    move-object v8, v12

    move/from16 v32, p2

    move-object v12, v10

    move/from16 v10, v29

    move/from16 v29, v11

    move/from16 v11, v31

    move-object/from16 v36, v12

    move/from16 v12, v16

    move-object/from16 p2, v14

    move-object/from16 v33, v15

    move-wide/from16 v14, v20

    invoke-direct/range {v4 .. v15}, LV/x;-><init>(IILW/k;Lm0/b;Lm0/c;ZIILV/n;J)V

    iget-object v7, v0, LV/y;->d:LV/t;

    move-object/from16 v4, p1

    move-wide/from16 v5, v17

    move-object/from16 v8, p2

    move-object/from16 v9, v22

    invoke-direct/range {v4 .. v9}, LV/M;-><init>(JLV/t;LW/k;LV/x;)V

    new-instance v4, LH0/a;

    move-object/from16 v10, p1

    iget-wide v5, v10, LV/M;->a:J

    invoke-direct {v4, v5, v6}, LH0/a;-><init>(J)V

    iget-object v5, v1, LV/J;->o:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v5, v4}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    sget-object v4, Lk0/n;->a:LZ3/x;

    invoke-virtual {v4}, LZ3/x;->u()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lk0/h;

    const/4 v11, 0x0

    const/4 v5, 0x0

    invoke-static {v4, v11, v5}, Lk0/n;->h(Lk0/h;Lsb/k;Z)Lk0/h;

    move-result-object v4

    :try_start_0
    invoke-virtual {v4}, Lk0/h;->j()Lk0/h;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    invoke-virtual {v3}, Lcom/samsung/android/scloud/lib/setting/e;->e()I

    move-result v12

    invoke-virtual {v3}, Lcom/samsung/android/scloud/lib/setting/e;->f()I

    move-result v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-static {v5}, Lk0/h;->p(Lk0/h;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    invoke-virtual {v4}, Lk0/h;->c()V

    iget v14, v1, LV/J;->d:F

    iget-object v4, v2, LV/t;->b:La0/E;

    invoke-virtual {v4}, La0/E;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LV/s;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v15, LV/w;

    move-object v4, v15

    move-object/from16 v5, p2

    move-wide/from16 v6, v26

    move/from16 v8, v32

    move/from16 v9, v29

    invoke-direct/range {v4 .. v9}, LV/w;-><init>(LW/k;JII)V

    const-string v4, "placementAnimator"

    iget-object v5, v0, LV/y;->f:LV/n;

    invoke-static {v5, v4}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "beyondBoundsInfo"

    iget-object v6, v0, LV/y;->g:LV/h;

    invoke-static {v6, v4}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v1, LV/J;->p:LW/m;

    const-string v7, "pinnedItems"

    invoke-static {v4, v7}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "Failed requirement."

    move/from16 v8, v31

    if-ltz v8, :cond_6e

    if-ltz v16, :cond_6d

    sget-object v21, Lfb/v;->a:Lfb/v;

    move/from16 v9, v35

    if-gtz v9, :cond_6

    new-instance v0, LV/B;

    invoke-static/range {v17 .. v18}, LH0/a;->d(J)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static/range {v17 .. v18}, LH0/a;->c(J)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v5, LV/A;->b:LV/A;

    invoke-virtual {v15, v2, v4, v5}, LV/w;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Lz0/y;

    const/16 v19, 0x0

    const/16 v22, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v15, v0

    move-object/from16 v23, v33

    invoke-direct/range {v15 .. v23}, LV/B;-><init>(LV/L;IZFLz0/y;Ljava/util/List;ILS/I;)V

    move-object/from16 v35, v1

    move-object/from16 v37, v3

    goto/16 :goto_41

    :cond_6
    if-lt v12, v9, :cond_7

    const/16 v20, 0x1

    add-int/lit8 v12, v9, -0x1

    const/4 v13, 0x0

    :cond_7
    invoke-static {v14}, LG5/p2;->e(F)I

    move-result v20

    sub-int v13, v13, v20

    if-nez v12, :cond_8

    if-gez v13, :cond_8

    add-int v20, v20, v13

    const/4 v13, 0x0

    :cond_8
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move/from16 v22, v12

    neg-int v12, v8

    if-gez v19, :cond_9

    move/from16 v26, v19

    goto :goto_5

    :cond_9
    const/16 v26, 0x0

    :goto_5
    add-int v12, v12, v26

    add-int/2addr v13, v12

    move-object/from16 v35, v1

    const/4 v1, 0x0

    :goto_6
    if-gez v13, :cond_a

    if-lez v22, :cond_a

    move-object/from16 v37, v3

    const/16 v24, 0x1

    add-int/lit8 v3, v22, -0x1

    move-object/from16 v26, v15

    invoke-virtual {v10, v3}, LV/M;->b(I)LV/L;

    move-result-object v15

    move/from16 v22, v3

    const/4 v3, 0x0

    invoke-virtual {v11, v3, v15}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget v3, v15, LV/L;->n:I

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v3, v15, LV/L;->m:I

    add-int/2addr v13, v3

    move-object/from16 v15, v26

    move-object/from16 v3, v37

    goto :goto_6

    :cond_a
    move-object/from16 v37, v3

    move-object/from16 v26, v15

    if-ge v13, v12, :cond_b

    add-int v20, v20, v13

    move v13, v12

    :cond_b
    sub-int/2addr v13, v12

    add-int v3, v30, v16

    if-gez v3, :cond_c

    const/4 v3, 0x0

    :cond_c
    neg-int v15, v13

    move/from16 v16, v1

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    move/from16 v27, v13

    move/from16 v29, v22

    const/4 v13, 0x0

    :goto_7
    if-ge v13, v1, :cond_d

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    move/from16 v32, v1

    move-object/from16 v1, v31

    check-cast v1, LV/L;

    const/16 v24, 0x1

    add-int/lit8 v29, v29, 0x1

    iget v1, v1, LV/L;->m:I

    add-int/2addr v15, v1

    add-int/lit8 v13, v13, 0x1

    move/from16 v1, v32

    goto :goto_7

    :cond_d
    move/from16 v1, v16

    move/from16 v13, v29

    :goto_8
    if-ge v13, v9, :cond_11

    if-lt v15, v3, :cond_e

    if-lez v15, :cond_e

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_f

    :cond_e
    move/from16 v16, v3

    goto :goto_9

    :cond_f
    move-object/from16 v29, v5

    move/from16 v3, v30

    const/16 v24, 0x1

    goto :goto_b

    :goto_9
    invoke-virtual {v10, v13}, LV/M;->b(I)LV/L;

    move-result-object v3

    move-object/from16 v29, v5

    iget v5, v3, LV/L;->m:I

    add-int/2addr v15, v5

    move/from16 v31, v12

    const/16 v24, 0x1

    if-gt v15, v12, :cond_10

    add-int/lit8 v12, v9, -0x1

    if-eq v13, v12, :cond_10

    add-int/lit8 v3, v13, 0x1

    sub-int v27, v27, v5

    move/from16 v22, v3

    goto :goto_a

    :cond_10
    iget v5, v3, LV/L;->n:I

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_a
    add-int/lit8 v13, v13, 0x1

    move/from16 v3, v16

    move-object/from16 v5, v29

    move/from16 v12, v31

    goto :goto_8

    :cond_11
    move-object/from16 v29, v5

    const/16 v24, 0x1

    move/from16 v3, v30

    :goto_b
    if-ge v15, v3, :cond_14

    sub-int v5, v3, v15

    sub-int v27, v27, v5

    add-int/2addr v15, v5

    move/from16 v12, v27

    :goto_c
    if-ge v12, v8, :cond_12

    if-lez v22, :cond_12

    move/from16 v16, v13

    add-int/lit8 v13, v22, -0x1

    move-object/from16 v30, v7

    invoke-virtual {v10, v13}, LV/M;->b(I)LV/L;

    move-result-object v7

    move/from16 v22, v13

    const/4 v13, 0x0

    invoke-virtual {v11, v13, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget v13, v7, LV/L;->n:I

    invoke-static {v1, v13}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v7, v7, LV/L;->m:I

    add-int/2addr v12, v7

    move/from16 v13, v16

    move-object/from16 v7, v30

    const/16 v24, 0x1

    goto :goto_c

    :cond_12
    move-object/from16 v30, v7

    move/from16 v16, v13

    add-int v20, v20, v5

    if-gez v12, :cond_13

    add-int v20, v20, v12

    add-int/2addr v15, v12

    move/from16 v5, v20

    const/4 v12, 0x0

    goto :goto_d

    :cond_13
    move/from16 v5, v20

    goto :goto_d

    :cond_14
    move-object/from16 v30, v7

    move/from16 v16, v13

    move/from16 v5, v20

    move/from16 v12, v27

    :goto_d
    invoke-static {v14}, LG5/p2;->e(F)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->signum(I)I

    move-result v7

    invoke-static {v5}, Ljava/lang/Integer;->signum(I)I

    move-result v13

    if-ne v7, v13, :cond_15

    invoke-static {v14}, LG5/p2;->e(F)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v13

    if-lt v7, v13, :cond_15

    int-to-float v5, v5

    move v14, v5

    :cond_15
    if-ltz v12, :cond_6c

    neg-int v5, v12

    invoke-static {v11}, Lfb/n;->C(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LV/L;

    if-gtz v8, :cond_17

    if-gez v19, :cond_16

    goto :goto_e

    :cond_16
    move/from16 v20, v1

    goto :goto_10

    :cond_17
    :goto_e
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v13, 0x0

    :goto_f
    if-ge v13, v8, :cond_18

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    move/from16 v20, v1

    move-object/from16 v1, v19

    check-cast v1, LV/L;

    iget v1, v1, LV/L;->m:I

    if-eqz v12, :cond_19

    if-gt v1, v12, :cond_19

    move-object/from16 v19, v7

    invoke-static {v11}, Lfb/o;->f(Ljava/util/List;)I

    move-result v7

    if-eq v13, v7, :cond_1a

    sub-int/2addr v12, v1

    const/4 v1, 0x1

    add-int/2addr v13, v1

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, LV/L;

    move/from16 v1, v20

    goto :goto_f

    :cond_18
    move/from16 v20, v1

    :cond_19
    move-object/from16 v19, v7

    :cond_1a
    move-object/from16 v7, v19

    :goto_10
    iget-object v1, v6, LV/h;->a:Lc0/d;

    invoke-virtual {v1}, Lc0/d;->m()Z

    move-result v6

    const-string v8, "MutableVector is empty."

    if-nez v6, :cond_6a

    iget v0, v0, LV/y;->h:I

    sub-int v6, v22, v0

    const/4 v13, 0x0

    invoke-static {v13, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    move-object/from16 v19, v8

    const/4 v13, 0x1

    add-int/lit8 v8, v22, -0x1

    if-gt v6, v8, :cond_1c

    move v13, v8

    const/4 v8, 0x0

    :goto_11
    if-nez v8, :cond_1b

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    :cond_1b
    move/from16 v22, v12

    invoke-virtual {v10, v13}, LV/M;->b(I)LV/L;

    move-result-object v12

    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eq v13, v6, :cond_1d

    const/4 v12, -0x1

    add-int/2addr v13, v12

    move/from16 v12, v22

    goto :goto_11

    :cond_1c
    move/from16 v22, v12

    const/4 v8, 0x0

    :cond_1d
    iget-object v12, v4, LW/m;->a:Lk0/p;

    invoke-virtual {v12}, Lk0/p;->size()I

    move-result v13

    move/from16 v31, v14

    const/4 v14, 0x0

    :goto_12
    if-ge v14, v13, :cond_20

    invoke-virtual {v4, v14}, LW/m;->get(I)Ljava/lang/Object;

    move-result-object v27

    move/from16 p0, v13

    move-object/from16 v13, v27

    check-cast v13, LW/l;

    move/from16 v27, v5

    iget-object v5, v13, LW/l;->a:Ljava/lang/Object;

    iget-object v13, v13, LW/l;->c:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v13}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Number;

    invoke-virtual {v13}, Ljava/lang/Number;->intValue()I

    move-result v13

    invoke-static {v2, v5, v13}, LG5/Z2;->b(LV/o;Ljava/lang/Object;I)I

    move-result v5

    if-ge v5, v6, :cond_1f

    if-nez v8, :cond_1e

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    :cond_1e
    invoke-virtual {v10, v5}, LV/M;->b(I)LV/L;

    move-result-object v5

    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1f
    const/4 v5, 0x1

    add-int/2addr v14, v5

    move/from16 v13, p0

    move/from16 v5, v27

    goto :goto_12

    :cond_20
    move/from16 v27, v5

    if-nez v8, :cond_21

    move-object/from16 v8, v21

    :cond_21
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v5

    move/from16 v6, v20

    const/4 v13, 0x0

    :goto_13
    if-ge v13, v5, :cond_22

    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, LV/L;

    iget v14, v14, LV/L;->n:I

    invoke-static {v6, v14}, Ljava/lang/Math;->max(II)I

    move-result v6

    const/4 v14, 0x1

    add-int/2addr v13, v14

    goto :goto_13

    :cond_22
    const/4 v14, 0x1

    invoke-static {v11}, Lfb/n;->K(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LV/L;

    iget v5, v5, LV/L;->a:I

    invoke-virtual {v1}, Lc0/d;->m()Z

    move-result v13

    if-nez v13, :cond_68

    add-int/2addr v5, v0

    add-int/lit8 v0, v9, -0x1

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v11}, Lfb/n;->K(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LV/L;

    iget v1, v1, LV/L;->a:I

    add-int/2addr v1, v14

    if-gt v1, v0, :cond_24

    move v5, v1

    const/4 v1, 0x0

    :goto_14
    if-nez v1, :cond_23

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_23
    invoke-virtual {v10, v5}, LV/M;->b(I)LV/L;

    move-result-object v13

    invoke-interface {v1, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eq v5, v0, :cond_25

    const/4 v13, 0x1

    add-int/2addr v5, v13

    goto :goto_14

    :cond_24
    const/4 v1, 0x0

    :cond_25
    invoke-virtual {v12}, Lk0/p;->size()I

    move-result v5

    const/4 v12, 0x0

    :goto_15
    if-ge v12, v5, :cond_28

    invoke-virtual {v4, v12}, LW/m;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, LW/l;

    iget-object v14, v13, LW/l;->a:Ljava/lang/Object;

    iget-object v13, v13, LW/l;->c:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v13}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Number;

    invoke-virtual {v13}, Ljava/lang/Number;->intValue()I

    move-result v13

    invoke-static {v2, v14, v13}, LG5/Z2;->b(LV/o;Ljava/lang/Object;I)I

    move-result v13

    if-le v13, v0, :cond_27

    if-ge v13, v9, :cond_27

    if-nez v1, :cond_26

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_26
    invoke-virtual {v10, v13}, LV/M;->b(I)LV/L;

    move-result-object v13

    invoke-interface {v1, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_27
    const/4 v13, 0x1

    add-int/2addr v12, v13

    goto :goto_15

    :cond_28
    if-nez v1, :cond_29

    move-object/from16 v1, v21

    :cond_29
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_16
    if-ge v2, v0, :cond_2a

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LV/L;

    iget v4, v4, LV/L;->n:I

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v6

    const/4 v4, 0x1

    add-int/2addr v2, v4

    goto :goto_16

    :cond_2a
    invoke-static {v11}, Lfb/n;->C(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v7, v0}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2b

    const/4 v0, 0x1

    goto :goto_17

    :cond_2b
    const/4 v0, 0x0

    :goto_17
    invoke-static/range {v17 .. v18}, LH0/a;->d(J)I

    move-result v2

    invoke-static/range {v17 .. v18}, LH0/a;->b(J)I

    move-result v4

    invoke-static {v6, v2, v4}, LG5/d3;->f(III)I

    move-result v2

    invoke-static/range {v17 .. v18}, LH0/a;->c(J)I

    move-result v4

    invoke-static/range {v17 .. v18}, LH0/a;->a(J)I

    move-result v5

    invoke-static {v15, v4, v5}, LG5/d3;->f(III)I

    move-result v4

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v5

    if-ge v15, v5, :cond_2c

    const/4 v5, 0x1

    goto :goto_18

    :cond_2c
    const/4 v5, 0x0

    :goto_18
    if-eqz v5, :cond_2e

    if-nez v27, :cond_2d

    goto :goto_19

    :cond_2d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Check failed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2e
    :goto_19
    new-instance v6, Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v13

    add-int/2addr v13, v12

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v12

    add-int/2addr v12, v13

    invoke-direct {v6, v12}, Ljava/util/ArrayList;-><init>(I)V

    if-eqz v5, :cond_3a

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_39

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v5, v1, [I

    const/4 v8, 0x0

    :goto_1a
    if-ge v8, v1, :cond_30

    if-nez v23, :cond_2f

    move v12, v8

    const/4 v13, 0x1

    goto :goto_1b

    :cond_2f
    sub-int v12, v1, v8

    const/4 v13, 0x1

    sub-int/2addr v12, v13

    :goto_1b
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, LV/L;

    iget v12, v12, LV/L;->l:I

    aput v12, v5, v8

    add-int/2addr v8, v13

    goto :goto_1a

    :cond_30
    const/4 v13, 0x1

    new-array v8, v1, [I

    const/4 v12, 0x0

    :goto_1c
    if-ge v12, v1, :cond_31

    const/4 v14, 0x0

    aput v14, v8, v12

    add-int/2addr v12, v13

    goto :goto_1c

    :cond_31
    const/4 v14, 0x0

    if-eqz v28, :cond_38

    move-object/from16 v12, p2

    move-object/from16 v14, v28

    invoke-interface {v14, v12, v4, v5, v8}, LU/d;->a(LH0/b;I[I[I)V

    if-nez v23, :cond_32

    new-instance v5, Lzb/d;

    add-int/lit8 v12, v1, -0x1

    const/4 v14, 0x0

    invoke-direct {v5, v14, v12, v13}, Lzb/b;-><init>(III)V

    goto :goto_1d

    :cond_32
    const/4 v14, 0x0

    new-instance v5, Lzb/d;

    add-int/lit8 v12, v1, -0x1

    invoke-direct {v5, v14, v12, v13}, Lzb/b;-><init>(III)V

    iget v12, v5, Lzb/b;->c:I

    neg-int v12, v12

    new-instance v13, Lzb/b;

    iget v5, v5, Lzb/b;->b:I

    invoke-direct {v13, v5, v14, v12}, Lzb/b;-><init>(III)V

    move-object v5, v13

    :goto_1d
    iget v12, v5, Lzb/b;->a:I

    iget v13, v5, Lzb/b;->b:I

    iget v5, v5, Lzb/b;->c:I

    if-lez v5, :cond_33

    if-le v12, v13, :cond_34

    :cond_33
    if-gez v5, :cond_37

    if-gt v13, v12, :cond_37

    :cond_34
    :goto_1e
    aget v14, v8, v12

    if-nez v23, :cond_35

    move/from16 p0, v1

    move v1, v12

    goto :goto_1f

    :cond_35
    sub-int v17, v1, v12

    const/16 v18, 0x1

    add-int/lit8 v17, v17, -0x1

    move/from16 p0, v1

    move/from16 v1, v17

    :goto_1f
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LV/L;

    if-eqz v23, :cond_36

    sub-int v14, v4, v14

    move-object/from16 v17, v8

    iget v8, v1, LV/L;->l:I

    sub-int/2addr v14, v8

    goto :goto_20

    :cond_36
    move-object/from16 v17, v8

    :goto_20
    invoke-virtual {v1, v14, v2, v4}, LV/L;->a(III)LV/D;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eq v12, v13, :cond_37

    add-int/2addr v12, v5

    move/from16 v1, p0

    move-object/from16 v8, v17

    goto :goto_1e

    :cond_37
    move/from16 v14, v31

    goto :goto_24

    :cond_38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3a
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v5

    move/from16 v13, v27

    const/4 v12, 0x0

    :goto_21
    if-ge v12, v5, :cond_3b

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, LV/L;

    move/from16 p0, v5

    iget v5, v14, LV/L;->m:I

    sub-int/2addr v13, v5

    invoke-virtual {v14, v13, v2, v4}, LV/L;->a(III)LV/D;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x1

    add-int/2addr v12, v5

    move/from16 v5, p0

    goto :goto_21

    :cond_3b
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v5

    move/from16 v8, v27

    const/4 v12, 0x0

    :goto_22
    if-ge v12, v5, :cond_3c

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, LV/L;

    invoke-virtual {v13, v8, v2, v4}, LV/L;->a(III)LV/D;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v13, v13, LV/L;->m:I

    add-int/2addr v8, v13

    const/4 v13, 0x1

    add-int/2addr v12, v13

    goto :goto_22

    :cond_3c
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    const/4 v12, 0x0

    :goto_23
    if-ge v12, v5, :cond_37

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, LV/L;

    invoke-virtual {v13, v8, v2, v4}, LV/L;->a(III)LV/D;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v13, v13, LV/L;->m:I

    add-int/2addr v8, v13

    const/4 v13, 0x1

    add-int/2addr v12, v13

    goto :goto_23

    :goto_24
    float-to-int v1, v14

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    move-object/from16 v12, v29

    const/4 v8, 0x0

    :goto_25
    iget-object v13, v12, LV/n;->b:Ljava/util/LinkedHashMap;

    if-ge v8, v5, :cond_3e

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    move/from16 p0, v5

    move-object/from16 v5, v17

    check-cast v5, LV/D;

    iget-boolean v5, v5, LV/D;->k:Z

    if-eqz v5, :cond_3d

    goto :goto_26

    :cond_3d
    const/4 v5, 0x1

    add-int/2addr v8, v5

    move/from16 v5, p0

    goto :goto_25

    :cond_3e
    invoke-interface {v13}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3f

    invoke-virtual {v13}, Ljava/util/LinkedHashMap;->clear()V

    sget-object v1, Lfb/w;->a:Lfb/w;

    iput-object v1, v12, LV/n;->c:Ljava/util/Map;

    const/4 v1, -0x1

    iput v1, v12, LV/n;->d:I

    move/from16 p0, v0

    move v10, v2

    move/from16 v30, v3

    move-object/from16 v20, v7

    move v0, v9

    move-object/from16 p2, v11

    move/from16 v31, v14

    move/from16 v21, v15

    move/from16 v13, v16

    move-object v9, v6

    goto/16 :goto_3b

    :cond_3f
    :goto_26
    iget v5, v12, LV/n;->d:I

    invoke-static {v6}, Lfb/n;->E(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, LV/D;

    if-eqz v8, :cond_40

    iget v8, v8, LV/D;->a:I

    goto :goto_27

    :cond_40
    const/4 v8, 0x0

    :goto_27
    iput v8, v12, LV/n;->d:I

    iget-object v8, v12, LV/n;->c:Ljava/util/Map;

    move/from16 v31, v14

    iget-object v14, v10, LV/M;->b:Ljava/lang/Object;

    check-cast v14, LV/t;

    iget-object v14, v14, LV/t;->a:LW/a;

    invoke-virtual {v14}, LW/a;->b()Ljava/util/Map;

    move-result-object v14

    iput-object v14, v12, LV/n;->c:Ljava/util/Map;

    const/4 v14, 0x0

    invoke-static {v14, v1}, LG5/U2;->a(II)J

    move-result-wide v17

    iget-object v1, v12, LV/n;->e:Ljava/util/LinkedHashSet;

    invoke-virtual {v13}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v14

    check-cast v14, Ljava/util/Collection;

    invoke-virtual {v1, v14}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v14

    move-object/from16 v20, v7

    move-object/from16 p2, v11

    const/4 v7, 0x0

    :goto_28
    iget-object v11, v12, LV/n;->g:Ljava/util/ArrayList;

    move/from16 p0, v0

    iget-object v0, v12, LV/n;->f:Ljava/util/ArrayList;

    const-wide v27, 0xffffffffL

    const/16 v19, 0x20

    if-ge v7, v14, :cond_46

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    move/from16 v23, v14

    move-object/from16 v14, v21

    check-cast v14, LV/D;

    move/from16 v30, v3

    iget-object v3, v14, LV/D;->b:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    iget-object v3, v14, LV/D;->b:Ljava/lang/Object;

    move/from16 v21, v15

    iget-boolean v15, v14, LV/D;->k:Z

    if-eqz v15, :cond_45

    invoke-virtual {v13, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, LV/e;

    if-nez v15, :cond_44

    invoke-interface {v8, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    if-eqz v15, :cond_43

    move/from16 v33, v9

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v9

    move-object/from16 v29, v6

    iget v6, v14, LV/D;->a:I

    if-eq v6, v9, :cond_42

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ge v3, v5, :cond_41

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_29
    move/from16 v32, v2

    move v9, v5

    :goto_2a
    const/4 v2, 0x1

    goto :goto_2d

    :cond_41
    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_29

    :cond_42
    :goto_2b
    move v9, v5

    const/4 v0, 0x0

    goto :goto_2c

    :cond_43
    move-object/from16 v29, v6

    move/from16 v33, v9

    goto :goto_2b

    :goto_2c
    invoke-virtual {v14, v0}, LV/D;->b(I)J

    move-result-wide v5

    invoke-virtual {v12, v5, v6}, LV/n;->b(J)I

    move-result v0

    invoke-virtual {v12, v14, v0}, LV/n;->a(LV/D;I)LV/e;

    move-result-object v0

    invoke-interface {v13, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v32, v2

    goto :goto_2a

    :cond_44
    move-object/from16 v29, v6

    move/from16 v33, v9

    move v9, v5

    iget-wide v5, v15, LV/e;->a:J

    sget v0, LH0/i;->c:I

    move/from16 v32, v2

    shr-long v2, v5, v19

    long-to-int v0, v2

    shr-long v2, v17, v19

    long-to-int v2, v2

    add-int/2addr v0, v2

    and-long v2, v5, v27

    long-to-int v2, v2

    and-long v5, v17, v27

    long-to-int v3, v5

    add-int/2addr v2, v3

    invoke-static {v0, v2}, LG5/U2;->a(II)J

    move-result-wide v2

    iput-wide v2, v15, LV/e;->a:J

    invoke-virtual {v12, v14, v15}, LV/n;->c(LV/D;LV/e;)V

    goto :goto_2a

    :cond_45
    move/from16 v32, v2

    move-object/from16 v29, v6

    move/from16 v33, v9

    move v9, v5

    invoke-interface {v13, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2a

    :goto_2d
    add-int/2addr v7, v2

    move/from16 v0, p0

    move v5, v9

    move/from16 v15, v21

    move/from16 v14, v23

    move-object/from16 v6, v29

    move/from16 v3, v30

    move/from16 v2, v32

    move/from16 v9, v33

    goto/16 :goto_28

    :cond_46
    move/from16 v32, v2

    move/from16 v30, v3

    move-object/from16 v29, v6

    move/from16 v33, v9

    move/from16 v21, v15

    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v2, :cond_47

    new-instance v3, LV/k;

    invoke-direct {v3, v8, v2}, LV/k;-><init>(Ljava/util/Map;I)V

    invoke-static {v0, v3}, Lfb/s;->p(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_47
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_2e
    if-ge v3, v2, :cond_48

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LV/D;

    const/4 v7, 0x0

    rsub-int/lit8 v9, v5, 0x0

    iget v7, v6, LV/D;->c:I

    sub-int/2addr v9, v7

    add-int/2addr v5, v7

    invoke-virtual {v12, v6, v9}, LV/n;->a(LV/D;I)LV/e;

    move-result-object v7

    iget-object v9, v6, LV/D;->b:Ljava/lang/Object;

    invoke-interface {v13, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v12, v6, v7}, LV/n;->c(LV/D;LV/e;)V

    const/4 v6, 0x1

    add-int/2addr v3, v6

    goto :goto_2e

    :cond_48
    const/4 v6, 0x1

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v6, :cond_49

    new-instance v2, LV/k;

    const/4 v3, 0x0

    invoke-direct {v2, v8, v3}, LV/k;-><init>(Ljava/util/Map;I)V

    invoke-static {v11, v2}, Lfb/s;->p(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_49
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_2f
    if-ge v3, v2, :cond_4a

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LV/D;

    add-int v7, v4, v5

    iget v9, v6, LV/D;->c:I

    add-int/2addr v5, v9

    invoke-virtual {v12, v6, v7}, LV/n;->a(LV/D;I)LV/e;

    move-result-object v7

    iget-object v9, v6, LV/D;->b:Ljava/lang/Object;

    invoke-interface {v13, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v12, v6, v7}, LV/n;->c(LV/D;LV/e;)V

    const/4 v6, 0x1

    add-int/2addr v3, v6

    goto :goto_2f

    :cond_4a
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_30
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    iget-object v5, v12, LV/n;->i:Ljava/util/ArrayList;

    iget-object v6, v12, LV/n;->h:Ljava/util/ArrayList;

    if-eqz v3, :cond_52

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v13}, Lfb/B;->j(Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LV/e;

    iget-object v9, v12, LV/n;->c:Ljava/util/Map;

    invoke-interface {v9, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    iget-object v14, v7, LV/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v15

    move-object/from16 v17, v2

    const/4 v2, 0x0

    :goto_31
    if-ge v2, v15, :cond_4c

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v23, v14

    move-object/from16 v14, v18

    check-cast v14, LV/N;

    iget-object v14, v14, LV/N;->d:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v14}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-eqz v14, :cond_4b

    const/4 v2, 0x1

    goto :goto_32

    :cond_4b
    const/4 v14, 0x1

    add-int/2addr v2, v14

    move-object/from16 v14, v23

    goto :goto_31

    :cond_4c
    const/4 v2, 0x0

    :goto_32
    iget-object v14, v7, LV/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_4d

    if-eqz v9, :cond_4d

    if-nez v2, :cond_4e

    invoke-interface {v8, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v9, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_4d

    goto :goto_33

    :cond_4d
    move-object/from16 v34, v0

    move-object/from16 v18, v1

    move-object/from16 v39, v8

    move-object v0, v13

    goto/16 :goto_37

    :cond_4e
    :goto_33
    if-nez v2, :cond_50

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v15, 0x0

    :goto_34
    if-ge v15, v2, :cond_4d

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    move/from16 v23, v2

    move-object/from16 v2, v18

    check-cast v2, LV/N;

    move-object/from16 v34, v0

    move-object/from16 v18, v1

    iget-wide v0, v2, LV/N;->c:J

    move-object/from16 v36, v13

    move-object/from16 v38, v14

    iget-wide v13, v7, LV/e;->a:J

    sget v39, LH0/i;->c:I

    move-object/from16 v40, v7

    move-object/from16 v39, v8

    shr-long v7, v0, v19

    long-to-int v7, v7

    move-object v8, v5

    move-object/from16 v41, v6

    shr-long v5, v13, v19

    long-to-int v5, v5

    add-int/2addr v7, v5

    and-long v0, v0, v27

    long-to-int v0, v0

    and-long v5, v13, v27

    long-to-int v1, v5

    add-int/2addr v0, v1

    invoke-static {v7, v0}, LG5/U2;->a(II)J

    move-result-wide v0

    invoke-virtual {v12, v0, v1}, LV/n;->b(J)I

    move-result v5

    iget v2, v2, LV/N;->a:I

    add-int/2addr v5, v2

    if-lez v5, :cond_4f

    invoke-virtual {v12, v0, v1}, LV/n;->b(J)I

    move-result v0

    if-ge v0, v4, :cond_4f

    goto :goto_35

    :cond_4f
    const/4 v0, 0x1

    add-int/2addr v15, v0

    move-object v5, v8

    move-object/from16 v1, v18

    move/from16 v2, v23

    move-object/from16 v0, v34

    move-object/from16 v13, v36

    move-object/from16 v14, v38

    move-object/from16 v8, v39

    move-object/from16 v7, v40

    move-object/from16 v6, v41

    goto :goto_34

    :cond_50
    move-object/from16 v34, v0

    move-object/from16 v18, v1

    move-object/from16 v41, v6

    move-object/from16 v39, v8

    move-object/from16 v36, v13

    move-object v8, v5

    :goto_35
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v10, v0}, LV/M;->b(I)LV/L;

    move-result-object v0

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, v12, LV/n;->d:I

    if-ge v1, v2, :cond_51

    move-object/from16 v1, v41

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_36
    move-object/from16 v0, v36

    goto :goto_38

    :cond_51
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_36

    :goto_37
    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_38
    move-object v13, v0

    move-object/from16 v2, v17

    move-object/from16 v1, v18

    move-object/from16 v0, v34

    move-object/from16 v8, v39

    goto/16 :goto_30

    :cond_52
    move-object/from16 v34, v0

    move-object/from16 v18, v1

    move-object v8, v5

    move-object v1, v6

    move-object v0, v13

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_53

    new-instance v2, LV/l;

    invoke-direct {v2, v12, v3}, LV/l;-><init>(LV/n;I)V

    invoke-static {v1, v2}, Lfb/s;->p(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_53
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_39
    if-ge v3, v2, :cond_54

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LV/L;

    const/4 v7, 0x0

    rsub-int/lit8 v9, v5, 0x0

    iget v7, v6, LV/L;->l:I

    sub-int/2addr v9, v7

    add-int/2addr v5, v7

    iget-object v7, v6, LV/L;->k:Ljava/lang/Object;

    invoke-static {v7, v0}, Lfb/B;->j(Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LV/e;

    move/from16 v10, v32

    invoke-virtual {v6, v9, v10, v4}, LV/L;->a(III)LV/D;

    move-result-object v6

    move-object/from16 v9, v29

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v12, v6, v7}, LV/n;->c(LV/D;LV/e;)V

    const/4 v6, 0x1

    add-int/2addr v3, v6

    goto :goto_39

    :cond_54
    move-object/from16 v9, v29

    move/from16 v10, v32

    const/4 v6, 0x1

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v6, :cond_55

    new-instance v2, LV/l;

    const/4 v3, 0x0

    invoke-direct {v2, v12, v3}, LV/l;-><init>(LV/n;I)V

    invoke-static {v8, v2}, Lfb/s;->p(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_55
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_3a
    if-ge v3, v2, :cond_56

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LV/L;

    add-int v7, v4, v5

    iget v13, v6, LV/L;->l:I

    add-int/2addr v5, v13

    iget-object v13, v6, LV/L;->k:Ljava/lang/Object;

    invoke-static {v13, v0}, Lfb/B;->j(Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, LV/e;

    invoke-virtual {v6, v7, v10, v4}, LV/L;->a(III)LV/D;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v12, v6, v13}, LV/n;->c(LV/D;LV/e;)V

    const/4 v6, 0x1

    add-int/2addr v3, v6

    goto :goto_3a

    :cond_56
    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    invoke-virtual/range {v18 .. v18}, Ljava/util/AbstractCollection;->clear()V

    move/from16 v13, v16

    move/from16 v0, v33

    :goto_3b
    if-lt v13, v0, :cond_58

    move/from16 v15, v21

    move/from16 v1, v30

    if-le v15, v1, :cond_57

    goto :goto_3c

    :cond_57
    const/16 v29, 0x0

    goto :goto_3d

    :cond_58
    :goto_3c
    const/16 v29, 0x1

    :goto_3d
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, LC1/j;

    const/16 v4, 0xa

    const/4 v5, 0x0

    invoke-direct {v3, v4, v9, v5}, LC1/j;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v4, v26

    invoke-virtual {v4, v1, v2, v3}, LV/w;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz0/y;

    if-eqz p0, :cond_59

    move-object/from16 v32, v9

    goto :goto_40

    :cond_59
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_3e
    if-ge v4, v3, :cond_5c

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, LV/D;

    iget v7, v6, LV/D;->a:I

    invoke-static/range {p2 .. p2}, Lfb/n;->C(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, LV/L;

    iget v8, v8, LV/L;->a:I

    if-lt v7, v8, :cond_5b

    invoke-static/range {p2 .. p2}, Lfb/n;->K(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LV/L;

    iget v7, v7, LV/L;->a:I

    iget v6, v6, LV/D;->a:I

    if-le v6, v7, :cond_5a

    goto :goto_3f

    :cond_5a
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5b
    :goto_3f
    const/4 v5, 0x1

    add-int/2addr v4, v5

    goto :goto_3e

    :cond_5c
    move-object/from16 v32, v2

    :goto_40
    sget-object v34, LS/I;->Vertical:LS/I;

    new-instance v2, LV/B;

    move-object/from16 v26, v2

    move-object/from16 v27, v20

    move/from16 v28, v22

    move/from16 v30, v31

    move-object/from16 v31, v1

    move/from16 v33, v0

    invoke-direct/range {v26 .. v34}, LV/B;-><init>(LV/L;IZFLz0/y;Ljava/util/List;ILS/I;)V

    move-object v0, v2

    :goto_41
    iget-object v1, v0, LV/B;->a:LV/L;

    if-eqz v1, :cond_5d

    iget-object v2, v1, LV/L;->k:Ljava/lang/Object;

    move-object/from16 v3, v37

    goto :goto_42

    :cond_5d
    move-object/from16 v3, v37

    const/4 v2, 0x0

    :goto_42
    iput-object v2, v3, Lcom/samsung/android/scloud/lib/setting/e;->e:Ljava/lang/Object;

    iget-boolean v2, v3, Lcom/samsung/android/scloud/lib/setting/e;->b:Z

    iget v4, v0, LV/B;->b:I

    if-nez v2, :cond_5e

    iget v2, v0, LV/B;->f:I

    if-lez v2, :cond_5f

    :cond_5e
    const/4 v2, 0x1

    goto :goto_44

    :cond_5f
    :goto_43
    move-object/from16 v2, v35

    goto :goto_46

    :goto_44
    iput-boolean v2, v3, Lcom/samsung/android/scloud/lib/setting/e;->b:Z

    int-to-float v2, v4

    const/4 v5, 0x0

    cmpl-float v2, v2, v5

    if-ltz v2, :cond_67

    sget-object v2, Lk0/n;->a:LZ3/x;

    invoke-virtual {v2}, LZ3/x;->u()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lk0/h;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v2, v5, v6}, Lk0/n;->h(Lk0/h;Lsb/k;Z)Lk0/h;

    move-result-object v2

    :try_start_3
    invoke-virtual {v2}, Lk0/h;->j()Lk0/h;

    move-result-object v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_60

    :try_start_4
    iget v6, v1, LV/L;->a:I

    goto :goto_45

    :cond_60
    const/4 v6, 0x0

    :goto_45
    invoke-virtual {v3, v6, v4}, Lcom/samsung/android/scloud/lib/setting/e;->r(II)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-static {v5}, Lk0/h;->p(Lk0/h;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    invoke-virtual {v2}, Lk0/h;->c()V

    goto :goto_43

    :goto_46
    iget v3, v2, LV/J;->d:F

    iget v5, v0, LV/B;->d:F

    sub-float/2addr v3, v5

    iput v3, v2, LV/J;->d:F

    iget-object v3, v2, LV/J;->b:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    iget-boolean v3, v0, LV/B;->c:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-object v5, v2, LV/J;->q:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v5, v3}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    if-eqz v1, :cond_61

    iget v5, v1, LV/L;->a:I

    goto :goto_47

    :cond_61
    const/4 v5, 0x0

    :goto_47
    if-nez v5, :cond_63

    if-eqz v4, :cond_62

    goto :goto_48

    :cond_62
    const/16 v25, 0x0

    goto :goto_49

    :cond_63
    :goto_48
    const/16 v25, 0x1

    :goto_49
    invoke-static/range {v25 .. v25}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object v3, v2, LV/J;->r:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v3, v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    iget v1, v2, LV/J;->h:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_66

    invoke-virtual {v0}, LV/B;->d()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_66

    iget-boolean v1, v2, LV/J;->j:Z

    if-eqz v1, :cond_64

    invoke-virtual {v0}, LV/B;->d()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lfb/n;->K(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LV/D;

    iget v1, v1, LV/D;->a:I

    const/4 v3, 0x1

    add-int/2addr v1, v3

    goto :goto_4a

    :cond_64
    const/4 v3, 0x1

    invoke-virtual {v0}, LV/B;->d()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lfb/n;->C(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LV/D;

    iget v1, v1, LV/D;->a:I

    sub-int/2addr v1, v3

    :goto_4a
    iget v3, v2, LV/J;->h:I

    if-eq v3, v1, :cond_66

    const/4 v1, -0x1

    iput v1, v2, LV/J;->h:I

    iget-object v1, v2, LV/J;->i:LW/n;

    if-eqz v1, :cond_65

    invoke-interface {v1}, LW/n;->cancel()V

    :cond_65
    const/4 v1, 0x0

    iput-object v1, v2, LV/J;->i:LW/n;

    :cond_66
    return-object v0

    :catchall_0
    move-exception v0

    :try_start_6
    invoke-static {v5}, Lk0/h;->p(Lk0/h;)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v0

    invoke-virtual {v2}, Lk0/h;->c()V

    throw v0

    :cond_67
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "scrollOffset should be non-negative ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_68
    invoke-virtual {v1}, Lc0/d;->l()Z

    move-result v0

    if-nez v0, :cond_69

    iget-object v0, v1, Lc0/d;->a:[Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-static {v0}, LB/e;->l(Ljava/lang/Object;)Ljava/lang/ClassCastException;

    move-result-object v0

    throw v0

    :cond_69
    new-instance v0, Ljava/util/NoSuchElementException;

    move-object/from16 v3, v19

    invoke-direct {v0, v3}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6a
    move-object v3, v8

    const/4 v2, 0x0

    invoke-virtual {v1}, Lc0/d;->l()Z

    move-result v0

    if-nez v0, :cond_6b

    iget-object v0, v1, Lc0/d;->a:[Ljava/lang/Object;

    aget-object v0, v0, v2

    invoke-static {v0}, LB/e;->l(Ljava/lang/Object;)Ljava/lang/ClassCastException;

    move-result-object v0

    throw v0

    :cond_6b
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0, v3}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6c
    move-object/from16 v1, v30

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6d
    move-object v1, v7

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6e
    move-object v1, v7

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_2
    move-exception v0

    :try_start_7
    invoke-static {v5}, Lk0/h;->p(Lk0/h;)V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception v0

    invoke-virtual {v4}, Lk0/h;->c()V

    throw v0

    :cond_6f
    move-object v1, v10

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_70
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Vertically scrollable component was measured with an infinity maximum height constraints, which is disallowed. One of the common reasons is nesting layouts like LazyColumn and Column(Modifier.verticalScroll()). If you want to add a header before the list of items please add a header as a separate item() before the main items() inside the LazyColumn scope. There are could be other reasons for this to happen: your ComposeView was added into a LinearLayout with some weight, you applied Modifier.wrapContentSize(unbounded = true) or wrote a custom layout. Please try to remove the source of infinite constraints in the hierarchy above the scrolling container."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
