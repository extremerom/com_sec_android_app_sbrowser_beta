.class public final LB3/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LB3/f;
.implements LC3/a;
.implements LB3/l;


# instance fields
.field public final a:Landroid/graphics/Path;

.field public final b:LA3/a;

.field public final c:LH3/c;

.field public final d:Ljava/lang/String;

.field public final e:Z

.field public final f:Ljava/util/ArrayList;

.field public final g:LC3/f;

.field public final h:LC3/f;

.field public i:LC3/r;

.field public final j:Lz3/t;

.field public k:LC3/e;

.field public l:F

.field public final m:LC3/h;


# direct methods
.method public constructor <init>(Lz3/t;LH3/c;LG3/p;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, LB3/h;->a:Landroid/graphics/Path;

    new-instance v1, LA3/a;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, LA3/a;-><init>(II)V

    iput-object v1, p0, LB3/h;->b:LA3/a;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, LB3/h;->f:Ljava/util/ArrayList;

    iput-object p2, p0, LB3/h;->c:LH3/c;

    iget-object v1, p3, LG3/p;->c:Ljava/lang/String;

    iput-object v1, p0, LB3/h;->d:Ljava/lang/String;

    iget-boolean v1, p3, LG3/p;->f:Z

    iput-boolean v1, p0, LB3/h;->e:Z

    iput-object p1, p0, LB3/h;->j:Lz3/t;

    invoke-virtual {p2}, LH3/c;->l()Lo3/f;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, LH3/c;->l()Lo3/f;

    move-result-object p1

    iget-object p1, p1, Lo3/f;->b:Ljava/lang/Object;

    check-cast p1, LF3/b;

    invoke-virtual {p1}, LF3/b;->f0()LC3/e;

    move-result-object p1

    iput-object p1, p0, LB3/h;->k:LC3/e;

    invoke-virtual {p1, p0}, LC3/e;->a(LC3/a;)V

    iget-object p1, p0, LB3/h;->k:LC3/e;

    invoke-virtual {p2, p1}, LH3/c;->g(LC3/e;)V

    :cond_0
    invoke-virtual {p2}, LH3/c;->m()LA7/c;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance p1, LC3/h;

    invoke-virtual {p2}, LH3/c;->m()LA7/c;

    move-result-object v1

    invoke-direct {p1, p0, p2, v1}, LC3/h;-><init>(LC3/a;LH3/c;LA7/c;)V

    iput-object p1, p0, LB3/h;->m:LC3/h;

    :cond_1
    iget-object p1, p3, LG3/p;->d:LF3/a;

    if-eqz p1, :cond_2

    iget-object v1, p3, LG3/p;->e:LF3/a;

    iget-object p3, p3, LG3/p;->b:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, p3}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    invoke-virtual {p1}, LF3/a;->f0()LC3/e;

    move-result-object p1

    move-object p3, p1

    check-cast p3, LC3/f;

    iput-object p3, p0, LB3/h;->g:LC3/f;

    invoke-virtual {p1, p0}, LC3/e;->a(LC3/a;)V

    invoke-virtual {p2, p1}, LH3/c;->g(LC3/e;)V

    invoke-virtual {v1}, LF3/a;->f0()LC3/e;

    move-result-object p1

    move-object p3, p1

    check-cast p3, LC3/f;

    iput-object p3, p0, LB3/h;->h:LC3/f;

    invoke-virtual {p1, p0}, LC3/e;->a(LC3/a;)V

    invoke-virtual {p2, p1}, LH3/c;->g(LC3/e;)V

    return-void

    :cond_2
    const/4 p1, 0x0

    iput-object p1, p0, LB3/h;->g:LC3/f;

    iput-object p1, p0, LB3/h;->h:LC3/f;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    iget-object p0, p0, LB3/h;->j:Lz3/t;

    invoke-virtual {p0}, Lz3/t;->invalidateSelf()V

    return-void
.end method

