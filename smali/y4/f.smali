.class public final Ly4/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/graphics/Matrix;

.field public final b:Landroid/graphics/Matrix;

.field public final c:Ly4/h;

.field public final d:Landroid/graphics/Matrix;

.field public final e:[F


# direct methods
.method public constructor <init>(Ly4/h;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Ly4/f;->a:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Ly4/f;->b:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Ly4/f;->d:Landroid/graphics/Matrix;

    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Ly4/f;->e:[F

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Ly4/f;->c:Ly4/h;

    return-void
.end method


# virtual methods
.method public final a(FF)Ly4/b;
    .locals 3

    iget-object v0, p0, Ly4/f;->e:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    invoke-virtual {p0, v0}, Ly4/f;->d([F)V

    aget p0, v0, v1

    float-to-double v1, p0

    aget p0, v0, p1

    float-to-double p0, p0

    sget-object p2, Ly4/b;->d:Ly4/e;

    invoke-virtual {p2}, Ly4/e;->b()Ly4/d;

    move-result-object p2

    check-cast p2, Ly4/b;

    iput-wide v1, p2, Ly4/b;->b:D

    iput-wide p0, p2, Ly4/b;->c:D

    return-object p2
.end method

.method public final b(FFLy4/b;)V
    .locals 3

    iget-object v0, p0, Ly4/f;->e:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    invoke-virtual {p0, v0}, Ly4/f;->c([F)V

    aget p0, v0, v1

    float-to-double v1, p0

    iput-wide v1, p3, Ly4/b;->b:D

    aget p0, v0, p1

    float-to-double p0, p0

    iput-wide p0, p3, Ly4/b;->c:D

    return-void
.end method

.method public final c([F)V
    .locals 2

    iget-object v0, p0, Ly4/f;->d:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v1, p0, Ly4/f;->b:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget-object v1, p0, Ly4/f;->c:Ly4/h;

    iget-object v1, v1, Ly4/h;->a:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget-object p0, p0, Ly4/f;->a:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapPoints([F)V

    return-void
.end method

.method public final d([F)V
    .locals 1

    iget-object v0, p0, Ly4/f;->a:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget-object v0, p0, Ly4/f;->c:Ly4/h;

    iget-object v0, v0, Ly4/h;->a:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget-object p0, p0, Ly4/f;->b:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1}, Landroid/graphics/Matrix;->mapPoints([F)V

    return-void
.end method

.method public final e()V
    .locals 3

    iget-object v0, p0, Ly4/f;->b:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object p0, p0, Ly4/f;->c:Ly4/h;

    iget-object v1, p0, Ly4/h;->b:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget p0, p0, Ly4/h;->d:F

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float v1, p0, v1

    sub-float/2addr p0, v1

    invoke-virtual {v0, v2, p0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method public final f(FFFF)V
    .locals 2

    iget-object v0, p0, Ly4/f;->c:Ly4/h;

    iget-object v1, v0, Ly4/h;->b:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v1, p2

    iget-object p2, v0, Ly4/h;->b:Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p2

    div-float/2addr p2, p3

    invoke-static {v1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    move v1, v0

    :cond_0
    invoke-static {p2}, Ljava/lang/Float;->isInfinite(F)Z

    move-result p3

    if-eqz p3, :cond_1

    move p2, v0

    :cond_1
    iget-object p0, p0, Ly4/f;->a:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Landroid/graphics/Matrix;->reset()V

    neg-float p1, p1

    neg-float p3, p4

    invoke-virtual {p0, p1, p3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    neg-float p1, p2

    invoke-virtual {p0, v1, p1}, Landroid/graphics/Matrix;->postScale(FF)Z

    return-void
.end method
