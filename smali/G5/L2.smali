.class public abstract LG5/L2;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Landroid/widget/RemoteViews;Lf2/a;I)V
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_3

    instance-of v0, p1, Lf2/i;

    const-string v1, "setBackgroundTintList"

    if-eqz v0, :cond_0

    check-cast p1, Lf2/i;

    iget-wide v2, p1, Lf2/i;->a:J

    invoke-static {v2, v3}, Ls0/e;->e(J)I

    move-result p1

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-static {p0, p2, v1, p1}, Landroidx/core/widget/m;->h(Landroid/widget/RemoteViews;ILjava/lang/String;Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lf2/j;

    if-eqz v0, :cond_1

    check-cast p1, Lf2/j;

    iget p1, p1, Lf2/j;->a:I

    invoke-static {p0, p2, v1, p1}, Landroidx/core/widget/m;->g(Landroid/widget/RemoteViews;ILjava/lang/String;I)V

    goto :goto_0

    :cond_1
    instance-of v0, p1, LJ1/a;

    if-eqz v0, :cond_2

    check-cast p1, LJ1/a;

    iget-wide v2, p1, LJ1/a;->a:J

    invoke-static {v2, v3}, Ls0/e;->e(J)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iget-wide v2, p1, LJ1/a;->b:J

    invoke-static {v2, v3}, Ls0/e;->e(J)I

    move-result p1

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-static {p0, p2, v1, v0, p1}, Landroidx/core/widget/m;->i(Landroid/widget/RemoteViews;ILjava/lang/String;Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    invoke-static {p0, p2, v1, p1}, Landroidx/core/widget/m;->h(Landroid/widget/RemoteViews;ILjava/lang/String;Landroid/content/res/ColorStateList;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static final b(Lz1/f1;Landroid/widget/RemoteViews;Lx1/r;Lz1/z0;)V
    .locals 47

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v0, p2

    move-object/from16 v13, p3

    const/4 v11, 0x1

    const-string v1, "modifiers"

    invoke-static {v0, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v10, Ltb/w;

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    new-instance v9, Ltb/w;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    new-instance v8, Ltb/w;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    new-instance v7, Ltb/w;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    new-instance v6, Ltb/w;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    sget-object v1, Lx1/w;->Visible:Lx1/w;

    iput-object v1, v6, Ltb/w;->a:Ljava/lang/Object;

    new-instance v4, Ltb/u;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    new-instance v3, Ltb/w;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ltb/w;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    new-instance v5, Ltb/w;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ltb/w;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v14, Ltb/w;

    invoke-direct {v14}, Ljava/lang/Object;-><init>()V

    move-object/from16 v16, v14

    new-instance v14, Ltb/w;

    invoke-direct {v14}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ltb/w;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v13, Ltb/w;

    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    new-instance v12, Ltb/w;

    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    move-object/from16 v18, v12

    new-instance v12, Ltb/w;

    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    move-object/from16 v19, v12

    sget-object v12, Ldb/r;->a:Ldb/r;

    move-object/from16 v20, v12

    new-instance v12, Lz1/x;

    move-object/from16 v22, v1

    move-object v1, v12

    move-object/from16 v23, v1

    iget-object v1, v15, Lz1/f1;->a:Landroid/content/Context;

    move-object/from16 v24, v5

    move-object v5, v1

    move-object/from16 v25, v2

    move-object v2, v3

    move-object/from16 v26, v3

    move-object v3, v10

    move-object/from16 v27, v4

    move-object v4, v9

    move-object/from16 v28, v6

    move-object/from16 v6, p1

    move-object/from16 v29, v7

    move-object/from16 v7, p3

    move-object/from16 v30, v8

    move-object/from16 v31, v9

    move-object v9, v14

    move-object/from16 v32, v10

    move-object v10, v0

    move-object v11, v13

    move-object/from16 v35, v0

    move-object/from16 v36, v12

    move-object/from16 v33, v18

    move-object/from16 v34, v19

    move-object/from16 v0, v20

    move-object/from16 v12, v33

    move-object/from16 v37, v13

    move-object/from16 v13, v34

    move-object/from16 v39, v14

    move-object/from16 v38, v16

    move-object/from16 v14, v27

    move-object/from16 v15, v28

    move-object/from16 v16, v29

    move-object/from16 v17, p0

    move-object/from16 v18, v24

    move-object/from16 v19, v25

    move-object/from16 v20, v22

    move-object/from16 v21, v38

    move-object/from16 v40, v1

    move-object/from16 v1, v23

    invoke-direct/range {v1 .. v21}, Lz1/x;-><init>(Ltb/w;Ltb/w;Ltb/w;Landroid/content/Context;Landroid/widget/RemoteViews;Lz1/z0;Ltb/w;Ltb/w;Ltb/w;Ltb/w;Ltb/w;Ltb/w;Ltb/u;Ltb/w;Ltb/w;Lz1/f1;Ltb/w;Ltb/w;Ltb/w;Ltb/w;)V

    move-object/from16 v1, p2

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    invoke-interface {v1, v0, v3}, Lx1/r;->a(Ljava/lang/Object;Lsb/n;)Ljava/lang/Object;

    move-object/from16 v0, v32

    iget-object v0, v0, Ltb/w;->a:Ljava/lang/Object;

    check-cast v0, LK1/w;

    move-object/from16 v1, v31

    iget-object v1, v1, Ltb/w;->a:Ljava/lang/Object;

    check-cast v1, LK1/p;

    sget-object v3, Lz1/H0;->a:Ljava/lang/Object;

    move-object/from16 v3, p0

    iget v4, v3, Lz1/f1;->b:I

    iget-object v5, v3, Lz1/f1;->a:Landroid/content/Context;

    move-object/from16 v6, p3

    iget v7, v6, Lz1/z0;->a:I

    const/4 v8, -0x1

    iget v9, v6, Lz1/z0;->b:I

    const/16 v10, 0x1f

    if-ne v9, v8, :cond_1

    move-object/from16 v8, p1

    if-eqz v0, :cond_0

    invoke-static {v5, v8, v0, v7}, LG5/L2;->d(Landroid/content/Context;Landroid/widget/RemoteViews;LK1/w;I)V

    :cond_0
    if-eqz v1, :cond_18

    invoke-static {v5, v8, v1, v7}, LG5/L2;->c(Landroid/content/Context;Landroid/widget/RemoteViews;LK1/p;I)V

    goto/16 :goto_10

    :cond_1
    move-object/from16 v8, p1

    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v9, v10, :cond_37

    const/4 v9, 0x0

    if-eqz v0, :cond_2

    iget-object v0, v0, LK1/w;->a:Lf2/h;

    goto :goto_0

    :cond_2
    move-object v0, v9

    :goto_0
    if-eqz v1, :cond_3

    iget-object v1, v1, LK1/p;->a:Lf2/h;

    goto :goto_1

    :cond_3
    move-object v1, v9

    :goto_1
    invoke-static {v0}, LG5/L2;->h(Lf2/h;)Z

    move-result v11

    if-nez v11, :cond_4

    invoke-static {v1}, LG5/L2;->h(Lf2/h;)Z

    move-result v11

    if-nez v11, :cond_4

    goto/16 :goto_10

    :cond_4
    instance-of v11, v0, Lf2/e;

    if-nez v11, :cond_6

    instance-of v11, v0, Lf2/d;

    if-eqz v11, :cond_5

    goto :goto_2

    :cond_5
    const/4 v12, 0x0

    goto :goto_3

    :cond_6
    :goto_2
    const/4 v12, 0x1

    :goto_3
    instance-of v11, v1, Lf2/e;

    if-nez v11, :cond_8

    instance-of v11, v1, Lf2/d;

    if-eqz v11, :cond_7

    goto :goto_4

    :cond_7
    const/4 v11, 0x0

    goto :goto_5

    :cond_8
    :goto_4
    const/4 v11, 0x1

    :goto_5
    if-eqz v12, :cond_9

    if-eqz v11, :cond_9

    const v11, 0x7f0e08a2

    goto :goto_6

    :cond_9
    if-eqz v12, :cond_a

    const v11, 0x7f0e08a3

    goto :goto_6

    :cond_a
    if-eqz v11, :cond_b

    const v11, 0x7f0e08a4

    goto :goto_6

    :cond_b
    const v11, 0x7f0e08a5

    :goto_6
    const v12, 0x7f0b0b9d

    invoke-static {v8, v3, v12, v11, v9}, LG5/Z2;->c(Landroid/widget/RemoteViews;Lz1/f1;IILjava/lang/Integer;)I

    move-result v9

    instance-of v11, v0, Lf2/c;

    sget-object v12, Lf2/g;->a:Lf2/g;

    sget-object v13, Lf2/e;->a:Lf2/e;

    sget-object v14, Lf2/d;->a:Lf2/d;

    const-string v15, "setWidth"

    if-eqz v11, :cond_c

    check-cast v0, Lf2/c;

    iget v0, v0, Lf2/c;->a:F

    invoke-static {v4, v5}, Lz1/u;->b(ILandroid/content/Context;)F

    move-result v11

    mul-float/2addr v11, v0

    float-to-int v0, v11

    invoke-virtual {v8, v9, v15, v0}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto :goto_b

    :cond_c
    instance-of v11, v0, Lf2/f;

    if-eqz v11, :cond_d

    check-cast v0, Lf2/f;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    iget v0, v0, Lf2/f;->a:I

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {v8, v9, v15, v0}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto :goto_b

    :cond_d
    invoke-static {v0, v14}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    const/4 v11, 0x1

    goto :goto_7

    :cond_e
    invoke-static {v0, v13}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    :goto_7
    if-eqz v11, :cond_f

    const/4 v11, 0x1

    goto :goto_8

    :cond_f
    invoke-static {v0, v12}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    :goto_8
    if-eqz v11, :cond_10

    :goto_9
    const/4 v0, 0x1

    goto :goto_a

    :cond_10
    if-nez v0, :cond_11

    goto :goto_9

    :cond_11
    const/4 v0, 0x0

    :goto_a
    if-eqz v0, :cond_36

    :goto_b
    instance-of v0, v1, Lf2/c;

    const-string v11, "setHeight"

    if-eqz v0, :cond_12

    check-cast v1, Lf2/c;

    iget v0, v1, Lf2/c;->a:F

    invoke-static {v4, v5}, Lz1/u;->b(ILandroid/content/Context;)F

    move-result v1

    mul-float/2addr v1, v0

    float-to-int v0, v1

    invoke-virtual {v8, v9, v11, v0}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto :goto_10

    :cond_12
    instance-of v0, v1, Lf2/f;

    if-eqz v0, :cond_13

    check-cast v1, Lf2/f;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, v1, Lf2/f;->a:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {v8, v9, v11, v0}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto :goto_10

    :cond_13
    invoke-static {v1, v14}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v11, 0x1

    goto :goto_c

    :cond_14
    invoke-static {v1, v13}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    :goto_c
    if-eqz v11, :cond_15

    const/4 v11, 0x1

    goto :goto_d

    :cond_15
    invoke-static {v1, v12}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    :goto_d
    if-eqz v11, :cond_16

    :goto_e
    const/4 v12, 0x1

    goto :goto_f

    :cond_16
    if-nez v1, :cond_17

    goto :goto_e

    :cond_17
    const/4 v12, 0x0

    :goto_f
    if-eqz v12, :cond_35

    :cond_18
    :goto_10
    iget-object v0, v2, Ltb/w;->a:Ljava/lang/Object;

    if-nez v0, :cond_34

    move-object/from16 v0, v37

    iget-object v0, v0, Ltb/w;->a:Ljava/lang/Object;

    if-nez v0, :cond_33

    move-object/from16 v0, v33

    iget-object v0, v0, Ltb/w;->a:Ljava/lang/Object;

    check-cast v0, LD1/a;

    const/4 v9, 0x2

    if-eqz v0, :cond_19

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v16, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    move-object v11, v14

    move-object/from16 v12, v16

    move-object v13, v14

    move-object/from16 v15, v16

    filled-new-array/range {v11 .. v16}, [Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lfb/o;->g([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget v2, v0, LD1/a;->a:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    iget v0, v0, LD1/a;->b:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    filled-new-array/range {v11 .. v16}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "hidden_semSetLayoutPercentSize"

    invoke-static {v8, v2, v1, v0}, Lfb/F;->b(Landroid/widget/RemoteViews;Ljava/lang/String;Ljava/util/List;[Ljava/lang/Object;)V

    :cond_19
    move-object/from16 v0, v34

    iget-object v0, v0, Ltb/w;->a:Ljava/lang/Object;

    check-cast v0, LD1/b;

    const-string v1, " "

    const-string v2, "msg"

    const-string v11, "Array contains no element matching the predicate."

    const-string v12, "getDeclaredMethods(...)"

    if-eqz v0, :cond_1c

    iget v5, v0, LD1/b;->a:F

    iget v13, v0, LD1/b;->b:F

    iget v14, v0, LD1/b;->c:F

    iget v15, v0, LD1/b;->d:F

    iget v0, v0, LD1/b;->e:I

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v9

    invoke-static {v9, v12}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v10, v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v17, v12

    const/4 v12, 0x0

    :goto_11
    if-ge v12, v10, :cond_1b

    move/from16 v18, v10

    :try_start_1
    aget-object v10, v9, v12

    move-object/from16 v19, v9

    const/4 v9, 0x1

    invoke-virtual {v10, v9}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v6, "hidden_semSetPercentViewPadding"

    invoke-static {v9, v6}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v42

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v43

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v44

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v45

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v46

    filled-new-array/range {v41 .. v46}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v10, v8, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13

    :catch_0
    move-exception v0

    goto :goto_12

    :cond_1a
    const/4 v6, 0x1

    add-int/2addr v12, v6

    move-object/from16 v6, p3

    move/from16 v10, v18

    move-object/from16 v9, v19

    goto :goto_11

    :cond_1b
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0, v11}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_1
    move-exception v0

    move-object/from16 v17, v12

    :goto_12
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "hidden_semSetPercentViewPadding isn\'t supported. / "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Le7/a;->a:Ljava/lang/String;

    const-string v6, "GWT:PercentSizeAction"

    invoke-static {v5, v1, v0, v6}, Lw2/j;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_13
    move-object/from16 v5, v26

    goto :goto_14

    :cond_1c
    move-object/from16 v17, v12

    goto :goto_13

    :goto_14
    iget-object v0, v5, Ltb/w;->a:Ljava/lang/Object;

    check-cast v0, Ly1/b;

    iget-boolean v9, v3, Lz1/f1;->q:Z

    if-eqz v0, :cond_1f

    if-nez v9, :cond_1f

    iget-object v5, v0, Ly1/b;->a:Ly1/a;

    const-string v0, "action"

    invoke-static {v5, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v3, Lz1/f1;->n:Ljava/lang/Integer;

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_15

    :cond_1d
    move v0, v7

    :goto_15
    :try_start_2
    iget-boolean v6, v3, Lz1/f1;->f:Z

    if-eqz v6, :cond_1e

    sget-object v6, LA1/f;->b:LA1/f;

    invoke-static {v5, v3, v0, v6}, LA1/k;->d(Ly1/a;Lz1/f1;ILsb/k;)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v8, v0, v6}, Landroid/widget/RemoteViews;->setOnClickFillInIntent(ILandroid/content/Intent;)V

    goto :goto_17

    :catchall_0
    move-exception v0

    goto :goto_16

    :cond_1e
    sget-object v6, LA1/f;->c:LA1/f;

    const/high16 v10, 0x4000000

    invoke-static {v5, v3, v0, v6, v10}, LA1/k;->e(Ly1/a;Lz1/f1;ILsb/k;I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v8, v0, v6}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_17

    :goto_16
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v10, "Unrecognized Action: "

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Le7/a;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GWT:ApplyAction"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1f
    :goto_17
    move-object/from16 v1, v29

    iget-object v0, v1, Ltb/w;->a:Ljava/lang/Object;

    check-cast v0, Lf2/h;

    const-string v10, "GWT:ApplyModifiers"

    if-eqz v0, :cond_21

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    if-lt v1, v2, :cond_20

    sget-object v1, Lz1/v;->a:Lz1/v;

    invoke-virtual {v1, v8, v7, v0}, Lz1/v;->a(Landroid/widget/RemoteViews;ILf2/h;)V

    goto :goto_18

    :cond_20
    sget-object v0, Le7/a;->a:Ljava/lang/String;

    const-string v1, " Cannot set the rounded corner of views before Api 31."

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    :goto_18
    move-object/from16 v1, v30

    iget-object v0, v1, Ltb/w;->a:Ljava/lang/Object;

    check-cast v0, LK1/r;

    if-eqz v0, :cond_24

    invoke-virtual/range {v40 .. v40}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "getResources(...)"

    invoke-static {v1, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, LK1/r;->a:LK1/q;

    iget v5, v2, LK1/q;->a:F

    iget-object v2, v2, LK1/q;->b:Ljava/util/List;

    invoke-static {v2, v1}, LG5/N3;->a(Ljava/util/List;Landroid/content/res/Resources;)F

    move-result v2

    add-float/2addr v2, v5

    iget-object v5, v0, LK1/r;->b:LK1/q;

    iget v6, v5, LK1/q;->a:F

    iget-object v5, v5, LK1/q;->b:Ljava/util/List;

    invoke-static {v5, v1}, LG5/N3;->a(Ljava/util/List;Landroid/content/res/Resources;)F

    move-result v5

    add-float/2addr v5, v6

    iget-object v6, v0, LK1/r;->c:LK1/q;

    iget v12, v6, LK1/q;->a:F

    iget-object v6, v6, LK1/q;->b:Ljava/util/List;

    invoke-static {v6, v1}, LG5/N3;->a(Ljava/util/List;Landroid/content/res/Resources;)F

    move-result v6

    add-float/2addr v6, v12

    iget-object v12, v0, LK1/r;->d:LK1/q;

    iget v13, v12, LK1/q;->a:F

    iget-object v12, v12, LK1/q;->b:Ljava/util/List;

    invoke-static {v12, v1}, LG5/N3;->a(Ljava/util/List;Landroid/content/res/Resources;)F

    move-result v12

    add-float/2addr v12, v13

    iget-object v13, v0, LK1/r;->e:LK1/q;

    iget v14, v13, LK1/q;->a:F

    iget-object v13, v13, LK1/q;->b:Ljava/util/List;

    invoke-static {v13, v1}, LG5/N3;->a(Ljava/util/List;Landroid/content/res/Resources;)F

    move-result v13

    add-float/2addr v13, v14

    iget-object v0, v0, LK1/r;->f:LK1/q;

    iget v14, v0, LK1/q;->a:F

    iget-object v0, v0, LK1/q;->b:Ljava/util/List;

    invoke-static {v0, v1}, LG5/N3;->a(Ljava/util/List;Landroid/content/res/Resources;)F

    move-result v0

    add-float/2addr v0, v14

    iget-boolean v1, v3, Lz1/f1;->c:Z

    if-eqz v1, :cond_22

    move v3, v13

    goto :goto_19

    :cond_22
    move v3, v5

    :goto_19
    add-float/2addr v2, v3

    if-eqz v1, :cond_23

    goto :goto_1a

    :cond_23
    move v5, v13

    :goto_1a
    add-float/2addr v12, v5

    move-object/from16 v13, v40

    invoke-static {v4, v13}, Lz1/u;->b(ILandroid/content/Context;)F

    move-result v1

    mul-float/2addr v2, v1

    float-to-int v3, v2

    mul-float/2addr v6, v1

    float-to-int v4, v6

    mul-float/2addr v12, v1

    float-to-int v5, v12

    mul-float/2addr v0, v1

    float-to-int v6, v0

    move-object/from16 v1, p3

    iget v2, v1, Lz1/z0;->a:I

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    goto :goto_1b

    :cond_24
    move-object/from16 v13, v40

    :goto_1b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x3

    const/4 v12, 0x4

    const/16 v2, 0x1f

    if-lt v0, v2, :cond_25

    move-object/from16 v2, v39

    iget-object v0, v2, Ltb/w;->a:Ljava/lang/Object;

    check-cast v0, Lz1/M0;

    if-eqz v0, :cond_25

    iget-object v2, v0, Lz1/M0;->a:Lz1/L0;

    const/4 v3, 0x0

    invoke-static {v8, v7, v2, v3}, LG5/L2;->j(Landroid/widget/RemoteViews;ILz1/L0;I)V

    iget-object v2, v0, Lz1/M0;->b:Lz1/L0;

    invoke-static {v8, v7, v2, v12}, LG5/L2;->j(Landroid/widget/RemoteViews;ILz1/L0;I)V

    iget-object v2, v0, Lz1/M0;->c:Lz1/L0;

    const/4 v4, 0x1

    invoke-static {v8, v7, v2, v4}, LG5/L2;->j(Landroid/widget/RemoteViews;ILz1/L0;I)V

    iget-object v2, v0, Lz1/M0;->d:Lz1/L0;

    const/4 v4, 0x2

    invoke-static {v8, v7, v2, v4}, LG5/L2;->j(Landroid/widget/RemoteViews;ILz1/L0;I)V

    const/4 v2, 0x5

    iget-object v4, v0, Lz1/M0;->e:Lz1/L0;

    invoke-static {v8, v7, v4, v2}, LG5/L2;->j(Landroid/widget/RemoteViews;ILz1/L0;I)V

    iget-object v0, v0, Lz1/M0;->f:Lz1/L0;

    invoke-static {v8, v7, v0, v1}, LG5/L2;->j(Landroid/widget/RemoteViews;ILz1/L0;I)V

    :goto_1c
    move-object/from16 v2, v24

    goto :goto_1d

    :cond_25
    const/4 v3, 0x0

    goto :goto_1c

    :goto_1d
    iget-object v0, v2, Ltb/w;->a:Ljava/lang/Object;

    if-nez v0, :cond_32

    move-object/from16 v2, v25

    iget-object v0, v2, Ltb/w;->a:Ljava/lang/Object;

    check-cast v0, Lz1/M;

    move-object/from16 v2, v22

    iget-object v0, v2, Ltb/w;->a:Ljava/lang/Object;

    check-cast v0, Lb2/b;

    if-eqz v0, :cond_26

    iget-object v0, v0, Lb2/b;->a:Lb2/a;

    sget-object v2, Lb2/c;->a:LE5/v;

    invoke-virtual {v0, v2}, Lb2/a;->a(LE5/v;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_26

    move-object/from16 v18, v0

    check-cast v18, Ljava/lang/Iterable;

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v23, 0x3f

    invoke-static/range {v18 .. v23}, Lfb/n;->I(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsb/k;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v7, v0}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    :cond_26
    move-object/from16 v2, v27

    iget v0, v2, Ltb/u;->a:I

    if-eqz v0, :cond_2b

    const-string v1, "setVisibility"

    :try_start_3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v5

    move-object/from16 v6, v17

    invoke-static {v5, v6}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v6, v5
    :try_end_3
    .catch Ljava/util/NoSuchElementException; {:try_start_3 .. :try_end_3} :catch_3

    move v14, v3

    move v15, v14

    :goto_1e
    if-ge v14, v6, :cond_28

    :try_start_4
    aget-object v15, v5, v14
    :try_end_4
    .catch Ljava/util/NoSuchElementException; {:try_start_4 .. :try_end_4} :catch_4

    const/4 v3, 0x1

    :try_start_5
    invoke-virtual {v15, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v15}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "hidden_semSetIntInteger"

    invoke-static {v3, v4}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v3, v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v15, v8, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/util/NoSuchElementException; {:try_start_5 .. :try_end_5} :catch_2

    const/4 v11, 0x1

    goto :goto_20

    :catch_2
    const/4 v15, 0x1

    goto :goto_1f

    :cond_27
    const/4 v3, 0x1

    add-int/2addr v14, v3

    const/4 v3, 0x0

    const/4 v15, 0x1

    goto :goto_1e

    :cond_28
    :try_start_6
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0, v11}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catch Ljava/util/NoSuchElementException; {:try_start_6 .. :try_end_6} :catch_4

    :catch_3
    const/4 v15, 0x0

    :catch_4
    :goto_1f
    sget-object v0, Le7/a;->a:Ljava/lang/String;

    const-string v1, " hidden_semSetIntInteger isn\'t supported."

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v11, v15

    :goto_20
    if-nez v11, :cond_2f

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, v2, Ltb/u;->a:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2a

    const/4 v1, 0x2

    if-eq v0, v1, :cond_29

    const/4 v12, 0x0

    goto :goto_21

    :cond_29
    const/16 v12, 0x8

    :cond_2a
    :goto_21
    invoke-virtual {v8, v7, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_23

    :cond_2b
    move-object/from16 v2, v28

    iget-object v0, v2, Ltb/w;->a:Ljava/lang/Object;

    check-cast v0, Lx1/w;

    sget-object v2, Lz1/w;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v2, v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2d

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2e

    if-ne v0, v1, :cond_2c

    const/16 v12, 0x8

    goto :goto_22

    :cond_2c
    new-instance v0, LI5/b;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2d
    const/4 v12, 0x0

    :cond_2e
    :goto_22
    invoke-virtual {v8, v7, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :cond_2f
    :goto_23
    sget-boolean v0, LI1/a;->a:Z

    if-eqz v0, :cond_31

    move-object/from16 v1, v38

    iget-object v0, v1, Ltb/w;->a:Ljava/lang/Object;

    if-eqz v0, :cond_31

    if-eqz v9, :cond_30

    goto :goto_24

    :cond_30
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    :cond_31
    :goto_24
    return-void

    :cond_32
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    :cond_33
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    :cond_34
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    :cond_35
    new-instance v0, LI5/b;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_36
    new-instance v0, LI5/b;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_37
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "There is currently no valid use case where a complex view is used on Android S"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final c(Landroid/content/Context;Landroid/widget/RemoteViews;LK1/p;I)V
    .locals 7

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "context"

    invoke-static {p0, v3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "modifier"

    invoke-static {p2, v3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    sget-object v4, Lf2/d;->a:Lf2/d;

    sget-object v5, Lf2/g;->a:Lf2/g;

    iget-object p2, p2, LK1/p;->a:Lf2/h;

    const/16 v6, 0x1f

    if-ge v3, v6, :cond_1

    const/4 p1, 0x3

    new-array p1, p1, [Lf2/h;

    aput-object v5, p1, v2

    sget-object p3, Lf2/e;->a:Lf2/e;

    aput-object p3, p1, v1

    aput-object v4, p1, v0

    invoke-static {p1}, Lfb/o;->g([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p2, p0}, Lz1/H0;->e(Lf2/h;Landroid/content/Context;)Lf2/h;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Using a height of "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " requires a complex layout before API 31"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/16 p0, 0x21

    if-ge v3, p0, :cond_2

    new-array p0, v0, [Lf2/h;

    aput-object v5, p0, v2

    aput-object v4, p0, v1

    invoke-static {p0}, Lfb/o;->g([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return-void

    :cond_2
    sget-object p0, Lz1/v;->a:Lz1/v;

    invoke-virtual {p0, p1, p3, p2}, Lz1/v;->b(Landroid/widget/RemoteViews;ILf2/h;)V

    return-void
.end method

.method public static final d(Landroid/content/Context;Landroid/widget/RemoteViews;LK1/w;I)V
    .locals 7

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "context"

    invoke-static {p0, v3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "modifier"

    invoke-static {p2, v3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    sget-object v4, Lf2/d;->a:Lf2/d;

    sget-object v5, Lf2/g;->a:Lf2/g;

    iget-object p2, p2, LK1/w;->a:Lf2/h;

    const/16 v6, 0x1f

    if-ge v3, v6, :cond_1

    const/4 p1, 0x3

    new-array p1, p1, [Lf2/h;

    aput-object v5, p1, v2

    sget-object p3, Lf2/e;->a:Lf2/e;

    aput-object p3, p1, v1

    aput-object v4, p1, v0

    invoke-static {p1}, Lfb/o;->g([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p2, p0}, Lz1/H0;->e(Lf2/h;Landroid/content/Context;)Lf2/h;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Using a width of "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " requires a complex layout before API 31"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/16 p0, 0x21

    if-ge v3, p0, :cond_2

    new-array p0, v0, [Lf2/h;

    aput-object v5, p0, v2

    aput-object v4, p0, v1

    invoke-static {p0}, Lfb/o;->g([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return-void

    :cond_2
    sget-object p0, Lz1/v;->a:Lz1/v;

    invoke-virtual {p0, p1, p3, p2}, Lz1/v;->c(Landroid/widget/RemoteViews;ILf2/h;)V

    return-void
.end method

.method public static final e(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1

    const-string v0, "collection"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    if-nez p0, :cond_1

    return-object p1

    :cond_1
    instance-of v0, p0, Ljava/util/LinkedHashSet;

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    return-object p0

    :cond_2
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0, p0}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public static final f(Lic/m;Lic/o;)Ljava/lang/Object;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extension"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lic/m;->j(Lic/o;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lic/m;->i(Lic/o;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final g(Lic/m;Lic/o;I)Ljava/lang/Object;
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extension"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lic/m;->m(Lic/o;)V

    iget-object v0, p0, Lic/m;->a:Lic/i;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p1, Lic/o;->d:Lic/n;

    iget-boolean v2, v1, Lic/n;->c:Z

    const-string v3, "getRepeatedField() can only be called on repeated fields."

    if-eqz v2, :cond_4

    iget-object v0, v0, Lic/i;->a:Lic/C;

    invoke-virtual {v0, v1}, Lic/C;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge p2, v2, :cond_3

    invoke-virtual {p0, p1}, Lic/m;->m(Lic/o;)V

    iget-boolean p0, v1, Lic/n;->c:Z

    if-eqz p0, :cond_2

    invoke-virtual {v0, v1}, Lic/C;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    check-cast p0, Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Lic/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    const/4 p0, 0x0

    :goto_1
    return-object p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final h(Lf2/h;)Z
    .locals 3

    instance-of v0, p0, Lf2/c;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lf2/f;

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_4

    :cond_1
    sget-object v0, Lf2/d;->a:Lf2/d;

    invoke-static {p0, v0}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    sget-object v0, Lf2/e;->a:Lf2/e;

    invoke-static {p0, v0}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_1
    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_2

    :cond_3
    sget-object v0, Lf2/g;->a:Lf2/g;

    invoke-static {p0, v0}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_2
    const/4 v2, 0x0

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    if-nez p0, :cond_5

    goto :goto_3

    :cond_5
    move v1, v2

    :goto_3
    if-eqz v1, :cond_6

    move v1, v2

    :goto_4
    return v1

    :cond_6
    new-instance p0, LI5/b;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
.end method

.method public static final i(Ljava/util/ArrayList;)LHc/g;
    .locals 4

    new-instance v0, LHc/g;

    invoke-direct {v0}, LHc/g;-><init>()V

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lrc/o;

    if-eqz v2, :cond_0

    sget-object v3, Lrc/n;->b:Lrc/n;

    if-eq v2, v3, :cond_0

    invoke-virtual {v0, v1}, LHc/g;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static final j(Landroid/widget/RemoteViews;ILz1/L0;I)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_1

    iget v0, p2, Lz1/L0;->b:I

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p3, v0}, Lz/i;->k(Landroid/widget/RemoteViews;III)V

    goto :goto_0

    :cond_0
    iget p2, p2, Lz1/L0;->a:F

    invoke-static {p0, p1, p3, p2}, Lz/i;->j(Landroid/widget/RemoteViews;IIF)V

    :cond_1
    :goto_0
    return-void
.end method
