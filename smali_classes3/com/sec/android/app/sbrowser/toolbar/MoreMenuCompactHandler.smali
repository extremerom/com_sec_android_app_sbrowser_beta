.class public Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/model/main/MoreMenuEventListener;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mHeaderLayout:Landroid/view/View;

.field private final mInstanceId:I

.field private mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private mMenu:Landroid/view/Menu;

.field private mMenuAdapter:Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter;

.field private mMenuItemObserver:Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager$MenuItemObserver;

.field private mMoreMenuDialog:Lm/y;

.field private final mMoreMenuEventListener:Lcom/sec/android/app/sbrowser/toolbar/MoreMenuListEventListener;

.field private mMoreMenuInterface:Lcom/sec/android/app/sbrowser/toolbar/MoreMenuInterface;

.field private final mPrimaryMenuItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private mPrimaryMenuView:Landroidx/recyclerview/widget/RecyclerView;

.field private final mSecondaryMenuItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic a(Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;->lambda$updateContentView$3(Landroid/view/View;)V

    return-void
.end method

.method private addMenuItems(Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/MenuItem;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/MenuItem;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;->mMenu:Landroid/view/Menu;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;->mMenu:Landroid/view/Menu;

    invoke-interface {v0}, Landroid/view/MenuItem;->getGroupId()I

    move-result v2

    invoke-interface {v0}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    invoke-interface {v0}, Landroid/view/MenuItem;->getOrder()I

    move-result v4

    invoke-interface {v0}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v1, v2, v3, v4, v5}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;->lambda$updateContentView$5(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;->lambda$updateContentView$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;Landroid/widget/TextView;Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$ContentType;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;->lambda$updateOgImage$7(Landroid/widget/TextView;Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$ContentType;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic e(Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;->lambda$updateContentView$6(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic f(Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;ZLandroid/view/View;IIIIIIII)V
    .locals 0

    invoke-direct/range {p0 .. p10}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;->lambda$updateContentView$2(ZLandroid/view/View;IIIIIIII)V

    return-void
.end method

.method public static synthetic g(Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;->lambda$showMoreMenuDialog$1(Landroid/content/DialogInterface;)V

    return-void
.end method

.method private getHeight()I
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;->getYOffset()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->getWindowHeight(Landroid/content/Context;)I

    move-result v1

    sub-int/2addr v1, v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0715e1

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method private getMaxWidth()I
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;->getXOffset()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->getWindowWidth(Landroid/content/Context;)I

    move-result v1

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr v1, v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0715ef

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method private getXOffset()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTabletLayout(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0715f4

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isLandscapeView(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0715ee

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    :goto_0
    return p0
.end method

.method private getYOffset()I
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isPhoneLandscapeOrTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0715c8

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTabletStyle(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTabletDevice(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isPhoneLandscape(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0715f5

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    return p0

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0715f7

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    return p0

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;->mMoreMenuInterface:Lcom/sec/android/app/sbrowser/toolbar/MoreMenuInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuInterface;->getToolbarOuter()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isFocusLayoutType(Landroid/content/Context;)Z

    move-result p0

    const/4 v2, 0x1

    if-eqz p0, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    aget v1, v1, v2

    sub-int/2addr p0, v1

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->getNavigationBarHeight(Landroid/view/View;)I

    move-result v0

    sub-int/2addr p0, v0

    return p0

    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result p0

    aget v1, v1, v2

    add-int/2addr p0, v1

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->getStatusBarHeight(Landroid/view/View;)I

    move-result v0

    sub-int/2addr p0, v0

    return p0
.end method

.method public static bridge synthetic h(Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic i(Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;)Lcom/sec/android/app/sbrowser/toolbar/MoreMenuInterface;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;->mMoreMenuInterface:Lcom/sec/android/app/sbrowser/toolbar/MoreMenuInterface;

    return-object p0
.end method

.method private isActivityInvalid(Landroid/app/Activity;)Z
    .locals 0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private synthetic lambda$showMoreMenuDialog$1(Landroid/content/DialogInterface;)V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;->getInstance()Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;->mMenuItemObserver:Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager$MenuItemObserver;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;->removeMenuItemObserver(Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager$MenuItemObserver;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;->mMoreMenuInterface:Lcom/sec/android/app/sbrowser/toolbar/MoreMenuInterface;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuInterface;->onMoreMenuDismissed()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;->mMoreMenuDialog:Lm/y;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;->mPrimaryMenuView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/u0;)V

    const-string p0, "si__MoreMenuCompactHandler"

    const-string p1, "MoreMenuDialog - Dismiss"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synthetic lambda$updateContentView$2(ZLandroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;->mMoreMenuDialog:Lm/y;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/app/Dialog;->isShowing()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;->updateDialogPosition(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$updateContentView$3(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;->mMoreMenuInterface:Lcom/sec/android/app/sbrowser/toolbar/MoreMenuInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuInterface;->onShareButtonClicked()V

    return-void
.end method

.method private synthetic lambda$updateContentView$4(Landroid/view/View;)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;->mMoreMenuEventListener:Lcom/sec/android/app/sbrowser/toolbar/MoreMenuListEventListener;

    const v0, 0x7f0b0047

    invoke-interface {p0, v0, p1}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuListEventListener;->onItemClick(ILandroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$updateContentView$5(Landroid/view/View;)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;->mMoreMenuEventListener:Lcom/sec/android/app/sbrowser/toolbar/MoreMenuListEventListener;

    const v0, 0x7f0b005e

    invoke-interface {p0, v0, p1}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuListEventListener;->onItemClick(ILandroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$updateContentView$6(Landroid/view/View;)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;->mMoreMenuEventListener:Lcom/sec/android/app/sbrowser/toolbar/MoreMenuListEventListener;

    const v0, 0x7f0b006f

    invoke-interface {p0, v0, p1}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuListEventListener;->onItemClick(ILandroid/view/View;)V

    return-void
.end method

.method private lambda$updateOgImage$7(Landroid/widget/TextView;Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$ContentType;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    const/4 p2, 0x1

    check-cast p4, Ljava/lang/String;

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_1

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;->mMoreMenuDialog:Lm/y;

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    const p5, 0x7f0b0e3e

    invoke-virtual {p3, p5}, Lm/y;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iget-object p5, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;->mContext:Landroid/content/Context;

    invoke-static {p5}, Lcom/bumptech/glide/b;->d(Landroid/content/Context;)Lcom/bumptech/glide/l;

    move-result-object p5

    invoke-virtual {p5, p4}, Lcom/bumptech/glide/l;->c(Ljava/lang/String;)Lcom/bumptech/glide/j;

    move-result-object p4

    new-instance p5, LZ3/h;

    invoke-direct {p5}, Ljava/lang/Object;-><init>()V

    new-instance v0, LZ3/A;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f071628

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-direct {v0, v1}, LZ3/A;-><init>(I)V

    const/4 v1, 0x2

    new-array v1, v1, [LQ3/o;

    const/4 v2, 0x0

    aput-object p5, v1, v2

    aput-object v0, v1, p2

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p5, LQ3/h;

    invoke-direct {p5, v1}, LQ3/h;-><init>([LQ3/o;)V

    invoke-virtual {p4, p5, p2}, Lh4/a;->r(LQ3/o;Z)Lh4/a;

    move-result-object p2

    check-cast p2, Lcom/bumptech/glide/j;

    new-instance p4, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler$3;

    invoke-direct {p4, p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler$3;-><init>(Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;Landroid/widget/TextView;)V

    invoke-virtual {p2, p4}, Lcom/bumptech/glide/j;->B(Lh4/g;)Lcom/bumptech/glide/j;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/bumptech/glide/j;->z(Landroid/widget/ImageView;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setDominantText(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->getDomainName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-string p0, ""

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private shouldShowMenu()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;->mMoreMenuInterface:Lcom/sec/android/app/sbrowser/toolbar/MoreMenuInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuInterface;->shouldShowMenu()Z

    move-result p0

    return p0
.end method

.method private showMoreMenuDialog(Z)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;->isActivityInvalid(Landroid/app/Activity;)Z

    move-result v0

    const-string v1, "si__MoreMenuCompactHandler"

    if-eqz v0, :cond_0

    const-string p0, "showMoreMenuDialog, isActivityInvalid"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;->mMoreMenuDialog:Lm/y;

    if-eqz v0, :cond_1

    const-string p0, "showMoreMenuDialog, mMoreMenuDialog != null"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    new-instance v0, Lm/y;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;->mContext:Landroid/content/Context;

    const v2, 0x7f15027b

    invoke-direct {v0, v1, v2}, Lm/y;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;->mMoreMenuDialog:Lm/y;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isPhoneLandscapeOrTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    if-nez v0, :cond_2

    const v0, 0x7f150279

    goto :goto_0

    :cond_2
    const v0, 0x7f15027a

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;->mMoreMenuDialog:Lm/y;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;->mMoreMenuDialog:Lm/y;

    invoke-virtual {v0}, Lm/y;->d()Lm/p;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lm/p;->j(I)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;->mMoreMenuDialog:Lm/y;

    new-instance v1, Lcom/sec/android/app/sbrowser/toolbar/b;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/toolbar/b;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isLandscapeView(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;->mMoreMenuDialog:Lm/y;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_4
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;->updateContentView(Z)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;->updateDialogPosition(Z)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;->getInstance()Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;->mMenuItemObserver:Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager$MenuItemObserver;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;->addMenuItemObserver(Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager$MenuItemObserver;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;->mMoreMenuDialog:Lm/y;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showPopupMenu(Z)V
    .locals 2

    const-string v0, "showPopupMenu"

    const-string v1, "si__MoreMenuCompactHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;->shouldShowMenu()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "!shouldShowMenu()"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;->updateMenuItems()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "showPopupMenu no Item"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;->showMoreMenuDialog(Z)V

    return-void
.end method

.method private updateContentView(Z)V
    .locals 11

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string p0, "si__MoreMenuCompactHandler"

    const-string p1, "Context, menu items, or main activity delegate is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0e04cd

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;->mMoreMenuDialog:Lm/y;

    invoke-virtual {v1, v0}, Lm/y;->setContentView(Landroid/view/View;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/toolbar/n;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/sec/android/app/sbrowser/toolbar/n;-><init>(Lcom/sec/android/app/sbrowser/common/model/main/MoreMenuEventListener;ZI)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    const p1, 0x7f0b0405

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v1, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler$2;-><init>(Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/View;->setClipToOutline(Z)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070fe5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    invoke-static {v2, p1, v4}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setBlurUiHighUltraThick(Landroid/content/Context;Landroid/view/View;I)Z

    const p1, 0x7f0b08fd

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;->mPrimaryMenuView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p1, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuItemDecoration;

    invoke-direct {p1, v3, v3}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuItemDecoration;-><init>(II)V

    new-instance v2, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;->mMenu:Landroid/view/Menu;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;->mPrimaryMenuItems:Ljava/util/List;

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;->mSecondaryMenuItems:Ljava/util/List;

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;->mMoreMenuEventListener:Lcom/sec/android/app/sbrowser/toolbar/MoreMenuListEventListener;

    iget v10, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;->mInstanceId:I

    move-object v4, v2

    invoke-direct/range {v4 .. v10}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter;-><init>(Landroid/content/Context;Landroid/view/Menu;Ljava/util/List;Ljava/util/List;Lcom/sec/android/app/sbrowser/toolbar/MoreMenuListEventListener;I)V

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;->mMenuAdapter:Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;->mPrimaryMenuView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/u0;)V

    new-instance v2, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-direct {v2, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(I)V

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;->mPrimaryMenuView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/J0;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;->mPrimaryMenuView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/F0;)V

    const p1, 0x7f0b0582

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;->mHeaderLayout:Landroid/view/View;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;->mMoreMenuInterface:Lcom/sec/android/app/sbrowser/toolbar/MoreMenuInterface;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuInterface;->isShareAvailable()Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0b0b45

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v1, Lcom/sec/android/app/sbrowser/toolbar/o;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/toolbar/o;-><init>(Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;->mContext:Landroid/content/Context;

    const v2, 0x7f140053

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setButtonContentDescription(Landroid/view/View;Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/sec/android/app/sbrowser/tooltip/TooltipCompat;->setHoverTooltip(Landroid/view/View;Ljava/lang/CharSequence;)V

    const p1, 0x7f0b0e3f

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v1, 0x7f0b0e40

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;->mMoreMenuInterface:Lcom/sec/android/app/sbrowser/toolbar/MoreMenuInterface;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuInterface;->getCurrentTabTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;->mMoreMenuInterface:Lcom/sec/android/app/sbrowser/toolbar/MoreMenuInterface;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuInterface;->getCurrentTabUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;->updateOgImage()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;->mHeaderLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    const p1, 0x7f0b0153

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v1, Lcom/sec/android/app/sbrowser/toolbar/o;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/toolbar/o;-><init>(Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0b0543

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v1, Lcom/sec/android/app/sbrowser/toolbar/o;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/toolbar/o;-><init>(Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0b09e4

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v1, Lcom/sec/android/app/sbrowser/toolbar/o;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/toolbar/o;-><init>(Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;->getMaxWidth()I

    move-result p0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {p0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    invoke-virtual {v0, p0, p1}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method private updateDialogPosition(Z)V
    .locals 5

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;->mMoreMenuDialog:Lm/y;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    const v2, 0x7f0b0404

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    const-string v3, "si__MoreMenuCompactHandler"

    const-string v4, "updateDialogPosition, landscape"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;->getHeight()I

    move-result v3

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0715e2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v3, 0x0

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;->getYOffset()I

    move-result v2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;->getXOffset()I

    move-result v2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    xor-int/lit8 p1, p1, 0x1

    :goto_0
    if-eqz p1, :cond_1

    const p0, 0x800003

    goto :goto_1

    :cond_1
    const p0, 0x800005

    :goto_1
    or-int/lit8 p0, p0, 0x50

    invoke-virtual {v1, p0}, Landroid/view/Window;->setGravity(I)V

    return-void
.end method

.method private updateMenuItems()Z
    .locals 2

    new-instance v0, Ls/i;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Ls/i;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;->mMenu:Landroid/view/Menu;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;->mPrimaryMenuItems:Ljava/util/List;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;->getInstance()Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;->getToolsPrimaryMenus()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;->addMenuItems(Ljava/util/List;Ljava/util/List;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;->mSecondaryMenuItems:Ljava/util/List;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;->getInstance()Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;->getToolsSecondaryMenus()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;->addMenuItems(Ljava/util/List;Ljava/util/List;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;->mMoreMenuInterface:Lcom/sec/android/app/sbrowser/toolbar/MoreMenuInterface;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;->mMenu:Landroid/view/Menu;

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuInterface;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;->mPrimaryMenuItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;->mSecondaryMenuItems:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "si__MoreMenuCompactHandler"

    const-string v0, "No menu item."

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public dismissPopup()V
    .locals 2

    const-string v0, "si__MoreMenuCompactHandler"

    const-string v1, "dismissPopup"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;->mMoreMenuDialog:Lm/y;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lm/y;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;->mMoreMenuDialog:Lm/y;

    :cond_0
    return-void
.end method

.method public getMoreMenuRect()Landroid/graphics/Rect;
    .locals 5

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;->isMoreMenuShowing()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;->mMoreMenuDialog:Lm/y;

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    const/4 v2, 0x0

    aget v2, v0, v2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    const/4 v3, 0x1

    aget v4, v0, v3

    iput v4, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v4, v2

    iput v4, v1, Landroid/graphics/Rect;->right:I

    aget v0, v0, v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    add-int/2addr p0, v0

    iput p0, v1, Landroid/graphics/Rect;->bottom:I

    return-object v1
.end method

.method public isMoreMenuShowing()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;->mMoreMenuDialog:Lm/y;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onHide()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;->dismissPopup()V

    return-void
.end method

.method public onMenuKeyClicked(Z)V
    .locals 2

    const-string v0, "si__MoreMenuCompactHandler"

    const-string v1, "onMenuKeyClicked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;->showPopupMenu(Z)V

    return-void
.end method

.method public updateOgImage()V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;->mMoreMenuDialog:Lm/y;

    const v1, 0x7f0b041b

    invoke-virtual {v0, v1}, Lm/y;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;->mMoreMenuInterface:Lcom/sec/android/app/sbrowser/toolbar/MoreMenuInterface;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuInterface;->getCurrentTabUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;->mMoreMenuInterface:Lcom/sec/android/app/sbrowser/toolbar/MoreMenuInterface;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuInterface;->getCurrentTabTitle()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;->setDominantText(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher;->getInstance()Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;->mMoreMenuInterface:Lcom/sec/android/app/sbrowser/toolbar/MoreMenuInterface;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuInterface;->getCurrentTabUrl()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/sbrowser/toolbar/c;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v0, v4}, Lcom/sec/android/app/sbrowser/toolbar/c;-><init>(Ljava/lang/Object;Landroid/view/KeyEvent$Callback;I)V

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher;->fetchOgImage(Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$FetchContentCallback;)V

    return-void
.end method
