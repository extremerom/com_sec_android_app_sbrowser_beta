.class public abstract LG5/Y2;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(IJLa0/m;Lsb/n;Lz1/b1;)V
    .locals 16

    move/from16 v5, p0

    move-wide/from16 v2, p1

    move-object/from16 v1, p5

    const-string v0, "sizeMode"

    invoke-static {v1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p3

    check-cast v0, La0/q;

    const v4, 0x5af55f46

    invoke-virtual {v0, v4}, La0/q;->S(I)La0/q;

    and-int/lit8 v4, v5, 0xe

    if-nez v4, :cond_1

    invoke-virtual {v0, v1}, La0/q;->e(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x4

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    :goto_0
    or-int/2addr v4, v5

    goto :goto_1

    :cond_1
    move v4, v5

    :goto_1
    and-int/lit8 v6, v5, 0x70

    if-nez v6, :cond_3

    invoke-virtual {v0, v2, v3}, La0/q;->d(J)Z

    move-result v6

    if-eqz v6, :cond_2

    const/16 v6, 0x20

    goto :goto_2

    :cond_2
    const/16 v6, 0x10

    :goto_2
    or-int/2addr v4, v6

    :cond_3
    and-int/lit16 v6, v5, 0x380

    move-object/from16 v12, p4

    if-nez v6, :cond_5

    invoke-virtual {v0, v12}, La0/q;->g(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/16 v6, 0x100

    goto :goto_3

    :cond_4
    const/16 v6, 0x80

    :goto_3
    or-int/2addr v4, v6

    :cond_5
    and-int/lit16 v6, v4, 0x2db

    const/16 v7, 0x92

    if-ne v6, v7, :cond_7

    invoke-virtual {v0}, La0/q;->x()Z

    move-result v6

    if-nez v6, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {v0}, La0/q;->K()V

    goto/16 :goto_f

    :cond_7
    :goto_4
    instance-of v6, v1, Lz1/a1;

    const/4 v7, 0x0

    if-eqz v6, :cond_8

    const v6, 0x4810f215

    invoke-virtual {v0, v6}, La0/q;->R(I)V

    invoke-virtual {v0, v7}, La0/q;->p(Z)V

    new-instance v6, LH0/g;

    invoke-direct {v6, v2, v3}, LH0/g;-><init>(J)V

    invoke-static {v6}, LG5/o3;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    check-cast v6, Ljava/util/Collection;

    goto/16 :goto_d

    :cond_8
    instance-of v6, v1, Lz1/Z0;

    if-eqz v6, :cond_18

    const v6, 0x4810f242

    invoke-virtual {v0, v6}, La0/q;->R(I)V

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x1f

    const-string v10, "appWidgetMaxWidth"

    const-string v11, "appWidgetMinWidth"

    const-string v13, "appWidgetMaxHeight"

    const-string v14, "appWidgetMinHeight"

    const-string v15, "<this>"

    if-lt v6, v9, :cond_10

    const v6, 0x4810f276

    invoke-virtual {v0, v6}, La0/q;->R(I)V

    sget-object v6, Lz1/C;->a:La0/I;

    invoke-virtual {v0, v6}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    const v9, -0x103cf1f8

    invoke-virtual {v0, v9}, La0/q;->R(I)V

    invoke-virtual {v0, v2, v3}, La0/q;->d(J)Z

    move-result v9

    invoke-virtual {v0}, La0/q;->G()Ljava/lang/Object;

    move-result-object v8

    if-nez v9, :cond_9

    sget-object v9, La0/l;->a:La0/V;

    if-ne v8, v9, :cond_a

    :cond_9
    new-instance v8, Lz1/W0;

    invoke-direct {v8, v2, v3}, Lz1/W0;-><init>(J)V

    invoke-virtual {v0, v8}, La0/q;->a0(Ljava/lang/Object;)V

    :cond_a
    check-cast v8, Lsb/a;

    invoke-virtual {v0, v7}, La0/q;->p(Z)V

    sget-object v9, Lz1/u;->a:Ljava/util/HashMap;

    invoke-static {v6, v15}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "minSize"

    invoke-static {v8, v9}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "appWidgetSizes"

    invoke-virtual {v6, v9}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    if-eqz v9, :cond_c

    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_b

    goto :goto_6

    :cond_b
    new-instance v6, Ljava/util/ArrayList;

    const/16 v8, 0xa

    invoke-static {v9, v8}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v6, v10}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_f

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/SizeF;

    invoke-virtual {v9}, Landroid/util/SizeF;->getWidth()F

    move-result v10

    invoke-virtual {v9}, Landroid/util/SizeF;->getHeight()F

    move-result v9

    invoke-static {v10, v9}, LG5/T2;->b(FF)J

    move-result-wide v9

    new-instance v11, LH0/g;

    invoke-direct {v11, v9, v10}, LH0/g;-><init>(J)V

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_c
    :goto_6
    invoke-virtual {v6, v14, v7}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    invoke-virtual {v6, v13, v7}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v13

    invoke-virtual {v6, v11, v7}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    invoke-virtual {v6, v10, v7}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    if-eqz v9, :cond_e

    if-eqz v13, :cond_e

    if-eqz v11, :cond_e

    if-nez v6, :cond_d

    goto :goto_7

    :cond_d
    int-to-float v8, v11

    int-to-float v10, v13

    invoke-static {v8, v10}, LG5/T2;->b(FF)J

    move-result-wide v10

    new-instance v8, LH0/g;

    invoke-direct {v8, v10, v11}, LH0/g;-><init>(J)V

    int-to-float v6, v6

    int-to-float v9, v9

    invoke-static {v6, v9}, LG5/T2;->b(FF)J

    move-result-wide v9

    new-instance v6, LH0/g;

    invoke-direct {v6, v9, v10}, LH0/g;-><init>(J)V

    filled-new-array {v8, v6}, [LH0/g;

    move-result-object v6

    invoke-static {v6}, Lfb/o;->g([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    goto :goto_8

    :cond_e
    :goto_7
    invoke-interface {v8}, Lsb/a;->invoke()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, LG5/o3;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    :cond_f
    :goto_8
    invoke-virtual {v0, v7}, La0/q;->p(Z)V

    goto :goto_c

    :cond_10
    const v6, 0x4810f2cd

    invoke-virtual {v0, v6}, La0/q;->R(I)V

    sget-object v6, Lz1/C;->a:La0/I;

    invoke-virtual {v0, v6}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    sget-object v8, Lz1/u;->a:Ljava/util/HashMap;

    invoke-static {v6, v15}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v14, v7}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v6, v10, v7}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    const/4 v10, 0x0

    if-eqz v8, :cond_12

    if-nez v9, :cond_11

    goto :goto_9

    :cond_11
    int-to-float v9, v9

    int-to-float v8, v8

    invoke-static {v9, v8}, LG5/T2;->b(FF)J

    move-result-wide v8

    new-instance v14, LH0/g;

    invoke-direct {v14, v8, v9}, LH0/g;-><init>(J)V

    goto :goto_a

    :cond_12
    :goto_9
    move-object v14, v10

    :goto_a
    invoke-virtual {v6, v13, v7}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v6, v11, v7}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    if-eqz v8, :cond_14

    if-nez v6, :cond_13

    goto :goto_b

    :cond_13
    int-to-float v6, v6

    int-to-float v8, v8

    invoke-static {v6, v8}, LG5/T2;->b(FF)J

    move-result-wide v8

    new-instance v10, LH0/g;

    invoke-direct {v10, v8, v9}, LH0/g;-><init>(J)V

    :cond_14
    :goto_b
    filled-new-array {v14, v10}, [LH0/g;

    move-result-object v6

    invoke-static {v6}, Lfb/l;->q([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_15

    new-instance v6, LH0/g;

    invoke-direct {v6, v2, v3}, LH0/g;-><init>(J)V

    invoke-static {v6}, LG5/o3;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    :cond_15
    check-cast v6, Ljava/util/List;

    invoke-virtual {v0, v7}, La0/q;->p(Z)V

    :goto_c
    invoke-virtual {v0, v7}, La0/q;->p(Z)V

    check-cast v6, Ljava/util/Collection;

    :goto_d
    check-cast v6, Ljava/lang/Iterable;

    invoke-static {v6}, Lfb/n;->y(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v6

    check-cast v6, Ljava/lang/Iterable;

    new-instance v13, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {v6, v7}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v13, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_e
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_16

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LH0/g;

    iget-wide v7, v6, LH0/g;->a:J

    shl-int/lit8 v6, v4, 0x3

    and-int/lit8 v6, v6, 0x70

    and-int/lit16 v9, v4, 0x380

    or-int/2addr v6, v9

    move-object v9, v0

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    invoke-static/range {v6 .. v11}, LG5/Y2;->b(IJLa0/m;Lsb/n;Lz1/b1;)V

    sget-object v6, Ldb/r;->a:Ldb/r;

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_16
    :goto_f
    invoke-virtual {v0}, La0/q;->r()La0/i0;

    move-result-object v6

    if-eqz v6, :cond_17

    new-instance v7, Lz1/V0;

    move-object v0, v7

    move-object/from16 v1, p5

    move-wide/from16 v2, p1

    move-object/from16 v4, p4

    move/from16 v5, p0

    invoke-direct/range {v0 .. v5}, Lz1/V0;-><init>(Lz1/b1;JLsb/n;I)V

    iput-object v7, v6, La0/i0;->d:Lsb/n;

    :cond_17
    return-void

    :cond_18
    const v1, 0x4810e3d2

    invoke-virtual {v0, v1}, La0/q;->R(I)V

    invoke-virtual {v0, v7}, La0/q;->p(Z)V

    new-instance v0, LI5/b;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static final b(IJLa0/m;Lsb/n;Lz1/b1;)V
    .locals 8

    const-string v0, "sizeMode"

    invoke-static {p5, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, La0/q;

    const v0, -0x336c667

    invoke-virtual {p3, v0}, La0/q;->S(I)La0/q;

    and-int/lit8 v0, p0, 0xe

    if-nez v0, :cond_1

    invoke-virtual {p3, p1, p2}, La0/q;->d(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, p0

    goto :goto_1

    :cond_1
    move v0, p0

    :goto_1
    and-int/lit8 v1, p0, 0x70

    if-nez v1, :cond_3

    invoke-virtual {p3, p5}, La0/q;->e(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x20

    goto :goto_2

    :cond_2
    const/16 v1, 0x10

    :goto_2
    or-int/2addr v0, v1

    :cond_3
    and-int/lit16 v1, p0, 0x380

    if-nez v1, :cond_5

    invoke-virtual {p3, p4}, La0/q;->g(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x100

    goto :goto_3

    :cond_4
    const/16 v1, 0x80

    :goto_3
    or-int/2addr v0, v1

    :cond_5
    and-int/lit16 v0, v0, 0x2db

    const/16 v1, 0x92

    if-ne v0, v1, :cond_7

    invoke-virtual {p3}, La0/q;->x()Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {p3}, La0/q;->K()V

    goto :goto_5

    :cond_7
    :goto_4
    sget-object v0, Lx1/k;->a:La0/L0;

    new-instance v1, LH0/g;

    invoke-direct {v1, p1, p2}, LH0/g;-><init>(J)V

    invoke-virtual {v0, v1}, La0/L0;->b(Ljava/lang/Object;)La0/h0;

    move-result-object v0

    new-instance v1, Lz1/Y0;

    invoke-direct {v1, p4, p1, p2, p5}, Lz1/Y0;-><init>(Lsb/n;JLz1/b1;)V

    const v2, -0x481c5327

    invoke-static {p3, v2, v1}, Li0/b;->b(La0/m;ILtb/m;)Li0/a;

    move-result-object v1

    const/16 v2, 0x38

    invoke-static {v0, v1, p3, v2}, La0/d;->a(La0/h0;Li0/a;La0/m;I)V

    :goto_5
    invoke-virtual {p3}, La0/q;->r()La0/i0;

    move-result-object p3

    if-eqz p3, :cond_8

    new-instance v7, Lz1/V0;

    const/4 v6, 0x1

    move-object v0, v7

    move-wide v1, p1

    move-object v3, p5

    move-object v4, p4

    move v5, p0

    invoke-direct/range {v0 .. v6}, Lz1/V0;-><init>(JLjava/lang/Object;Lsb/n;II)V

    iput-object v7, p3, La0/i0;->d:Lsb/n;

    :cond_8
    return-void
.end method

.method public static final c(Lc0/d;I)I
    .locals 5

    iget v0, p0, Lc0/d;->c:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-ge v1, v0, :cond_3

    const/4 v2, 0x2

    invoke-static {v0, v1, v2, v1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->a(IIII)I

    move-result v2

    iget-object v3, p0, Lc0/d;->a:[Ljava/lang/Object;

    aget-object v4, v3, v2

    check-cast v4, LW/d;

    iget v4, v4, LW/d;->a:I

    if-ne v4, p1, :cond_1

    :goto_1
    move v1, v2

    goto :goto_2

    :cond_1
    if-ge v4, p1, :cond_2

    add-int/lit8 v1, v2, 0x1

    aget-object v3, v3, v1

    check-cast v3, LW/d;

    iget v3, v3, LW/d;->a:I

    if-ge p1, v3, :cond_0

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    :cond_3
    :goto_2
    return v1
.end method


# virtual methods
.method public abstract d(I)V
.end method

.method public abstract e(Z)V
.end method

.method public abstract f(Z)V
.end method

.method public abstract g(I)V
.end method

.method public abstract h(I)V
.end method
