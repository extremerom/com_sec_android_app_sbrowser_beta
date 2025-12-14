.class public final Lq/e;
.super Lq/d;
.source "SourceFile"


# virtual methods
.method public final a(Landroid/view/View;Landroid/graphics/Canvas;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr p1, v1

    iget-object v3, p0, Lq/d;->k:Landroid/graphics/Rect;

    invoke-virtual {v3, v0, v1, v2, p1}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p0, p2}, Lq/e;->e(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final e(Landroid/graphics/Canvas;)V
    .locals 8

    iget-object v0, p0, Lq/d;->k:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->right:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget v4, p0, Lq/d;->j:I

    and-int/lit8 v4, v4, 0x1

    iget v5, p0, Lq/d;->a:I

    if-eqz v4, :cond_0

    add-int v4, v1, v5

    add-int v6, v0, v5

    iget-object v7, p0, Lq/d;->b:Lq/c;

    invoke-virtual {v7, v1, v0, v4, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v7, p1}, Lq/c;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    iget v4, p0, Lq/d;->j:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_1

    sub-int v4, v2, v5

    add-int v6, v0, v5

    iget-object v7, p0, Lq/d;->c:Lq/c;

    invoke-virtual {v7, v4, v0, v2, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v7, p1}, Lq/c;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    iget v0, p0, Lq/d;->j:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    sub-int v0, v3, v5

    add-int v4, v1, v5

    iget-object v6, p0, Lq/d;->d:Lq/c;

    invoke-virtual {v6, v1, v0, v4, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v6, p1}, Lq/c;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    iget v0, p0, Lq/d;->j:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    sub-int v0, v2, v5

    sub-int v1, v3, v5

    iget-object p0, p0, Lq/d;->e:Lq/c;

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, p1}, Lq/c;->draw(Landroid/graphics/Canvas;)V

    :cond_3
    return-void
.end method
