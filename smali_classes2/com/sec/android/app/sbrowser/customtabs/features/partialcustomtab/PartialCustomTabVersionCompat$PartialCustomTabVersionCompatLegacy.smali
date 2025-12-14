.class Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabVersionCompat$PartialCustomTabVersionCompatLegacy;
.super Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabVersionCompat;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabVersionCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PartialCustomTabVersionCompatLegacy"
.end annotation


# instance fields
.field private mLayoutListener:Landroid/view/View$OnLayoutChangeListener;


# direct methods
.method private constructor <init>(Landroid/app/Activity;Ljava/lang/Runnable;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabVersionCompat;-><init>(Landroid/app/Activity;Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/app/Activity;Ljava/lang/Runnable;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabVersionCompat$PartialCustomTabVersionCompatLegacy;-><init>(Landroid/app/Activity;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabVersionCompat$PartialCustomTabVersionCompatLegacy;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-direct/range {p0 .. p10}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabVersionCompat$PartialCustomTabVersionCompatLegacy;->lambda$setImeStateCallback$0(Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method private getAppUsableScreenHeightFromContent()I
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabVersionCompat;->mActivity:Landroid/app/Activity;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabVersionCompat$PartialCustomTabVersionCompatLegacy;->getStatusBarHeight()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method private getAppUsableScreenHeightFromDisplay()I
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabVersionCompat;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget p0, v0, Landroid/graphics/Point;->y:I

    return p0
.end method

.method private static getDisplayCutoutRightInset(Landroid/view/Display;)I
    .locals 0

    invoke-virtual {p0}, Landroid/view/Display;->getCutout()Landroid/view/DisplayCutout;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private getDisplayMetrics()Landroid/util/DisplayMetrics;
    .locals 2

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabVersionCompat$PartialCustomTabVersionCompatLegacy;->isInMultiWindowMode()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabVersionCompat;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabVersionCompat;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    :goto_0
    return-object v0
.end method

.method private isInMultiWindowMode()Z
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindowManager;->getInstance()Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindowManager;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabVersionCompat;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindowManager;->getMultiWindow(Landroid/app/Activity;)Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindow;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindow;->isMultiWindow()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$setImeStateCallback$0(Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;Landroid/view/View;IIIIIIII)V
    .locals 0

    sub-int/2addr p10, p8

    sub-int/2addr p6, p4

    if-lt p10, p6, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lorg/chromium/ui/KeyboardVisibilityDelegate;->getInstance()Lorg/chromium/ui/KeyboardVisibilityDelegate;

    move-result-object p3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabVersionCompat;->mActivity:Landroid/app/Activity;

    invoke-virtual {p3, p0, p2}, Lorg/chromium/ui/KeyboardVisibilityDelegate;->isKeyboardShowing(Landroid/content/Context;Landroid/view/View;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;->onCallback(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getDisplayHeight()I
    .locals 0
    .annotation build Landroidx/annotation/Px;
    .end annotation

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabVersionCompat$PartialCustomTabVersionCompatLegacy;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    return p0
.end method

.method public getDisplayWidth()I
    .locals 1
    .annotation build Landroidx/annotation/Px;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabVersionCompat;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget p0, v0, Landroid/graphics/Point;->x:I

    return p0
.end method

.method public getDisplayWidthDp()I
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabVersionCompat$PartialCustomTabVersionCompatLegacy;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabVersionCompat$PartialCustomTabVersionCompatLegacy;->getDisplayWidth()I

    move-result p0

    int-to-float p0, p0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public getNavigationBarHeight()I
    .locals 2
    .annotation build Landroidx/annotation/Px;
    .end annotation

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabVersionCompat$PartialCustomTabVersionCompatLegacy;->getDisplayHeight()I

    move-result v0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabVersionCompat$PartialCustomTabVersionCompatLegacy;->getAppUsableScreenHeightFromContent()I

    move-result v1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabVersionCompat$PartialCustomTabVersionCompatLegacy;->getAppUsableScreenHeightFromDisplay()I

    move-result p0

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method public getScreenWidth()I
    .locals 0
    .annotation build Landroidx/annotation/Px;
    .end annotation

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabVersionCompat$PartialCustomTabVersionCompatLegacy;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    return p0
.end method

.method public getStatusBarHeight()I
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DiscouragedApi, InternalInsetResource"
        }
    .end annotation

    .annotation build Landroidx/annotation/Px;
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabVersionCompat;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "dimen"

    const-string v2, "android"

    const-string v3, "status_bar_height"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabVersionCompat;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getXOffset()I
    .locals 3
    .annotation build Landroidx/annotation/Px;
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabVersionCompat;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabVersionCompat;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lorg/chromium/ui/base/DeviceFormFactor;->isNonMultiDisplayContextOnTablet(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabVersionCompat$PartialCustomTabVersionCompatLegacy;->getScreenWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabVersionCompat$PartialCustomTabVersionCompatLegacy;->getDisplayWidth()I

    move-result p0

    sub-int/2addr v1, p0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabVersionCompat$PartialCustomTabVersionCompatLegacy;->getDisplayCutoutRightInset(Landroid/view/Display;)I

    move-result p0

    sub-int/2addr v1, p0

    return v1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setImeStateCallback(Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)Z
    .locals 3
    .param p1    # Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabVersionCompat;->mActivity:Landroid/app/Activity;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabVersionCompat$PartialCustomTabVersionCompatLegacy;->mLayoutListener:Landroid/view/View$OnLayoutChangeListener;

    if-eqz v2, :cond_0

    invoke-virtual {v0, v2}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabVersionCompat$PartialCustomTabVersionCompatLegacy;->mLayoutListener:Landroid/view/View$OnLayoutChangeListener;

    return v1

    :cond_0
    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabVersionCompat$PartialCustomTabVersionCompatLegacy;->mLayoutListener:Landroid/view/View$OnLayoutChangeListener;

    if-nez v2, :cond_1

    new-instance v2, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/p;

    invoke-direct {v2, p0, p1}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/p;-><init>(Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabVersionCompat$PartialCustomTabVersionCompatLegacy;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabVersionCompat$PartialCustomTabVersionCompatLegacy;->mLayoutListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public updatePosition()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabVersionCompat;->mActivity:Landroid/app/Activity;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabVersionCompat$PartialCustomTabVersionCompatLegacy$1;

    invoke-direct {v1, p0, v0}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabVersionCompat$PartialCustomTabVersionCompatLegacy$1;-><init>(Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabVersionCompat$PartialCustomTabVersionCompatLegacy;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method
