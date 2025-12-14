.class public Lorg/chromium/ui/widget/ButtonCompat;
.super Lt/s;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field private mRippleBackgroundHelper:Lorg/chromium/ui/widget/RippleBackgroundHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Lorg/chromium/ui/R$style;->FilledButtonThemeOverlay:I

    invoke-direct {p0, p1, p2, v0}, Lorg/chromium/ui/widget/ButtonCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 19
    .param p3    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    move-object/from16 v8, p0

    move-object/from16 v0, p2

    new-instance v1, Landroid/view/ContextThemeWrapper;

    move-object/from16 v2, p1

    move/from16 v3, p3

    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const v2, 0x1010048

    invoke-direct {v8, v1, v0, v2}, Lt/s;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v3, Lorg/chromium/ui/R$styleable;->ButtonCompat:[I

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v3, v2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lorg/chromium/ui/R$styleable;->ButtonCompat_buttonColor:I

    sget v2, Lorg/chromium/ui/R$color;->blue_when_enabled_list:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    sget v1, Lorg/chromium/ui/R$styleable;->ButtonCompat_rippleColor:I

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    if-ne v1, v3, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    if-nez v1, :cond_0

    sget v1, Lorg/chromium/ui/R$color;->text_button_ripple_color_list_baseline:I

    goto :goto_0

    :cond_0
    sget v1, Lorg/chromium/ui/R$color;->filled_button_ripple_color:I

    :cond_1
    :goto_0
    move v5, v1

    sget v1, Lorg/chromium/ui/R$styleable;->ButtonCompat_borderColor:I

    const v6, 0x106000d

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    sget v1, Lorg/chromium/ui/R$styleable;->ButtonCompat_borderWidth:I

    sget v7, Lorg/chromium/ui/R$dimen;->default_ripple_background_border_size:I

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    sget v1, Lorg/chromium/ui/R$styleable;->ButtonCompat_verticalInset:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lorg/chromium/ui/R$dimen;->button_bg_vertical_inset:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    invoke-virtual {v0, v1, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v10, Lorg/chromium/ui/R$dimen;->button_compat_corner_radius:I

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sget v10, Lorg/chromium/ui/R$styleable;->ButtonCompat_rippleCornerRadiusTopStart:I

    invoke-virtual {v0, v10, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v10

    sget v11, Lorg/chromium/ui/R$styleable;->ButtonCompat_rippleCornerRadiusTopEnd:I

    invoke-virtual {v0, v11, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v11

    sget v12, Lorg/chromium/ui/R$styleable;->ButtonCompat_rippleCornerRadiusBottomStart:I

    invoke-virtual {v0, v12, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v12

    sget v13, Lorg/chromium/ui/R$styleable;->ButtonCompat_rippleCornerRadiusBottomEnd:I

    invoke-virtual {v0, v13, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    sget v13, Lorg/chromium/ui/R$styleable;->ButtonCompat_buttonTextColor:I

    invoke-virtual {v0, v13, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    if-eq v13, v3, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v13, v3}, LV0/a;->c(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v3

    const/4 v15, 0x5

    const/16 v16, 0x4

    const/16 v17, 0x3

    const/16 v18, 0x2

    const/16 v13, 0x8

    const/4 v14, 0x1

    if-ne v3, v14, :cond_3

    new-array v3, v13, [F

    int-to-float v11, v11

    aput v11, v3, v4

    aput v11, v3, v14

    int-to-float v4, v10

    aput v4, v3, v18

    aput v4, v3, v17

    int-to-float v4, v12

    aput v4, v3, v16

    aput v4, v3, v15

    int-to-float v1, v1

    const/4 v4, 0x6

    aput v1, v3, v4

    const/4 v4, 0x7

    aput v1, v3, v4

    :goto_1
    move-object v4, v3

    goto :goto_2

    :cond_3
    new-array v3, v13, [F

    int-to-float v10, v10

    aput v10, v3, v4

    aput v10, v3, v14

    int-to-float v4, v11

    aput v4, v3, v18

    aput v4, v3, v17

    int-to-float v1, v1

    aput v1, v3, v16

    aput v1, v3, v15

    int-to-float v1, v12

    const/4 v4, 0x6

    aput v1, v3, v4

    const/4 v4, 0x7

    aput v1, v3, v4

    goto :goto_1

    :goto_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v10, Lorg/chromium/ui/widget/RippleBackgroundHelper;

    move-object v0, v10

    move-object/from16 v1, p0

    move v3, v5

    move v5, v6

    move v6, v7

    move v7, v9

    invoke-direct/range {v0 .. v7}, Lorg/chromium/ui/widget/RippleBackgroundHelper;-><init>(Landroid/view/View;II[FIII)V

    iput-object v10, v8, Lorg/chromium/ui/widget/ButtonCompat;->mRippleBackgroundHelper:Lorg/chromium/ui/widget/RippleBackgroundHelper;

    return-void
.end method


# virtual methods
.method public setButtonColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/ui/widget/ButtonCompat;->mRippleBackgroundHelper:Lorg/chromium/ui/widget/RippleBackgroundHelper;

    invoke-virtual {p0, p1}, Lorg/chromium/ui/widget/RippleBackgroundHelper;->setBackgroundColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method
