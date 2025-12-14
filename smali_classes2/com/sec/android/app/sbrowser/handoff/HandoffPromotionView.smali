.class Lcom/sec/android/app/sbrowser/handoff/HandoffPromotionView;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/handoff/HandoffPromotionView$Callback;
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field mButton:Landroid/widget/LinearLayout;

.field mButtonLayout:Landroid/view/View;

.field private mCallback:Lcom/sec/android/app/sbrowser/handoff/HandoffPromotionView$Callback;

.field mParent:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/handoff/HandoffPromotionView;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/handoff/HandoffPromotionView;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/handoff/HandoffPromotionView;)Lcom/sec/android/app/sbrowser/handoff/HandoffPromotionView$Callback;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/handoff/HandoffPromotionView;->mCallback:Lcom/sec/android/app/sbrowser/handoff/HandoffPromotionView$Callback;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/handoff/HandoffPromotionView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/handoff/HandoffPromotionView;->dismissPromotion()V

    return-void
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/handoff/HandoffPromotionView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/handoff/HandoffPromotionView;->startFadeOutAnimation()V

    return-void
.end method

.method private dismissPromotion()V
    .locals 2

    const-string v0, "HandoffPromotionView"

    const-string v1, "dismissPromotion"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/handoff/HandoffPromotionView;->mButton:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/handoff/HandoffPromotionView;->mParent:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/handoff/HandoffPromotionView;->mButtonLayout:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public static bridge synthetic e(Lcom/sec/android/app/sbrowser/handoff/HandoffPromotionView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/handoff/HandoffPromotionView;->startFadeOutTimer()V

    return-void
.end method

.method private varargs getAlphaAnimator([F)Landroid/animation/ValueAnimator;
    .locals 1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/handoff/HandoffPromotionView$6;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/handoff/HandoffPromotionView$6;-><init>(Lcom/sec/android/app/sbrowser/handoff/HandoffPromotionView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p1
.end method

.method private getBookmarkBarHeight()I
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/handoff/HandoffPromotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isBookmarkBarEnabled(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/handoff/HandoffPromotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0701e3

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private getBottomBarHeight()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/handoff/HandoffPromotionView;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTabletLayout(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/handoff/HandoffPromotionView;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isLandscapeView(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isAutoLayout()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/handoff/HandoffPromotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f07023a

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    :goto_0
    return p0
.end method

.method private getBottomMargin()I
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/handoff/HandoffPromotionView;->getBottomBarHeight()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/handoff/HandoffPromotionView;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isFocusLayoutType(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/handoff/HandoffPromotionView;->getToolBarHeight()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method private varargs getScaleAnimator([F)Landroid/animation/ValueAnimator;
    .locals 1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    new-instance v0, Lh2/c;

    invoke-direct {v0}, Lh2/c;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/handoff/HandoffPromotionView$7;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/handoff/HandoffPromotionView$7;-><init>(Lcom/sec/android/app/sbrowser/handoff/HandoffPromotionView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p1
.end method

.method private getTabBarHeight()I
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/handoff/HandoffPromotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isTabBarEnabled(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/handoff/HandoffPromotionView;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isTabBar1LineLayout(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/handoff/HandoffPromotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0714c4

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private getToolBarHeight()I
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/handoff/HandoffPromotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0715d5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/handoff/HandoffPromotionView;->getTabBarHeight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/handoff/HandoffPromotionView;->getBookmarkBarHeight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/handoff/HandoffPromotionView;->getTransBarHeight()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method private getTransBarHeight()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/handoff/HandoffPromotionView;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/extensions/SixUtil;->isTransBarShowing(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/handoff/HandoffPromotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f071646

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private startFadeInAnimation()V
    .locals 5

    const-string v0, "HandoffPromotionView"

    const-string v1, "startFadeInAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/handoff/HandoffPromotionView;->getAlphaAnimator([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    new-array v2, v0, [F

    fill-array-data v2, :array_1

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/handoff/HandoffPromotionView;->getScaleAnimator([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v0, v0, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v1, v0, v4

    const/4 v1, 0x1

    aput-object v2, v0, v1

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {v3, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v0, Lcom/sec/android/app/sbrowser/handoff/HandoffPromotionView$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/handoff/HandoffPromotionView$3;-><init>(Lcom/sec/android/app/sbrowser/handoff/HandoffPromotionView;)V

    invoke-virtual {v3, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private startFadeOutAnimation()V
    .locals 3

    const-string v0, "HandoffPromotionView"

    const-string v1, "startFadeOutAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/handoff/HandoffPromotionView;->getAlphaAnimator([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sec/android/app/sbrowser/handoff/HandoffPromotionView$5;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/handoff/HandoffPromotionView$5;-><init>(Lcom/sec/android/app/sbrowser/handoff/HandoffPromotionView;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private startFadeOutTimer()V
    .locals 3

    const-string v0, "HandoffPromotionView"

    const-string v1, "startFadeOutTimer"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/sec/android/app/sbrowser/handoff/HandoffPromotionView$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/handoff/HandoffPromotionView$4;-><init>(Lcom/sec/android/app/sbrowser/handoff/HandoffPromotionView;)V

    new-instance p0, Ljava/util/Timer;

    invoke-direct {p0}, Ljava/util/Timer;-><init>()V

    const-wide/16 v1, 0xabe

    invoke-virtual {p0, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method private updateBottomOffset()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/handoff/HandoffPromotionView;->mButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/handoff/HandoffPromotionView;->getBottomMargin()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/handoff/HandoffPromotionView;->mButton:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public showPromotionButton(Landroid/app/Activity;Landroid/os/Bundle;Lcom/sec/android/app/sbrowser/handoff/HandoffPromotionView$Callback;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/handoff/HandoffPromotionView;->mActivity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/handoff/HandoffPromotionView;->mCallback:Lcom/sec/android/app/sbrowser/handoff/HandoffPromotionView$Callback;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const p3, 0x1020002

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/handoff/HandoffPromotionView;->mParent:Landroid/view/ViewGroup;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/handoff/HandoffPromotionView;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p3, 0x7f0e0449

    const/4 v0, 0x0

    invoke-virtual {p1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/handoff/HandoffPromotionView;->mButtonLayout:Landroid/view/View;

    const p3, 0x7f0b057d

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/handoff/HandoffPromotionView;->mButton:Landroid/widget/LinearLayout;

    const-string p1, "senderName"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/handoff/HandoffPromotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const p1, 0x7f14058a

    invoke-virtual {p3, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const v0, 0x7f140589

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p3, v0, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iget-object p3, p0, Lcom/sec/android/app/sbrowser/handoff/HandoffPromotionView;->mButtonLayout:Landroid/view/View;

    const v0, 0x7f0b057f

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string p1, "deviceType"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1

    const p1, 0x7f080315

    goto :goto_1

    :cond_1
    const/4 p2, 0x1

    if-ne p1, p2, :cond_2

    const p1, 0x7f08035c

    goto :goto_1

    :cond_2
    const/4 p2, 0x2

    if-ne p1, p2, :cond_3

    const p1, 0x7f08036f

    goto :goto_1

    :cond_3
    const p1, 0x7f0802e6

    :goto_1
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/handoff/HandoffPromotionView;->mButtonLayout:Landroid/view/View;

    const p3, 0x7f0b057e

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/handoff/HandoffPromotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {p3, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/handoff/HandoffPromotionView;->updateBottomOffset()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/handoff/HandoffPromotionView;->mButton:Landroid/widget/LinearLayout;

    new-instance p2, Lcom/sec/android/app/sbrowser/handoff/HandoffPromotionView$1;

    invoke-direct {p2, p0}, Lcom/sec/android/app/sbrowser/handoff/HandoffPromotionView$1;-><init>(Lcom/sec/android/app/sbrowser/handoff/HandoffPromotionView;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/handoff/HandoffPromotionView;->mButtonLayout:Landroid/view/View;

    new-instance p2, Lcom/sec/android/app/sbrowser/handoff/HandoffPromotionView$2;

    invoke-direct {p2, p0}, Lcom/sec/android/app/sbrowser/handoff/HandoffPromotionView$2;-><init>(Lcom/sec/android/app/sbrowser/handoff/HandoffPromotionView;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/handoff/HandoffPromotionView;->mParent:Landroid/view/ViewGroup;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/handoff/HandoffPromotionView;->mButtonLayout:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/handoff/HandoffPromotionView;->mButtonLayout:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/handoff/HandoffPromotionView;->startFadeInAnimation()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/handoff/HandoffPromotionView;->mActivity:Landroid/app/Activity;

    const p1, 0x7f140c3a

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "201"

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
