.class public Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage;


# instance fields
.field mActivity:Landroid/app/Activity;

.field protected mAskPermissionButton:Landroid/widget/Button;

.field protected mDescriptionView:Landroid/widget/TextView;

.field protected mEnterPasswordButton:Landroid/widget/Button;

.field protected mGoBackButton:Landroid/widget/Button;

.field private mParentalControlView:Landroid/widget/LinearLayout;

.field private final mRequestListener:Lcom/sec/android/app/sbrowser/parental_control/ParentalControl$RequestListener;

.field private mScrollViewInner:Landroid/widget/LinearLayout;

.field mTab:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;

.field protected mTitleView:Landroid/widget/TextView;

.field protected mWebContentRestrictionButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage$1;-><init>(Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage;->mRequestListener:Lcom/sec/android/app/sbrowser/parental_control/ParentalControl$RequestListener;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage;->mActivity:Landroid/app/Activity;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage;->mTab:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage;->lambda$initializeButtons$1(Landroid/view/View;)V

    return-void
.end method

.method private adjustLayoutPadding()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage;->mScrollViewInner:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage;->getPaddingTop()I

    move-result v1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage;->getPaddingBottom()I

    move-result p0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v2, p0}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage;->lambda$initializeButtons$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage;->lambda$initializeButtons$0(Landroid/view/View;)V

    return-void
.end method

