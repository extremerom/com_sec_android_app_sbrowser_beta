.class public Lcom/sec/android/app/sbrowser/common/main_view/NewTabAnimation;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field mAnimLayout:Landroid/view/View;

.field private mAnimLayoutId:I

.field mBottomMargin:Landroid/view/View;

.field private mMainViewDelegate:Lcom/sec/android/app/sbrowser/common/main_view/NewTabAnimDelegate;

.field mTopMargin:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/main_view/NewTabAnimation;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/common/main_view/NewTabAnimation;)Lcom/sec/android/app/sbrowser/common/main_view/NewTabAnimDelegate;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/main_view/NewTabAnimation;->mMainViewDelegate:Lcom/sec/android/app/sbrowser/common/main_view/NewTabAnimDelegate;

    return-object p0
.end method

.method private getTransFromYDelta()F
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/main_view/NewTabAnimation;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->getWindowHeight(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[getTransFromYDelta] windowHeight: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NewTabAnimation"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/main_view/NewTabAnimation;->mTopMargin:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/main_view/NewTabAnimation;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0715d5

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    const-string v4, "[getTransFromYDelta] topMarginHeight: "

    invoke-static {v1, v4, v2}, Lt/b;->x(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/main_view/NewTabAnimation;->mBottomMargin:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/main_view/NewTabAnimation;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v3, 0x7f07023a

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    const-string p0, "[getTransFromYDelta] bottomMarginHeight: "

    invoke-static {v3, p0, v2}, Lt/b;->x(ILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    int-to-float p0, v1

    sub-float/2addr v0, p0

    int-to-float p0, v3

    sub-float/2addr v0, p0

    return v0
.end method

.method private getVisibleBottomMargin()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/main_view/NewTabAnimation;->mMainViewDelegate:Lcom/sec/android/app/sbrowser/common/main_view/NewTabAnimDelegate;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/main_view/NewTabAnimDelegate;->getVisibleBottomMargin()I

    move-result p0

    return p0
.end method

.method private getVisibleTopMargin()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/main_view/NewTabAnimation;->mMainViewDelegate:Lcom/sec/android/app/sbrowser/common/main_view/NewTabAnimDelegate;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/main_view/NewTabAnimDelegate;->getVisibleTopMargin()I

    move-result p0

    return p0
.end method


# virtual methods
.method public hideAnimLayout()V
    .locals 2

    const-string v0, "NewTabAnimation"

    const-string v1, "[hideAnimLayout]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/main_view/NewTabAnimation;->mAnimLayout:Landroid/view/View;

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public inflateNewTabAnimLayout()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/main_view/NewTabAnimation;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0b06cc

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    const v1, 0x7f0b06cb

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/main_view/NewTabAnimation;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/common/main_view/NewTabAnimation;->setLayoutToShowAnim(I)V

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public isBitmapToolbarHidden()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/main_view/NewTabAnimation;->mMainViewDelegate:Lcom/sec/android/app/sbrowser/common/main_view/NewTabAnimDelegate;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/main_view/NewTabAnimDelegate;->isBitmapToolbarHidden()Z

    move-result p0

    return p0
.end method

.method public setLayoutMargins(Landroid/view/ViewGroup;Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/main_view/NewTabAnimation;->isBitmapToolbarHidden()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[setLayoutMargins] isTablet: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", bitmap layer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    const-string v2, "hidden"

    goto :goto_0

    :cond_0
    const-string v2, "shown"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NewTabAnimation"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x7f0b0db0

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/common/main_view/NewTabAnimation;->mTopMargin:Landroid/view/View;

    const v1, 0x7f0b01c6

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/common/main_view/NewTabAnimation;->mBottomMargin:Landroid/view/View;

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/common/main_view/NewTabAnimation;->mTopMargin:Landroid/view/View;

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/common/main_view/NewTabAnimation;->mBottomMargin:Landroid/view/View;

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/main_view/NewTabAnimation;->mTopMargin:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/common/main_view/NewTabAnimation;->mBottomMargin:Landroid/view/View;

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_2
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/common/main_view/NewTabAnimation;->mBottomMargin:Landroid/view/View;

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/common/main_view/NewTabAnimation;->mTopMargin:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/main_view/NewTabAnimation;->getVisibleTopMargin()I

    move-result v0

    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/main_view/NewTabAnimation;->mTopMargin:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/common/main_view/NewTabAnimation;->mBottomMargin:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/main_view/NewTabAnimation;->getVisibleBottomMargin()I

    move-result v0

    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/main_view/NewTabAnimation;->mBottomMargin:Landroid/view/View;

    invoke-virtual {p0, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setLayoutToShowAnim(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/main_view/NewTabAnimation;->mAnimLayoutId:I

    return-void
.end method

.method public setMainViewDelegate(Lcom/sec/android/app/sbrowser/common/main_view/NewTabAnimDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/main_view/NewTabAnimation;->mMainViewDelegate:Lcom/sec/android/app/sbrowser/common/main_view/NewTabAnimDelegate;

    return-void
.end method

.method public showAnimation(Z)V
    .locals 8

    const-string v0, "[showAnimation]"

    const-string v1, "NewTabAnimation"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/sec/android/app/sbrowser/common/main_view/NewTabAnimation;->mAnimLayoutId:I

    if-nez v0, :cond_0

    const-string p0, "[showAnimation] mAnimLayoutId is not set"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/main_view/NewTabAnimation;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    const-string p0, "[showAnimation] animLayout is null"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/main_view/NewTabAnimation;->setLayoutMargins(Landroid/view/ViewGroup;Z)V

    const p1, 0x7f0b00d8

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_2

    const-string p0, "[showAnimation] animView is null"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const v2, 0x7f0b0407

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0b0c5d

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz v2, :cond_6

    if-nez p1, :cond_3

    goto/16 :goto_2

    :cond_3
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isContentDarkModeEnabled()Z

    move-result v3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isHighContrastModeEnabled()Z

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[showAnimation] isContentDarkMode: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[showAnimation] isHighContrastMode: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v3, :cond_5

    if-eqz v4, :cond_4

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/main_view/NewTabAnimation;->mActivity:Landroid/app/Activity;

    const v4, 0x7f060d50

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    goto :goto_1

    :cond_5
    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/main_view/NewTabAnimation;->mActivity:Landroid/app/Activity;

    const v4, 0x7f060d52

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    :goto_1
    invoke-virtual {p1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v3, Landroid/view/animation/AlphaAnimation;

    const v4, 0x3e99999a    # 0.3f

    const/4 v5, 0x0

    invoke-direct {v3, v5, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v6, 0x12c

    invoke-virtual {v3, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    invoke-virtual {v2, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/main_view/NewTabAnimation;->getTransFromYDelta()F

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[showAnimation] fromY: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v1, v5, v5, v2, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/InterpolatorUtil;->sineInOut90()Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v2, 0x190

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v2, Lcom/sec/android/app/sbrowser/common/main_view/NewTabAnimation$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/common/main_view/NewTabAnimation$1;-><init>(Lcom/sec/android/app/sbrowser/common/main_view/NewTabAnimation;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/main_view/NewTabAnimation;->mAnimLayout:Landroid/view/View;

    return-void

    :cond_6
    :goto_2
    const-string p0, "[showAnimation] dimView or tabView is null"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