.method public final b(Ljava/util/List;Ljava/util/List;)V
    .locals 2

    const/4 p1, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LB3/d;

    instance-of v1, v0, LB3/o;

    if-eqz v1, :cond_0

    iget-object v1, p0, LB3/h;->f:Ljava/util/ArrayList;

    check-cast v0, LB3/o;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final c(LE3/f;ILjava/util/ArrayList;LE3/f;)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p0}, LL3/e;->e(LE3/f;ILjava/util/ArrayList;LE3/f;LB3/l;)V

    return-void
.end method

.method public final d(Landroid/graphics/ColorFilter;Lo3/e;)V
    .locals 3

    sget-object v0, Lz3/w;->a:Landroid/graphics/PointF;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object p0, p0, LB3/h;->g:LC3/f;

    invoke-virtual {p0, p2}, LC3/e;->k(Lo3/e;)V

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-ne p1, v0, :cond_1

    iget-object p0, p0, LB3/h;->h:LC3/f;

    invoke-virtual {p0, p2}, LC3/e;->k(Lo3/e;)V

    goto/16 :goto_0

    :cond_1
    sget-object v0, Lz3/w;->F:Landroid/graphics/ColorFilter;

    const/4 v1, 0x0

    iget-object v2, p0, LB3/h;->c:LH3/c;

    if-ne p1, v0, :cond_3

    iget-object p1, p0, LB3/h;->i:LC3/r;

    if-eqz p1, :cond_2

    invoke-virtual {v2, p1}, LH3/c;->p(LC3/e;)V

    :cond_2
    new-instance p1, LC3/r;

    invoke-direct {p1, p2, v1}, LC3/r;-><init>(Lo3/e;Ljava/lang/Object;)V

    iput-object p1, p0, LB3/h;->i:LC3/r;

    invoke-virtual {p1, p0}, LC3/e;->a(LC3/a;)V

    iget-object p0, p0, LB3/h;->i:LC3/r;

    invoke-virtual {v2, p0}, LH3/c;->g(LC3/e;)V

    goto :goto_0

    :cond_3
    sget-object v0, Lz3/w;->e:Ljava/lang/Float;

    if-ne p1, v0, :cond_5

    iget-object p1, p0, LB3/h;->k:LC3/e;

    if-eqz p1, :cond_4

    invoke-virtual {p1, p2}, LC3/e;->k(Lo3/e;)V

    goto :goto_0

    :cond_4
    new-instance p1, LC3/r;

    invoke-direct {p1, p2, v1}, LC3/r;-><init>(Lo3/e;Ljava/lang/Object;)V

    iput-object p1, p0, LB3/h;->k:LC3/e;

    invoke-virtual {p1, p0}, LC3/e;->a(LC3/a;)V

    iget-object p0, p0, LB3/h;->k:LC3/e;

    invoke-virtual {v2, p0}, LH3/c;->g(LC3/e;)V

    goto :goto_0

    :cond_5
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object p0, p0, LB3/h;->m:LC3/h;

    if-ne p1, v0, :cond_6

    if-eqz p0, :cond_6

    iget-object p0, p0, LC3/h;->b:LC3/f;

    invoke-virtual {p0, p2}, LC3/e;->k(Lo3/e;)V

    goto :goto_0

    :cond_6
    sget-object v0, Lz3/w;->B:Ljava/lang/Float;

    if-ne p1, v0, :cond_7

    if-eqz p0, :cond_7

    invoke-virtual {p0, p2}, LC3/h;->c(Lo3/e;)V

    goto :goto_0

    :cond_7
    sget-object v0, Lz3/w;->C:Ljava/lang/Float;

    if-ne p1, v0, :cond_8

    if-eqz p0, :cond_8

    iget-object p0, p0, LC3/h;->d:LC3/i;

    invoke-virtual {p0, p2}, LC3/e;->k(Lo3/e;)V

    goto :goto_0

    :cond_8
    sget-object v0, Lz3/w;->D:Ljava/lang/Float;

    if-ne p1, v0, :cond_9

    if-eqz p0, :cond_9

    iget-object p0, p0, LC3/h;->e:LC3/i;

    invoke-virtual {p0, p2}, LC3/e;->k(Lo3/e;)V

    goto :goto_0

    :cond_9
    sget-object v0, Lz3/w;->E:Ljava/lang/Float;

    if-ne p1, v0, :cond_a

    if-eqz p0, :cond_a

    iget-object p0, p0, LC3/h;->f:LC3/i;

    invoke-virtual {p0, p2}, LC3/e;->k(Lo3/e;)V

    :cond_a
    :goto_0
    return-void
