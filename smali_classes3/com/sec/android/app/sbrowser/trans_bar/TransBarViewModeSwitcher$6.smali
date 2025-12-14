.class Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;->onCollapseStartAnimation(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/animation/ObjectAnimator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;

.field final synthetic val$alphaPopup:Landroid/animation/ObjectAnimator;

.field final synthetic val$closeView:Landroid/view/View;

.field final synthetic val$density:F

.field final synthetic val$moreView:Landroid/view/View;

.field final synthetic val$popupWidth:I

.field final synthetic val$rootTargetView:Landroid/view/View;

.field final synthetic val$rootView:Landroid/view/View;

.field final synthetic val$splitView:Landroid/view/View;

.field final synthetic val$targetView:Landroid/view/View;

.field final synthetic val$translateView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;IFLandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/animation/ObjectAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher$6;->this$0:Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;

    iput p2, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher$6;->val$popupWidth:I

    iput p3, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher$6;->val$density:F

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher$6;->val$targetView:Landroid/view/View;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher$6;->val$translateView:Landroid/view/View;

    iput-object p6, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher$6;->val$splitView:Landroid/view/View;

    iput-object p7, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher$6;->val$moreView:Landroid/view/View;

    iput-object p8, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher$6;->val$closeView:Landroid/view/View;

    iput-object p9, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher$6;->val$rootView:Landroid/view/View;

    iput-object p10, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher$6;->val$rootTargetView:Landroid/view/View;

    iput-object p11, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher$6;->val$alphaPopup:Landroid/animation/ObjectAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onAnimationEnd "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher$6;->val$popupWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher$6;->val$density:F

    mul-float/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher$6;->this$0:Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;->c(Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TransBarViewModeSwitcher"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher$6;->val$targetView:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher$6;->val$translateView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher$6;->val$splitView:Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher$6;->val$moreView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher$6;->val$closeView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher$6;->this$0:Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;->b(Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher$6;->this$0:Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;->c(Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;)Landroid/widget/LinearLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher$6;->val$rootView:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher$6;->val$rootView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const/4 v1, -0x2

    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher$6;->val$rootView:Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher$6;->val$rootView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f07163b

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher$6;->val$rootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07163c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher$6;->val$rootView:Landroid/view/View;

    invoke-virtual {v3, v2, p1, v2, p1}, Landroid/view/View;->setPadding(IIII)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher$6;->val$rootTargetView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher$6;->val$rootTargetView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher$6;->this$0:Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher$6;->val$rootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-static {p1, v1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;->g(Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher$6;->this$0:Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;

    iget v1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher$6;->val$popupWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher$6;->val$density:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {p1, v1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;->f(Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher$6;->val$rootView:Landroid/view/View;

    invoke-virtual {p1, v0, v0}, Landroid/view/View;->measure(II)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher$6;->this$0:Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;->d(Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    new-array p1, p1, [I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher$6;->val$rootView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher$6;->val$rootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher$6;->val$rootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    aget p1, p1, v0

    add-int/2addr v1, p1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher$6;->val$rootView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher$6;->val$rootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int v1, p1, v0

    :goto_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher$6;->val$rootView:Landroid/view/View;

    int-to-float v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setX(F)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher$6;->this$0:Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;

    invoke-static {p1, v1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;->h(Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher$6;->val$alphaPopup:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method
