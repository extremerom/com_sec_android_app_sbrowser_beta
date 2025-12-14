.class public final La2/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:La2/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, La2/e;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, La2/e;->a:La2/e;

    return-void
.end method

.method public static final a(Ljava/lang/String;La0/m;I)V
    .locals 7

    sget-object v0, La2/e;->a:La2/e;

    check-cast p1, La0/q;

    const v1, 0x4a549d6c    # 3483483.0f

    invoke-virtual {p1, v1}, La0/q;->S(I)La0/q;

    and-int/lit8 v1, p2, 0xe

    if-nez v1, :cond_1

    invoke-virtual {p1, p0}, La0/q;->e(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    or-int/2addr v1, p2

    goto :goto_1

    :cond_1
    move v1, p2

    :goto_1
    and-int/lit8 v2, p2, 0x70

    if-nez v2, :cond_3

    invoke-virtual {p1, v0}, La0/q;->e(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x20

    goto :goto_2

    :cond_2
    const/16 v0, 0x10

    :goto_2
    or-int/2addr v1, v0

    :cond_3
    and-int/lit8 v0, v1, 0x5b

    const/16 v1, 0x12

    if-ne v0, v1, :cond_5

    invoke-virtual {p1}, La0/q;->x()Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, La0/q;->K()V

    goto :goto_4

    :cond_5
    :goto_3
    invoke-static {}, La2/e;->d()I

    move-result v0

    sget-object v1, Lx1/p;->a:Lx1/p;

    const/4 v2, 0x3

    new-array v2, v2, [F

    invoke-static {v0, v2}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 v3, 0x0

    aget v4, v2, v3

    const/16 v5, 0xb4

    int-to-float v5, v5

    add-float/2addr v4, v5

    const/16 v5, 0x168

    int-to-float v5, v5

    rem-float/2addr v4, v5

    aput v4, v2, v3

    const/16 v3, 0xdc

    invoke-static {v3, v2}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v2

    invoke-static {v2}, Ls0/e;->b(I)J

    move-result-wide v2

    new-instance v4, Lf2/i;

    invoke-direct {v4, v2, v3}, Lf2/i;-><init>(J)V

    invoke-static {v1, v4}, LG5/x2;->b(Lx1/r;Lf2/a;)Lx1/r;

    move-result-object v1

    invoke-static {v1}, LG5/P3;->l(Lx1/r;)Lx1/r;

    move-result-object v1

    new-instance v2, LK1/w;

    sget-object v3, Lf2/g;->a:Lf2/g;

    invoke-direct {v2, v3}, LK1/w;-><init>(Lf2/h;)V

    invoke-interface {v1, v2}, Lx1/r;->d(Lx1/r;)Lx1/r;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, LG5/I2;->l(Lx1/r;Z)Lx1/r;

    move-result-object v1

    new-instance v2, La2/b;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v3}, La2/b;-><init>(Ljava/lang/String;II)V

    const v0, -0x66337bb6

    invoke-static {p1, v0, v2}, Li0/b;->b(La0/m;ILtb/m;)Li0/a;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v5, 0x180

    const/4 v6, 0x2

    move-object v4, p1

    invoke-static/range {v1 .. v6}, LG5/L3;->a(Lx1/r;LK1/c;Li0/a;La0/m;II)V

    :goto_4
    invoke-virtual {p1}, La0/q;->r()La0/i0;

    move-result-object p1

    if-eqz p1, :cond_6

    new-instance v0, La2/b;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p2, v1}, La2/b;-><init>(Ljava/lang/String;II)V

    iput-object v0, p1, La0/i0;->d:Lsb/n;

    :cond_6
    return-void
.end method

.method public static d()I
    .locals 6

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const/16 v2, 0x100

    int-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    mul-double/2addr v4, v2

    double-to-int v1, v4

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    mul-double/2addr v4, v2

    double-to-int v2, v4

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    return v0
.end method


# virtual methods
.method public final b(Lx1/r;LK1/c;Ljava/lang/String;ZLi0/a;La0/m;II)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v8, p5

    move/from16 v9, p7

    const/16 v0, 0x180

    const/4 v2, 0x4

    move-object/from16 v7, p6

    check-cast v7, La0/q;

    const v3, -0x3d232bf

    invoke-virtual {v7, v3}, La0/q;->S(I)La0/q;

    const/4 v3, 0x1

    and-int/lit8 v4, p8, 0x1

    const/4 v5, 0x2

    if-eqz v4, :cond_0

    or-int/lit8 v6, v9, 0x6

    move v10, v6

    move-object/from16 v6, p1

    goto :goto_1

    :cond_0
    and-int/lit8 v6, v9, 0xe

    if-nez v6, :cond_2

    move-object/from16 v6, p1

    invoke-virtual {v7, v6}, La0/q;->e(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    move v10, v2

    goto :goto_0

    :cond_1
    move v10, v5

    :goto_0
    or-int/2addr v10, v9

    goto :goto_1

    :cond_2
    move-object/from16 v6, p1

    move v10, v9

    :goto_1
    and-int/lit8 v11, v9, 0x70

    if-nez v11, :cond_5

    and-int/lit8 v11, p8, 0x2

    if-nez v11, :cond_3

    move-object/from16 v11, p2

    invoke-virtual {v7, v11}, La0/q;->e(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    const/16 v12, 0x20

    goto :goto_2

    :cond_3
    move-object/from16 v11, p2

    :cond_4
    const/16 v12, 0x10

    :goto_2
    or-int/2addr v10, v12

    goto :goto_3

    :cond_5
    move-object/from16 v11, p2

    :goto_3
    and-int/lit8 v12, p8, 0x4

    if-eqz v12, :cond_7

    or-int/2addr v10, v0

    :cond_6
    move-object/from16 v13, p3

    goto :goto_5

    :cond_7
    and-int/lit16 v13, v9, 0x380

    if-nez v13, :cond_6

    move-object/from16 v13, p3

    invoke-virtual {v7, v13}, La0/q;->e(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    const/16 v14, 0x100

    goto :goto_4

    :cond_8
    const/16 v14, 0x80

    :goto_4
    or-int/2addr v10, v14

    :goto_5
    and-int/lit8 v14, p8, 0x8

    if-eqz v14, :cond_a

    or-int/lit16 v10, v10, 0xc00

    :cond_9
    move/from16 v15, p4

    goto :goto_7

    :cond_a
    and-int/lit16 v15, v9, 0x1c00

    if-nez v15, :cond_9

    move/from16 v15, p4

    invoke-virtual {v7, v15}, La0/q;->f(Z)Z

    move-result v16

    if-eqz v16, :cond_b

    const/16 v16, 0x800

    goto :goto_6

    :cond_b
    const/16 v16, 0x400

    :goto_6
    or-int v10, v10, v16

    :goto_7
    const v16, 0xe000

    and-int v16, v9, v16

    if-nez v16, :cond_d

    invoke-virtual {v7, v8}, La0/q;->g(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_c

    const/16 v16, 0x4000

    goto :goto_8

    :cond_c
    const/16 v16, 0x2000

    :goto_8
    or-int v10, v10, v16

    :cond_d
    const/high16 v16, 0x70000

    and-int v16, v9, v16

    if-nez v16, :cond_f

    invoke-virtual {v7, v1}, La0/q;->e(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_e

    const/high16 v16, 0x20000

    goto :goto_9

    :cond_e
    const/high16 v16, 0x10000

    :goto_9
    or-int v10, v10, v16

    :cond_f
    const v16, 0x5b6db

    and-int v0, v10, v16

    const v2, 0x12492

    if-ne v0, v2, :cond_11

    invoke-virtual {v7}, La0/q;->x()Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_a

    :cond_10
    invoke-virtual {v7}, La0/q;->K()V

    move-object v2, v6

    move-object v10, v7

    move-object v3, v11

    move-object v4, v13

    move v5, v15

    goto/16 :goto_14

    :cond_11
    :goto_a
    invoke-virtual {v7}, La0/q;->M()V

    and-int/lit8 v0, v9, 0x1

    const/4 v2, 0x0

    const/4 v15, 0x0

    if-eqz v0, :cond_14

    invoke-virtual {v7}, La0/q;->w()Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_c

    :cond_12
    invoke-virtual {v7}, La0/q;->K()V

    and-int/lit8 v0, p8, 0x2

    if-eqz v0, :cond_13

    and-int/lit8 v10, v10, -0x71

    :cond_13
    move/from16 v17, p4

    move-object v0, v6

    :goto_b
    move-object v6, v11

    move-object v4, v13

    goto :goto_e

    :cond_14
    :goto_c
    if-eqz v4, :cond_15

    sget-object v0, Lx1/p;->a:Lx1/p;

    goto :goto_d

    :cond_15
    move-object v0, v6

    :goto_d
    and-int/lit8 v4, p8, 0x2

    if-eqz v4, :cond_16

    sget-object v4, LK1/c;->c:LK1/c;

    and-int/lit8 v10, v10, -0x71

    move-object v11, v4

    :cond_16
    if-eqz v12, :cond_17

    move-object v13, v2

    :cond_17
    if-eqz v14, :cond_18

    move-object v6, v11

    move-object v4, v13

    move/from16 v17, v15

    goto :goto_e

    :cond_18
    move/from16 v17, p4

    goto :goto_b

    :goto_e
    invoke-virtual {v7}, La0/q;->q()V

    :try_start_0
    const-string v11, "android.os.SystemProperties"

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    const-string v12, "get"

    const-class v13, Ljava/lang/String;

    filled-new-array {v13}, [Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    const-string v12, "debug.layout.glance"

    filled-new-array {v12}, [Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v2, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v11, "null cannot be cast to non-null type kotlin.String"

    invoke-static {v2, v11}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/String;

    const-string v11, "true"

    invoke-virtual {v2, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_f

    :catch_0
    move v2, v15

    :goto_f
    if-eqz v2, :cond_1b

    const v2, 0x671561f2

    invoke-virtual {v7, v2}, La0/q;->R(I)V

    sget-object v2, La2/d;->c:La2/d;

    invoke-interface {v0, v2}, Lx1/r;->b(Lsb/k;)Z

    move-result v2

    if-eqz v2, :cond_19

    sget-object v2, La2/d;->b:La2/d;

    invoke-interface {v0, v2}, Lx1/r;->b(Lsb/k;)Z

    move-result v2

    if-eqz v2, :cond_19

    move v2, v3

    goto :goto_10

    :cond_19
    move v2, v15

    :goto_10
    if-eqz v2, :cond_1a

    const v2, 0x6715621f

    invoke-virtual {v7, v2}, La0/q;->R(I)V

    new-instance v2, LY1/o;

    invoke-direct {v2, v0, v6, v8, v4}, LY1/o;-><init>(Lx1/r;LK1/c;Li0/a;Ljava/lang/String;)V

    const v3, -0x34df3b8b    # -1.0536053E7f

    invoke-static {v7, v3, v2}, Li0/b;->b(La0/m;ILtb/m;)Li0/a;

    move-result-object v2

    shr-int/lit8 v3, v10, 0xc

    and-int/lit8 v3, v3, 0x70

    or-int/lit8 v3, v3, 0x6

    invoke-virtual {v1, v2, v7, v3}, La2/e;->c(Li0/a;La0/m;I)V

    invoke-virtual {v7, v15}, La0/q;->p(Z)V

    move v5, v15

    goto :goto_11

    :cond_1a
    const v2, 0x671562d6

    invoke-virtual {v7, v2}, La0/q;->R(I)V

    new-instance v2, Lx1/a;

    const v11, 0x7f08021c

    invoke-direct {v2, v11}, Lx1/a;-><init>(I)V

    invoke-static {}, La2/e;->d()I

    move-result v11

    invoke-static {v11}, Ls0/e;->b(I)J

    move-result-wide v11

    const/high16 v13, 0x3f000000    # 0.5f

    invoke-static {v11, v12, v13}, Ls0/b;->a(JF)J

    move-result-wide v11

    new-instance v13, Lf2/i;

    invoke-direct {v13, v11, v12}, Lf2/i;-><init>(J)V

    new-instance v11, Lx1/g;

    new-instance v12, Lx1/v;

    invoke-direct {v12, v13}, Lx1/v;-><init>(Lf2/a;)V

    invoke-direct {v11, v12}, Lx1/g;-><init>(Lx1/v;)V

    new-instance v12, Lx1/d;

    invoke-direct {v12, v2, v5, v11}, Lx1/d;-><init>(Lx1/a;ILx1/g;)V

    invoke-interface {v0, v12}, Lx1/r;->d(Lx1/r;)Lx1/r;

    move-result-object v2

    invoke-static {v2, v3}, LG5/I2;->l(Lx1/r;Z)Lx1/r;

    move-result-object v2

    new-instance v3, LB1/i;

    const/4 v5, 0x4

    invoke-direct {v3, v5, v8, v4}, LB1/i;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    const v5, -0x3aa245fc

    invoke-static {v7, v5, v3}, Li0/b;->b(La0/m;ILtb/m;)Li0/a;

    move-result-object v12

    and-int/lit8 v3, v10, 0x70

    const/16 v5, 0x180

    or-int v14, v5, v3

    const/4 v3, 0x0

    move-object v10, v2

    move-object v11, v6

    move-object v13, v7

    move v5, v15

    move v15, v3

    invoke-static/range {v10 .. v15}, LG5/L3;->a(Lx1/r;LK1/c;Li0/a;La0/m;II)V

    invoke-virtual {v7, v5}, La0/q;->p(Z)V

    :goto_11
    invoke-virtual {v7, v5}, La0/q;->p(Z)V

    :goto_12
    move-object v13, v4

    move-object v14, v6

    move-object v10, v7

    goto :goto_13

    :cond_1b
    move v5, v15

    if-eqz v17, :cond_1c

    const v2, 0x67156569

    invoke-virtual {v7, v2}, La0/q;->R(I)V

    shr-int/lit8 v2, v10, 0xc

    and-int/lit8 v2, v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v8, v7, v2}, Li0/a;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v7, v5}, La0/q;->p(Z)V

    goto :goto_12

    :cond_1c
    const v2, 0x67156597

    invoke-virtual {v7, v2}, La0/q;->R(I)V

    and-int/lit8 v2, v10, 0x7e

    shr-int/lit8 v3, v10, 0x6

    and-int/lit16 v3, v3, 0x380

    or-int v10, v2, v3

    const/4 v11, 0x0

    move-object v2, v0

    move-object v3, v6

    move-object v13, v4

    move-object/from16 v4, p5

    move v12, v5

    move-object v5, v7

    move-object v14, v6

    move v6, v10

    move-object v10, v7

    move v7, v11

    invoke-static/range {v2 .. v7}, LG5/L3;->a(Lx1/r;LK1/c;Li0/a;La0/m;II)V

    invoke-virtual {v10, v12}, La0/q;->p(Z)V

    :goto_13
    move-object v2, v0

    move-object v4, v13

    move-object v3, v14

    move/from16 v5, v17

    :goto_14
    invoke-virtual {v10}, La0/q;->r()La0/i0;

    move-result-object v10

    if-eqz v10, :cond_1d

    new-instance v11, La2/c;

    move-object v0, v11

    move-object/from16 v1, p0

    move-object/from16 v6, p5

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, La2/c;-><init>(La2/e;Lx1/r;LK1/c;Ljava/lang/String;ZLi0/a;II)V

    iput-object v11, v10, La0/i0;->d:Lsb/n;

    :cond_1d
    return-void
.end method

.method public final c(Li0/a;La0/m;I)V
    .locals 6

    check-cast p2, La0/q;

    const v0, 0x55c7d807

    invoke-virtual {p2, v0}, La0/q;->S(I)La0/q;

    and-int/lit8 v0, p3, 0xe

    const/4 v1, 0x2

    if-nez v0, :cond_1

    invoke-virtual {p2, p1}, La0/q;->g(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    or-int/2addr v0, p3

    goto :goto_1

    :cond_1
    move v0, p3

    :goto_1
    and-int/lit8 v2, p3, 0x70

    if-nez v2, :cond_3

    invoke-virtual {p2, p0}, La0/q;->e(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x20

    goto :goto_2

    :cond_2
    const/16 v2, 0x10

    :goto_2
    or-int/2addr v0, v2

    :cond_3
    and-int/lit8 v0, v0, 0x5b

    const/16 v2, 0x12

    if-ne v0, v2, :cond_5

    invoke-virtual {p2}, La0/q;->x()Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {p2}, La0/q;->K()V

    goto :goto_4

    :cond_5
    :goto_3
    sget-object v0, Lx1/p;->a:Lx1/p;

    new-instance v2, Lx1/a;

    const v3, 0x7f08021c

    invoke-direct {v2, v3}, Lx1/a;-><init>(I)V

    invoke-static {}, La2/e;->d()I

    move-result v3

    invoke-static {v3}, Ls0/e;->b(I)J

    move-result-wide v3

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-static {v3, v4, v5}, Ls0/b;->a(JF)J

    move-result-wide v3

    new-instance v5, Lf2/i;

    invoke-direct {v5, v3, v4}, Lf2/i;-><init>(J)V

    new-instance v3, Lx1/g;

    new-instance v4, Lx1/v;

    invoke-direct {v4, v5}, Lx1/v;-><init>(Lf2/a;)V

    invoke-direct {v3, v4}, Lx1/g;-><init>(Lx1/v;)V

    new-instance v4, Lx1/d;

    invoke-direct {v4, v2, v1, v3}, Lx1/d;-><init>(Lx1/a;ILx1/g;)V

    invoke-virtual {v0, v4}, Lx1/p;->d(Lx1/r;)Lx1/r;

    const/4 v0, 0x1

    invoke-static {v4, v0}, LG5/I2;->l(Lx1/r;Z)Lx1/r;

    move-result-object v0

    sget-object v1, LK1/c;->e:LK1/c;

    new-instance v2, LB1/h;

    const/4 v3, 0x7

    invoke-direct {v2, v3, p1}, LB1/h;-><init>(ILjava/lang/Object;)V

    const v3, -0x65976297

    invoke-static {p2, v3, v2}, Li0/b;->b(La0/m;ILtb/m;)Li0/a;

    move-result-object v2

    const/16 v4, 0x180

    const/4 v5, 0x0

    move-object v3, p2

    invoke-static/range {v0 .. v5}, LG5/L3;->a(Lx1/r;LK1/c;Li0/a;La0/m;II)V

    :goto_4
    invoke-virtual {p2}, La0/q;->r()La0/i0;

    move-result-object p2

    if-eqz p2, :cond_6

    new-instance v0, LV/p;

    const/4 v1, 0x5

    invoke-direct {v0, p0, p1, p3, v1}, LV/p;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    iput-object v0, p2, La0/i0;->d:Lsb/n;

    :cond_6
    return-void
.end method
