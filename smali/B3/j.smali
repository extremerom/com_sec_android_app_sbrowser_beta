.class public final LB3/j;
.super LB3/b;
.source "SourceFile"


# instance fields
.field public final A:LC3/j;

.field public B:LC3/r;

.field public final r:Ljava/lang/String;

.field public final s:Z

.field public final t:LN/k;

.field public final u:LN/k;

.field public final v:Landroid/graphics/RectF;

.field public final w:LG3/f;

.field public final x:I

.field public final y:LC3/j;

.field public final z:LC3/j;


# direct methods
.method public constructor <init>(Lz3/t;LH3/c;LG3/e;)V
    .locals 14

    move-object v10, p0

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    iget-object v0, v12, LG3/e;->h:LG3/t;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, LG3/s;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_0

    sget-object v0, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    :goto_0
    move-object v3, v0

    goto :goto_1

    :cond_0
    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    goto :goto_0

    :cond_1
    sget-object v0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    goto :goto_0

    :goto_1
    iget-object v0, v12, LG3/e;->i:LG3/u;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, LG3/s;->b:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v4, v0

    const/4 v13, 0x0

    if-eq v0, v2, :cond_4

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    move-object v4, v13

    goto :goto_3

    :cond_2
    sget-object v0, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    :goto_2
    move-object v4, v0

    goto :goto_3

    :cond_3
    sget-object v0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    goto :goto_2

    :cond_4
    sget-object v0, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    goto :goto_2

    :goto_3
    iget-object v6, v12, LG3/e;->d:LF3/a;

    iget-object v8, v12, LG3/e;->k:Ljava/util/ArrayList;

    iget-object v9, v12, LG3/e;->l:LF3/b;

    iget v5, v12, LG3/e;->j:F

    iget-object v7, v12, LG3/e;->g:LF3/b;

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {v0 .. v9}, LB3/b;-><init>(Lz3/t;LH3/c;Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;FLF3/a;LF3/b;Ljava/util/ArrayList;LF3/b;)V

    new-instance v0, LN/k;

    invoke-direct {v0, v13}, LN/k;-><init>(Ljava/lang/Object;)V

    iput-object v0, v10, LB3/j;->t:LN/k;

    new-instance v0, LN/k;

    invoke-direct {v0, v13}, LN/k;-><init>(Ljava/lang/Object;)V

    iput-object v0, v10, LB3/j;->u:LN/k;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, v10, LB3/j;->v:Landroid/graphics/RectF;

    iget-object v0, v12, LG3/e;->a:Ljava/lang/String;

    iput-object v0, v10, LB3/j;->r:Ljava/lang/String;

    iget-object v0, v12, LG3/e;->b:LG3/f;

    iput-object v0, v10, LB3/j;->w:LG3/f;

    iget-boolean v0, v12, LG3/e;->m:Z

    iput-boolean v0, v10, LB3/j;->s:Z

    move-object v0, p1

    iget-object v0, v0, Lz3/t;->a:Lz3/g;

    invoke-virtual {v0}, Lz3/g;->b()F

    move-result v0

    const/high16 v1, 0x42000000    # 32.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, v10, LB3/j;->x:I

    iget-object v0, v12, LG3/e;->c:LF3/a;

    invoke-virtual {v0}, LF3/a;->f0()LC3/e;

    move-result-object v0

    move-object v1, v0

    check-cast v1, LC3/j;

    iput-object v1, v10, LB3/j;->y:LC3/j;

    invoke-virtual {v0, p0}, LC3/e;->a(LC3/a;)V

    invoke-virtual {v11, v0}, LH3/c;->g(LC3/e;)V

    iget-object v0, v12, LG3/e;->e:LF3/a;

    invoke-virtual {v0}, LF3/a;->f0()LC3/e;

    move-result-object v0

    move-object v1, v0

    check-cast v1, LC3/j;

    iput-object v1, v10, LB3/j;->z:LC3/j;

    invoke-virtual {v0, p0}, LC3/e;->a(LC3/a;)V

    invoke-virtual {v11, v0}, LH3/c;->g(LC3/e;)V

    iget-object v0, v12, LG3/e;->f:LF3/a;

    invoke-virtual {v0}, LF3/a;->f0()LC3/e;

    move-result-object v0

    move-object v1, v0

    check-cast v1, LC3/j;

    iput-object v1, v10, LB3/j;->A:LC3/j;

    invoke-virtual {v0, p0}, LC3/e;->a(LC3/a;)V

    invoke-virtual {v11, v0}, LH3/c;->g(LC3/e;)V

    return-void
.end method


