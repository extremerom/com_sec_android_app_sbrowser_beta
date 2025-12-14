.class public abstract LG5/w3;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lcom/samsung/android/motionphoto/utils/ex/e;ZZFFZZLa0/m;I)V
    .locals 17

    move-object/from16 v9, p7

    check-cast v9, La0/q;

    const v0, 0x1e95df67

    invoke-virtual {v9, v0}, La0/q;->S(I)La0/q;

    move-object/from16 v10, p0

    iget-object v0, v10, Lcom/samsung/android/motionphoto/utils/ex/e;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v9}, La0/q;->r()La0/i0;

    move-result-object v11

    if-eqz v11, :cond_0

    new-instance v12, LW1/c;

    const/4 v9, 0x3

    move-object v0, v12

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p8

    invoke-direct/range {v0 .. v9}, LW1/c;-><init>(Lcom/samsung/android/motionphoto/utils/ex/e;ZZFFZZII)V

    iput-object v12, v11, La0/i0;->d:Lsb/n;

    :cond_0
    return-void

    :cond_1
    sget-object v0, LR1/d;->d:La0/L0;

    invoke-virtual {v9, v0}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LM1/b;

    iget v0, v0, LM1/b;->a:I

    const/16 v1, 0x8

    invoke-static {v0, v1}, LM1/b;->a(II)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_2

    move v4, v2

    goto :goto_0

    :cond_2
    move v4, v1

    :goto_0
    sget-object v11, Lx1/p;->a:Lx1/p;

    if-eqz v4, :cond_3

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x5

    move/from16 v13, p3

    move/from16 v15, p4

    invoke-static/range {v11 .. v16}, LG5/N3;->f(Lx1/r;FFFFI)Lx1/r;

    move-result-object v11

    :cond_3
    if-eqz p1, :cond_4

    invoke-static {v11}, LG5/P3;->d(Lx1/r;)Lx1/r;

    move-result-object v11

    :cond_4
    if-eqz p2, :cond_5

    invoke-static {v11}, LG5/P3;->b(Lx1/r;)Lx1/r;

    move-result-object v0

    move-object v11, v0

    :cond_5
    sget-object v0, La2/e;->a:La2/e;

    sget-object v3, LK1/c;->d:LK1/c;

    if-eqz v4, :cond_8

    sget-object v5, LK1/c;->c:LK1/c;

    if-eqz p2, :cond_6

    invoke-static {v1, v1}, LK1/b;->b(II)Z

    move-result v6

    if-eqz v6, :cond_7

    :cond_6
    move-object v7, v5

    goto :goto_1

    :cond_7
    invoke-static {v1, v2}, LK1/b;->b(II)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_8
    move-object v7, v3

    goto :goto_1

    :cond_9
    sget-object v1, LK1/c;->f:LK1/c;

    move-object v7, v1

    :goto_1
    new-instance v8, LY1/m;

    move-object v1, v8

    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {v1 .. v6}, LY1/m;-><init>(Lcom/samsung/android/motionphoto/utils/ex/e;ZZZZ)V

    const v1, 0x5bc8871e

    invoke-static {v9, v1, v8}, Li0/b;->b(La0/m;ILtb/m;)Li0/a;

    move-result-object v5

    const-string v3, "List1"

    const/4 v4, 0x0

    const v8, 0x36180

    const/16 v12, 0x8

    move-object v1, v11

    move-object v2, v7

    move-object v6, v9

    move v7, v8

    move v8, v12

    invoke-virtual/range {v0 .. v8}, La2/e;->b(Lx1/r;LK1/c;Ljava/lang/String;ZLi0/a;La0/m;II)V

    invoke-virtual {v9}, La0/q;->r()La0/i0;

    move-result-object v11

    if-eqz v11, :cond_a

    new-instance v12, LW1/c;

    const/4 v9, 0x4

    move-object v0, v12

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p8

    invoke-direct/range {v0 .. v9}, LW1/c;-><init>(Lcom/samsung/android/motionphoto/utils/ex/e;ZZFFZZII)V

    iput-object v12, v11, La0/i0;->d:Lsb/n;

    :cond_a
    return-void
.end method