.end method

.method public final f(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 4

    iget-object p3, p0, LB3/h;->a:Landroid/graphics/Path;

    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, LB3/h;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LB3/o;

    invoke-interface {v2}, LB3/o;->e()Landroid/graphics/Path;

    move-result-object v2

    invoke-virtual {p3, v2, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p3, p1, v0}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    iget p0, p1, Landroid/graphics/RectF;->left:F

    const/high16 p2, 0x3f800000    # 1.0f

    sub-float/2addr p0, p2

    iget p3, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr p3, p2

    iget v0, p1, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, p2

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v1, p2

    invoke-virtual {p1, p0, p3, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LB3/h;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final h(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 6

    iget-boolean v0, p0, LB3/h;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, LB3/h;->g:LC3/f;

    invoke-virtual {v0}, LC3/e;->b()LM3/a;

    move-result-object v1

    invoke-virtual {v0}, LC3/e;->d()F

    move-result v2

    invoke-virtual {v0, v1, v2}, LC3/f;->l(LM3/a;F)I

    move-result v0

    int-to-float p3, p3

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr p3, v1

    iget-object v2, p0, LB3/h;->h:LC3/f;

    invoke-virtual {v2}, LC3/e;->f()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr p3, v2

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr p3, v2

    mul-float/2addr p3, v1

    float-to-int p3, p3

    sget-object v1, LL3/e;->a:Landroid/graphics/PointF;

    const/16 v1, 0xff

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    const/4 v1, 0x0

    invoke-static {v1, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    shl-int/lit8 p3, p3, 0x18

    const v2, 0xffffff

    and-int/2addr v0, v2

    or-int/2addr p3, v0

    iget-object v0, p0, LB3/h;->b:LA3/a;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p3, p0, LB3/h;->i:LC3/r;

    if-eqz p3, :cond_1

    invoke-virtual {p3}, LC3/r;->f()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/ColorFilter;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_1
    iget-object p3, p0, LB3/h;->k:LC3/e;

    if-eqz p3, :cond_5

    invoke-virtual {p3}, LC3/e;->f()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    const/4 v2, 0x0

    cmpl-float v2, p3, v2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    goto :goto_1

    :cond_2
    iget v2, p0, LB3/h;->l:F

    cmpl-float v2, p3, v2

    if-eqz v2, :cond_4

    iget-object v2, p0, LB3/h;->c:LH3/c;

    iget v3, v2, LH3/c;->A:F

    cmpl-float v3, v3, p3

    if-nez v3, :cond_3

    iget-object v2, v2, LH3/c;->B:Landroid/graphics/BlurMaskFilter;

    goto :goto_0

    :cond_3
    new-instance v3, Landroid/graphics/BlurMaskFilter;

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, p3, v4

    sget-object v5, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v3, v4, v5}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    iput-object v3, v2, LH3/c;->B:Landroid/graphics/BlurMaskFilter;

    iput p3, v2, LH3/c;->A:F

    move-object v2, v3

    :goto_0
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    :cond_4
    :goto_1
    iput p3, p0, LB3/h;->l:F

    :cond_5
    iget-object p3, p0, LB3/h;->m:LC3/h;

    if-eqz p3, :cond_6

    invoke-virtual {p3, v0}, LC3/h;->b(LA3/a;)V

    :cond_6
    iget-object p3, p0, LB3/h;->a:Landroid/graphics/Path;

    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    :goto_2
    iget-object v2, p0, LB3/h;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_7

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LB3/o;

    invoke-interface {v2}, LB3/o;->e()Landroid/graphics/Path;

    move-result-object v2

    invoke-virtual {p3, v2, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    invoke-virtual {p1, p3, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-static {}, LG5/b3;->b()V

    return-void
.end method
