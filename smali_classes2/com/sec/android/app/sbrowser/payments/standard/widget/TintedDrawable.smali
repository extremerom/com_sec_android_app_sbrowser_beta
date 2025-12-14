.class public Lcom/sec/android/app/sbrowser/payments/standard/widget/TintedDrawable;
.super Landroid/graphics/drawable/BitmapDrawable;
.source "SourceFile"


# instance fields
.field protected mTint:Landroid/content/res/ColorStateList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    const v0, 0x7f060306

    invoke-static {v0, p1, p2}, LW0/j;->a(ILandroid/content/res/Resources$Theme;Landroid/content/res/Resources;)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/TintedDrawable;->mTint:Landroid/content/res/ColorStateList;

    return-void
.end method

.method public static constructTintedDrawable(Landroid/content/Context;I)Lcom/sec/android/app/sbrowser/payments/standard/widget/TintedDrawable;
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    new-instance v0, Lcom/sec/android/app/sbrowser/payments/standard/widget/TintedDrawable;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/widget/TintedDrawable;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public static constructTintedDrawable(Landroid/content/Context;II)Lcom/sec/android/app/sbrowser/payments/standard/widget/TintedDrawable;
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/widget/TintedDrawable;->constructTintedDrawable(Landroid/content/Context;I)Lcom/sec/android/app/sbrowser/payments/standard/widget/TintedDrawable;

    move-result-object p1

    invoke-static {p2, p0}, LV0/a;->c(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/TintedDrawable;->setTint(Landroid/content/res/ColorStateList;)V

    return-object p1
.end method

.method private updateTintColor()Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/TintedDrawable;->mTint:Landroid/content/res/ColorStateList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public isStateful()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onStateChange([I)Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/TintedDrawable;->updateTintColor()Z

    move-result v0

    invoke-super {p0, p1}, Landroid/graphics/drawable/BitmapDrawable;->onStateChange([I)Z

    return v0
.end method

.method public setTint(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/TintedDrawable;->mTint:Landroid/content/res/ColorStateList;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/TintedDrawable;->mTint:Landroid/content/res/ColorStateList;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/TintedDrawable;->updateTintColor()Z

    return-void
.end method
