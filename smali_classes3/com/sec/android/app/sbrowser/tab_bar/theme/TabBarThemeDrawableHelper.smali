.class public Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeDrawableHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mActivatedStrokeWidth:I

.field private final mContext:Landroid/content/Context;

.field private final mDeactivatedStrokeWidth:I

.field private final mHoveredStrokeWidth:I

.field private final mRadius:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeDrawableHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07149b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeDrawableHelper;->mRadius:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0714bb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeDrawableHelper;->mActivatedStrokeWidth:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0714ba

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeDrawableHelper;->mDeactivatedStrokeWidth:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0714bc

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeDrawableHelper;->mHoveredStrokeWidth:I

    return-void
.end method

.method private getCornerRadii()[F
    .locals 13

    const/4 v0, 0x7

    const/4 v1, 0x6

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/LocalizationUtils;->isLayoutRtl()Z

    move-result v10

    if-eqz v10, :cond_0

    iget p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeDrawableHelper;->mRadius:I

    int-to-float v10, p0

    int-to-float v11, p0

    int-to-float v12, p0

    int-to-float p0, p0

    new-array v8, v8, [F

    aput v9, v8, v7

    aput v9, v8, v6

    aput v10, v8, v5

    aput v11, v8, v4

    aput v12, v8, v3

    aput p0, v8, v2

    aput v9, v8, v1

    aput v9, v8, v0

    return-object v8

    :cond_0
    iget p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeDrawableHelper;->mRadius:I

    int-to-float v10, p0

    int-to-float v11, p0

    int-to-float v12, p0

    int-to-float p0, p0

    new-array v8, v8, [F

    aput v10, v8, v7

    aput v11, v8, v6

    aput v9, v8, v5

    aput v9, v8, v4

    aput v9, v8, v3

    aput v9, v8, v2

    aput v12, v8, v1

    aput p0, v8, v0

    return-object v8
.end method


# virtual methods
.method public createControlButtonRippleDrawable(ZIII)Landroid/graphics/drawable/Drawable;
    .locals 1

    if-eqz p1, :cond_0

    const p1, 0x7f080722

    goto :goto_0

    :cond_0
    const p1, 0x7f080723

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeDrawableHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/RippleDrawable;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/RippleDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/RippleDrawable;

    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    const p2, 0x7f0b0c71

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p2, p3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeDrawableHelper;->mDeactivatedStrokeWidth:I

    invoke-virtual {p2, p0, p4}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    :cond_1
    return-object p1
.end method

.method public createForegroundThemeDrawable(IIII)Landroid/graphics/drawable/Drawable;
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeDrawableHelper;->mContext:Landroid/content/Context;

    const v1, 0x7f08071e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    const v1, 0x7f0b0c5f

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    const v2, 0x7f0b0c60

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {v1, p2}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    iget p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeDrawableHelper;->mActivatedStrokeWidth:I

    invoke-virtual {v2, p0, p3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    invoke-virtual {v2, p4}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    :cond_0
    return-object v0
.end method

.method public createProgressDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeDrawableHelper;->mContext:Landroid/content/Context;

    const v0, 0x7f08072b

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/LayerDrawable;

    const v0, 0x7f0b0c8d

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/ScaleDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/DrawableWrapper;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    :cond_0
    return-object p0
.end method

.method public createRippleDrawable(II)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeDrawableHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/RippleDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/RippleDrawable;

    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-object p0
.end method

.method public createScrollHeaderBackgroundDrawable(IIII)Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeDrawableHelper;->mContext:Landroid/content/Context;

    const v1, 0x7f080728

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/RippleDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    const p1, 0x7f0b0c82

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/GradientDrawable;

    const v1, 0x7f0b0c81

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {v1, p3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeDrawableHelper;->getCornerRadii()[F

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    iget p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeDrawableHelper;->mDeactivatedStrokeWidth:I

    invoke-virtual {v1, p0, p4}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    :cond_0
    return-object v0
.end method

.method public createTabButtonBackgroundDrawable(ZIII)Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeDrawableHelper;->mContext:Landroid/content/Context;

    const v1, 0x7f080720

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/RippleDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    const p2, 0x7f0b0c61

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p2, p3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    if-eqz p1, :cond_0

    iget p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeDrawableHelper;->mActivatedStrokeWidth:I

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeDrawableHelper;->mDeactivatedStrokeWidth:I

    :goto_0
    invoke-virtual {p2, p0, p4}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    :cond_1
    return-object v0
.end method

.method public createTabButtonHoverDrawable(II)Landroid/graphics/drawable/Drawable;
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeDrawableHelper;->mContext:Landroid/content/Context;

    const v1, 0x7f08071e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    const v1, 0x7f0b0c5f

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    const v2, 0x7f0b0c60

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeDrawableHelper;->mHoveredStrokeWidth:I

    invoke-virtual {v2, p0, p2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    :cond_0
    return-object v0
.end method

.method public createTabGroupBackgroundDrawable(ZII)Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeDrawableHelper;->mContext:Landroid/content/Context;

    const v1, 0x7f080725

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    const v1, 0x7f0b0c75

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, p2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    if-eqz p1, :cond_0

    iget p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeDrawableHelper;->mActivatedStrokeWidth:I

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeDrawableHelper;->mDeactivatedStrokeWidth:I

    :goto_0
    invoke-virtual {v1, p0, p3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    :cond_1
    return-object v0
.end method
