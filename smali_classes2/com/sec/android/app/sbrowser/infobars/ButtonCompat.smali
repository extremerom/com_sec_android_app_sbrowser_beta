.class public Lcom/sec/android/app/sbrowser/infobars/ButtonCompat;
.super Landroid/widget/Button;
.source "SourceFile"


# instance fields
.field private mColor:I


# direct methods
.method private constructor <init>(Landroid/content/Context;ILandroid/util/AttributeSet;)V
    .locals 2

    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v1, 0x7f1501e5

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0, v0, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/infobars/ButtonCompat;->setButtonColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x1010448

    filled-new-array {p2}, [I

    move-result-object p2

    const p3, 0x1030258

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    invoke-static {p2, p3}, Landroid/animation/AnimatorInflater;->loadStateListAnimator(Landroid/content/Context;I)Landroid/animation/StateListAnimator;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/view/View;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/infobars/ButtonCompat;->getColorFromAttributeSet(Landroid/content/Context;Landroid/util/AttributeSet;)I

    move-result v0

    invoke-direct {p0, p1, v0, p2}, Lcom/sec/android/app/sbrowser/infobars/ButtonCompat;-><init>(Landroid/content/Context;ILandroid/util/AttributeSet;)V

    return-void
.end method

.method private static getColorFromAttributeSet(Landroid/content/Context;Landroid/util/AttributeSet;)I
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/R$styleable;->ButtonCompat:[I

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 p1, 0x2

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return p1
.end method

.method private updateButtonBackground()V
    .locals 5

    new-instance v0, Landroid/content/res/ColorStateList;

    const v1, -0x101009e

    filled-new-array {v1}, [I

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [I

    filled-new-array {v1, v3}, [[I

    move-result-object v1

    const/high16 v3, 0x1f000000

    iget v4, p0, Lcom/sec/android/app/sbrowser/infobars/ButtonCompat;->mColor:I

    filled-new-array {v3, v4}, [I

    move-result-object v3

    invoke-direct {v0, v1, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {p0, v2}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method


# virtual methods
.method public setButtonColor(I)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/infobars/ButtonCompat;->mColor:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/sec/android/app/sbrowser/infobars/ButtonCompat;->mColor:I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/infobars/ButtonCompat;->updateButtonBackground()V

    return-void
.end method
