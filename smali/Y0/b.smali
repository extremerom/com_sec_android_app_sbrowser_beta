.class public final LY0/b;
.super LY0/c;
.source "SourceFile"


# virtual methods
.method public final a(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 6

    const/4 v5, 0x0

    move v0, p1

    move v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    invoke-static/range {v0 .. v5}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    return-void
.end method

.method public final getOutline(Landroid/graphics/Outline;)V
    .locals 1

    invoke-virtual {p0}, LY0/c;->c()V

    iget v0, p0, LY0/c;->g:F

    iget-object p0, p0, LY0/c;->h:Landroid/graphics/Rect;

    invoke-virtual {p1, p0, v0}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    return-void
.end method
