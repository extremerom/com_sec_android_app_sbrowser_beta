.class public Lcom/sec/android/app/sbrowser/payments/standard/widget/BoundedLinearLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private final mMaxHeight:I

.field private final mMaxWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v0, Lcom/sec/android/app/sbrowser/R$styleable;->BoundedView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x1

    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    if-gtz p2, :cond_0

    move p2, v0

    :cond_0
    iput p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/BoundedLinearLayout;->mMaxWidth:I

    if-gtz v1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iput v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/BoundedLinearLayout;->mMaxHeight:I

    return-void
.end method


# virtual methods
.method public onMeasure(II)V
    .locals 4

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/BoundedLinearLayout;->mMaxWidth:I

    const/high16 v2, -0x80000000

    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    if-le v0, v1, :cond_1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    if-nez p1, :cond_0

    move p1, v2

    :cond_0
    iget v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/BoundedLinearLayout;->mMaxWidth:I

    invoke-static {v0, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :cond_1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/BoundedLinearLayout;->mMaxHeight:I

    if-eq v1, v3, :cond_3

    if-le v0, v1, :cond_3

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    move v2, p2

    :goto_0
    iget p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/BoundedLinearLayout;->mMaxHeight:I

    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    :cond_3
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method