.method private captureParentalControlPage(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v0, 0x0

    const-string v1, "ParentalControlPage"

    if-nez p1, :cond_0

    const-string p0, "captureParentalControlPage - view is null "

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isBasicLayoutType()Z

    move-result v2

    const v3, 0x7f0715d5

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5, v6}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isTabBarEnabled(Landroid/app/Activity;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage;->mActivity:Landroid/app/Activity;

    invoke-static {v5}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isTabBar1LineLayout(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0714c4

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    add-int/2addr v2, v5

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5, v6}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isBookmarkBarEnabled(Landroid/app/Activity;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0701e3

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    add-int/2addr v2, v5

    :cond_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;->getInstance()Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5, v6}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;->isEnabled(Landroid/app/Activity;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->getStatusBarHeight()I

    move-result v5

    add-int/2addr v2, v5

    goto :goto_0

    :cond_3
    move v2, v4

    :cond_4
    :goto_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isFocusLayoutType()Z

    move-result v5

    const v6, 0x7f07023a

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage;->mActivity:Landroid/app/Activity;

    invoke-static {v5}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isPhoneLandscapeOrTablet(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    add-int/2addr v4, p0

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isLandscapeView(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_1

    :cond_6
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int v4, p0

    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v3, v2

    sub-int/2addr v3, v4

    if-lez p0, :cond_9

    if-gtz v3, :cond_7

    goto :goto_4

    :cond_7
    :try_start_0
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, v3, v4}, Lcom/sec/android/app/sbrowser/tab/BitmapQualityHandler;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_8

    invoke-virtual {v4, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_3

    :cond_8
    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->drawColor(I)V

    :goto_2
    neg-int v2, v2

    int-to-float v2, v2

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p1, v3}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to capture bitmap : "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_9
    :goto_4
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "captureParentalControlPage - invalid bitmap size, width: "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", height: "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private getBookmarkBarHeight()I
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isBookmarkBarEnabled(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage;->mActivity:Landroid/app/Activity;

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

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTabletLayout(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage;->mActivity:Landroid/app/Activity;

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
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f07023a

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    :goto_0
    return p0
.end method

.method private getPaddingBottom()I
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage;->getBottomBarHeight()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isFocusLayoutType(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage;->getToolBarHeight()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method private getPaddingTop()I
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070be9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage;->getStatusBarHeight()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isFocusLayoutType(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage;->getToolBarHeight()I

    move-result p0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method private getStatusBarHeight()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;->getInstance()Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;->isEnabled(Landroid/app/Activity;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->getStatusBarHeight()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private getTabBarHeight()I
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isTabBarEnabled(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isTabBar1LineLayout(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage;->mActivity:Landroid/app/Activity;

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

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0715d5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage;->getTabBarHeight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage;->getBookmarkBarHeight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage;->getTransBarHeight()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method private getTransBarHeight()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/extensions/SixUtil;->isTransBarShowing(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage;->mActivity:Landroid/app/Activity;

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

.method private synthetic lambda$initializeButtons$0(Landroid/view/View;)V
    .locals 1

    const-string p1, "Remote"

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage;->sendClickLog(Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/NetDeviceUtils;->isNetworkAvailable()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage;->mActivity:Landroid/app/Activity;

    const p1, 0x7f140803

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/SnackbarUtil;->make(Landroid/app/Activity;Ljava/lang/CharSequence;)LH6/o;

    move-result-object p0

    invoke-virtual {p0}, LH6/o;->l()V

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControl;->getInstance()Lcom/sec/android/app/sbrowser/parental_control/ParentalControl;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage;->mTab:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getParentalControlBlockedUrl()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage;->mRequestListener:Lcom/sec/android/app/sbrowser/parental_control/ParentalControl$RequestListener;

    invoke-virtual {p1, v0, p0}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControl;->requestParentalApproval(Ljava/lang/String;Lcom/sec/android/app/sbrowser/parental_control/ParentalControl$RequestListener;)V

    return-void
.end method

.method private synthetic lambda$initializeButtons$1(Landroid/view/View;)V
    .locals 1

    const-string p1, "Local"

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage;->sendClickLog(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage;->mActivity:Landroid/app/Activity;

    const/4 p1, 0x0

    const/16 v0, 0xb0

    invoke-static {p0, p1, v0}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlUtil;->getParentalConfirm(Landroid/app/Activity;ZI)Z

    return-void
.end method

.method private synthetic lambda$initializeButtons$2(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage;->onGoBackButtonPressed()V

    return-void
.end method


# virtual methods
.method public captureBitmapIfReady(Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage;->mParentalControlView:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage;->captureParentalControlPage(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;->onCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public closeDialogIfNecessary()V
    .locals 0

    return-void
.end method

.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage;->mParentalControlView:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage;->mScrollViewInner:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage;->mAskPermissionButton:Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage;->mEnterPasswordButton:Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage;->mGoBackButton:Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage;->mDescriptionView:Landroid/widget/TextView;

    return-void
.end method

.method public enterEditMode(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage$From;)V
    .locals 0

    return-void
.end method

.method public exitEditMode(ZZ)V
    .locals 0

    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage;->mParentalControlView:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public initializeButtons()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage;->mAskPermissionButton:Landroid/widget/Button;

    new-instance v1, Lcom/sec/android/app/sbrowser/parental_control/j;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/parental_control/j;-><init>(Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage;->mEnterPasswordButton:Landroid/widget/Button;

    new-instance v1, Lcom/sec/android/app/sbrowser/parental_control/j;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/parental_control/j;-><init>(Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage;->mWebContentRestrictionButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage;->mGoBackButton:Landroid/widget/Button;

    new-instance v1, Lcom/sec/android/app/sbrowser/parental_control/j;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/parental_control/j;-><init>(Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public initializePageViewIfNeeded(Z)V
    .locals 2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0e0544

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage;->mParentalControlView:Landroid/widget/LinearLayout;

    const v0, 0x7f0b09f4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage;->mScrollViewInner:Landroid/widget/LinearLayout;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage;->mParentalControlView:Landroid/widget/LinearLayout;

    const v0, 0x7f0b09ee

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage;->mAskPermissionButton:Landroid/widget/Button;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage;->mParentalControlView:Landroid/widget/LinearLayout;

    const v0, 0x7f0b09f1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage;->mEnterPasswordButton:Landroid/widget/Button;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage;->mParentalControlView:Landroid/widget/LinearLayout;

    const v0, 0x7f0b09f3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage;->mGoBackButton:Landroid/widget/Button;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage;->mParentalControlView:Landroid/widget/LinearLayout;

    const v1, 0x7f0b09f0

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage;->mDescriptionView:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage;->mParentalControlView:Landroid/widget/LinearLayout;

    const v1, 0x7f0b09ef

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage;->mGoBackButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage;->mParentalControlView:Landroid/widget/LinearLayout;

    const v1, 0x7f0b09f7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage;->mWebContentRestrictionButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage;->mParentalControlView:Landroid/widget/LinearLayout;

    const v1, 0x7f0b09f6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage;->mTitleView:Landroid/widget/TextView;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x800003

    goto :goto_0

    :cond_0
    const/16 v0, 0x11

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage;->initializeText()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage;->initializeButtons()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage;->adjustLayoutPadding()V

    return-void
.end method

.method public initializeText()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage;->mDescriptionView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage;->mTab:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getParentalControlBlockedUrl()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->getHostName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const v2, 0x7f1408a0

    invoke-virtual {v1, v2, p0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public isCheckableBottomBarVisible()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isEditMode()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isInitialScreen()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isNeedToHideToolbarShadow()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isReadyToShow()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isScrollBottomReached()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isScrollTopReached()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public notifyKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public notifyLaunchNewTabFromAssistIntent()V
    .locals 0

    return-void
.end method

.method public notifyLaunchNewTabFromExternalApp()V
    .locals 0

    return-void
.end method

.method public notifyToolbarHeightChanged()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage;->adjustLayoutPadding()V

    return-void
.end method

.method public onGoBackButtonPressed()V
    .locals 1

    const-string v0, "Back"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage;->sendClickLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage;->mTab:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage;->mTab:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->goBack()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->onBackPressed()V

    :goto_0
    return-void
.end method

.method public onInputUrl()V
    .locals 0

    return-void
.end method

.method public onTalkBackStatusChanged(Z)V
    .locals 0

    return-void
.end method

.method public reload()V
    .locals 0

    return-void
.end method

.method public requestFocusDown()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public sendClickLog(Ljava/lang/String;)V
    .locals 1

    const-string p0, "201"

    const-string v0, "8211"

    invoke-static {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setBitmapCallback(Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public setDelegate(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePageViewDelegate;)V
    .locals 0

    return-void
.end method

.method public setListener(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePageListener;)V
    .locals 0

    return-void
.end method
