.class public Lcom/github/chrisbanes/photoview/PhotoView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "SourceFile"


# instance fields
.field public final a:Ln4/n;

.field public b:Landroid/widget/ImageView$ScaleType;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Ln4/n;

    invoke-direct {p1, p0}, Ln4/n;-><init>(Lcom/github/chrisbanes/photoview/PhotoView;)V

    iput-object p1, p0, Lcom/github/chrisbanes/photoview/PhotoView;->a:Ln4/n;

    sget-object p1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object p1, p0, Lcom/github/chrisbanes/photoview/PhotoView;->b:Landroid/widget/ImageView$ScaleType;

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/github/chrisbanes/photoview/PhotoView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/github/chrisbanes/photoview/PhotoView;->b:Landroid/widget/ImageView$ScaleType;

    :cond_0
    return-void
.end method


# virtual methods
.method public getAttacher()Ln4/n;
    .locals 0

    iget-object p0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->a:Ln4/n;

    return-object p0
.end method

.method public getDisplayRect()Landroid/graphics/RectF;
    .locals 4

    iget-object p0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->a:Ln4/n;

    invoke-virtual {p0}, Ln4/n;->b()Z

    invoke-virtual {p0}, Ln4/n;->c()Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Ln4/n;->h:Lcom/github/chrisbanes/photoview/PhotoView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Ln4/n;->n:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v3, v2, v1}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {v0, p0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getImageMatrix()Landroid/graphics/Matrix;
    .locals 0

    iget-object p0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->a:Ln4/n;

    iget-object p0, p0, Ln4/n;->l:Landroid/graphics/Matrix;

    return-object p0
.end method

.method public getMaximumScale()F
    .locals 0

    iget-object p0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->a:Ln4/n;

    iget p0, p0, Ln4/n;->e:F

    return p0
.end method

.method public getMediumScale()F
    .locals 0

    iget-object p0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->a:Ln4/n;

    iget p0, p0, Ln4/n;->d:F

    return p0
.end method

.method public getMinimumScale()F
    .locals 0

    iget-object p0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->a:Ln4/n;

    iget p0, p0, Ln4/n;->c:F

    return p0
.end method

.method public getScale()F
    .locals 0

    iget-object p0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->a:Ln4/n;

    invoke-virtual {p0}, Ln4/n;->d()F

    move-result p0

    return p0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 0

    iget-object p0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->a:Ln4/n;

    iget-object p0, p0, Ln4/n;->v:Landroid/widget/ImageView$ScaleType;

    return-object p0
.end method

.method public setAllowParentInterceptOnEdge(Z)V
    .locals 0

    iget-object p0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->a:Ln4/n;

    iput-boolean p1, p0, Ln4/n;->f:Z

    return-void
.end method

.method public final setFrame(IIII)Z
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->setFrame(IIII)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->a:Ln4/n;

    invoke-virtual {p0}, Ln4/n;->f()V

    :cond_0
    return p1
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->a:Ln4/n;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ln4/n;->f()V

    :cond_0
    return-void
.end method

.method public setImageResource(I)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    iget-object p0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->a:Ln4/n;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ln4/n;->f()V

    :cond_0
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageURI(Landroid/net/Uri;)V

    iget-object p0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->a:Ln4/n;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ln4/n;->f()V

    :cond_0
    return-void
.end method

.method public setMaximumScale(F)V
    .locals 2

    iget-object p0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->a:Ln4/n;

    iget v0, p0, Ln4/n;->c:F

    iget v1, p0, Ln4/n;->d:F

    invoke-static {v0, v1, p1}, Ln5/e;->b(FFF)V

    iput p1, p0, Ln4/n;->e:F

    return-void
.end method

.method public setMediumScale(F)V
    .locals 2

    iget-object p0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->a:Ln4/n;

    iget v0, p0, Ln4/n;->c:F

    iget v1, p0, Ln4/n;->e:F

    invoke-static {v0, p1, v1}, Ln5/e;->b(FFF)V

    iput p1, p0, Ln4/n;->d:F

    return-void
.end method

.method public setMinimumScale(F)V
    .locals 2

    iget-object p0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->a:Ln4/n;

    iget v0, p0, Ln4/n;->d:F

    iget v1, p0, Ln4/n;->e:F

    invoke-static {p1, v0, v1}, Ln5/e;->b(FFF)V

    iput p1, p0, Ln4/n;->c:F

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iget-object p0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->a:Ln4/n;

    iput-object p1, p0, Ln4/n;->p:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V
    .locals 0

    iget-object p0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->a:Ln4/n;

    iget-object p0, p0, Ln4/n;->i:Landroid/view/GestureDetector;

    invoke-virtual {p0, p1}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0

    iget-object p0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->a:Ln4/n;

    iput-object p1, p0, Ln4/n;->q:Landroid/view/View$OnLongClickListener;

    return-void
.end method

.method public setOnMatrixChangeListener(Ln4/c;)V
    .locals 0

    iget-object p0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->a:Ln4/n;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public setOnOutsidePhotoTapListener(Ln4/d;)V
    .locals 0

    iget-object p0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->a:Ln4/n;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public setOnPhotoTapListener(Ln4/e;)V
    .locals 0

    iget-object p0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->a:Ln4/n;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public setOnScaleChangeListener(Ln4/f;)V
    .locals 0

    iget-object p0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->a:Ln4/n;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public setOnSingleFlingListener(Ln4/g;)V
    .locals 0

    iget-object p0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->a:Ln4/n;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public setOnViewDragListener(Ln4/h;)V
    .locals 0

    iget-object p0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->a:Ln4/n;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public setOnViewTapListener(Ln4/i;)V
    .locals 0

    iget-object p0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->a:Ln4/n;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public setRotationBy(F)V
    .locals 2

    iget-object p0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->a:Ln4/n;

    iget-object v0, p0, Ln4/n;->m:Landroid/graphics/Matrix;

    const/high16 v1, 0x43b40000    # 360.0f

    rem-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    invoke-virtual {p0}, Ln4/n;->a()V

    return-void
.end method

.method public setRotationTo(F)V
    .locals 2

    iget-object p0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->a:Ln4/n;

    iget-object v0, p0, Ln4/n;->m:Landroid/graphics/Matrix;

    const/high16 v1, 0x43b40000    # 360.0f

    rem-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->setRotate(F)V

    invoke-virtual {p0}, Ln4/n;->a()V

    return-void
.end method

.method public setScale(F)V
    .locals 3

    iget-object p0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->a:Ln4/n;

    iget-object v0, p0, Ln4/n;->h:Lcom/github/chrisbanes/photoview/PhotoView;

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v0, v2}, Ln4/n;->e(FFFZ)V

    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 2

    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->a:Ln4/n;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/github/chrisbanes/photoview/PhotoView;->b:Landroid/widget/ImageView$ScaleType;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    sget-object p0, Ln4/o;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget p0, p0, v1

    const/4 v1, 0x1

    if-eq p0, v1, :cond_3

    iget-object p0, v0, Ln4/n;->v:Landroid/widget/ImageView$ScaleType;

    if-eq p1, p0, :cond_2

    iput-object p1, v0, Ln4/n;->v:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0}, Ln4/n;->f()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Matrix scale type is not supported"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setZoomTransitionDuration(I)V
    .locals 0

    iget-object p0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->a:Ln4/n;

    iput p1, p0, Ln4/n;->b:I

    return-void
.end method

.method public setZoomable(Z)V
    .locals 0

    iget-object p0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->a:Ln4/n;

    iput-boolean p1, p0, Ln4/n;->u:Z

    invoke-virtual {p0}, Ln4/n;->f()V

    return-void
.end method
