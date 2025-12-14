.class public Lcom/sec/android/app/sbrowser/toolbar/ToolbarProgress;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mBaseLayout:Landroid/widget/RelativeLayout;

.field private mContext:Landroid/content/Context;

.field private mProgressBGColor:I

.field private mProgressBar:Landroidx/appcompat/widget/SeslProgressBar;

.field private mProgressBarAnimator:Landroid/animation/ValueAnimator;

.field private mProgressColor:I

.field private mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

.field private mToolbarDelegate:Lcom/sec/android/app/sbrowser/toolbar/ToolbarDelegate;

.field private mTopProgressBar:Landroidx/appcompat/widget/SeslProgressBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/RelativeLayout;Lcom/sec/android/app/sbrowser/toolbar/ToolbarDelegate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarProgress;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarProgress;->mBaseLayout:Landroid/widget/RelativeLayout;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarProgress;->mToolbarDelegate:Lcom/sec/android/app/sbrowser/toolbar/ToolbarDelegate;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/toolbar/ToolbarProgress;Landroidx/appcompat/widget/SeslProgressBar;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarProgress;->lambda$updateProgressBar$0(Landroidx/appcompat/widget/SeslProgressBar;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private synthetic lambda$updateProgressBar$0(Landroidx/appcompat/widget/SeslProgressBar;Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarProgress;->mToolbarDelegate:Lcom/sec/android/app/sbrowser/toolbar/ToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarDelegate;->isTabBarShowing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SeslProgressBar;->setProgress(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarProgress;->getTopProgressBar()Landroidx/appcompat/widget/SeslProgressBar;

    move-result-object p0

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SeslProgressBar;->setProgress(I)V

    return-void
.end method


# virtual methods
.method public getProgressBar()Landroidx/appcompat/widget/SeslProgressBar;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarProgress;->mProgressBar:Landroidx/appcompat/widget/SeslProgressBar;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarProgress;->mBaseLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f0b0d97

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SeslProgressBar;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarProgress;->mProgressBar:Landroidx/appcompat/widget/SeslProgressBar;

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarProgress;->mProgressBar:Landroidx/appcompat/widget/SeslProgressBar;

    return-object p0
.end method

.method public getProgressbarVisibility()I
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarProgress;->getProgressBar()Landroidx/appcompat/widget/SeslProgressBar;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    return p0
.end method

.method public getTopProgressBar()Landroidx/appcompat/widget/SeslProgressBar;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarProgress;->mTopProgressBar:Landroidx/appcompat/widget/SeslProgressBar;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarProgress;->mBaseLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f0b0db3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SeslProgressBar;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarProgress;->mTopProgressBar:Landroidx/appcompat/widget/SeslProgressBar;

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarProgress;->mTopProgressBar:Landroidx/appcompat/widget/SeslProgressBar;

    return-object p0
.end method

.method public hideProgressbar()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarProgress;->getProgressBar()Landroidx/appcompat/widget/SeslProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarProgress;->getTopProgressBar()Landroidx/appcompat/widget/SeslProgressBar;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setBackground(Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarProgress;->updateProgressColors(Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;)V

    iget p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarProgress;->mProgressColor:I

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarUtil;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iget v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarProgress;->mProgressBGColor:I

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarUtil;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarProgress;->getProgressBar()Landroidx/appcompat/widget/SeslProgressBar;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/appcompat/widget/SeslProgressBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarProgress;->getProgressBar()Landroidx/appcompat/widget/SeslProgressBar;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/SeslProgressBar;->setProgressBackgroundTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setLoadStartProgress(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isNativePageUrl(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarProgress;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isAboutBlankUrl()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarProgress;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isUnifiedHomepageUrl()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarProgress;->setProgress(I)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x64

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarProgress;->setProgress(I)V

    :goto_0
    return-void
.end method

.method public setProgress(I)V
    .locals 2

    if-eqz p1, :cond_0

    const/16 v0, 0x64

    if-ne p1, v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarProgress;->getTopProgressBar()Landroidx/appcompat/widget/SeslProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarProgress;->getTopProgressBar()Landroidx/appcompat/widget/SeslProgressBar;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SeslProgressBar;->setProgress(I)V

    return-void
.end method

.method public setProgressbarVisibility(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarProgress;->mProgressBar:Landroidx/appcompat/widget/SeslProgressBar;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarProgress;->mTopProgressBar:Landroidx/appcompat/widget/SeslProgressBar;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarProgress;->mToolbarDelegate:Lcom/sec/android/app/sbrowser/toolbar/ToolbarDelegate;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarDelegate;->isTabBarShowing()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarProgress;->mProgressBar:Landroidx/appcompat/widget/SeslProgressBar;

    invoke-virtual {p1}, Landroidx/appcompat/widget/SeslProgressBar;->getProgress()I

    move-result p1

    if-lez p1, :cond_2

    const/16 v0, 0x64

    if-ge p1, v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarProgress;->getProgressBar()Landroidx/appcompat/widget/SeslProgressBar;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarProgress;->getProgressBar()Landroidx/appcompat/widget/SeslProgressBar;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarProgress;->getTopProgressBar()Landroidx/appcompat/widget/SeslProgressBar;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setTabDelegate(Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarProgress;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    return-void
.end method

.method public setTopProgressDrawable()V
    .locals 3

    const-string v0, "si__ToolbarProgress"

    const-string v1, "setTopProgressDrawable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarProgress;->mProgressColor:I

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarUtil;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarProgress;->mProgressBGColor:I

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarUtil;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarProgress;->getTopProgressBar()Landroidx/appcompat/widget/SeslProgressBar;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/appcompat/widget/SeslProgressBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarProgress;->getTopProgressBar()Landroidx/appcompat/widget/SeslProgressBar;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/SeslProgressBar;->setProgressBackgroundTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public showProgressbar()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarProgress;->getTopProgressBar()Landroidx/appcompat/widget/SeslProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarProgress;->getProgressBar()Landroidx/appcompat/widget/SeslProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/widget/SeslProgressBar;->getProgress()I

    move-result v0

    if-lez v0, :cond_0

    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarProgress;->mToolbarDelegate:Lcom/sec/android/app/sbrowser/toolbar/ToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarDelegate;->isTabBarShowing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarProgress;->getProgressBar()Landroidx/appcompat/widget/SeslProgressBar;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public updateProgressBar(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarProgress;->getProgressBar()Landroidx/appcompat/widget/SeslProgressBar;

    move-result-object v0

    const/16 v1, 0x64

    const/4 v2, 0x0

    if-ne p1, v1, :cond_0

    move p1, v2

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarProgress;->mProgressBarAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    if-nez p1, :cond_2

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/SeslProgressBar;->setProgress(I)V

    const/16 p0, 0x8

    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0}, Landroidx/appcompat/widget/SeslProgressBar;->getProgress()I

    move-result v1

    if-ge v1, p1, :cond_3

    invoke-virtual {v0}, Landroidx/appcompat/widget/SeslProgressBar;->getProgress()I

    move-result v1

    filled-new-array {v1, p1}, [I

    move-result-object p1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarProgress;->mProgressBarAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarProgress;->mProgressBarAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x32

    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarProgress;->mProgressBarAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sec/android/app/sbrowser/toolbar/z;

    invoke-direct {v1, p0, v0}, Lcom/sec/android/app/sbrowser/toolbar/z;-><init>(Lcom/sec/android/app/sbrowser/toolbar/ToolbarProgress;Landroidx/appcompat/widget/SeslProgressBar;)V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarProgress;->mProgressBarAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_3
    :goto_0
    return-void
.end method

.method public updateProgressColors(Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;)V
    .locals 3

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;->isHighContrast()Z

    move-result v0

    const v1, 0x7f060d7a

    if-eqz v0, :cond_0

    const p1, 0x7f060d7e

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;->isNightMode()Z

    move-result v0

    if-eqz v0, :cond_1

    const p1, 0x7f060d81

    goto/16 :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;->isIncognito()Z

    move-result v0

    if-eqz v0, :cond_2

    const p1, 0x7f060d84

    goto/16 :goto_1

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarProgress;->mToolbarDelegate:Lcom/sec/android/app/sbrowser/toolbar/ToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarDelegate;->isTabEditMode()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;->isReaderThemeBlack()Z

    move-result v0

    if-eqz v0, :cond_3

    const p1, 0x7f060d82

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarProgress;->mToolbarDelegate:Lcom/sec/android/app/sbrowser/toolbar/ToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarDelegate;->isTabEditMode()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;->isReaderThemeSepia()Z

    move-result v0

    if-eqz v0, :cond_4

    const p1, 0x7f060d83

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;->hasTheme()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarProgress;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isFocusLayoutType(Landroid/content/Context;)Z

    move-result v0

    const v1, 0x7f060d7f

    const v2, 0x7f060d7c

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;->isLightTheme()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;->getTheme()Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;->getBottomTextColor()I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarProgress;->mProgressColor:I

    move v1, v2

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;->getThemeColor()I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarProgress;->mProgressColor:I

    :goto_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarProgress;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarProgress;->mProgressBGColor:I

    return-void

    :cond_6
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;->isLightTheme()Z

    move-result p1

    if-eqz p1, :cond_7

    const p1, 0x7f060d80

    goto :goto_1

    :cond_7
    const p1, 0x7f060d7d

    move v1, v2

    goto :goto_1

    :cond_8
    const p1, 0x7f060d7b

    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarProgress;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarProgress;->mProgressColor:I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarProgress;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarProgress;->mProgressBGColor:I

    return-void
.end method