# virtual methods
.method public final d(Landroid/graphics/ColorFilter;Lo3/e;)V
    .locals 2

    invoke-super {p0, p1, p2}, LB3/b;->d(Landroid/graphics/ColorFilter;Lo3/e;)V

    sget-object v0, Lz3/w;->G:[Ljava/lang/Integer;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, LB3/j;->B:LC3/r;

    iget-object v0, p0, LB3/b;->f:LH3/c;

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, LH3/c;->p(LC3/e;)V

    :cond_0
    new-instance p1, LC3/r;

    const/4 v1, 0x0

    invoke-direct {p1, p2, v1}, LC3/r;-><init>(Lo3/e;Ljava/lang/Object;)V

    iput-object p1, p0, LB3/j;->B:LC3/r;

    invoke-virtual {p1, p0}, LC3/e;->a(LC3/a;)V

    iget-object p0, p0, LB3/j;->B:LC3/r;

    invoke-virtual {v0, p0}, LH3/c;->g(LC3/e;)V

    :cond_1
    return-void
.end method

.method public final g([I)[I
    .locals 3

    iget-object p0, p0, LB3/j;->B:LC3/r;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, LC3/r;->f()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Integer;

    array-length v0, p1

    array-length v1, p0

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    :goto_0
    array-length v0, p1

    if-ge v2, v0, :cond_1

    aget-object v0, p0, v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    array-length p1, p0

    new-array p1, p1, [I

    :goto_1
    array-length v0, p0

    if-ge v2, v0, :cond_1

    aget-object v0, p0, v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-object p1
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LB3/j;->r:Ljava/lang/String;

    return-object p0
.end method

.method public final h(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-boolean v2, v0, LB3/j;->s:Z

    if-eqz v2, :cond_0

    return-void

    :cond_0
    iget-object v2, v0, LB3/j;->v:Landroid/graphics/RectF;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, LB3/b;->f(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    sget-object v2, LG3/f;->LINEAR:LG3/f;

    iget-object v3, v0, LB3/j;->w:LG3/f;

    iget-object v4, v0, LB3/j;->y:LC3/j;

    iget-object v5, v0, LB3/j;->A:LC3/j;

    iget-object v6, v0, LB3/j;->z:LC3/j;

    if-ne v3, v2, :cond_2

    invoke-virtual/range {p0 .. p0}, LB3/j;->i()I

    move-result v2

    int-to-long v2, v2

    iget-object v7, v0, LB3/j;->t:LN/k;

    invoke-virtual {v7, v2, v3}, LN/k;->b(J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/LinearGradient;

    if-eqz v8, :cond_1

    goto/16 :goto_0

    :cond_1
    invoke-virtual {v6}, LC3/e;->f()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/PointF;

    invoke-virtual {v5}, LC3/e;->f()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/PointF;

    invoke-virtual {v4}, LC3/e;->f()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LG3/c;

    iget-object v8, v4, LG3/c;->b:[I

    invoke-virtual {v0, v8}, LB3/j;->g([I)[I

    move-result-object v14

    iget v10, v6, Landroid/graphics/PointF;->x:F

    iget v11, v6, Landroid/graphics/PointF;->y:F

    iget v12, v5, Landroid/graphics/PointF;->x:F

    iget v13, v5, Landroid/graphics/PointF;->y:F

    new-instance v8, Landroid/graphics/LinearGradient;

    sget-object v16, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    iget-object v15, v4, LG3/c;->a:[F

    move-object v9, v8

    invoke-direct/range {v9 .. v16}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v7, v2, v3, v8}, LN/k;->e(JLjava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-virtual/range {p0 .. p0}, LB3/j;->i()I

    move-result v2

    int-to-long v2, v2

    iget-object v7, v0, LB3/j;->u:LN/k;

    invoke-virtual {v7, v2, v3}, LN/k;->b(J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/RadialGradient;

    if-eqz v8, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v6}, LC3/e;->f()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/PointF;

    invoke-virtual {v5}, LC3/e;->f()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/PointF;

    invoke-virtual {v4}, LC3/e;->f()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LG3/c;

    iget-object v8, v4, LG3/c;->b:[I

    invoke-virtual {v0, v8}, LB3/j;->g([I)[I

    move-result-object v13

    iget v10, v6, Landroid/graphics/PointF;->x:F

    iget v11, v6, Landroid/graphics/PointF;->y:F

    iget v6, v5, Landroid/graphics/PointF;->x:F

    iget v5, v5, Landroid/graphics/PointF;->y:F

    sub-float/2addr v6, v10

    float-to-double v8, v6

    sub-float/2addr v5, v11

    float-to-double v5, v5

    invoke-static {v8, v9, v5, v6}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v5

    double-to-float v12, v5

    new-instance v5, Landroid/graphics/RadialGradient;

    sget-object v15, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    iget-object v14, v4, LG3/c;->a:[F

    move-object v9, v5

    invoke-direct/range {v9 .. v15}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v7, v2, v3, v5}, LN/k;->e(JLjava/lang/Object;)V

    move-object v8, v5

    :goto_0
    invoke-virtual {v8, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object v2, v0, LB3/b;->i:LA3/a;

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-super/range {p0 .. p3}, LB3/b;->h(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    return-void
.end method

.method public final i()I
    .locals 3

    iget-object v0, p0, LB3/j;->z:LC3/j;

    iget v0, v0, LC3/e;->d:F

    iget v1, p0, LB3/j;->x:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-object v2, p0, LB3/j;->A:LC3/j;

    iget v2, v2, LC3/e;->d:F

    mul-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget-object p0, p0, LB3/j;->y:LC3/j;

    iget p0, p0, LC3/e;->d:F

    mul-float/2addr p0, v1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    if-eqz v0, :cond_0

    const/16 v1, 0x20f

    mul-int/2addr v1, v0

    goto :goto_0

    :cond_0
    const/16 v1, 0x11

    :goto_0
    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x1f

    mul-int/2addr v1, v2

    :cond_1
    if-eqz p0, :cond_2

    mul-int/lit8 v1, v1, 0x1f

    mul-int/2addr v1, p0

    :cond_2
    return v1
.end method
