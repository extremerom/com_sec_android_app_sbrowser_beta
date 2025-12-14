.class public Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "SourceFile"


# instance fields
.field private mMaxFontScale:F

.field private mMaxTextSizePx:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object v0, Lcom/sec/android/app/sbrowser/R$styleable;->AutoScaleTextView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;->mMaxTextSizePx:F

    const p2, 0x3f99999a    # 1.2f

    :try_start_0
    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    iput p3, p0, Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;->mMaxFontScale:F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getFloat, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "AutoScaleTextView"

    invoke-static {v0, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput p2, p0, Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;->mMaxFontScale:F

    :goto_0
    iget p2, p0, Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;->mMaxFontScale:F

    const/high16 p3, 0x3f800000    # 1.0f

    cmpg-float p2, p2, p3

    if-gez p2, :cond_0

    iput p3, p0, Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;->mMaxFontScale:F

    :cond_0
    iget p2, p0, Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;->mMaxTextSizePx:F

    const/4 p3, 0x0

    cmpl-float p3, p2, p3

    if-nez p3, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result p2

    iput p2, p0, Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;->mMaxTextSizePx:F

    goto :goto_1

    :cond_1
    iget p3, p0, Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;->mMaxFontScale:F

    mul-float/2addr p2, p3

    iput p2, p0, Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;->mMaxTextSizePx:F

    :goto_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public onMeasure(II)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;->updateTextSize()V

    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->onMeasure(II)V

    return-void
.end method

.method public updateTextSize()V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    iget v1, p0, Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;->mMaxTextSizePx:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    :cond_0
    return-void
.end method
