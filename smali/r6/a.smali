.class public final Lr6/a;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# instance fields
.field public final a:LF6/m;

.field public final b:Landroid/graphics/Paint;

.field public final c:Landroid/graphics/Path;

.field public final d:Landroid/graphics/Rect;

.field public final e:Landroid/graphics/RectF;

.field public final f:Landroid/graphics/RectF;

.field public final g:LZ2/f;

.field public h:F

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:Z

.field public o:LF6/k;

.field public p:Landroid/content/res/ColorStateList;


# direct methods
.method public constructor <init>(LF6/k;)V
    .locals 2

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    sget-object v0, LF6/l;->a:LF6/m;

    iput-object v0, p0, Lr6/a;->a:LF6/m;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lr6/a;->c:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lr6/a;->d:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lr6/a;->e:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lr6/a;->f:Landroid/graphics/RectF;

    new-instance v0, LZ2/f;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, LZ2/f;-><init>(Landroid/graphics/drawable/Drawable;I)V

    iput-object v0, p0, Lr6/a;->g:LZ2/f;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lr6/a;->n:Z

    iput-object p1, p0, Lr6/a;->o:LF6/k;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lr6/a;->b:Landroid/graphics/Paint;

    sget-object p0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 23

    move-object/from16 v0, p0

    const/high16 v1, 0x3f000000    # 0.5f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    iget-boolean v4, v0, Lr6/a;->n:Z

    iget-object v5, v0, Lr6/a;->b:Landroid/graphics/Paint;

    iget-object v6, v0, Lr6/a;->d:Landroid/graphics/Rect;

    if-eqz v4, :cond_0

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    iget v4, v0, Lr6/a;->h:F

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v4, v7

    iget v7, v0, Lr6/a;->i:I

    iget v8, v0, Lr6/a;->m:I

    invoke-static {v7, v8}, LX0/a;->c(II)I

    move-result v9

    iget v7, v0, Lr6/a;->j:I

    iget v8, v0, Lr6/a;->m:I

    invoke-static {v7, v8}, LX0/a;->c(II)I

    move-result v10

    iget v7, v0, Lr6/a;->j:I

    invoke-static {v7, v3}, LX0/a;->e(II)I

    move-result v7

    iget v8, v0, Lr6/a;->m:I

    invoke-static {v7, v8}, LX0/a;->c(II)I

    move-result v11

    iget v7, v0, Lr6/a;->l:I

    invoke-static {v7, v3}, LX0/a;->e(II)I

    move-result v7

    iget v8, v0, Lr6/a;->m:I

    invoke-static {v7, v8}, LX0/a;->c(II)I

    move-result v12

    iget v7, v0, Lr6/a;->l:I

    iget v8, v0, Lr6/a;->m:I

    invoke-static {v7, v8}, LX0/a;->c(II)I

    move-result v13

    iget v7, v0, Lr6/a;->k:I

    iget v8, v0, Lr6/a;->m:I

    invoke-static {v7, v8}, LX0/a;->c(II)I

    move-result v14

    filled-new-array/range {v9 .. v14}, [I

    move-result-object v20

    sub-float v7, v2, v4

    const/4 v8, 0x6

    new-array v8, v8, [F

    const/4 v9, 0x0

    aput v9, v8, v3

    const/4 v9, 0x1

    aput v4, v8, v9

    const/4 v4, 0x2

    aput v1, v8, v4

    const/4 v4, 0x3

    aput v1, v8, v4

    const/4 v1, 0x4

    aput v7, v8, v1

    const/4 v1, 0x5

    aput v2, v8, v1

    new-instance v1, Landroid/graphics/LinearGradient;

    iget v2, v6, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v4, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    sget-object v22, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/16 v16, 0x0

    const/16 v18, 0x0

    move-object v15, v1

    move/from16 v17, v2

    move/from16 v19, v4

    move-object/from16 v21, v8

    invoke-direct/range {v15 .. v22}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iput-boolean v3, v0, Lr6/a;->n:Z

    :cond_0
    invoke-virtual {v5}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    iget-object v3, v0, Lr6/a;->e:Landroid/graphics/RectF;

    invoke-virtual {v3, v6}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object v4, v0, Lr6/a;->o:LF6/k;

    iget-object v4, v4, LF6/k;->e:LF6/c;

    iget-object v6, v0, Lr6/a;->f:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    invoke-interface {v4, v6}, LF6/c;->a(Landroid/graphics/RectF;)F

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v7

    div-float/2addr v7, v2

    invoke-static {v4, v7}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iget-object v4, v0, Lr6/a;->o:LF6/k;

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    invoke-virtual {v4, v6}, LF6/k;->d(Landroid/graphics/RectF;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v3, v1, v1}, Landroid/graphics/RectF;->inset(FF)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v2, v2, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method public final getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 0

    iget-object p0, p0, Lr6/a;->g:LZ2/f;

    return-object p0
.end method

.method public final getOpacity()I
    .locals 1

    iget p0, p0, Lr6/a;->h:F

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-lez p0, :cond_0

    const/4 p0, -0x3

    goto :goto_0

    :cond_0
    const/4 p0, -0x2

    :goto_0
    return p0
.end method

.method public final getOutline(Landroid/graphics/Outline;)V
    .locals 7

    iget-object v0, p0, Lr6/a;->o:LF6/k;

    iget-object v1, p0, Lr6/a;->f:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, LF6/k;->d(Landroid/graphics/RectF;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lr6/a;->o:LF6/k;

    iget-object v0, v0, LF6/k;->e:LF6/c;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    invoke-interface {v0, v1}, LF6/c;->a(Landroid/graphics/RectF;)F

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p1, p0, v0}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    return-void

    :cond_0
    iget-object v0, p0, Lr6/a;->d:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    iget-object v4, p0, Lr6/a;->e:Landroid/graphics/RectF;

    invoke-virtual {v4, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lr6/a;->o:LF6/k;

    iget-object v0, p0, Lr6/a;->c:Landroid/graphics/Path;

    iget-object v1, p0, Lr6/a;->a:LF6/m;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, LF6/m;->a(LF6/k;FLandroid/graphics/RectF;LB3/c;Landroid/graphics/Path;)V

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt p0, v1, :cond_1

    invoke-static {p1, v0}, Lo6/b;->a(Landroid/graphics/Outline;Landroid/graphics/Path;)V

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-static {p1, v0}, Lo6/a;->a(Landroid/graphics/Outline;Landroid/graphics/Path;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method public final getPadding(Landroid/graphics/Rect;)Z
    .locals 3

    iget-object v0, p0, Lr6/a;->o:LF6/k;

    iget-object v1, p0, Lr6/a;->f:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, LF6/k;->d(Landroid/graphics/RectF;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Lr6/a;->h:F

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    invoke-virtual {p1, p0, p0, p0, p0}, Landroid/graphics/Rect;->set(IIII)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final isStateful()Z
    .locals 1

    iget-object v0, p0, Lr6/a;->p:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lr6/a;->n:Z

    return-void
.end method

.method public final onStateChange([I)Z
    .locals 2

    iget-object v0, p0, Lr6/a;->p:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    iget v1, p0, Lr6/a;->m:I

    invoke-virtual {v0, p1, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    iget v0, p0, Lr6/a;->m:I

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lr6/a;->n:Z

    iput p1, p0, Lr6/a;->m:I

    :cond_0
    iget-boolean p1, p0, Lr6/a;->n:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_1
    iget-boolean p0, p0, Lr6/a;->n:Z

    return p0
.end method

.method public final setAlpha(I)V
    .locals 1

    iget-object v0, p0, Lr6/a;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lr6/a;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
