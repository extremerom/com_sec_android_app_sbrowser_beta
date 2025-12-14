.class public Lcom/sec/android/app/sbrowser/reader/feature/option/widget/ReaderOptionPopupWindow;
.super Landroid/widget/PopupWindow;
.source "SourceFile"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mPopupView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/reader/feature/option/widget/ReaderOptionPopupWindow;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/reader/feature/option/widget/ReaderOptionPopupWindow;->mPopupView:Landroid/view/View;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/reader/feature/option/widget/ReaderOptionPopupWindow;->initializePopup()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/reader/feature/option/widget/ReaderOptionPopupWindow;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/reader/feature/option/widget/ReaderOptionPopupWindow;->lambda$updateOptionPopup$0(Landroid/view/View;I)V

    return-void
.end method

.method private getMaxHeight(I)I
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/reader/feature/option/widget/ReaderOptionPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/reader/feature/option/widget/ReaderOptionPopupWindow;->isFocusLayoutType()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f070e9f

    goto :goto_0

    :cond_0
    const v1, 0x7f070e9e

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/reader/feature/option/widget/ReaderOptionPopupWindow;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->getWindowHeight(Landroid/content/Context;)I

    move-result p0

    sub-int/2addr p0, p1

    sub-int/2addr p0, v0

    return p0
.end method

.method private getOffsetX(Landroid/view/View;)I
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/reader/feature/option/widget/ReaderOptionPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    aget v0, v0, v3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    add-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getWidth()I

    move-result p0

    sub-int/2addr p1, p0

    goto :goto_0

    :cond_0
    aget p1, v0, v3

    :goto_0
    return p1
.end method

.method private getOffsetY(Landroid/view/View;)I
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/reader/feature/option/widget/ReaderOptionPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/reader/feature/option/widget/ReaderOptionPopupWindow;->isFocusLayoutType()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f070e9e

    goto :goto_0

    :cond_0
    const v1, 0x7f070e9f

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/reader/feature/option/widget/ReaderOptionPopupWindow;->isBasicLayoutType()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/reader/feature/option/widget/ReaderOptionPopupWindow;->getStatusBarHeight(Landroid/view/View;)I

    move-result p0

    add-int/2addr v0, p0

    :cond_1
    return v0
.end method

.method private getPopupMenuWidth(Landroid/view/View;)I
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/reader/feature/option/widget/ReaderOptionPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070ea1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/reader/feature/option/widget/ReaderOptionPopupWindow;->getMaxAvailableWidth(I)I

    move-result p0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1}, Landroid/view/View;->measure(II)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    if-le p1, p0, :cond_1

    move v0, p0

    goto :goto_0

    :cond_1
    move v0, p1

    :goto_0
    return v0
.end method

.method private getStatusBarHeight(Landroid/view/View;)I
    .locals 3

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->getStatusBarHeight(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 p1, 0x1

    aget v2, v1, p1

    if-nez v2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-lt v2, v0, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/reader/feature/option/widget/ReaderOptionPopupWindow;->mContext:Landroid/content/Context;

    check-cast p0, Landroid/app/Activity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode(Landroid/app/Activity;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    aget p0, v1, p1

    return p0
.end method

.method private initializePopup()V
    .locals 2

    const v0, 0x7f1502e6

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/reader/feature/option/widget/ReaderOptionPopupWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/reader/feature/option/widget/ReaderOptionPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070e95

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setElevation(F)V

    return-void
.end method

.method private isBasicLayoutType()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/reader/feature/option/widget/ReaderOptionPopupWindow;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isBasicLayoutType(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private isFocusLayoutType()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/reader/feature/option/widget/ReaderOptionPopupWindow;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isFocusLayoutType(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$updateOptionPopup$0(Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/reader/feature/option/widget/ReaderOptionPopupWindow;->show(Landroid/view/View;I)V

    return-void
.end method

.method private showPopupAsDropDown(Landroid/view/View;)V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/reader/feature/option/widget/ReaderOptionPopupWindow;->isFocusLayoutType()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0, p1, v1, v0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/reader/feature/option/widget/ReaderOptionPopupWindow;->isBasicLayoutType()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    neg-int v0, v0

    invoke-virtual {p0, p1, v1, v0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    :cond_1
    :goto_0
    return-void
.end method

.method private showPopupAtLocation(Landroid/view/View;III)V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/reader/feature/option/widget/ReaderOptionPopupWindow;->isFocusLayoutType()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p4, 0x2

    new-array p4, p4, [I

    invoke-virtual {p1, p4}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v0, 0x1

    aget p4, p4, v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/2addr v0, p4

    sub-int/2addr v0, p2

    invoke-virtual {p0, p1, v1, p3, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/reader/feature/option/widget/ReaderOptionPopupWindow;->isBasicLayoutType()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p0, p1, v1, p3, p4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getMaxAvailableWidth(I)I
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/reader/feature/option/widget/ReaderOptionPopupWindow;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->getWindowWidth(Landroid/content/Context;)I

    move-result p0

    if-lez p0, :cond_1

    int-to-float p0, p0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isPortrait()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f200000    # 0.625f

    goto :goto_0

    :cond_0
    const v0, 0x3eeb851f    # 0.46f

    :goto_0
    mul-float/2addr p0, v0

    float-to-int p0, p0

    :cond_1
    if-ge p0, p1, :cond_2

    goto :goto_1

    :cond_2
    move p1, p0

    :goto_1
    return p1
.end method

.method public show(Landroid/view/View;I)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/reader/feature/option/widget/ReaderOptionPopupWindow;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    const-string v1, "ReaderOptionPopupWindow"

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/reader/feature/option/widget/ReaderOptionPopupWindow;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    if-nez p1, :cond_1

    const-string p0, "[show] anchorView is null"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/reader/feature/option/widget/ReaderOptionPopupWindow;->getOffsetX(Landroid/view/View;)I

    move-result v0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/reader/feature/option/widget/ReaderOptionPopupWindow;->getOffsetY(Landroid/view/View;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/reader/feature/option/widget/ReaderOptionPopupWindow;->getMaxHeight(I)I

    move-result v2

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result p2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/reader/feature/option/widget/ReaderOptionPopupWindow;->mPopupView:Landroid/view/View;

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/reader/feature/option/widget/ReaderOptionPopupWindow;->getPopupMenuWidth(Landroid/view/View;)I

    move-result v2

    invoke-virtual {p0, p2}, Landroid/widget/PopupWindow;->setHeight(I)V

    invoke-virtual {p0, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-le v2, v3, :cond_2

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/reader/feature/option/widget/ReaderOptionPopupWindow;->showPopupAsDropDown(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/sec/android/app/sbrowser/reader/feature/option/widget/ReaderOptionPopupWindow;->showPopupAtLocation(Landroid/view/View;III)V

    :goto_0
    return-void

    :cond_3
    :goto_1
    const-string p0, "[show] activity is already destroyed"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updateOptionPopup(Landroid/view/View;I)V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    new-instance v0, LB2/a;

    const/4 v1, 0x6

    invoke-direct {v0, p0, p1, p2, v1}, LB2/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    new-instance p1, Landroid/os/Handler;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/reader/feature/option/widget/ReaderOptionPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-direct {p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const-wide/16 v1, 0x12c

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
