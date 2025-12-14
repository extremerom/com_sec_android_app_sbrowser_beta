.class public Lt/z;
.super Landroid/widget/ImageButton;
.source "SourceFile"


# instance fields
.field private isNeedToSkipRefreshDrawable:Z

.field private final mBackgroundTintHelper:Lt/r;

.field private mHasLevel:Z

.field private final mImageHelper:Lt/A;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f040273

    invoke-direct {p0, p1, p2, v0}, Lt/z;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-static {p1}, Lt/e1;->a(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lt/z;->mHasLevel:Z

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p0}, Lt/d1;->a(Landroid/content/Context;Landroid/view/View;)V

    new-instance p1, Lt/r;

    invoke-direct {p1, p0}, Lt/r;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lt/z;->mBackgroundTintHelper:Lt/r;

    invoke-virtual {p1, p2, p3}, Lt/r;->d(Landroid/util/AttributeSet;I)V

    new-instance p1, Lt/A;

    invoke-direct {p1, p0}, Lt/A;-><init>(Landroid/widget/ImageView;)V

    iput-object p1, p0, Lt/z;->mImageHelper:Lt/A;

    invoke-virtual {p1, p2, p3}, Lt/A;->b(Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public drawableStateChanged()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    iget-object v0, p0, Lt/z;->mBackgroundTintHelper:Lt/r;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lt/r;->a()V

    :cond_0
    iget-object p0, p0, Lt/z;->mImageHelper:Lt/A;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lt/A;->a()V

    :cond_1
    return-void
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    iget-object p0, p0, Lt/z;->mBackgroundTintHelper:Lt/r;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lt/r;->b()Landroid/content/res/ColorStateList;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    iget-object p0, p0, Lt/z;->mBackgroundTintHelper:Lt/r;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lt/r;->c()Landroid/graphics/PorterDuff$Mode;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getSupportImageTintList()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    iget-object p0, p0, Lt/z;->mImageHelper:Lt/A;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    iget-object p0, p0, Lt/A;->b:Lhd/p;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lhd/p;->c:Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, Landroid/content/res/ColorStateList;

    :cond_0
    return-object v0
.end method

.method public getSupportImageTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    iget-object p0, p0, Lt/z;->mImageHelper:Lt/A;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    iget-object p0, p0, Lt/A;->b:Lhd/p;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lhd/p;->d:Ljava/io/Serializable;

    move-object v0, p0

    check-cast v0, Landroid/graphics/PorterDuff$Mode;

    :cond_0
    return-object v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    iget-object v0, p0, Lt/z;->mImageHelper:Lt/A;

    iget-object v0, v0, Lt/A;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/RippleDrawable;

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/view/View;->hasOverlappingRendering()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroidx/appcompat/graphics/drawable/SeslRecoilDrawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lt/z;->isNeedToSkipRefreshDrawable:Z

    :cond_0
    return-void
.end method

.method public refreshDrawableState()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->refreshDrawableState()V

    iget-boolean v0, p0, Lt/z;->isNeedToSkipRefreshDrawable:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getStateListAnimator()Landroid/animation/StateListAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getStateListAnimator()Landroid/animation/StateListAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/StateListAnimator;->jumpToCurrentState()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lt/z;->isNeedToSkipRefreshDrawable:Z

    :cond_0
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Lt/z;->mBackgroundTintHelper:Lt/r;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lt/r;->e()V

    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p0, p0, Lt/z;->mBackgroundTintHelper:Lt/r;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lt/r;->f(I)V

    :cond_0
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object p0, p0, Lt/z;->mImageHelper:Lt/A;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lt/A;->a()V

    :cond_0
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lt/z;->mImageHelper:Lt/A;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-boolean v1, p0, Lt/z;->mHasLevel:Z

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v1

    iput v1, v0, Lt/A;->c:I

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lt/z;->mImageHelper:Lt/A;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lt/A;->a()V

    iget-boolean p1, p0, Lt/z;->mHasLevel:Z

    if-nez p1, :cond_1

    iget-object p0, p0, Lt/z;->mImageHelper:Lt/A;

    iget-object p1, p0, Lt/A;->a:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget p0, p0, Lt/A;->c:I

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    :cond_1
    return-void
.end method

.method public setImageLevel(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageLevel(I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lt/z;->mHasLevel:Z

    return-void
.end method

.method public setImageResource(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    iget-object p0, p0, Lt/z;->mImageHelper:Lt/A;

    invoke-virtual {p0, p1}, Lt/A;->c(I)V

    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    iget-object p0, p0, Lt/z;->mImageHelper:Lt/A;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lt/A;->a()V

    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    iget-object p0, p0, Lt/z;->mBackgroundTintHelper:Lt/r;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lt/r;->h(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0
    .param p1    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    iget-object p0, p0, Lt/z;->mBackgroundTintHelper:Lt/r;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lt/r;->i(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public setSupportImageTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    iget-object p0, p0, Lt/z;->mImageHelper:Lt/A;

    if-eqz p0, :cond_1

    iget-object v0, p0, Lt/A;->b:Lhd/p;

    if-nez v0, :cond_0

    new-instance v0, Lhd/p;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lt/A;->b:Lhd/p;

    :cond_0
    iget-object v0, p0, Lt/A;->b:Lhd/p;

    iput-object p1, v0, Lhd/p;->c:Ljava/lang/Object;

    const/4 p1, 0x1

    iput-boolean p1, v0, Lhd/p;->b:Z

    invoke-virtual {p0}, Lt/A;->a()V

    :cond_1
    return-void
.end method

.method public setSupportImageTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    iget-object p0, p0, Lt/z;->mImageHelper:Lt/A;

    if-eqz p0, :cond_1

    iget-object v0, p0, Lt/A;->b:Lhd/p;

    if-nez v0, :cond_0

    new-instance v0, Lhd/p;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lt/A;->b:Lhd/p;

    :cond_0
    iget-object v0, p0, Lt/A;->b:Lhd/p;

    iput-object p1, v0, Lhd/p;->d:Ljava/io/Serializable;

    const/4 p1, 0x1

    iput-boolean p1, v0, Lhd/p;->a:Z

    invoke-virtual {p0}, Lt/A;->a()V

    :cond_1
    return-void
.end method
