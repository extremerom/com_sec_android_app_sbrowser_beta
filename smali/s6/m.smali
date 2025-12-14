.class public abstract Ls6/m;
.super Landroid/widget/ImageButton;
.source "SourceFile"


# instance fields
.field public a:I


# virtual methods
.method public final a(IZ)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    if-eqz p2, :cond_0

    iput p1, p0, Ls6/m;->a:I

    :cond_0
    return-void
.end method

.method public final getUserSetVisibility()I
    .locals 0

    iget p0, p0, Ls6/m;->a:I

    return p0
.end method

.method public setVisibility(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Ls6/m;->a(IZ)V

    return-void
.end method
