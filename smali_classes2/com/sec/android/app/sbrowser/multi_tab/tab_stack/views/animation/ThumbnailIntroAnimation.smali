.class public Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation;
.super Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailAnimation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation$Delegate;
    }
.end annotation


# instance fields
.field protected mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation$Delegate;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailAnimation;-><init>(Landroid/app/Activity;)V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation;Landroid/view/View;)Landroid/graphics/Rect;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation;->lambda$startIntroAnimation$0(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation;->lambda$startIntroAnimation$1()V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation;->lambda$startIntroAnimation$2(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    return-void
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation;->showBottomBarAnimation(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$startIntroAnimation$0(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation$Delegate;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailAnimation$Delegate;->getTabViewLocation(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$startIntroAnimation$1()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation$Delegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailAnimation$Delegate;->isMultiTabRemoving()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation$Delegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation$Delegate;->isMultiTabDetached()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation$Delegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation$Delegate;->updateUnloadedTabThumbnails()V

    return-void

    :cond_1
    :goto_0
    const-string p0, "ThumbnailIntroAnimation"

    const-string v0, "[startIntroAnimation] isMultiTabRemoving or isMultiTabDetached"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synthetic lambda$startIntroAnimation$2(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->hide()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation$Delegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation$Delegate;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->hide()V

    :cond_1
    :goto_0
    return-void
.end method

.method private showBottomBarAnimation(Ljava/lang/Runnable;)V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation$Delegate;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailAnimation$Delegate;->getRecents()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation$Delegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailAnimation$Delegate;->getRecents()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b09d9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailAnimation;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07151b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    new-instance v2, Landroid/view/animation/TranslateAnimation;

    int-to-float v1, v1

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, v1, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/InterpolatorUtil;->sineInOut70()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation$Delegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailAnimation$Delegate;->getAnimDuration()I

    move-result v1

    int-to-long v3, v1

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemSettings;->getAnimationDurationScale()F

    move-result v1

    invoke-virtual {v2, v1}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    new-instance v1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation$2;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation$2;-><init>(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method


# virtual methods
.method public setDelegate(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation$Delegate;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation$Delegate;

    return-void
.end method

.method public startIntroAnimation(Landroid/view/View;IZ)V
    .locals 12

    const-string v0, "ThumbnailIntroAnimation"

    const-string v1, "[startIntroAnimation]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation$Delegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation$Delegate;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation$Delegate;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailAnimation$Delegate;->getRecents()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0b09d9

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailAnimation;->mActivity:Landroid/app/Activity;

    const v4, 0x7f0b0ce6

    invoke-virtual {v3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewStub;

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailAnimation;->mActivity:Landroid/app/Activity;

    const v4, 0x7f0b0ce5

    invoke-virtual {v3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v3

    :goto_0
    invoke-static {v3}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation$Delegate;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailAnimation$Delegate;->isHideStatusBarEnabled()Z

    move-result v4

    invoke-virtual {p0, v1, v3, v4}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailAnimation;->addCutOutMarginIfNeeded(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Landroid/view/View;Z)V

    const/4 v4, 0x0

    if-nez v2, :cond_1

    const-string p1, "[startIntroAnimation] returned by bottombar is null"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation$Delegate;

    invoke-interface {p0, v4}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation$Delegate;->setFirstIntroAnimation(Z)V

    return-void

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabSettings;->isGridViewType()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v4

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation$Delegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailAnimation$Delegate;->getHeaderHeight()I

    move-result v0

    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation$Delegate;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailAnimation$Delegate;->getRecents()Landroid/view/View;

    move-result-object v2

    const v5, 0x7f0b0877

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v6

    mul-float/2addr v6, v5

    invoke-virtual {v2, v6}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->setMarginX(F)V

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    sub-int/2addr v5, v0

    int-to-float v5, v5

    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result v6

    mul-float/2addr v6, v5

    invoke-virtual {v2, v6}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->setMarginY(F)V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation$Delegate;

    invoke-interface {v5}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailAnimation$Delegate;->shouldUseDarkTheme()Z

    move-result v5

    invoke-virtual {v2, v5}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->setDarkThemeEnabled(Z)V

    if-eqz p3, :cond_3

    invoke-virtual {v2, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->setCustomRatio(Landroid/view/View;)V

    :cond_3
    iget-object p3, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation$Delegate;

    invoke-interface {p3}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailAnimation$Delegate;->getTabLoader()Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->getFullScreenThumbnail(I)Landroid/graphics/Bitmap;

    move-result-object p3

    const/4 v5, 0x1

    invoke-virtual {v2, p3, v5}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->setImageBitmap(Landroid/graphics/Bitmap;I)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation$Delegate;

    invoke-interface {p3, p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation$Delegate;->changeTabViewVisibility(I)V

    int-to-float p3, v0

    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result v0

    mul-float v8, v0, p3

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailAnimation;->getVisibleTopBarHeight(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)F

    move-result v9

    new-instance v11, Landroid/graphics/Point;

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation$Delegate;

    invoke-interface {p3}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailAnimation$Delegate;->getRecents()Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation$Delegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailAnimation$Delegate;->getRecents()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-direct {v11, p3, v0}, Landroid/graphics/Point;-><init>(II)V

    new-instance p3, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/OutroAnimationUpdateListener;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailAnimation;->mActivity:Landroid/app/Activity;

    new-instance v7, LHa/a;

    const/16 v0, 0x11

    invoke-direct {v7, v0, p0, p1}, LHa/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    const/4 v10, 0x1

    move-object v4, p3

    move-object v6, v3

    invoke-direct/range {v4 .. v11}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/OutroAnimationUpdateListener;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/OutroAnimationUpdateListener$Delegate;FFZLandroid/graphics/Point;)V

    new-instance p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/a;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/a;-><init>(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation;)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/InterpolatorUtil;->sineInOut70()Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation$Delegate;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailAnimation$Delegate;->getAnimDuration()I

    move-result v2

    int-to-long v4, v2

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation$1;

    invoke-direct {v2, p0, p2, p1, v3}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation$1;-><init>(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation;ILjava/lang/Runnable;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation$Delegate;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailAnimation$Delegate;->getRecents()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_4

    new-instance p1, Landroid/os/Handler;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailAnimation;->mActivity:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lcom/sec/android/app/sbrowser/main_activity/a;

    const/4 v2, 0x6

    invoke-direct {p2, v2, p0, v1}, Lcom/sec/android/app/sbrowser/main_activity/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    invoke-virtual {v0, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