.method public static final b(LR1/x;ILf2/a;Lx1/r;ILa0/m;II)V
    .locals 14

    move v2, p1

    const-string v0, "textData"

    move-object v1, p0

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p5

    check-cast v0, La0/q;

    const v3, -0x3009f234

    invoke-virtual {v0, v3}, La0/q;->S(I)La0/q;

    and-int/lit8 v3, p7, 0x8

    if-eqz v3, :cond_0

    sget-object v3, Lx1/p;->a:Lx1/p;

    move-object v9, v3

    goto :goto_0

    :cond_0
    move-object/from16 v9, p3

    :goto_0
    and-int/lit8 v3, p7, 0x10

    if-eqz v3, :cond_1

    const/4 v3, 0x2

    move v10, v3

    goto :goto_1

    :cond_1
    move/from16 v10, p4

    :goto_1
    const/4 v3, 0x0

    invoke-static {p1, v3}, LG5/E;->b(II)Z

    move-result v4

    if-eqz v4, :cond_2

    const v4, -0x7bfa3c9

    invoke-virtual {v0, v4}, La0/q;->R(I)V

    invoke-static {v0}, LG5/g3;->c(La0/m;)LW1/d;

    move-result-object v4

    invoke-virtual {v0, v3}, La0/q;->p(Z)V

    goto/16 :goto_3

    :cond_2
    const/4 v4, 0x1

    invoke-static {p1, v4}, LG5/E;->b(II)Z

    move-result v4

    if-eqz v4, :cond_3

    const v4, -0x7bfa387

    invoke-virtual {v0, v4}, La0/q;->R(I)V

    const v4, 0x419bfa28

    invoke-virtual {v0, v4}, La0/q;->R(I)V

    new-instance v4, LW1/d;

    invoke-static {v0}, LG5/e3;->a(La0/m;)Landroid/content/Context;

    move-result-object v5

    sget-object v6, Le2/a;->SP:Le2/a;

    const/16 v7, 0x258

    const v8, 0x7f071165

    invoke-direct {v4, v5, v8, v6, v7}, LW1/d;-><init>(Landroid/content/Context;ILe2/a;I)V

    invoke-virtual {v0, v3}, La0/q;->p(Z)V

    invoke-virtual {v0, v3}, La0/q;->p(Z)V

    goto/16 :goto_3

    :cond_3
    const/4 v4, 0x3

    invoke-static {p1, v4}, LG5/E;->b(II)Z

    move-result v4

    if-eqz v4, :cond_4

    const v4, -0x7bfa348

    invoke-virtual {v0, v4}, La0/q;->R(I)V

    invoke-static {v0, v10}, LG5/g3;->a(La0/m;I)LW1/d;

    move-result-object v4

    invoke-virtual {v0, v3}, La0/q;->p(Z)V

    goto :goto_3

    :cond_4
    const/4 v4, 0x5

    invoke-static {p1, v4}, LG5/E;->b(II)Z

    move-result v4

    const/16 v5, 0x190

    if-eqz v4, :cond_5

    const v4, -0x7bfa2ea

    invoke-virtual {v0, v4}, La0/q;->R(I)V

    const v4, -0x7124ef58

    invoke-virtual {v0, v4}, La0/q;->R(I)V

    new-instance v4, LW1/d;

    invoke-static {v0}, LG5/e3;->a(La0/m;)Landroid/content/Context;

    move-result-object v6

    sget-object v7, Le2/a;->SP:Le2/a;

    const v8, 0x7f071152

    invoke-direct {v4, v6, v8, v7, v5}, LW1/d;-><init>(Landroid/content/Context;ILe2/a;I)V

    invoke-virtual {v0, v3}, La0/q;->p(Z)V

    invoke-virtual {v0, v3}, La0/q;->p(Z)V

    goto :goto_3

    :cond_5
    const v4, -0x7bfa2ae

    invoke-virtual {v0, v4}, La0/q;->R(I)V

    const v4, 0x63400fa8

    invoke-virtual {v0, v4}, La0/q;->R(I)V

    new-instance v4, LW1/d;

    invoke-static {v0}, LG5/e3;->a(La0/m;)Landroid/content/Context;

    move-result-object v6

    sget-object v7, LR1/d;->d:La0/L0;

    invoke-virtual {v0, v7}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LM1/b;

    iget v7, v7, LM1/b;->a:I

    const/16 v8, 0x8

    invoke-static {v7, v8}, LM1/b;->a(II)I

    move-result v7

    if-gtz v7, :cond_6

    sget-object v7, Le2/a;->DP:Le2/a;

    goto :goto_2

    :cond_6
    sget-object v7, Le2/a;->SP:Le2/a;

    :goto_2
    const v8, 0x7f07115d

    invoke-direct {v4, v6, v8, v7, v5}, LW1/d;-><init>(Landroid/content/Context;ILe2/a;I)V

    invoke-virtual {v0, v3}, La0/q;->p(Z)V

    invoke-virtual {v0, v3}, La0/q;->p(Z)V

    :goto_3
    move/from16 v11, p6

    and-int/lit16 v3, v11, 0x1c00

    const/16 v5, 0x208

    or-int v8, v5, v3

    move-object v3, p0

    move-object/from16 v5, p2

    move-object v6, v9

    move-object v7, v0

    invoke-static/range {v3 .. v8}, LG5/S2;->c(LR1/x;LW1/d;Lf2/a;Lx1/r;La0/m;I)V

    invoke-virtual {v0}, La0/q;->r()La0/i0;

    move-result-object v12

    if-eqz v12, :cond_7

    new-instance v13, LX1/e;

    const/4 v8, 0x1

    move-object v0, v13

    move-object v1, p0

    move v2, p1

    move-object/from16 v3, p2

    move-object v4, v9

    move v5, v10

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, LX1/e;-><init>(LR1/x;ILf2/a;Ljava/lang/Object;IIII)V

    iput-object v13, v12, La0/i0;->d:Lsb/n;

    :cond_7
    return-void
