.class Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;->onExpandStartAnimation(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/animation/AnimatorSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;

.field final synthetic val$alphaAniSet:Landroid/animation/AnimatorSet;

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
.method public constructor <init>(Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;IFLandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/animation/AnimatorSet;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher$4;->this$0:Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;

    iput p2, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher$4;->val$popupWidth:I

    iput p3, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher$4;->val$density:F

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher$4;->val$targetView:Landroid/view/View;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher$4;->val$translateView:Landroid/view/View;

    iput-object p6, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher$4;->val$splitView:Landroid/view/View;

    iput-object p7, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher$4;->val$moreView:Landroid/view/View;

    iput-object p8, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher$4;->val$closeView:Landroid/view/View;

    iput-object p9, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher$4;->val$rootView:Landroid/view/View;

    iput-object p10, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher$4;->val$rootTargetView:Landroid/view/View;

    iput-object p11, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher$4;->val$alphaAniSet:Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onAnimationEnd "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher$4;->val$popupWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher$4;->val$density:F

    mul-float/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher$4;->this$0:Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;->c(Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TransBarViewModeSwitcher"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher$4;->this$0:Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;->c(Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;)Landroid/widget/LinearLayout;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher$4;->val$targetView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher$4;->val$translateView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher$4;->val$splitView:Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher$4;->val$moreView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher$4;->val$closeView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher$4;->this$0:Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;->e(Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher$4;->this$0:Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;->b(Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher$4;->val$rootView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher$4;->this$0:Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;->d(Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;)Z

    move-result v1

    const v2, 0x44038000    # 526.0f

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher$4;->val$density:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher$4;->val$rootView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher$4;->val$rootView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f07163b

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher$4;->val$rootView:Landroid/view/View;

    invoke-virtual {v1, p1, p1, p1, p1}, Landroid/view/View;->setPadding(IIII)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher$4;->val$rootTargetView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x2

    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/high16 v1, 0x41400000    # 12.0f

    iget v3, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher$4;->val$density:F

    mul-float/2addr v3, v1

    float-to-int v1, v3

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    const/high16 v1, 0x41700000    # 15.0f

    iget v3, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher$4;->val$density:F

    mul-float/2addr v3, v1

    float-to-int v1, v3

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher$4;->val$rootTargetView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher$4;->this$0:Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;->d(Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x2

    new-array p1, p1, [I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher$4;->val$rootView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->getLocationInWindow([I)V

    aget p1, p1, v0

    iget v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher$4;->val$density:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    sub-int/2addr p1, v0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher$4;->val$rootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int/2addr v0, p1

    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher$4;->val$rootView:Landroid/view/View;

    int-to-float v1, v0

    invoke-virtual {p1, v1}, Landroid/view/View;->setX(F)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher$4;->this$0:Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;->h(Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher$4;->val$alphaAniSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method
