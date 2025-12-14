.class public Lt/E;
.super Landroid/widget/RadioButton;
.source "SourceFile"

# interfaces
.implements Landroidx/core/widget/s;


# instance fields
.field public final a:Lt/v;

.field public final b:Lt/r;

.field public final c:Lt/P;

.field public d:Lt/y;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-static {p1}, Lt/e1;->a(Landroid/content/Context;)V

    const v0, 0x7f040425

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p0}, Lt/d1;->a(Landroid/content/Context;Landroid/view/View;)V

    new-instance p1, Lt/v;

    invoke-direct {p1, p0}, Lt/v;-><init>(Landroid/widget/CompoundButton;)V

    iput-object p1, p0, Lt/E;->a:Lt/v;

    invoke-virtual {p1, p2, v0}, Lt/v;->b(Landroid/util/AttributeSet;I)V

    new-instance p1, Lt/r;

    invoke-direct {p1, p0}, Lt/r;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lt/E;->b:Lt/r;

    invoke-virtual {p1, p2, v0}, Lt/r;->d(Landroid/util/AttributeSet;I)V

    new-instance p1, Lt/P;

    invoke-direct {p1, p0}, Lt/P;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Lt/E;->c:Lt/P;

    invoke-virtual {p1, p2, v0}, Lt/P;->g(Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lt/E;->getEmojiTextViewHelper()Lt/y;

    move-result-object p0

    invoke-virtual {p0, p2, v0}, Lt/y;->b(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private getEmojiTextViewHelper()Lt/y;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lt/E;->d:Lt/y;

    if-nez v0, :cond_0

    new-instance v0, Lt/y;

    invoke-direct {v0, p0}, Lt/y;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Lt/E;->d:Lt/y;

    :cond_0
    iget-object p0, p0, Lt/E;->d:Lt/y;

    return-object p0
.end method


# virtual methods
.method public final drawableStateChanged()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    iget-object v0, p0, Lt/E;->b:Lt/r;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lt/r;->a()V

    :cond_0
    iget-object p0, p0, Lt/E;->c:Lt/P;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lt/P;->b()V

    :cond_1
    return-void
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    iget-object p0, p0, Lt/E;->b:Lt/r;

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

    iget-object p0, p0, Lt/E;->b:Lt/r;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lt/r;->c()Landroid/graphics/PorterDuff$Mode;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getSupportButtonTintList()Landroid/content/res/ColorStateList;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    iget-object p0, p0, Lt/E;->a:Lt/v;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lt/v;->b:Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getSupportButtonTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    iget-object p0, p0, Lt/E;->a:Lt/v;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lt/v;->c:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getSupportCompoundDrawablesTintList()Landroid/content/res/ColorStateList;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    iget-object p0, p0, Lt/E;->c:Lt/P;

    invoke-virtual {p0}, Lt/P;->e()Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public getSupportCompoundDrawablesTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    iget-object p0, p0, Lt/E;->c:Lt/P;

    invoke-virtual {p0}, Lt/P;->f()Landroid/graphics/PorterDuff$Mode;

    move-result-object p0

    return-object p0
.end method

.method public setAllCaps(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/TextView;->setAllCaps(Z)V

    invoke-direct {p0}, Lt/E;->getEmojiTextViewHelper()Lt/y;

    move-result-object p0

    invoke-virtual {p0, p1}, Lt/y;->c(Z)V

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Lt/E;->b:Lt/r;

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

    iget-object p0, p0, Lt/E;->b:Lt/r;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lt/r;->f(I)V

    :cond_0
    return-void
.end method

.method public setButtonDrawable(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Ll5/a;->a(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lt/E;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Lt/E;->a:Lt/v;

    if-eqz p0, :cond_1

    iget-boolean p1, p0, Lt/v;->f:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lt/v;->f:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lt/v;->f:Z

    invoke-virtual {p0}, Lt/v;->a()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Lt/E;->c:Lt/P;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lt/P;->b()V

    :cond_0
    return-void
.end method

.method public final setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Lt/E;->c:Lt/P;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lt/P;->b()V

    :cond_0
    return-void
.end method

.method public setEmojiCompatEnabled(Z)V
    .locals 0

    invoke-direct {p0}, Lt/E;->getEmojiTextViewHelper()Lt/y;

    move-result-object p0

    invoke-virtual {p0, p1}, Lt/y;->d(Z)V

    return-void
.end method

.method public setFilters([Landroid/text/InputFilter;)V
    .locals 1
    .param p1    # [Landroid/text/InputFilter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lt/E;->getEmojiTextViewHelper()Lt/y;

    move-result-object v0

    invoke-virtual {v0, p1}, Lt/y;->a([Landroid/text/InputFilter;)[Landroid/text/InputFilter;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

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

    iget-object p0, p0, Lt/E;->b:Lt/r;

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

    iget-object p0, p0, Lt/E;->b:Lt/r;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lt/r;->i(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public setSupportButtonTintList(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    iget-object p0, p0, Lt/E;->a:Lt/v;

    if-eqz p0, :cond_0

    iput-object p1, p0, Lt/v;->b:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lt/v;->d:Z

    invoke-virtual {p0}, Lt/v;->a()V

    :cond_0
    return-void
.end method

.method public setSupportButtonTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0
    .param p1    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    iget-object p0, p0, Lt/E;->a:Lt/v;

    if-eqz p0, :cond_0

    iput-object p1, p0, Lt/v;->c:Landroid/graphics/PorterDuff$Mode;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lt/v;->e:Z

    invoke-virtual {p0}, Lt/v;->a()V

    :cond_0
    return-void
.end method

.method public setSupportCompoundDrawablesTintList(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    iget-object p0, p0, Lt/E;->c:Lt/P;

    invoke-virtual {p0, p1}, Lt/P;->i(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0}, Lt/P;->b()V

    return-void
.end method

.method public setSupportCompoundDrawablesTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0
    .param p1    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    iget-object p0, p0, Lt/E;->c:Lt/P;

    invoke-virtual {p0, p1}, Lt/P;->j(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0}, Lt/P;->b()V

    return-void
.end method