.end method

.method public static final c(LR1/r;IILx1/r;ZZLf2/a;La0/m;I)V
    .locals 18

    move/from16 v13, p2

    move-object/from16 v14, p7

    check-cast v14, La0/q;

    const v0, 0x5730dabc

    invoke-virtual {v14, v0}, La0/q;->S(I)La0/q;

    sget-object v0, LR1/d;->d:La0/L0;

    invoke-virtual {v14, v0}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LM1/b;

    iget v0, v0, LM1/b;->a:I

    const/4 v1, 0x1

    const/4 v15, 0x0

    if-le v13, v1, :cond_0

    add-int/lit8 v2, v13, -0x1

    move/from16 v12, p1

    if-ge v12, v2, :cond_1

    move v7, v1

    goto :goto_0

    :cond_0
    move/from16 v12, p1

    :cond_1
    move v7, v15

    :goto_0
    invoke-virtual/range {p0 .. p0}, LR1/r;->getOnClick()Ly1/a;

    move-result-object v2

    const/16 v3, 0xe

    move-object/from16 v11, p3

    invoke-static {v11, v2, v15, v15, v3}, LG5/N3;->d(Lx1/r;Ly1/a;ZII)Lx1/r;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, LR1/r;->getContentDescription()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, LG5/N3;->c(Lx1/r;Ljava/lang/String;)Lx1/r;

    move-result-object v2

    const/4 v3, 0x2

    int-to-float v4, v3

    invoke-static {v2, v4}, LG5/Q2;->d(Lx1/r;F)Lx1/r;

    move-result-object v9

    const v2, -0x8541ecf

    invoke-virtual {v14, v2}, La0/q;->R(I)V

    const v2, -0x47257a5e

    invoke-virtual {v14, v2}, La0/q;->R(I)V

    sget-object v2, Lx1/k;->b:La0/L0;

    invoke-virtual {v14, v2}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/content/Context;

    invoke-virtual/range {p0 .. p0}, LR1/r;->getSubText()LR1/y;

    move-result-object v2

    if-eqz v2, :cond_2

    const v2, 0x7f071151

    goto :goto_1

    :cond_2
    const v2, 0x7f071150

    :goto_1
    invoke-static {v5, v2}, LG5/O3;->b(Landroid/content/Context;I)F

    move-result v2

    invoke-virtual/range {p0 .. p0}, LR1/r;->getMainText()LR1/y;

    move-result-object v10

    iget v4, v10, LR1/y;->n:I

    invoke-static {v4, v15}, LG5/E;->b(II)Z

    move-result v4

    sget-object v6, Lx1/p;->a:Lx1/p;

    if-nez v4, :cond_5

    const v3, -0x307309ea

    invoke-virtual {v14, v3}, La0/q;->R(I)V

    const/16 v3, 0x8

    invoke-static {v0, v3}, LM1/b;->a(II)I

    move-result v0

    if-ltz v0, :cond_3

    move v3, v1

    goto :goto_2

    :cond_3
    move v3, v15

    :goto_2
    invoke-virtual/range {p0 .. p0}, LR1/r;->getLeadingContentData()LR1/q;

    move-result-object v0

    if-eqz v0, :cond_4

    move v4, v1

    goto :goto_3

    :cond_4
    move v4, v15

    :goto_3
    invoke-static {v6}, LG5/P3;->l(Lx1/r;)Lx1/r;

    move-result-object v16

    new-instance v8, LY1/g;

    move-object v0, v8

    move v1, v2

    move/from16 v2, p4

    move/from16 v6, p5

    move-object v15, v8

    move/from16 v8, p2

    move-object/from16 v17, v10

    move-object/from16 v10, p0

    move-object/from16 v11, v17

    move-object/from16 v12, p6

    invoke-direct/range {v0 .. v12}, LY1/g;-><init>(FZZZLandroid/content/Context;ZZILx1/r;LR1/r;LR1/y;Lf2/a;)V

    const v0, -0xbd41ca

    invoke-static {v14, v0, v15}, Li0/b;->b(La0/m;ILtb/m;)Li0/a;

    move-result-object v3

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v5, 0xc00

    const/4 v6, 0x6

    move-object/from16 v0, v16

    move-object v4, v14

    invoke-static/range {v0 .. v6}, LG5/M3;->a(Lx1/r;IILi0/a;La0/m;II)V

    const/4 v0, 0x0

    invoke-virtual {v14, v0}, La0/q;->p(Z)V

    move-object/from16 v10, p0

    goto :goto_8

    :cond_5
    move-object/from16 v17, v10

    move v0, v15

    const v4, -0x3072d9de

    invoke-virtual {v14, v4}, La0/q;->R(I)V

    sget-object v4, La2/e;->a:La2/e;

    invoke-static {v6}, LG5/P3;->l(Lx1/r;)Lx1/r;

    move-result-object v5

    if-eqz p4, :cond_6

    sget v6, LW1/a;->a:F

    goto :goto_4

    :cond_6
    int-to-float v6, v0

    :goto_4
    if-eqz p5, :cond_7

    sget v8, LW1/a;->a:F

    goto :goto_5

    :cond_7
    int-to-float v8, v0

    :goto_5
    if-eqz v7, :cond_9

    invoke-static {v0, v1}, LK1/b;->b(II)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x6

    :goto_6
    int-to-float v1, v1

    goto :goto_7

    :cond_8
    const/4 v1, 0x3

    goto :goto_6

    :cond_9
    int-to-float v1, v0

    :goto_7
    invoke-static {v5, v6, v8, v1, v3}, LG5/U2;->e(Lx1/r;FFFI)Lx1/r;

    move-result-object v1

    new-instance v0, LY1/i;

    move-object/from16 v10, p0

    move-object/from16 v3, v17

    invoke-direct {v0, v2, v9, v10, v3}, LY1/i;-><init>(FLx1/r;LR1/r;LR1/y;)V

    const v2, -0x160802c6

    invoke-static {v14, v2, v0}, Li0/b;->b(La0/m;ILtb/m;)Li0/a;

    move-result-object v5

    const-string v3, "List8"

    const/4 v6, 0x0

    const/4 v2, 0x0

    const v7, 0x36180

    const/16 v8, 0xa

    move-object v0, v4

    move v4, v6

    move-object v6, v14

    invoke-virtual/range {v0 .. v8}, La2/e;->b(Lx1/r;LK1/c;Ljava/lang/String;ZLi0/a;La0/m;II)V

    const/4 v0, 0x0

    invoke-virtual {v14, v0}, La0/q;->p(Z)V

    :goto_8
    invoke-virtual {v14, v0}, La0/q;->p(Z)V

    invoke-virtual {v14, v0}, La0/q;->p(Z)V

    invoke-virtual {v14}, La0/q;->r()La0/i0;

    move-result-object v9

    if-eqz v9, :cond_a

    new-instance v11, LY1/c;

    move-object v0, v11

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, LY1/c;-><init>(LR1/r;IILx1/r;ZZLf2/a;I)V

    iput-object v11, v9, La0/i0;->d:Lsb/n;

    :cond_a
    return-void
.end method

.method public static final d([Ljava/lang/Object;IILjava/util/List;)Z
    .locals 4

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-eq p2, v0, :cond_0

    goto :goto_1

    :cond_0
    move v0, v1

    :goto_0
    if-ge v0, p2, :cond_2

    add-int v2, p1, v0

    aget-object v2, p0, v2

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method public static final e([Ljava/lang/Object;IILfb/g;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    mul-int/lit8 v1, p2, 0x3

    add-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_2

    if-lez v1, :cond_0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int v2, p1, v1

    aget-object v2, p0, v2

    if-ne v2, p3, :cond_1

    const-string v2, "(this Collection)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "toString(...)"

    invoke-static {p0, p1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final f(II[Ljava/lang/Object;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    if-ge p0, p1, :cond_0

    const/4 v0, 0x0

    aput-object v0, p2, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
