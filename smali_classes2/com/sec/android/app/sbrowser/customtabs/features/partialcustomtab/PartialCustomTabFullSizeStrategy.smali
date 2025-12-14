.class public Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabFullSizeStrategy;
.super Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabBaseStrategy;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/CustomTabHeightStrategy$OnResizedCallback;Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/CustomTabHeightStrategy$OnActivityLayoutCallback;ZLcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabHandleStrategyFactory;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct/range {p0 .. p6}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabBaseStrategy;-><init>(Landroid/app/Activity;Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/CustomTabHeightStrategy$OnResizedCallback;Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/CustomTabHeightStrategy$OnActivityLayoutCallback;ZLcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabHandleStrategyFactory;)V

    new-instance p1, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/j;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/j;-><init>(Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabFullSizeStrategy;I)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabBaseStrategy;->mPositionUpdater:Ljava/lang/Runnable;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabBaseStrategy;->setupAnimator()V

    return-void
.end method

.method public static synthetic g(Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabFullSizeStrategy;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabFullSizeStrategy;->lambda$handleCloseAnimation$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private synthetic lambda$handleCloseAnimation$0(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabBaseStrategy;->setWindowY(I)V

    return-void
.end method

.method private positionOnWindow()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabBaseStrategy;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    const/16 v1, 0x30

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabBaseStrategy;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public adjustCornerRadius(Landroid/graphics/drawable/GradientDrawable;I)V
    .locals 0

    return-void
.end method

.method public cleanupImeStateCallback()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabBaseStrategy;->mVersionCompat:Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabVersionCompat;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabVersionCompat;->setImeStateCallback(Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)Z

    return-void
.end method

.method public drawDividerLine()V
    .locals 0

    return-void
.end method

.method public getActivityLayoutState()I
    .locals 0

    const/4 p0, 0x5

    return p0
.end method

.method public getCustomTabsElevation()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getHandleHeight()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getStrategyType()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public getTypeStringId()I
    .locals 0

    const p0, 0x7f14003e

    return p0
.end method

.method public handleCloseAnimation(Ljava/lang/Runnable;)Z
    .locals 5

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabBaseStrategy;->handleCloseAnimation(Ljava/lang/Runnable;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabBaseStrategy;->configureLayoutBeyondScreen(Z)V

    new-instance v0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/m;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/m;-><init>(Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabBaseStrategy;I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabBaseStrategy;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v2, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabBaseStrategy;->mHeight:I

    new-instance v3, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/j;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/j;-><init>(Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabFullSizeStrategy;I)V

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabBaseStrategy;->startAnimation(IILandroid/animation/ValueAnimator$AnimatorUpdateListener;Ljava/lang/Runnable;)V

    return p1
.end method

.method public initializeSize()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabBaseStrategy;->mVersionCompat:Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabVersionCompat;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabVersionCompat;->getDisplayHeight()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabBaseStrategy;->mHeight:I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabBaseStrategy;->mVersionCompat:Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabVersionCompat;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabVersionCompat;->getDisplayWidth()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabBaseStrategy;->mWidth:I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabFullSizeStrategy;->positionOnWindow()V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabBaseStrategy;->setCoordinatorLayoutHeight(I)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabBaseStrategy;->updateDragBarVisibility(I)V

    return-void
.end method

.method public isFullHeight()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isMaximized()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onToolbarInitialized(Landroid/view/View;Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;I)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabBaseStrategy;->onToolbarInitialized(Landroid/view/View;Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;I)V

    const-string p1, "PartialCustomTabFullSizeStrategy"

    const-string p2, "onToolbarInitialized()"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabBaseStrategy;->updateDragBarVisibility(I)V

    return-void
.end method

.method public setTopMargins(II)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabBaseStrategy;->mActivity:Landroid/app/Activity;

    const p2, 0x7f0b0397

    invoke-virtual {p1, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2, p2, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabBaseStrategy;->mActivity:Landroid/app/Activity;

    const p1, 0x7f0b0394

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0, p2, p2, p2, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    return-void
.end method

.method public shouldDrawDividerLine()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public shouldHaveNoShadowOffset()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public updatePosition()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabBaseStrategy;->isFullscreen()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabBaseStrategy;->mActivity:Landroid/app/Activity;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "PartialCustomTabFullSizeStrategy"

    const-string v1, "updatePosition()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabFullSizeStrategy;->initializeSize()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabBaseStrategy;->updateShadowOffset()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabBaseStrategy;->maybeInvokeResizeCallback()V

    :cond_1
    :goto_0
    return-void
.end method
