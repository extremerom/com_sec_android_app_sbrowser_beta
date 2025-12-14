.class Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessHoverViewController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/quickaccess/ui/page/IHoverViewController;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDelegate:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessChildViewDelegate;

.field private mHoverBottomView:Landroid/view/View;

.field private mHoverTopView:Landroid/view/View;

.field private mQuickAccessScrollableView:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/IHoverScrollableView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/IHoverScrollableView;Landroid/view/ViewStub;Landroid/view/ViewStub;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessChildViewDelegate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessHoverViewController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessHoverViewController;->mQuickAccessScrollableView:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/IHoverScrollableView;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessHoverViewController;->mDelegate:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessChildViewDelegate;

    invoke-direct {p0, p3, p4}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessHoverViewController;->initHoverView(Landroid/view/ViewStub;Landroid/view/ViewStub;)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessHoverViewController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessHoverViewController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessHoverViewController;)Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessChildViewDelegate;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessHoverViewController;->mDelegate:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessChildViewDelegate;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessHoverViewController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessHoverViewController;->mHoverBottomView:Landroid/view/View;

    return-object p0
.end method

.method private calculateHoverBottomTranslationY()F
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isNewGuiEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessHoverViewController;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessHoverViewController;->mDelegate:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessChildViewDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessChildViewDelegate;->isEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessHoverViewController;->mDelegate:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessChildViewDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessChildViewDelegate;->getBottomBarHeight()F

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessHoverViewController;->mDelegate:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessChildViewDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessChildViewDelegate;->getCheckableBottomBarHeight()F

    move-result p0

    return p0

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isBasicLayoutType()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessHoverViewController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isPhoneLandscapeOrTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessHoverViewController;->mDelegate:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessChildViewDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessChildViewDelegate;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessHoverViewController;->mDelegate:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessChildViewDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessChildViewDelegate;->getCheckableBottomBarHeight()F

    move-result p0

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0

    :cond_3
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessHoverViewController;->mDelegate:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessChildViewDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessChildViewDelegate;->getBottomBarHeight()F

    move-result p0

    return p0
.end method

.method private calculateHoverTopTranslationY()F
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isNewGuiEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessHoverViewController;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessHoverViewController;->mDelegate:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessChildViewDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessChildViewDelegate;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessHoverViewController;->mDelegate:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessChildViewDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessChildViewDelegate;->getCheckableTopBarHeight()F

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessHoverViewController;->mDelegate:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessChildViewDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessChildViewDelegate;->getVisibleToolBarHeight()F

    move-result p0

    return p0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessHoverViewController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isPhoneLandscapeOrTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessHoverViewController;->mDelegate:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessChildViewDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessChildViewDelegate;->isEditMode()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessHoverViewController;->mDelegate:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessChildViewDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessChildViewDelegate;->getVisibleToolBarHeight()F

    move-result p0

    return p0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessHoverViewController;->mDelegate:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessChildViewDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessChildViewDelegate;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessHoverViewController;->mDelegate:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessChildViewDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessChildViewDelegate;->getCheckableTopBarHeight()F

    move-result p0

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isBasicLayoutType()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessHoverViewController;->mDelegate:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessChildViewDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessChildViewDelegate;->getVisibleToolBarHeight()F

    move-result p0

    goto :goto_0

    :cond_4
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessHoverViewController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessHoverViewController;->mHoverTopView:Landroid/view/View;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessHoverViewController;)Lcom/sec/android/app/sbrowser/quickaccess/ui/page/IHoverScrollableView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessHoverViewController;->mQuickAccessScrollableView:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/IHoverScrollableView;

    return-object p0
.end method

.method private initHoverView(Landroid/view/ViewStub;Landroid/view/ViewStub;)V
    .locals 0

    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessHoverViewController;->mHoverTopView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessHoverViewController;->mHoverBottomView:Landroid/view/View;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessHoverViewController;->mHoverTopView:Landroid/view/View;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessHoverViewController;->calculateHoverTopTranslationY()F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessHoverViewController;->mHoverBottomView:Landroid/view/View;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessHoverViewController;->calculateHoverBottomTranslationY()F

    move-result p2

    neg-float p2, p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessHoverViewController;->setListener()V

    return-void
