.class public Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private mAbsQuickAccessMainLayout:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/AbsQuickAccessMainLayout;

.field private mBitmapCaptureCallback:Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mDelegate:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePageViewDelegate;

.field private final mFactory:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayoutFactoryImpl;

.field private mIsNewGuiApplied:Z

.field private mIsReadyToCaptureBitmap:Z

.field private mNativePageListener:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePageListener;

.field private mQuickAccessMainLayoutDelegate:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayoutDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayoutFactoryImpl;

    invoke-direct {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayoutFactoryImpl;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;->mFactory:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayoutFactoryImpl;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;)Lcom/sec/android/app/sbrowser/quickaccess/ui/page/AbsQuickAccessMainLayout;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;->mAbsQuickAccessMainLayout:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/AbsQuickAccessMainLayout;

    return-object p0
.end method

.method private addOnGlobalLayoutListenerToCaptureBitmap()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;->mAbsQuickAccessMainLayout:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/AbsQuickAccessMainLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;->mIsReadyToCaptureBitmap:Z

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView$1;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;->onReadyToCaptureBitmap()V

    return-void
.end method

.method private captureQuickAccessView(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 5

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;->getToolbarHeight()I

    move-result v0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;->getBottombarHeight()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v2, v0

    sub-int/2addr v2, p0

    const/4 p0, 0x0

    const-string v3, "QuickAccessPageView"

    if-lez v1, :cond_2

    if-gtz v2, :cond_0

    goto :goto_2

    :cond_0
    :try_start_0
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v4}, Lcom/sec/android/app/sbrowser/tab/BitmapQualityHandler;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    const/4 v4, -0x1

    invoke-virtual {v2, v4}, Landroid/graphics/Canvas;->drawColor(I)V

    :goto_0
    neg-int v0, v0

    int-to-float v0, v0

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v0}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p1, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to capture bitmap : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_2
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "captureQuickAccessView - invalid bitmap size, width: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", height: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method private destroyLayoutIfNeeded()V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isNewGuiEnabled()Z

    move-result v0

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;->mIsNewGuiApplied:Z

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;->mAbsQuickAccessMainLayout:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/AbsQuickAccessMainLayout;

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;->mAbsQuickAccessMainLayout:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/AbsQuickAccessMainLayout;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/AbsQuickAccessMainLayout;->destroy()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;->mAbsQuickAccessMainLayout:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/AbsQuickAccessMainLayout;

    :cond_0
    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;->mIsNewGuiApplied:Z

    :cond_1
    return-void
.end method

