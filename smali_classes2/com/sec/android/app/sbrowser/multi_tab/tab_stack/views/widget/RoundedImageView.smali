.class public Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/RoundedImageView;
.super Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/MaskedImageView;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "AppCompatCustomView"
    }
.end annotation


# instance fields
.field private final mCornerRadius:F

.field private final mRadiusTable:[F

.field private mRoundedCorners:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/RoundedImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/RoundedImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/MaskedImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    sget-object v0, Lcom/sec/android/app/sbrowser/R$styleable;->RoundedImageView:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/RoundedImageView;->mCornerRadius:F

    const/4 p2, 0x1

    const/16 p3, 0xf

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/RoundedImageView;->mRoundedCorners:I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/LocalizationUtils;->isLayoutRtl()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/RoundedImageView;->invertHorizontalCorners()V

    :cond_0
    const/16 p2, 0x8

    new-array p2, p2, [F

    fill-array-data p2, :array_0

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/RoundedImageView;->mRadiusTable:[F

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/RoundedImageView;->setRoundedCorners()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private invertHorizontalCorners()V
    .locals 7

    iget v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/RoundedImageView;->mRoundedCorners:I

    and-int/lit8 v1, v0, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x4

    if-ne v1, v4, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    and-int/lit8 v5, v0, 0x8

    const/16 v6, 0x8

    if-ne v5, v6, :cond_1

    move v2, v3

    :cond_1
    if-ne v1, v2, :cond_2

    return-void

    :cond_2
    if-eqz v1, :cond_3

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/RoundedImageView;->mRoundedCorners:I

    goto :goto_1

    :cond_3
    sub-int/2addr v0, v4

    iput v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/RoundedImageView;->mRoundedCorners:I

    :goto_1
    return-void
.end method

.method private resetImageMatrix()V
    .locals 7

    invoke-virtual {p0}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    mul-int v5, v4, v2

    mul-int v6, v3, v1

    if-le v5, v6, :cond_1

    int-to-float v1, v2

    int-to-float v2, v3

    :goto_0
    div-float/2addr v1, v2

    goto :goto_1

    :cond_1
    int-to-float v1, v1

    int-to-float v2, v4

    goto :goto_0

    :goto_1
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method private setRoundedCorners()V
    .locals 11

    iget v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/RoundedImageView;->mRoundedCorners:I

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ne v1, v5, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/RoundedImageView;->mRadiusTable:[F

    iget v6, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/RoundedImageView;->mCornerRadius:F

    aput v6, v1, v3

    aput v6, v1, v5

    aput v6, v1, v4

    aput v6, v1, v2

    :cond_0
    and-int/lit8 v1, v0, 0x2

    const/4 v6, 0x7

    const/4 v7, 0x6

    const/4 v8, 0x5

    const/4 v9, 0x4

    if-ne v1, v4, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/RoundedImageView;->mRadiusTable:[F

    iget v10, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/RoundedImageView;->mCornerRadius:F

    aput v10, v1, v9

    aput v10, v1, v8

    aput v10, v1, v7

    aput v10, v1, v6

    :cond_1
    and-int/lit8 v1, v0, 0x4

    if-ne v1, v9, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/RoundedImageView;->mRadiusTable:[F

    iget v10, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/RoundedImageView;->mCornerRadius:F

    aput v10, v1, v3

    aput v10, v1, v5

    aput v10, v1, v7

    aput v10, v1, v6

    :cond_2
    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/RoundedImageView;->mRadiusTable:[F

    iget p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/RoundedImageView;->mCornerRadius:F

    aput p0, v0, v4

    aput p0, v0, v2

    aput p0, v0, v9

    aput p0, v0, v8

    :cond_3
    return-void
.end method


# virtual methods
.method public onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/RoundedImageView;->resetImageMatrix()V

    return-void
.end method

.method public setFrame(IIII)Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/RoundedImageView;->resetImageMatrix()V

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->setFrame(IIII)Z

    move-result p0

    return p0
.end method

.method public updateMask(Landroid/graphics/Paint;Landroid/graphics/Path;Landroid/graphics/RectF;)V
    .locals 0

    invoke-virtual {p2}, Landroid/graphics/Path;->rewind()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/RoundedImageView;->mRadiusTable:[F

    sget-object p1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p2, p3, p0, p1}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    return-void
.end method
