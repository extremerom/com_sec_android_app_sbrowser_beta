.class public abstract LG5/h3;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(LV9/a;Lsb/n;Lsb/n;Li0/a;La0/m;I)V
    .locals 7

    const-string p1, "titleBar"

    invoke-static {p0, p1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p4, La0/q;

    const p1, -0x126892b8

    invoke-virtual {p4, p1}, La0/q;->S(I)La0/q;

    sget-object p1, LR1/d;->c:La0/L0;

    invoke-virtual {p4, p1}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, LR1/v;->b:LR1/v;

    invoke-static {p1, p2}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x0

    const/4 v6, 0x0

    if-eqz p1, :cond_0

    const p1, -0x708e3bbe

    invoke-virtual {p4, p1}, La0/q;->R(I)V

    and-int/lit8 p1, p5, 0x70

    or-int/lit8 p1, p1, 0x8

    and-int/lit16 v0, p5, 0x380

    or-int/2addr p1, v0

    and-int/lit16 v0, p5, 0x1c00

    or-int v5, p1, v0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, LG5/y3;->a(LV9/a;Lsb/n;Lsb/n;Li0/a;La0/m;I)V

    invoke-virtual {p4, v6}, La0/q;->p(Z)V

    goto :goto_0

    :cond_0
    const p1, -0x708e3b61

    invoke-virtual {p4, p1}, La0/q;->R(I)V

    and-int/lit8 p1, p5, 0x70

    or-int/lit8 p1, p1, 0x8

    and-int/lit16 v0, p5, 0x380

    or-int/2addr p1, v0

    and-int/lit16 v0, p5, 0x1c00

    or-int v5, p1, v0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, LG5/s3;->a(LV9/a;Lsb/n;Lsb/n;Li0/a;La0/m;I)V

    invoke-virtual {p4, v6}, La0/q;->p(Z)V

    :goto_0
    invoke-virtual {p4}, La0/q;->r()La0/i0;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance p4, LW1/e;

    const/4 v6, 0x0

    move-object v0, p4

    move-object v1, p0

    move-object v2, p2

    move-object v3, p2

    move-object v4, p3

    move v5, p5

    invoke-direct/range {v0 .. v6}, LW1/e;-><init>(LV9/a;Lsb/n;Lsb/n;Li0/a;II)V

    iput-object p4, p1, La0/i0;->d:Lsb/n;

    :cond_1
    return-void
.end method

.method public static final b(Ljava/lang/String;LF3/f;LJ1/b;LV9/a;Ly1/a;Ljava/lang/String;Li0/a;La0/m;II)V
    .locals 17

    move-object/from16 v3, p2

    move/from16 v8, p8

    move-object/from16 v0, p7

    check-cast v0, La0/q;

    const v1, -0x628e27d0

    invoke-virtual {v0, v1}, La0/q;->S(I)La0/q;

    and-int/lit8 v1, v8, 0xe

    if-nez v1, :cond_1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, La0/q;->e(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    or-int/2addr v2, v8

    goto :goto_1

    :cond_1
    move-object/from16 v1, p0

    move v2, v8

    :goto_1
    and-int/lit8 v4, v8, 0x70

    if-nez v4, :cond_4

    and-int/lit8 v4, p9, 0x2

    if-nez v4, :cond_2

    move-object/from16 v4, p1

    invoke-virtual {v0, v4}, La0/q;->e(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/16 v5, 0x20

    goto :goto_2

    :cond_2
    move-object/from16 v4, p1

    :cond_3
    const/16 v5, 0x10

    :goto_2
    or-int/2addr v2, v5

    goto :goto_3

    :cond_4
    move-object/from16 v4, p1

    :goto_3
    and-int/lit16 v5, v8, 0x380

    if-nez v5, :cond_6

    invoke-virtual {v0, v3}, La0/q;->e(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/16 v5, 0x100

    goto :goto_4

    :cond_5
    const/16 v5, 0x80

    :goto_4
    or-int/2addr v2, v5

    :cond_6
    and-int/lit8 v5, p9, 0x8

    if-eqz v5, :cond_7

    or-int/lit16 v2, v2, 0x400

    :cond_7
    and-int/lit8 v6, p9, 0x10

    if-eqz v6, :cond_8

    or-int/lit16 v2, v2, 0x2000

    :cond_8
    const/high16 v7, 0x70000

    and-int/2addr v7, v8

    if-nez v7, :cond_a

    move-object/from16 v7, p5

    invoke-virtual {v0, v7}, La0/q;->e(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    const/high16 v9, 0x20000

    goto :goto_5

    :cond_9
    const/high16 v9, 0x10000

    :goto_5
    or-int/2addr v2, v9

    goto :goto_6

    :cond_a
    move-object/from16 v7, p5

    :goto_6
    const/high16 v9, 0x380000

    and-int/2addr v9, v8

    move-object/from16 v15, p6

    if-nez v9, :cond_c

    invoke-virtual {v0, v15}, La0/q;->g(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    const/high16 v9, 0x100000

    goto :goto_7

    :cond_b
    const/high16 v9, 0x80000

    :goto_7
    or-int/2addr v2, v9

    :cond_c
    and-int/lit8 v9, p9, 0x18

    const/16 v10, 0x18

    if-ne v9, v10, :cond_e

    const v9, 0x2db6db

    and-int/2addr v2, v9

    const v9, 0x92492

    if-ne v2, v9, :cond_e

    invoke-virtual {v0}, La0/q;->x()Z

    move-result v2

    if-nez v2, :cond_d

    goto :goto_8

    :cond_d
    invoke-virtual {v0}, La0/q;->K()V

    move-object/from16 v5, p4

    move-object v2, v4

    move-object/from16 v4, p3

    goto/16 :goto_f

    :cond_e
    :goto_8
    invoke-virtual {v0}, La0/q;->M()V

    and-int/lit8 v2, v8, 0x1

    if-eqz v2, :cond_10

    invoke-virtual {v0}, La0/q;->w()Z

    move-result v2

    if-eqz v2, :cond_f

    goto :goto_9

    :cond_f
    invoke-virtual {v0}, La0/q;->K()V

    move-object/from16 v5, p4

    move-object v2, v4

    move-object/from16 v4, p3

    goto :goto_d

    :cond_10
    :goto_9
    and-int/lit8 v2, p9, 0x2

    if-eqz v2, :cond_11

    new-instance v2, LR1/a;

    sget-object v4, LR1/u;->None:LR1/u;

    invoke-direct {v2, v4}, LR1/a;-><init>(LR1/u;)V

    goto :goto_a

    :cond_11
    move-object v2, v4

    :goto_a
    const/4 v4, 0x0

    if-eqz v5, :cond_12

    move-object v5, v4

    goto :goto_b

    :cond_12
    move-object/from16 v5, p3

    :goto_b
    if-eqz v6, :cond_13

    goto :goto_c

    :cond_13
    move-object/from16 v4, p4

    :goto_c
    move-object/from16 v16, v5

    move-object v5, v4

    move-object/from16 v4, v16

    :goto_d
    invoke-virtual {v0}, La0/q;->q()V

    sget-object v6, LR1/d;->c:La0/L0;

    invoke-virtual {v0, v6}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v6

    sget-object v9, LR1/v;->b:LR1/v;

    invoke-static {v6, v9}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_15

    invoke-virtual {v0}, La0/q;->r()La0/i0;

    move-result-object v11

    if-eqz v11, :cond_14

    new-instance v12, LW1/f;

    const/4 v10, 0x0

    move-object v0, v12

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v10}, LW1/f;-><init>(Ljava/lang/String;LF3/f;LJ1/b;LV9/a;Ly1/a;Ljava/lang/String;Li0/a;III)V

    iput-object v12, v11, La0/i0;->d:Lsb/n;

    :cond_14
    return-void

    :cond_15
    sget-object v6, LR1/d;->e:La0/L0;

    invoke-virtual {v0, v6}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LM1/c;

    iget v6, v6, LM1/c;->a:I

    const/4 v9, 0x1

    invoke-static {v6, v9}, LM1/c;->a(II)Z

    move-result v6

    if-eqz v6, :cond_17

    if-nez v3, :cond_16

    sget-object v6, LS1/a;->c:LJ1/b;

    goto :goto_e

    :cond_16
    move-object v6, v3

    goto :goto_e

    :cond_17
    sget-object v6, LS1/a;->d:LJ1/b;

    :goto_e
    new-instance v14, LW1/g;

    move-object v9, v14

    move-object/from16 v10, p0

    move-object v11, v2

    move-object/from16 v12, p5

    move-object v13, v5

    move-object v1, v14

    move-object v14, v4

    move-object/from16 v15, p6

    invoke-direct/range {v9 .. v15}, LW1/g;-><init>(Ljava/lang/String;LF3/f;Ljava/lang/String;Ly1/a;LV9/a;Li0/a;)V

    const v9, 0x5cbbfa99

    invoke-static {v0, v9, v1}, Li0/b;->b(La0/m;ILtb/m;)Li0/a;

    move-result-object v1

    const/16 v9, 0x30

    invoke-static {v6, v1, v0, v9}, LG5/y2;->a(LJ1/b;Li0/a;La0/m;I)V

    :goto_f
    invoke-virtual {v0}, La0/q;->r()La0/i0;

    move-result-object v11

    if-eqz v11, :cond_18

    new-instance v12, LW1/f;

    const/4 v10, 0x1

    move-object v0, v12

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v10}, LW1/f;-><init>(Ljava/lang/String;LF3/f;LJ1/b;LV9/a;Ly1/a;Ljava/lang/String;Li0/a;III)V

    iput-object v12, v11, La0/i0;->d:Lsb/n;

    :cond_18
    return-void
.end method

.method public static c([BLandroid/os/Parcelable$Creator;)Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
    .locals 3

    invoke-static {p1}, Lcom/google/android/gms/common/internal/o;->f(Ljava/lang/Object;)V

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    array-length v1, p0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Landroid/os/Parcel;->unmarshall([BII)V

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-interface {p1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0
.end method

.method public static d(IIIII)Landroid/graphics/Matrix;
    .locals 4

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz p4, :cond_1

    rem-int/lit8 v2, p4, 0x5a

    if-eqz v2, :cond_0

    const-string v2, "ImageUtil"

    const-string v3, "Rotation of %d % 90 != 0"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    neg-int v2, p0

    int-to-float v2, v2

    div-float/2addr v2, v1

    neg-int v3, p1

    int-to-float v3, v3

    div-float/2addr v3, v1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    int-to-float v2, p4

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    :cond_1
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x5a

    rem-int/lit16 v2, v2, 0xb4

    if-nez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_3

    move v3, p1

    goto :goto_1

    :cond_3
    move v3, p0

    :goto_1
    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    move p0, p1

    :goto_2
    if-ne v3, p2, :cond_5

    if-eq p0, p3, :cond_6

    :cond_5
    int-to-float p1, p2

    int-to-float v2, v3

    div-float/2addr p1, v2

    int-to-float v2, p3

    int-to-float p0, p0

    div-float/2addr v2, p0

    invoke-virtual {v0, p1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    :cond_6
    if-eqz p4, :cond_7

    int-to-float p0, p2

    div-float/2addr p0, v1

    int-to-float p1, p3

    div-float/2addr p1, v1

    invoke-virtual {v0, p0, p1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :cond_7
    return-object v0
.end method

.method public static final e(LJ1/b;La0/m;)Ljava/lang/String;
    .locals 14

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, La0/q;

    const v0, 0x4646bd9d

    invoke-virtual {p1, v0}, La0/q;->R(I)V

    iget-object v0, p0, LJ1/b;->a:Lf2/a;

    invoke-static {v0, p1}, LG5/h3;->f(Lf2/a;La0/m;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, LJ1/b;->b:Lf2/a;

    invoke-static {v1, p1}, LG5/h3;->f(Lf2/a;La0/m;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, LJ1/b;->c:Lf2/a;

    invoke-static {v2, p1}, LG5/h3;->f(Lf2/a;La0/m;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, LJ1/b;->d:Lf2/a;

    invoke-static {v3, p1}, LG5/h3;->f(Lf2/a;La0/m;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, LJ1/b;->q:Lf2/a;

    invoke-static {v4, p1}, LG5/h3;->f(Lf2/a;La0/m;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, LJ1/b;->r:Lf2/a;

    invoke-static {v5, p1}, LG5/h3;->f(Lf2/a;La0/m;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, LJ1/b;->s:Lf2/a;

    invoke-static {v6, p1}, LG5/h3;->f(Lf2/a;La0/m;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, LJ1/b;->t:Lf2/a;

    invoke-static {v7, p1}, LG5/h3;->f(Lf2/a;La0/m;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, LJ1/b;->u:Lf2/a;

    invoke-static {v8, p1}, LG5/h3;->f(Lf2/a;La0/m;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, LJ1/b;->v:Lf2/a;

    invoke-static {v9, p1}, LG5/h3;->f(Lf2/a;La0/m;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, LJ1/b;->x:Lf2/a;

    invoke-static {v10, p1}, LG5/h3;->f(Lf2/a;La0/m;)Ljava/lang/String;

    move-result-object v10

    iget-object p0, p0, LJ1/b;->y:Lf2/a;

    invoke-static {p0, p1}, LG5/h3;->f(Lf2/a;La0/m;)Ljava/lang/String;

    move-result-object p0

    const-string v11, "ColorProviders(primary="

    const-string v12, ", onPrimary="

    const-string v13, ", primaryContainer="

    invoke-static {v11, v0, v12, v1, v13}, Lcom/sec/android/app/sbrowser/autofill/password/k;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", onPrimaryContainer="

    const-string v11, ", background="

    invoke-static {v0, v2, v1, v3, v11}, LB/e;->B(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", onBackground="

    const-string v2, ", surface="

    invoke-static {v0, v4, v1, v5, v2}, LB/e;->B(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", onSurface="

    const-string v2, ", surfaceVariant="

    invoke-static {v0, v6, v1, v7, v2}, LB/e;->B(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", onSurfaceVariant="

    const-string v2, ", inverseOnSurface="

    invoke-static {v0, v8, v1, v9, v2}, LB/e;->B(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", inverseSurface="

    invoke-static {v0, v10, v1, p0}, LV0/c;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, La0/q;->p(Z)V

    return-object p0
.end method

.method public static final f(Lf2/a;La0/m;)Ljava/lang/String;
    .locals 4

    check-cast p1, La0/q;

    const v0, 0x44c3bda4

    invoke-virtual {p1, v0}, La0/q;->R(I)V

    instance-of v0, p0, Lf2/i;

    const-string v1, "]"

    if-eqz v0, :cond_0

    check-cast p0, Lf2/i;

    iget-wide v2, p0, Lf2/i;->a:J

    invoke-static {v2, v3}, Ls0/e;->e(J)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "[fixedColor="

    :goto_0
    invoke-static {v0, p0, v1}, LV0/c;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_0
    instance-of v0, p0, LJ1/a;

    if-eqz v0, :cond_1

    check-cast p0, LJ1/a;

    iget-wide v2, p0, LJ1/a;->a:J

    invoke-static {v2, v3}, Ls0/e;->e(J)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    iget-wide v2, p0, LJ1/a;->b:J

    invoke-static {v2, v3}, Ls0/e;->e(J)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    const-string v2, "[day="

    const-string v3, " night="

    invoke-static {v2, v0, v3, p0, v1}, Lw2/j;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    instance-of v0, p0, Lf2/j;

    if-eqz v0, :cond_2

    sget-object v0, Landroidx/compose/ui/platform/h;->a:La0/L0;

    invoke-virtual {p1, v0}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    check-cast p0, Lf2/j;

    invoke-virtual {p0, v0}, Lf2/j;->a(Landroid/content/Context;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ls0/e;->e(J)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "[resColor="

    goto :goto_0

    :cond_2
    const-string p0, "[]"

    :goto_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, La0/q;->p(Z)V

    return-object p0
.end method