.method private getBottombarHeight()I
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isNewGuiEnabled()Z

    move-result v0

    const v1, 0x7f07023a

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isPhoneLandscapeOrTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->getNavigationBarHeight()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p0, v0

    :goto_0
    float-to-int p0, p0

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isFocusLayoutType()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isLandscapeOrTabletStyle(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f0715d5

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    add-int/2addr v0, p0

    move p0, v0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isLandscapeOrTabletStyle(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    goto :goto_0

    :goto_1
    return p0
.end method

.method private getToolbarHeight()I
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isNewGuiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isDefaultMobileLayout(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isFocusLayoutType()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;->getInstance()Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;->isEnabled(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result p0

    if-nez p0, :cond_7

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->getStatusBarHeight()I

    move-result p0

    goto/16 :goto_0

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isBasicLayoutType()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0715d5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isTabBarEnabled(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isTabBar1LineLayout(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0714c4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isBookmarkBarEnabled(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0701e3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    invoke-static {}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;->getInstance()Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;->isEnabled(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isNewGuiEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isPhoneLandscape(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode()Z

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->getStatusBarHeight()I

    move-result v1

    add-int/2addr v1, v0

    move v0, v1

    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/extensions/SixUtil;->isTransBarShowing(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f071646

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    add-int/2addr p0, v0

    goto :goto_0

    :cond_6
    move p0, v0

    goto :goto_0

    :cond_7
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isMainViewShowing()Z
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Landroidx/fragment/app/J;

    invoke-virtual {p0}, Landroidx/fragment/app/J;->getSupportFragmentManager()Landroidx/fragment/app/f0;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/f0;->G()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private onReadyToCaptureBitmap()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;->mIsReadyToCaptureBitmap:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;->mBitmapCaptureCallback:Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;->mDelegate:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePageViewDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePageViewDelegate;->getMainViewLayout()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;->captureQuickAccessView(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;->onCallback(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;->mBitmapCaptureCallback:Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;

    :cond_0
    return-void
.end method

.method private updateSoftInputMode()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    const/16 v1, 0x30

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public captureBitmapIfReady(Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;->getQuickAccessBitmap(Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V

    return-void
.end method

.method public closeDialogIfNecessary()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;->mAbsQuickAccessMainLayout:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/AbsQuickAccessMainLayout;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/AbsQuickAccessMainLayout;->closeDialogIfNecessary()V

    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;->mAbsQuickAccessMainLayout:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/AbsQuickAccessMainLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;->mNativePageListener:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePageListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePageListener;->onToolbarShadowVisibilityChanged(Z)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;->mAbsQuickAccessMainLayout:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/AbsQuickAccessMainLayout;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;->mAbsQuickAccessMainLayout:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/AbsQuickAccessMainLayout;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/AbsQuickAccessMainLayout;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;->mAbsQuickAccessMainLayout:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/AbsQuickAccessMainLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;->mQuickAccessMainLayoutDelegate:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayoutDelegate;

    :cond_1
    return-void
.end method

.method public enableQuickAccessHoverPopup(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;->mAbsQuickAccessMainLayout:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/AbsQuickAccessMainLayout;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/AbsQuickAccessMainLayout;->enableQuickAccessHoverPopup(Z)V

    return-void
.end method

.method public enterEditMode(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage$From;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;->mAbsQuickAccessMainLayout:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/AbsQuickAccessMainLayout;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/AbsQuickAccessMainLayout;->enterEditMode(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage$From;)V

    :cond_0
    return-void
.end method

.method public exitEditMode(ZZ)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;->mAbsQuickAccessMainLayout:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/AbsQuickAccessMainLayout;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/AbsQuickAccessMainLayout;->exitEditMode(ZZ)V

    :cond_0
    return-void
.end method

.method public getListener()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePageListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;->mNativePageListener:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePageListener;

    return-object p0
.end method

.method public getQuickAccessBitmap(Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isNewGuiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;->isMainViewShowing()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;->mIsReadyToCaptureBitmap:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;->setBitmapCaptureCallback(Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;->captureQuickAccessView(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;->onCallback(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public getQuickAccessMinaLayoutDelegate()Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayoutDelegate;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;->mQuickAccessMainLayoutDelegate:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayoutDelegate;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageViewMainLayoutDelegate;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageViewMainLayoutDelegate;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;->mQuickAccessMainLayoutDelegate:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayoutDelegate;

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;->mQuickAccessMainLayoutDelegate:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayoutDelegate;

    return-object p0
.end method

.method public getQuickAccessView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;->mAbsQuickAccessMainLayout:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/AbsQuickAccessMainLayout;

    return-object p0
.end method

.method public initializeIfNeeded(Z)V
    .locals 7

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;->destroyLayoutIfNeeded()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;->mAbsQuickAccessMainLayout:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/AbsQuickAccessMainLayout;

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;->mFactory:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayoutFactoryImpl;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v4, 0x0

    move v3, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayoutFactoryImpl;->create(Landroid/content/Context;ZZZZ)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/AbsQuickAccessMainLayout;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;->mAbsQuickAccessMainLayout:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/AbsQuickAccessMainLayout;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;->getQuickAccessMinaLayoutDelegate()Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayoutDelegate;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/AbsQuickAccessMainLayout;->setDelegate(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayoutDelegate;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;->mAbsQuickAccessMainLayout:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/AbsQuickAccessMainLayout;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;->addOnGlobalLayoutListenerToCaptureBitmap()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;->mNativePageListener:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePageListener;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;->isEditMode()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;->mNativePageListener:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePageListener;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePageListener;->onToolbarVisibilityChanged(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;->mNativePageListener:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePageListener;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePageListener;->setTranslationToolbarY(FZ)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;->mNativePageListener:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePageListener;

    invoke-interface {p1, v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePageListener;->onBottombarVisibilityChanged(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;->mNativePageListener:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePageListener;

    invoke-interface {p0, v1, v2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePageListener;->setTranslationBottomBarY(FZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public isCheckableBottomBarVisible()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;->mAbsQuickAccessMainLayout:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/AbsQuickAccessMainLayout;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/AbsQuickAccessMainLayout;->isCheckableBottomBarVisible()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isEditMode()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;->mAbsQuickAccessMainLayout:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/AbsQuickAccessMainLayout;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/AbsQuickAccessMainLayout;->isEditMode()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isInitialScreen()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;->mAbsQuickAccessMainLayout:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/AbsQuickAccessMainLayout;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/AbsQuickAccessMainLayout;->isInitialScreen()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isNeedToHideToolbarShadow()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;->mAbsQuickAccessMainLayout:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/AbsQuickAccessMainLayout;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/AbsQuickAccessMainLayout;->isNeedToHideToolbarShadow()Z

    move-result p0

    return p0
.end method

.method public isReadyToShow()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isScrollBottomReached()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;->mAbsQuickAccessMainLayout:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/AbsQuickAccessMainLayout;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/AbsQuickAccessMainLayout;->isScrollBottomReached()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isScrollTopReached()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;->mAbsQuickAccessMainLayout:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/AbsQuickAccessMainLayout;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/AbsQuickAccessMainLayout;->isScrollTopReached()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSolidColorLightThemed()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;->mAbsQuickAccessMainLayout:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/AbsQuickAccessMainLayout;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/AbsQuickAccessMainLayout;->isSolidColorLightThemed()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public notifyKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;->mAbsQuickAccessMainLayout:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/AbsQuickAccessMainLayout;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/AbsQuickAccessMainLayout;->handleKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;->updateSoftInputMode()V

    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onLaunchNewTabFromAssistIntent()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;->mAbsQuickAccessMainLayout:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/AbsQuickAccessMainLayout;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/AbsQuickAccessMainLayout;->onLaunchNewTabFromAssistIntent()V

    return-void
.end method

.method public onLaunchNewTabFromExternalApp()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;->mAbsQuickAccessMainLayout:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/AbsQuickAccessMainLayout;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/AbsQuickAccessMainLayout;->onLaunchNewTabFromExternalApp()V

    return-void
.end method

.method public onToolbarHeightChanged()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;->mAbsQuickAccessMainLayout:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/AbsQuickAccessMainLayout;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/AbsQuickAccessMainLayout;->onToolbarHeightChanged()V

    :cond_0
    return-void
.end method

.method public onUrlEditModeFinished()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;->mAbsQuickAccessMainLayout:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/AbsQuickAccessMainLayout;

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/AbsQuickAccessMainLayout;->setUrlEditMode(Z)V

    return-void
.end method

.method public onUrlEditModeStarted()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;->mAbsQuickAccessMainLayout:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/AbsQuickAccessMainLayout;

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/AbsQuickAccessMainLayout;->setUrlEditMode(Z)V

    return-void
.end method

.method public reload()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;->mAbsQuickAccessMainLayout:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/AbsQuickAccessMainLayout;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/AbsQuickAccessMainLayout;->refresh()V

    :cond_0
    return-void
.end method

.method public requestFocusDown()Z
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;->mAbsQuickAccessMainLayout:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/AbsQuickAccessMainLayout;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/AbsQuickAccessMainLayout;->requestFocusDown(Z)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public resetToolbarTranslation()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;->mAbsQuickAccessMainLayout:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/AbsQuickAccessMainLayout;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/AbsQuickAccessMainLayout;->resetToolbarTranslation()V

    return-void
.end method

.method public setBitmapCaptureCallback(Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;->mBitmapCaptureCallback:Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;

    return-void
.end method

.method public setDelegate(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePageViewDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;->mDelegate:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePageViewDelegate;

    return-void
.end method

.method public setListener(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePageListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;->mNativePageListener:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePageListener;

    return-void
.end method
