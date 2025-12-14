.class Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$FloatingBehavior;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FloatingBehavior"
.end annotation


# instance fields
.field private mBackInfobarHeight:I

.field private mLayout:Landroid/widget/FrameLayout;

.field private mLeftShadowView:Landroid/view/View;

.field private mRightShadowView:Landroid/view/View;

.field private final mShadowWidth:I


# direct methods
.method public constructor <init>(Landroid/widget/FrameLayout;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$FloatingBehavior;->mLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070679

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$FloatingBehavior;->mShadowWidth:I

    const v1, 0x7f070676

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$FloatingBehavior;->mBackInfobarHeight:I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$FloatingBehavior;->updateWrapperBackground()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$FloatingBehavior;->initShadowViews()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$FloatingBehavior;->mLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$FloatingBehavior;->mLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$FloatingBehavior;->mLayout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$FloatingBehavior;->mLeftShadowView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$FloatingBehavior;->mLayout:Landroid/widget/FrameLayout;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$FloatingBehavior;->mRightShadowView:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private initShadowViews()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RtlHardcoded"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$FloatingBehavior;->mLeftShadowView:Landroid/view/View;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$FloatingBehavior;->mLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$FloatingBehavior;->mLeftShadowView:Landroid/view/View;

    const v1, 0x7f080287

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iget v2, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$FloatingBehavior;->mShadowWidth:I

    neg-int v2, v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$FloatingBehavior;->mLeftShadowView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/view/View;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$FloatingBehavior;->mLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$FloatingBehavior;->mRightShadowView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, 0x5

    invoke-direct {v0, v3, v3, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iget v1, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$FloatingBehavior;->mShadowWidth:I

    neg-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$FloatingBehavior;->mRightShadowView:Landroid/view/View;

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleX(F)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$FloatingBehavior;->mRightShadowView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateWrapperBackground()V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$FloatingBehavior;->mLayout:Landroid/widget/FrameLayout;

    check-cast v0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;->i(Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/infobars/InfoBarWrapper;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    move v3, v1

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/infobars/InfoBarWrapper;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/infobars/InfoBarWrapper;->setBackground()V

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/infobars/InfoBarWrapper;

    iget v5, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$FloatingBehavior;->mBackInfobarHeight:I

    mul-int/2addr v5, v3

    add-int/2addr v5, v2

    invoke-virtual {v4, v1, v1, v1, v5}, Landroid/view/View;->setPadding(IIII)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public afterOnMeasure(I)V
    .locals 2

    iget v0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$FloatingBehavior;->mShadowWidth:I

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$FloatingBehavior;->mLeftShadowView:Landroid/view/View;

    invoke-virtual {v1, v0, p1}, Landroid/view/View;->measure(II)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$FloatingBehavior;->mRightShadowView:Landroid/view/View;

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method public beforeOnMeasure(I)I
    .locals 5

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$FloatingBehavior;->getDpSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$FloatingBehavior;->mLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070673

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$FloatingBehavior;->getDpSize(I)I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$FloatingBehavior;->mLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070674

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$FloatingBehavior;->getDpSize(I)I

    move-result p0

    add-int/2addr v2, p0

    add-int/2addr v2, v1

    const/16 p0, 0x1df

    if-gt v2, p0, :cond_0

    return p1

    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p0

    const/16 p1, 0x2a0

    if-gt v2, p1, :cond_1

    int-to-float p1, v0

    const v0, 0x3f2147ae    # 0.63f

    :goto_0
    mul-float/2addr p1, v0

    float-to-int p1, p1

    goto :goto_1

    :cond_1
    const/16 p1, 0x3d9

    if-gt v2, p1, :cond_2

    int-to-float p1, v0

    const v0, 0x3f0ccccd    # 0.55f

    goto :goto_0

    :cond_2
    const/16 p1, 0x77f

    if-gt v2, p1, :cond_3

    int-to-float p1, v0

    const v0, 0x3eb33333    # 0.35f

    goto :goto_0

    :cond_3
    int-to-float p1, v0

    const/high16 v0, 0x3e800000    # 0.25f

    goto :goto_0

    :goto_1
    invoke-static {p1, p0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0
.end method

.method public getDpSize(I)I
    .locals 2

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$FloatingBehavior;->mLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "window"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    int-to-float p0, p1

    iget p1, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p0, p1

    float-to-int p0, p0

    return p0
.end method

.method public updateShadowPosition()V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$FloatingBehavior;->mLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$FloatingBehavior;->mLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$FloatingBehavior;->mLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$FloatingBehavior;->mLeftShadowView:Landroid/view/View;

    if-eq v3, v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$FloatingBehavior;->mRightShadowView:Landroid/view/View;

    if-eq v3, v4, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$FloatingBehavior;->mLeftShadowView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setY(F)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$FloatingBehavior;->mRightShadowView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setY(F)V

    return-void
.end method
