.class public abstract Landroidx/recyclerview/widget/o1;
.super Landroidx/recyclerview/widget/D0;
.source "SourceFile"


# instance fields
.field mSupportsChangeAnimations:Z


# virtual methods
.method public abstract animateAdd(Landroidx/recyclerview/widget/h1;)Z
.end method

.method public animateAppearance(Landroidx/recyclerview/widget/h1;Landroidx/recyclerview/widget/C0;Landroidx/recyclerview/widget/C0;)Z
    .locals 6
    .param p1    # Landroidx/recyclerview/widget/h1;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/C0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/C0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p2, :cond_1

    iget v2, p2, Landroidx/recyclerview/widget/C0;->a:I

    iget v4, p3, Landroidx/recyclerview/widget/C0;->a:I

    if-ne v2, v4, :cond_0

    iget v0, p2, Landroidx/recyclerview/widget/C0;->b:I

    iget v1, p3, Landroidx/recyclerview/widget/C0;->b:I

    if-eq v0, v1, :cond_1

    :cond_0
    iget v3, p2, Landroidx/recyclerview/widget/C0;->b:I

    iget v5, p3, Landroidx/recyclerview/widget/C0;->b:I

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/o1;->animateMove(Landroidx/recyclerview/widget/h1;IIII)Z

    move-result p0

    return p0

    :cond_1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/o1;->animateAdd(Landroidx/recyclerview/widget/h1;)Z

    move-result p0

    return p0
.end method

.method public abstract animateChange(Landroidx/recyclerview/widget/h1;Landroidx/recyclerview/widget/h1;IIII)Z
.end method

.method public animateChange(Landroidx/recyclerview/widget/h1;Landroidx/recyclerview/widget/h1;Landroidx/recyclerview/widget/C0;Landroidx/recyclerview/widget/C0;)Z
    .locals 7

    iget v3, p3, Landroidx/recyclerview/widget/C0;->a:I

    iget v4, p3, Landroidx/recyclerview/widget/C0;->b:I

    invoke-virtual {p2}, Landroidx/recyclerview/widget/h1;->shouldIgnore()Z

    move-result v0

    if-eqz v0, :cond_0

    iget p4, p3, Landroidx/recyclerview/widget/C0;->a:I

    iget p3, p3, Landroidx/recyclerview/widget/C0;->b:I

    move v6, p3

    move v5, p4

    goto :goto_0

    :cond_0
    iget p3, p4, Landroidx/recyclerview/widget/C0;->a:I

    iget p4, p4, Landroidx/recyclerview/widget/C0;->b:I

    move v5, p3

    move v6, p4

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Landroidx/recyclerview/widget/o1;->animateChange(Landroidx/recyclerview/widget/h1;Landroidx/recyclerview/widget/h1;IIII)Z

    move-result p0

    return p0
.end method

.method public animateDisappearance(Landroidx/recyclerview/widget/h1;Landroidx/recyclerview/widget/C0;Landroidx/recyclerview/widget/C0;)Z
    .locals 6
    .param p1    # Landroidx/recyclerview/widget/h1;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/C0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/C0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget v2, p2, Landroidx/recyclerview/widget/C0;->a:I

    iget v3, p2, Landroidx/recyclerview/widget/C0;->b:I

    iget-object p2, p1, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    if-nez p3, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    :goto_0
    move v4, v0

    goto :goto_1

    :cond_0
    iget v0, p3, Landroidx/recyclerview/widget/C0;->a:I

    goto :goto_0

    :goto_1
    if-nez p3, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p3

    :goto_2
    move v5, p3

    goto :goto_3

    :cond_1
    iget p3, p3, Landroidx/recyclerview/widget/C0;->b:I

    goto :goto_2

    :goto_3
    invoke-virtual {p1}, Landroidx/recyclerview/widget/h1;->isRemoved()Z

    move-result p3

    if-nez p3, :cond_3

    if-ne v2, v4, :cond_2

    if-eq v3, v5, :cond_3

    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p3

    add-int/2addr p3, v4

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/2addr v0, v5

    invoke-virtual {p2, v4, v5, p3, v0}, Landroid/view/View;->layout(IIII)V

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/o1;->animateMove(Landroidx/recyclerview/widget/h1;IIII)Z

    move-result p0

    return p0

    :cond_3
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/o1;->animateRemove(Landroidx/recyclerview/widget/h1;)Z

    move-result p0

    return p0
.end method

.method public abstract animateMove(Landroidx/recyclerview/widget/h1;IIII)Z
.end method

