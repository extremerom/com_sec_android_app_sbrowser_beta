.class public Lcom/sec/android/app/sbrowser/common/widget/AutoLetterSpacingTextView;
.super Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;
.source "SourceFile"


# static fields
.field private static final MAX:Ljava/math/BigDecimal;

.field private static final MIN:Ljava/math/BigDecimal;

.field private static final STEP_GRANULARITY:Ljava/math/BigDecimal;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/math/BigDecimal;

    const-string v1, "0.0"

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/widget/AutoLetterSpacingTextView;->MAX:Ljava/math/BigDecimal;

    new-instance v0, Ljava/math/BigDecimal;

    const-string v1, "-0.055"

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/widget/AutoLetterSpacingTextView;->MIN:Ljava/math/BigDecimal;

    new-instance v0, Ljava/math/BigDecimal;

    const-string v1, "0.02"

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/widget/AutoLetterSpacingTextView;->STEP_GRANULARITY:Ljava/math/BigDecimal;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/app/sbrowser/common/widget/AutoLetterSpacingTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private updateLetterSpacing()V
    .locals 7

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    if-nez v2, :cond_2

    return-void

    :cond_2
    sget-object v3, Lcom/sec/android/app/sbrowser/common/widget/AutoLetterSpacingTextView;->MAX:Ljava/math/BigDecimal;

    invoke-virtual {v3}, Ljava/math/BigDecimal;->floatValue()F

    move-result v4

    invoke-virtual {p0, v4}, Landroid/widget/TextView;->setLetterSpacing(F)V

    :goto_0
    sget-object v4, Lcom/sec/android/app/sbrowser/common/widget/AutoLetterSpacingTextView;->MIN:Ljava/math/BigDecimal;

    invoke-virtual {v3, v4}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v5

    if-lez v5, :cond_5

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    int-to-float v6, v2

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_3

    return-void

    :cond_3
    sget-object v5, Lcom/sec/android/app/sbrowser/common/widget/AutoLetterSpacingTextView;->STEP_GRANULARITY:Ljava/math/BigDecimal;

    invoke-virtual {v3, v5}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v5

    if-gez v5, :cond_4

    move-object v3, v4

    :cond_4
    invoke-virtual {v3}, Ljava/math/BigDecimal;->floatValue()F

    move-result v4

    invoke-virtual {p0, v4}, Landroid/widget/TextView;->setLetterSpacing(F)V

    goto :goto_0

    :cond_5
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    int-to-float v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_6

    sget-object v0, Lcom/sec/android/app/sbrowser/common/widget/AutoLetterSpacingTextView;->MAX:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLetterSpacing(F)V

    :cond_6
    return-void
.end method


# virtual methods
.method public onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;->onMeasure(II)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/widget/AutoLetterSpacingTextView;->updateLetterSpacing()V

    return-void
.end method
