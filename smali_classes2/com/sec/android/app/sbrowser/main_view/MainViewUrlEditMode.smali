.class Lcom/sec/android/app/sbrowser/main_view/MainViewUrlEditMode;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDummyUrlbar:Landroid/view/View;

.field private final mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

.field private final mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

.field private mUrlEditBackgroundView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewUrlEditMode;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewUrlEditMode;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewUrlEditMode;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    return-void
.end method

.method public static synthetic a(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewUrlEditMode;->lambda$addViewIfNeeded$1(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method private addViewIfNeeded()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewUrlEditMode;->mUrlEditBackgroundView:Landroid/view/View;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewUrlEditMode;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewUrlEditMode;->mUrlEditBackgroundView:Landroid/view/View;

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewUrlEditMode;->mUrlEditBackgroundView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewUrlEditMode;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewUrlEditMode;->mUrlEditBackgroundView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewUrlEditMode;->mUrlEditBackgroundView:Landroid/view/View;

    new-instance v1, Lcom/sec/android/app/sbrowser/main_view/V;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewUrlEditMode;->mUrlEditBackgroundView:Landroid/view/View;

    new-instance v0, Lcom/sec/android/app/sbrowser/main_view/W;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V

    :cond_0
    return-void
.end method

.method public static synthetic b(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewUrlEditMode;->lambda$addViewIfNeeded$0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/main_view/MainViewUrlEditMode;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewUrlEditMode;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    return-object p0
.end method

.method private clearDummyUrlbar()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewUrlEditMode;->mDummyUrlbar:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewUrlEditMode;->mDummyUrlbar:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewUrlEditMode;->mDummyUrlbar:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewUrlEditMode;->mDummyUrlbar:Landroid/view/View;

    return-void
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/main_view/MainViewUrlEditMode;)Lcom/sec/android/app/sbrowser/toolbar/Toolbar;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewUrlEditMode;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    return-object p0
.end method

.method private hideBackgroundView()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewUrlEditMode;->mUrlEditBackgroundView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewUrlEditMode;->mUrlEditBackgroundView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewUrlEditMode;->mUrlEditBackgroundView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewUrlEditMode;->mUrlEditBackgroundView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewUrlEditMode;->mUrlEditBackgroundView:Landroid/view/View;

    return-void
.end method

.method private static synthetic lambda$addViewIfNeeded$0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private static synthetic lambda$addViewIfNeeded$1(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private showBackgroundView()V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewUrlEditMode;->addViewIfNeeded()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewUrlEditMode;->mUrlEditBackgroundView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewUrlEditMode;->mUrlEditBackgroundView:Landroid/view/View;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewUrlEditMode;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getBackgroundColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewUrlEditMode;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-virtual {p0}, Landroid/view/View;->bringToFront()V

    return-void
.end method


# virtual methods
.method public notifyBackgroundColorChanged()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewUrlEditMode;->mUrlEditBackgroundView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewUrlEditMode;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getBackgroundColor()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public onUrlEditModeFinished()V
    .locals 10

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewUrlEditMode;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isNewQuickAccessNativePage()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewUrlEditMode;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isDefaultMobileLayout(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewUrlEditMode;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->setVisibility(I)V

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewUrlEditMode;->hideBackgroundView()V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewUrlEditMode;->mDummyUrlbar:Landroid/view/View;

    if-nez v3, :cond_1

    return-void

    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewUrlEditMode;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isLandscapeOrTabletStyle(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewUrlEditMode;->clearDummyUrlbar()V

    return-void

    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewUrlEditMode;->mDummyUrlbar:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewUrlEditMode;->mDummyUrlbar:Landroid/view/View;

    const v4, 0x7f0b0961

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewUrlEditMode;->mContext:Landroid/content/Context;

    const v5, 0x7f0604c9

    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewUrlEditMode;->mContext:Landroid/content/Context;

    const v6, 0x7f06088f

    invoke-virtual {v5, v6}, Landroid/content/Context;->getColor(I)I

    move-result v5

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewUrlEditMode;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v6}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isNewQuickAccessNativePage()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v3, v5}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewUrlEditMode;->clearDummyUrlbar()V

    return-void

    :cond_3
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewUrlEditMode;->mDummyUrlbar:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getTranslationY()F

    move-result v6

    new-array v7, v1, [F

    aput v6, v7, v2

    const/4 v6, 0x0

    aput v6, v7, v0

    const-string v6, "translationY"

    invoke-static {v6, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewUrlEditMode;->mDummyUrlbar:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getScaleX()F

    move-result v7

    const/high16 v8, 0x3f800000    # 1.0f

    new-array v9, v1, [F

    aput v7, v9, v2

    aput v8, v9, v0

    const-string v7, "scaleX"

    invoke-static {v7, v9}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewUrlEditMode;->mDummyUrlbar:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getScaleY()F

    move-result v9

    new-array v1, v1, [F

    aput v9, v1, v2

    aput v8, v1, v0

    const-string v0, "scaleY"

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewUrlEditMode;->mDummyUrlbar:Landroid/view/View;

    filled-new-array {v7, v0, v6}, [Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-string v1, "backgroundColor"

    filled-new-array {v4, v5}, [I

    move-result-object v2

    invoke-static {v3, v1, v2}, Landroid/animation/ObjectAnimator;->ofArgb(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/InterpolatorUtil;->sineInOut70()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewUrlEditMode;->mDummyUrlbar:Landroid/view/View;

    return-void
.end method

.method public onUrlEditModeStarted()V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isNewGuiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewUrlEditMode;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->setVisibility(I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewUrlEditMode;->showBackgroundView()V

    :cond_0
    return-void
.end method

.method public requestUrlEditMode(Landroid/view/View;)V
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewUrlEditMode;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isDefaultMobileLayout(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewUrlEditMode;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->inputUrl()V

    return-void

    :cond_0
    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewUrlEditMode;->mDummyUrlbar:Landroid/view/View;

    const v3, 0x7f0b0961

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewUrlEditMode;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->setVisibility(I)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewUrlEditMode;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setTranslationY(F)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewUrlEditMode;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getLocationBar()Lcom/sec/android/app/sbrowser/omnibox/LocationBar;

    move-result-object v4

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v4, v6}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v7}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget v7, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    new-array v7, v2, [F

    aput v5, v7, v1

    aput v6, v7, v0

    const-string v5, "translationY"

    invoke-static {v5, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    sub-int/2addr v4, v6

    int-to-float v4, v4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v4, v6

    const/high16 v6, 0x3f800000    # 1.0f

    add-float/2addr v4, v6

    new-array v7, v2, [F

    aput v6, v7, v1

    aput v4, v7, v0

    const-string v4, "scaleX"

    invoke-static {v4, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewUrlEditMode;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f070d20

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    add-float/2addr v7, v6

    new-array v2, v2, [F

    aput v6, v2, v1

    aput v7, v2, v0

    const-string v0, "scaleY"

    invoke-static {v0, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    filled-new-array {v4, v0, v5}, [Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewUrlEditMode;->mContext:Landroid/content/Context;

    const v1, 0x7f06088f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewUrlEditMode;->mContext:Landroid/content/Context;

    const v2, 0x7f0604c9

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    const-string v2, "backgroundColor"

    filled-new-array {v0, v1}, [I

    move-result-object v0

    invoke-static {v3, v2, v0}, Landroid/animation/ObjectAnimator;->ofArgb(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    const-wide/16 v0, 0xfa

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/InterpolatorUtil;->sineInOut70()Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/main_view/MainViewUrlEditMode$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewUrlEditMode$1;-><init>(Lcom/sec/android/app/sbrowser/main_view/MainViewUrlEditMode;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method