.method public animatePersistence(Landroidx/recyclerview/widget/h1;Landroidx/recyclerview/widget/C0;Landroidx/recyclerview/widget/C0;)Z
    .locals 6
    .param p1    # Landroidx/recyclerview/widget/h1;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/C0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/C0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget v2, p2, Landroidx/recyclerview/widget/C0;->a:I

    iget v4, p3, Landroidx/recyclerview/widget/C0;->a:I

    if-ne v2, v4, :cond_1

    iget v0, p2, Landroidx/recyclerview/widget/C0;->b:I

    iget v1, p3, Landroidx/recyclerview/widget/C0;->b:I

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/o1;->dispatchMoveFinished(Landroidx/recyclerview/widget/h1;)V

    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    iget v3, p2, Landroidx/recyclerview/widget/C0;->b:I

    iget v5, p3, Landroidx/recyclerview/widget/C0;->b:I

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/o1;->animateMove(Landroidx/recyclerview/widget/h1;IIII)Z

    move-result p0

    return p0
.end method

.method public abstract animateRemove(Landroidx/recyclerview/widget/h1;)Z
.end method

.method public canReuseUpdatedViewHolder(Landroidx/recyclerview/widget/h1;)Z
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/h1;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-boolean p0, p0, Landroidx/recyclerview/widget/o1;->mSupportsChangeAnimations:Z

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/h1;->isInvalid()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final dispatchAddFinished(Landroidx/recyclerview/widget/h1;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnknownNullness"
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/o1;->onAddFinished(Landroidx/recyclerview/widget/h1;)V

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/D0;->dispatchAnimationFinished(Landroidx/recyclerview/widget/h1;)V

    return-void
.end method

.method public final dispatchAddStarting(Landroidx/recyclerview/widget/h1;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnknownNullness"
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/o1;->onAddStarting(Landroidx/recyclerview/widget/h1;)V

    return-void
.end method

.method public final dispatchChangeFinished(Landroidx/recyclerview/widget/h1;Z)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnknownNullness"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/o1;->onChangeFinished(Landroidx/recyclerview/widget/h1;Z)V

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/D0;->dispatchAnimationFinished(Landroidx/recyclerview/widget/h1;)V

    return-void
.end method

.method public final dispatchChangeStarting(Landroidx/recyclerview/widget/h1;Z)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnknownNullness"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/o1;->onChangeStarting(Landroidx/recyclerview/widget/h1;Z)V

    return-void
.end method

.method public final dispatchMoveFinished(Landroidx/recyclerview/widget/h1;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnknownNullness"
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/o1;->onMoveFinished(Landroidx/recyclerview/widget/h1;)V

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/D0;->dispatchAnimationFinished(Landroidx/recyclerview/widget/h1;)V

    return-void
.end method

.method public final dispatchMoveStarting(Landroidx/recyclerview/widget/h1;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnknownNullness"
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/o1;->onMoveStarting(Landroidx/recyclerview/widget/h1;)V

    return-void
.end method

.method public final dispatchRemoveFinished(Landroidx/recyclerview/widget/h1;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnknownNullness"
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/o1;->onRemoveFinished(Landroidx/recyclerview/widget/h1;)V

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/D0;->dispatchAnimationFinished(Landroidx/recyclerview/widget/h1;)V

    return-void
.end method

.method public final dispatchRemoveStarting(Landroidx/recyclerview/widget/h1;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnknownNullness"
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/o1;->onRemoveStarting(Landroidx/recyclerview/widget/h1;)V

    return-void
.end method

.method public onAddFinished(Landroidx/recyclerview/widget/h1;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnknownNullness"
        }
    .end annotation

    return-void
.end method

.method public onAddStarting(Landroidx/recyclerview/widget/h1;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnknownNullness"
        }
    .end annotation

    return-void
.end method

.method public onChangeFinished(Landroidx/recyclerview/widget/h1;Z)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnknownNullness"
        }
    .end annotation

    return-void
.end method

.method public onChangeStarting(Landroidx/recyclerview/widget/h1;Z)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnknownNullness"
        }
    .end annotation

    return-void
.end method

.method public onMoveFinished(Landroidx/recyclerview/widget/h1;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnknownNullness"
        }
    .end annotation

    return-void
.end method

.method public onMoveStarting(Landroidx/recyclerview/widget/h1;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnknownNullness"
        }
    .end annotation

    return-void
.end method

.method public onRemoveFinished(Landroidx/recyclerview/widget/h1;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnknownNullness"
        }
    .end annotation

    return-void
.end method

.method public onRemoveStarting(Landroidx/recyclerview/widget/h1;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnknownNullness"
        }
    .end annotation

    return-void
.end method

.method public setSupportsChangeAnimations(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/recyclerview/widget/o1;->mSupportsChangeAnimations:Z

    return-void
.end method