.end method

.method private setListener()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessHoverViewController;->mHoverTopView:Landroid/view/View;

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessHoverViewController$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessHoverViewController$1;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessHoverViewController;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessHoverViewController;->mHoverBottomView:Landroid/view/View;

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessHoverViewController$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessHoverViewController$2;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessHoverViewController;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    return-void
.end method


# virtual methods
.method public getHoverBottomView()Landroid/view/View;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessHoverViewController;->mHoverBottomView:Landroid/view/View;

    return-object p0
.end method

.method public getHoverTopView()Landroid/view/View;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessHoverViewController;->mHoverTopView:Landroid/view/View;

    return-object p0
.end method

.method public onChangeLayout()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessHoverViewController;->mDelegate:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessChildViewDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessChildViewDelegate;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessHoverViewController;->mHoverTopView:Landroid/view/View;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessHoverViewController;->mDelegate:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessChildViewDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessChildViewDelegate;->getCheckableTopBarHeight()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessHoverViewController;->mHoverBottomView:Landroid/view/View;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessHoverViewController;->mDelegate:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessChildViewDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessChildViewDelegate;->getCheckableBottomBarHeight()F

    move-result p0

    neg-float p0, p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setTranslationY(F)V

    :cond_0
    return-void
.end method

.method public onCheckableBottomBarVisibilityChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessHoverViewController;->mDelegate:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessChildViewDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessChildViewDelegate;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessHoverViewController;->mHoverBottomView:Landroid/view/View;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessHoverViewController;->mDelegate:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessChildViewDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessChildViewDelegate;->getCheckableBottomBarHeight()F

    move-result p0

    neg-float p0, p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Landroid/view/View;->setTranslationY(F)V

    :cond_1
    return-void
.end method

.method public onEditModeChanged()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessHoverViewController;->mDelegate:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessChildViewDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessChildViewDelegate;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessHoverViewController;->mHoverTopView:Landroid/view/View;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessHoverViewController;->mDelegate:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessChildViewDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessChildViewDelegate;->getCheckableTopBarHeight()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessHoverViewController;->mHoverBottomView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessHoverViewController;->mHoverTopView:Landroid/view/View;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessHoverViewController;->calculateHoverTopTranslationY()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessHoverViewController;->mHoverBottomView:Landroid/view/View;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessHoverViewController;->calculateHoverBottomTranslationY()F

    move-result p0

    neg-float p0, p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setTranslationY(F)V

    :goto_0
    return-void
.end method

.method public onMainToolbarTranslated(F)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessHoverViewController;->mHoverTopView:Landroid/view/View;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isBasicLayoutType()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessHoverViewController;->mDelegate:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessChildViewDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessChildViewDelegate;->getVisibleToolBarHeight()F

    move-result v1

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessHoverViewController;->mDelegate:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessChildViewDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessChildViewDelegate;->getLastTranslatedToolbarY()F

    move-result v1

    neg-float v2, v1

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessHoverViewController;->calculateHoverTopTranslationY()F

    move-result v1

    add-float/2addr v2, v1

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessHoverViewController;->mHoverBottomView:Landroid/view/View;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessHoverViewController;->mDelegate:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessChildViewDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessChildViewDelegate;->getLastTranslatedToolbarY()F

    move-result v1

    mul-float/2addr v1, p1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessHoverViewController;->mDelegate:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessChildViewDelegate;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessChildViewDelegate;->isEditMode()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessHoverViewController;->mDelegate:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessChildViewDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessChildViewDelegate;->getCheckableBottomBarHeight()F

    move-result p0

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessHoverViewController;->calculateHoverBottomTranslationY()F

    move-result p0

    :goto_0
    sub-float/2addr v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method
