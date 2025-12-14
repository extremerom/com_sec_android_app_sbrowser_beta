.class public final Ld4/b;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Ld4/e;
.implements Landroid/graphics/drawable/Animatable;


# instance fields
.field public final a:LZ2/f;

.field public b:Z

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:I

.field public final g:I

.field public h:Z

.field public i:Landroid/graphics/Paint;

.field public j:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(LZ2/f;)V
    .locals 1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ld4/b;->e:Z

    const/4 v0, -0x1

    iput v0, p0, Ld4/b;->g:I

    const-string v0, "Argument must not be null"

    invoke-static {p1, v0}, Ll4/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ld4/b;->a:LZ2/f;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-boolean v0, p0, Ld4/b;->d:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "You cannot start a recycled Drawable. Ensure thatyou clear any references to the Drawable when clearing the corresponding request."

    invoke-static {v2, v0}, Ll4/f;->a(Ljava/lang/String;Z)V

    iget-object v0, p0, Ld4/b;->a:LZ2/f;

    iget-object v0, v0, LZ2/f;->b:Ljava/lang/Object;

    check-cast v0, Ld4/f;

    iget-object v2, v0, Ld4/f;->a:LP3/d;

    iget-object v2, v2, LP3/d;->l:LP3/b;

    iget v2, v2, LP3/b;->c:I

    if-ne v2, v1, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    goto :goto_1

    :cond_0
    iget-boolean v2, p0, Ld4/b;->b:Z

    if-nez v2, :cond_5

    iput-boolean v1, p0, Ld4/b;->b:Z

    iget-boolean v2, v0, Ld4/f;->j:Z

    if-nez v2, :cond_4

    iget-object v2, v0, Ld4/f;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v3, :cond_2

    iget-boolean v2, v0, Ld4/f;->f:Z

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    iput-boolean v1, v0, Ld4/f;->f:Z

    const/4 v1, 0x0

    iput-boolean v1, v0, Ld4/f;->j:Z

    invoke-virtual {v0}, Ld4/f;->a()V

    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot subscribe twice in a row"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot subscribe to a cleared frame loader"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_1
    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 5

    iget-boolean v0, p0, Ld4/b;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Ld4/b;->h:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ld4/b;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0}, Ld4/b;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget-object v3, p0, Ld4/b;->j:Landroid/graphics/Rect;

    if-nez v3, :cond_1

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Ld4/b;->j:Landroid/graphics/Rect;

    :cond_1
    iget-object v3, p0, Ld4/b;->j:Landroid/graphics/Rect;

    const/16 v4, 0x77

    invoke-static {v4, v0, v1, v2, v3}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ld4/b;->h:Z

    :cond_2
    iget-object v0, p0, Ld4/b;->a:LZ2/f;

    iget-object v0, v0, LZ2/f;->b:Ljava/lang/Object;

    check-cast v0, Ld4/f;

    iget-object v1, v0, Ld4/f;->i:Ld4/d;

    if-eqz v1, :cond_3

    iget-object v0, v1, Ld4/d;->d:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_3
    iget-object v0, v0, Ld4/f;->l:Landroid/graphics/Bitmap;

    :goto_0
    iget-object v1, p0, Ld4/b;->j:Landroid/graphics/Rect;

    if-nez v1, :cond_4

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Ld4/b;->j:Landroid/graphics/Rect;

    :cond_4
    iget-object v1, p0, Ld4/b;->j:Landroid/graphics/Rect;

    iget-object v2, p0, Ld4/b;->i:Landroid/graphics/Paint;

    if-nez v2, :cond_5

    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Ld4/b;->i:Landroid/graphics/Paint;

    :cond_5
    iget-object p0, p0, Ld4/b;->i:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method public final getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 0

    iget-object p0, p0, Ld4/b;->a:LZ2/f;

    return-object p0
.end method

.method public final getIntrinsicHeight()I
    .locals 0

    iget-object p0, p0, Ld4/b;->a:LZ2/f;

    iget-object p0, p0, LZ2/f;->b:Ljava/lang/Object;

    check-cast p0, Ld4/f;

    iget p0, p0, Ld4/f;->p:I

    return p0
.end method

.method public final getIntrinsicWidth()I
    .locals 0

    iget-object p0, p0, Ld4/b;->a:LZ2/f;

    iget-object p0, p0, LZ2/f;->b:Ljava/lang/Object;

    check-cast p0, Ld4/f;

    iget p0, p0, Ld4/f;->o:I

    return p0
.end method

.method public final getOpacity()I
    .locals 0

    const/4 p0, -0x2

    return p0
.end method

.method public final isRunning()Z
    .locals 0

    iget-boolean p0, p0, Ld4/b;->b:Z

    return p0
.end method

.method public final onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Ld4/b;->h:Z

    return-void
.end method

.method public final setAlpha(I)V
    .locals 2

    iget-object v0, p0, Ld4/b;->i:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Ld4/b;->i:Landroid/graphics/Paint;

    :cond_0
    iget-object p0, p0, Ld4/b;->i:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 2

    iget-object v0, p0, Ld4/b;->i:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Ld4/b;->i:Landroid/graphics/Paint;

    :cond_0
    iget-object p0, p0, Ld4/b;->i:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public final setVisible(ZZ)Z
    .locals 3

    iget-boolean v0, p0, Ld4/b;->d:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Cannot change the visibility of a recycled resource. Ensure that you unset the Drawable from your View before changing the View\'s visibility."

    invoke-static {v1, v0}, Ll4/f;->a(Ljava/lang/String;Z)V

    iput-boolean p1, p0, Ld4/b;->e:Z

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Ld4/b;->b:Z

    iget-object v1, p0, Ld4/b;->a:LZ2/f;

    iget-object v1, v1, LZ2/f;->b:Ljava/lang/Object;

    check-cast v1, Ld4/f;

    iget-object v2, v1, Ld4/f;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    iput-boolean v0, v1, Ld4/f;->f:Z

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Ld4/b;->c:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ld4/b;->a()V

    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p0

    return p0
.end method

.method public final start()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Ld4/b;->c:Z

    const/4 v0, 0x0

    iput v0, p0, Ld4/b;->f:I

    iget-boolean v0, p0, Ld4/b;->e:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ld4/b;->a()V

    :cond_0
    return-void
.end method

.method public final stop()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Ld4/b;->c:Z

    iput-boolean v0, p0, Ld4/b;->b:Z

    iget-object v1, p0, Ld4/b;->a:LZ2/f;

    iget-object v1, v1, LZ2/f;->b:Ljava/lang/Object;

    check-cast v1, Ld4/f;

    iget-object v2, v1, Ld4/f;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    iput-boolean v0, v1, Ld4/f;->f:Z

    :cond_0
    return-void
.end method
