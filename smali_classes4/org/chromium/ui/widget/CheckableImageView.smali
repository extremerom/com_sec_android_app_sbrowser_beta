.class public Lorg/chromium/ui/widget/CheckableImageView;
.super Lorg/chromium/ui/widget/ChromeImageView;
.source "SourceFile"

# interfaces
.implements Landroid/widget/Checkable;


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final CHECKED_STATE_SET:[I


# instance fields
.field private mChecked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x10100a0

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lorg/chromium/ui/widget/CheckableImageView;->CHECKED_STATE_SET:[I

    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 0

    iget-boolean p0, p0, Lorg/chromium/ui/widget/CheckableImageView;->mChecked:Z

    return p0
.end method

.method public onCreateDrawableState(I)[I
    .locals 2

    invoke-virtual {p0}, Lorg/chromium/ui/widget/CheckableImageView;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object p0

    return-object p0

    :cond_0
    sget-object v0, Lorg/chromium/ui/widget/CheckableImageView;->CHECKED_STATE_SET:[I

    array-length v1, v0

    add-int/2addr p1, v1

    invoke-super {p0, p1}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object p0

    invoke-static {p0, v0}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    move-result-object p0

    return-object p0
.end method

.method public setChecked(Z)V
    .locals 1

    iget-boolean v0, p0, Lorg/chromium/ui/widget/CheckableImageView;->mChecked:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lorg/chromium/ui/widget/CheckableImageView;->mChecked:Z

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatImageView;->refreshDrawableState()V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatImageView;->refreshDrawableState()V

    return-void
.end method

.method public toggle()V
    .locals 1

    iget-boolean v0, p0, Lorg/chromium/ui/widget/CheckableImageView;->mChecked:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lorg/chromium/ui/widget/CheckableImageView;->setChecked(Z)V

    return-void
.end method
