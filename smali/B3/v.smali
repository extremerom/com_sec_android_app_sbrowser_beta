.class public final LB3/v;
.super LB3/b;
.source "SourceFile"


# instance fields
.field public final r:LH3/c;

.field public final s:Ljava/lang/String;

.field public final t:Z

.field public final u:LC3/f;

.field public v:LC3/r;


# direct methods
.method public constructor <init>(Lz3/t;LH3/c;LG3/v;)V
    .locals 13

    move-object v10, p0

    move-object v11, p2

    move-object/from16 v12, p3

    iget-object v0, v12, LG3/v;->g:LG3/t;

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
    iget-object v0, v12, LG3/v;->h:LG3/u;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, LG3/s;->b:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v4, v0

    if-eq v0, v2, :cond_4

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v0, 0x0

    :goto_2
    move-object v4, v0

    goto :goto_3

    :cond_2
    sget-object v0, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    goto :goto_2

    :cond_3
    sget-object v0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    goto :goto_2

    :cond_4
    sget-object v0, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    goto :goto_2

    :goto_3
    iget-object v6, v12, LG3/v;->e:LF3/a;

    iget-object v8, v12, LG3/v;->c:Ljava/util/ArrayList;

    iget-object v9, v12, LG3/v;->b:LF3/b;

    iget v5, v12, LG3/v;->i:F

    iget-object v7, v12, LG3/v;->f:LF3/b;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v9}, LB3/b;-><init>(Lz3/t;LH3/c;Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;FLF3/a;LF3/b;Ljava/util/ArrayList;LF3/b;)V

    iput-object v11, v10, LB3/v;->r:LH3/c;

    iget-object v0, v12, LG3/v;->a:Ljava/lang/String;

    iput-object v0, v10, LB3/v;->s:Ljava/lang/String;

    iget-boolean v0, v12, LG3/v;->j:Z

    iput-boolean v0, v10, LB3/v;->t:Z

    iget-object v0, v12, LG3/v;->d:LF3/a;

    invoke-virtual {v0}, LF3/a;->f0()LC3/e;

    move-result-object v0

    move-object v1, v0

    check-cast v1, LC3/f;

    iput-object v1, v10, LB3/v;->u:LC3/f;

    invoke-virtual {v0, p0}, LC3/e;->a(LC3/a;)V

    invoke-virtual {p2, v0}, LH3/c;->g(LC3/e;)V

    return-void
.end method


# virtual methods
.method public final d(Landroid/graphics/ColorFilter;Lo3/e;)V
    .locals 3

    invoke-super {p0, p1, p2}, LB3/b;->d(Landroid/graphics/ColorFilter;Lo3/e;)V

    sget-object v0, Lz3/w;->a:Landroid/graphics/PointF;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, LB3/v;->u:LC3/f;

    if-ne p1, v0, :cond_0

    invoke-virtual {v1, p2}, LC3/e;->k(Lo3/e;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lz3/w;->F:Landroid/graphics/ColorFilter;

    if-ne p1, v0, :cond_2

    iget-object p1, p0, LB3/v;->v:LC3/r;

    iget-object v0, p0, LB3/v;->r:LH3/c;

    if-eqz p1, :cond_1

    invoke-virtual {v0, p1}, LH3/c;->p(LC3/e;)V

    :cond_1
    new-instance p1, LC3/r;

    const/4 v2, 0x0

    invoke-direct {p1, p2, v2}, LC3/r;-><init>(Lo3/e;Ljava/lang/Object;)V

    iput-object p1, p0, LB3/v;->v:LC3/r;

    invoke-virtual {p1, p0}, LC3/e;->a(LC3/a;)V

    invoke-virtual {v0, v1}, LH3/c;->g(LC3/e;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LB3/v;->s:Ljava/lang/String;

    return-object p0
.end method

.method public final h(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 3

    iget-boolean v0, p0, LB3/v;->t:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, LB3/v;->u:LC3/f;

    invoke-virtual {v0}, LC3/e;->b()LM3/a;

    move-result-object v1

    invoke-virtual {v0}, LC3/e;->d()F

    move-result v2

    invoke-virtual {v0, v1, v2}, LC3/f;->l(LM3/a;F)I

    move-result v0

    iget-object v1, p0, LB3/b;->i:LA3/a;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, LB3/v;->v:LC3/r;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, LC3/r;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/ColorFilter;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_1
    invoke-super {p0, p1, p2, p3}, LB3/b;->h(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    return-void
.end method
