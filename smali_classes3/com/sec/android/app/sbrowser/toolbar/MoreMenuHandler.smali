.class public Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/model/main/MoreMenuEventListener;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mHeaderLayout:Landroid/view/View;

.field private final mInstanceId:I

.field private mMenu:Landroid/view/Menu;

.field private mMenuItemObserver:Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager$MenuItemObserver;

.field private mMoreMenuDialog:Lm/y;

.field private final mMoreMenuEventListener:Lcom/sec/android/app/sbrowser/toolbar/MoreMenuListEventListener;

.field private mMoreMenuInterface:Lcom/sec/android/app/sbrowser/toolbar/MoreMenuInterface;

.field private mPrimaryGridLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

.field private mPrimaryMenuAdapter:Lcom/sec/android/app/sbrowser/toolbar/MoreMenuRecyclerAdapter;

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

.field private mSecondaryMenuAdapter:Lcom/sec/android/app/sbrowser/toolbar/MoreMenuPagerAdapter;

.field private final mSecondaryMenuItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSecondaryMenuView:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/toolbar/MoreMenuInterface;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mSecondaryMenuItems:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mPrimaryMenuItems:Ljava/util/List;

    new-instance v0, Lcom/sec/android/app/sbrowser/toolbar/s;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/toolbar/s;-><init>(Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mMenuItemObserver:Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager$MenuItemObserver;

    new-instance v0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler$2;-><init>(Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mMoreMenuEventListener:Lcom/sec/android/app/sbrowser/toolbar/MoreMenuListEventListener;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mMoreMenuInterface:Lcom/sec/android/app/sbrowser/toolbar/MoreMenuInterface;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/ActivityUtil;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstanceId(Landroid/app/Activity;)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mInstanceId:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    iput p1, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mInstanceId:I

    const-string p0, "si__MoreMenuHandler"

    const-string p1, "[NotificationManager] activity null, unable to get instance id"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->lambda$new$0()V

    return-void
.end method

.method private addMenuItems(Landroid/view/Menu;Ljava/util/List;)Landroid/view/Menu;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Menu;",
            "Ljava/util/List<",
            "Landroid/view/MenuItem;",
            ">;)",
            "Landroid/view/Menu;"
        }
    .end annotation

    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/MenuItem;

    invoke-interface {p2}, Landroid/view/MenuItem;->getGroupId()I

    move-result v0

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-interface {p2}, Landroid/view/MenuItem;->getOrder()I

    move-result v2

    invoke-interface {p2}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {p2}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-interface {v0, p2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    goto :goto_0

    :cond_1
    return-object p1

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;Landroid/widget/TextView;Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$ContentType;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->lambda$updateOgImage$5(Landroid/widget/TextView;Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$ContentType;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->lambda$updateContentView$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->lambda$updateContentView$3(I)V

    return-void
.end method

.method public static synthetic e(Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;ZLandroid/view/View;IIIIIIII)V
    .locals 0

    invoke-direct/range {p0 .. p10}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->lambda$updateContentView$2(ZLandroid/view/View;IIIIIIII)V

    return-void
.end method

.method public static synthetic f(Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->lambda$showMoreMenuDialog$1(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static bridge synthetic g(Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private getMaxWidth()I
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->getXOffset()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/device/WindowUtils;->getWindowWidth(Landroid/app/Activity;)I

    move-result v1

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr v1, v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0715ef

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method private getPageIndicatorHeight()I
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mSecondaryMenuAdapter:Lcom/sec/android/app/sbrowser/toolbar/MoreMenuPagerAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuPagerAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f071610

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f07160e

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method private getPrimaryColumnCount()I
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/WindowUtils;->getWindowWidth(Landroid/app/Activity;)I

    move-result v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f07161c

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    div-int/2addr v0, p0

    const/4 p0, 0x3

    if-gt v0, p0, :cond_0

    return p0

    :cond_0
    const/4 p0, 0x5

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method private getSecondaryColumnCount()I
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/WindowUtils;->getWindowWidth(Landroid/app/Activity;)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f071623

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f071605

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    add-int/2addr p0, v1

    div-int/2addr v0, p0

    const/4 p0, 0x3

    if-gt v0, p0, :cond_0

    return p0

    :cond_0
    const/4 p0, 0x4

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method private getSecondaryItemHeight()I
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f071621

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f071623

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mMoreMenuDialog:Lm/y;

    invoke-virtual {v3}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0e04d2

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0b0d32

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mSecondaryMenuItems:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/MenuItem;

    invoke-interface {v5}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v1, v2}, Landroid/view/View;->measure(II)V

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    if-ge v0, v5, :cond_0

    move v0, v5

    goto :goto_0

    :cond_1
    return v0
.end method

.method private getSecondaryLocationY()I
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f071617

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f071620

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f071625

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mHeaderLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mPrimaryMenuView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    add-int/2addr p0, v1

    add-int/2addr p0, v0

    return p0
.end method

.method private getSecondaryRowCount()I
    .locals 5

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->getSecondaryItemHeight()I

    move-result v0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->getPageIndicatorHeight()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0715e0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->getSecondaryLocationY()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->getWindowHeight(Landroid/content/Context;)I

    move-result v4

    sub-int/2addr v4, v3

    sub-int/2addr v4, v2

    sub-int/2addr v4, v1

    div-int/2addr v4, v0

    const/4 v0, 0x1

    if-gt v4, v0, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mSecondaryMenuItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->getSecondaryColumnCount()I

    move-result v2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTabletLayout(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_3

    div-int p0, v1, v2

    rem-int/2addr v1, v2

    if-eqz v1, :cond_1

    add-int/lit8 p0, p0, 0x1

    :cond_1
    if-ge p0, v0, :cond_2

    goto :goto_0

    :cond_2
    move v0, p0

    goto :goto_0

    :cond_3
    if-gt v1, v2, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x2

    :goto_0
    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method private getXOffset()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTabletLayout(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0715f4

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isLandscapeView(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mContext:Landroid/content/Context;

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

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTabletStyle(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTabletDevice(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isPhoneLandscape(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0715f5

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    return p0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0715f7

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    return p0

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mMoreMenuInterface:Lcom/sec/android/app/sbrowser/toolbar/MoreMenuInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuInterface;->getToolbarOuter()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isFocusLayoutType(Landroid/content/Context;)Z

    move-result p0

    const/4 v2, 0x1

    if-eqz p0, :cond_3

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

    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result p0

    aget v1, v1, v2

    add-int/2addr p0, v1

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->getStatusBarHeight(Landroid/view/View;)I

    move-result v0

    sub-int/2addr p0, v0

    return p0
.end method

.method public static bridge synthetic h(Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;)Lm/y;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mMoreMenuDialog:Lm/y;

    return-object p0
.end method

.method public static bridge synthetic i(Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;)Lcom/sec/android/app/sbrowser/toolbar/MoreMenuInterface;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mMoreMenuInterface:Lcom/sec/android/app/sbrowser/toolbar/MoreMenuInterface;

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

.method public static bridge synthetic j(Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mSecondaryMenuItems:Ljava/util/List;

    return-object p0
.end method

.method private synthetic lambda$new$0()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->updateMenuItems()Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mPrimaryMenuAdapter:Lcom/sec/android/app/sbrowser/toolbar/MoreMenuRecyclerAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/u0;->notifyDataSetChanged()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mSecondaryMenuAdapter:Lcom/sec/android/app/sbrowser/toolbar/MoreMenuPagerAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuPagerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private synthetic lambda$showMoreMenuDialog$1(Landroid/content/DialogInterface;)V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;->getInstance()Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mMenuItemObserver:Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager$MenuItemObserver;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;->removeMenuItemObserver(Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager$MenuItemObserver;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mMoreMenuInterface:Lcom/sec/android/app/sbrowser/toolbar/MoreMenuInterface;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuInterface;->onMoreMenuDismissed()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mMoreMenuDialog:Lm/y;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mPrimaryMenuView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/u0;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mSecondaryMenuView:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Lc3/a;)V

    const-string p0, "si__MoreMenuHandler"

    const-string p1, "MoreMenuDialog - Dismiss"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synthetic lambda$updateContentView$2(ZLandroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mMoreMenuDialog:Lm/y;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/app/Dialog;->isShowing()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->updateDialogPosition(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mPrimaryGridLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->getPrimaryColumnCount()I

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mSecondaryMenuAdapter:Lcom/sec/android/app/sbrowser/toolbar/MoreMenuPagerAdapter;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->getSecondaryColumnCount()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuPagerAdapter;->setSpanCount(I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->getSecondaryRowCount()I

    move-result p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mSecondaryMenuAdapter:Lcom/sec/android/app/sbrowser/toolbar/MoreMenuPagerAdapter;

    invoke-virtual {p2, p1}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuPagerAdapter;->setRowCount(I)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mSecondaryMenuView:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->getSecondaryItemHeight()I

    move-result p3

    mul-int/2addr p1, p3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->getPageIndicatorHeight()I

    move-result p3

    add-int/2addr p1, p3

    iget p3, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq p3, p1, :cond_1

    iput p1, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mSecondaryMenuView:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p0, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$updateContentView$3(I)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mSecondaryMenuView:Landroidx/viewpager/widget/ViewPager;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    return-void
.end method

.method private synthetic lambda$updateContentView$4(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mMoreMenuInterface:Lcom/sec/android/app/sbrowser/toolbar/MoreMenuInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuInterface;->onShareButtonClicked()V

    return-void
.end method

.method private lambda$updateOgImage$5(Landroid/widget/TextView;Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$ContentType;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    const/4 p2, 0x1

    check-cast p4, Ljava/lang/String;

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_1

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mMoreMenuDialog:Lm/y;

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    const p5, 0x7f0b0e3e

    invoke-virtual {p3, p5}, Lm/y;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iget-object p5, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mContext:Landroid/content/Context;

    invoke-static {p5}, Lcom/bumptech/glide/b;->d(Landroid/content/Context;)Lcom/bumptech/glide/l;

    move-result-object p5

    invoke-virtual {p5, p4}, Lcom/bumptech/glide/l;->c(Ljava/lang/String;)Lcom/bumptech/glide/j;

    move-result-object p4

    new-instance p5, LZ3/h;

    invoke-direct {p5}, Ljava/lang/Object;-><init>()V

    new-instance v0, LZ3/A;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mContext:Landroid/content/Context;

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

    new-instance p4, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler$5;

    invoke-direct {p4, p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler$5;-><init>(Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;Landroid/widget/TextView;)V

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

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mMoreMenuInterface:Lcom/sec/android/app/sbrowser/toolbar/MoreMenuInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuInterface;->shouldShowMenu()Z

    move-result p0

    return p0
.end method

.method private showMoreMenuDialog(Z)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->isActivityInvalid(Landroid/app/Activity;)Z

    move-result v0

    const-string v1, "si__MoreMenuHandler"

    if-eqz v0, :cond_0

    const-string p0, "showMoreMenuDialog, isActivityInvalid"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mMoreMenuDialog:Lm/y;

    if-eqz v0, :cond_1

    const-string p0, "showMoreMenuDialog, mMoreMenuDialog != null"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    new-instance v0, Lm/y;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mContext:Landroid/content/Context;

    const v2, 0x7f15027b

    invoke-direct {v0, v1, v2}, Lm/y;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mMoreMenuDialog:Lm/y;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isPhoneLandscapeOrTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mContext:Landroid/content/Context;

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
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mMoreMenuDialog:Lm/y;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mMoreMenuDialog:Lm/y;

    invoke-virtual {v0}, Lm/y;->d()Lm/p;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lm/p;->j(I)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mMoreMenuDialog:Lm/y;

    new-instance v1, Lcom/sec/android/app/sbrowser/toolbar/b;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/toolbar/b;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isLandscapeView(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mMoreMenuDialog:Lm/y;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_4
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->updateContentView(Z)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->updateDialogPosition(Z)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;->getInstance()Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mMenuItemObserver:Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager$MenuItemObserver;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;->addMenuItemObserver(Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager$MenuItemObserver;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mMoreMenuDialog:Lm/y;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showPopupMenu(Z)V
    .locals 2

    const-string v0, "showPopupMenu"

    const-string v1, "si__MoreMenuHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->shouldShowMenu()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "!shouldShowMenu()"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->updateMenuItems()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "showPopupMenu no Item"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->showMoreMenuDialog(Z)V

    return-void
.end method

.method private showSixFab()V
    .locals 8

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;->getInstance()Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;->getChatAIActionItem()Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    const/4 v4, 0x0

    const v5, 0x7f0e04d6

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    const v4, 0x7f0b05ef

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v5, v6, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;->getInstance()Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;

    move-result-object v1

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mContext:Landroid/content/Context;

    const v7, 0x7f060bf6

    invoke-virtual {v1, v6, v5, v7}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;->getFilteredIconWithRId(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v1, 0x7f0b06c7

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0b0bf8

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "Ask me anything!"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, LP0/h;

    invoke-direct {v1}, LP0/h;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mMoreMenuDialog:Lm/y;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const v4, 0x7f0b0b93

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mMoreMenuDialog:Lm/y;

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const v5, 0x106000d

    invoke-virtual {v4, v5}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    invoke-virtual {v2, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler$1;

    invoke-direct {v1, p0, v0}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler$1;-><init>(Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;)V

    invoke-virtual {v3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private updateContentView(Z)V
    .locals 13

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mSecondaryMenuItems:Ljava/util/List;

    if-nez v1, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0e04cf

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mMoreMenuDialog:Lm/y;

    invoke-virtual {v1, v0}, Lm/y;->setContentView(Landroid/view/View;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/toolbar/n;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/sec/android/app/sbrowser/toolbar/n;-><init>(Lcom/sec/android/app/sbrowser/common/model/main/MoreMenuEventListener;ZI)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    const p1, 0x7f0b0405

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v1, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler$3;-><init>(Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/View;->setClipToOutline(Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f070fe5

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-static {v1, p1, v2}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setBlurUiHighUltraThick(Landroid/content/Context;Landroid/view/View;I)Z

    move-result p1

    if-nez p1, :cond_1

    const p1, 0x7f0b0ac3

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const v1, 0x7f08077f

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_1
    new-instance p1, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler$4;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler$4;-><init>(Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    const p1, 0x7f0b075a

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuPageIndicator;

    const v1, 0x7f0b0ac5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/viewpager/widget/ViewPager;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mSecondaryMenuView:Landroidx/viewpager/widget/ViewPager;

    new-instance v1, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuPagerAdapter;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mSecondaryMenuItems:Ljava/util/List;

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mMenu:Landroid/view/Menu;

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mMoreMenuEventListener:Lcom/sec/android/app/sbrowser/toolbar/MoreMenuListEventListener;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->getSecondaryColumnCount()I

    move-result v10

    const/4 v11, 0x2

    iget v12, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mInstanceId:I

    move-object v4, v1

    move-object v7, p1

    invoke-direct/range {v4 .. v12}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuPagerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/sec/android/app/sbrowser/toolbar/MoreMenuPageIndicator;Landroid/view/Menu;Lcom/sec/android/app/sbrowser/toolbar/MoreMenuListEventListener;III)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mSecondaryMenuAdapter:Lcom/sec/android/app/sbrowser/toolbar/MoreMenuPagerAdapter;

    new-instance v1, Lcom/sec/android/app/sbrowser/toolbar/t;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/toolbar/t;-><init>(Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;)V

    invoke-virtual {p1, v1}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuPageIndicator;->setPageSelectListener(Lcom/sec/android/app/sbrowser/toolbar/MoreMenuPageIndicator$PageSelectListener;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mSecondaryMenuView:Landroidx/viewpager/widget/ViewPager;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mSecondaryMenuAdapter:Lcom/sec/android/app/sbrowser/toolbar/MoreMenuPagerAdapter;

    invoke-virtual {p1, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Lc3/a;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mSecondaryMenuView:Landroidx/viewpager/widget/ViewPager;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mSecondaryMenuAdapter:Lcom/sec/android/app/sbrowser/toolbar/MoreMenuPagerAdapter;

    invoke-virtual {p1, v1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Lc3/f;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mSecondaryMenuAdapter:Lcom/sec/android/app/sbrowser/toolbar/MoreMenuPagerAdapter;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuPagerAdapter;->notifyDataSetChanged()V

    const p1, 0x7f0b08fd

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mPrimaryMenuView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p1, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuItemDecoration;

    invoke-direct {p1, v3, v3}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuItemDecoration;-><init>(II)V

    new-instance v1, Lcom/sec/android/app/sbrowser/toolbar/PrimaryRecyclerAdapter;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mPrimaryMenuItems:Ljava/util/List;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mMenu:Landroid/view/Menu;

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mMoreMenuEventListener:Lcom/sec/android/app/sbrowser/toolbar/MoreMenuListEventListener;

    iget v9, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mInstanceId:I

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Lcom/sec/android/app/sbrowser/toolbar/PrimaryRecyclerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Landroid/view/Menu;Lcom/sec/android/app/sbrowser/toolbar/MoreMenuListEventListener;I)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mPrimaryMenuAdapter:Lcom/sec/android/app/sbrowser/toolbar/MoreMenuRecyclerAdapter;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mPrimaryMenuView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/u0;)V

    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->getPrimaryColumnCount()I

    move-result v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(I)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mPrimaryGridLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mPrimaryMenuView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/J0;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mPrimaryMenuView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/F0;)V

    const p1, 0x7f0b0582

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mHeaderLayout:Landroid/view/View;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mMoreMenuInterface:Lcom/sec/android/app/sbrowser/toolbar/MoreMenuInterface;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuInterface;->isShareAvailable()Z

    move-result p1

    if-eqz p1, :cond_2

    const p1, 0x7f0b0b45

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v1, Lcom/sec/android/app/sbrowser/toolbar/u;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/toolbar/u;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mContext:Landroid/content/Context;

    const v2, 0x7f140053

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setButtonContentDescription(Landroid/view/View;Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mContext:Landroid/content/Context;

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

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mMoreMenuInterface:Lcom/sec/android/app/sbrowser/toolbar/MoreMenuInterface;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuInterface;->getCurrentTabTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mMoreMenuInterface:Lcom/sec/android/app/sbrowser/toolbar/MoreMenuInterface;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuInterface;->getCurrentTabUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->updateOgImage()V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mHeaderLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->getMaxWidth()I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/view/View;->measure(II)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->getSecondaryRowCount()I

    move-result p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mSecondaryMenuAdapter:Lcom/sec/android/app/sbrowser/toolbar/MoreMenuPagerAdapter;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuPagerAdapter;->setRowCount(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mSecondaryMenuView:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->getSecondaryItemHeight()I

    move-result v1

    mul-int/2addr p1, v1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->getPageIndicatorHeight()I

    move-result v1

    add-int/2addr p1, v1

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->showSixFab()V

    return-void

    :cond_3
    :goto_1
    const-string p0, "si__MoreMenuHandler"

    const-string p1, "Context, menu items, or main activity delegate is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateDialogPosition(Z)V
    .locals 6

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mMoreMenuDialog:Lm/y;

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

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isPhoneLandscapeOrTablet(Landroid/content/Context;)Z

    move-result v3

    const/4 v4, -0x2

    const-string v5, "si__MoreMenuHandler"

    if-nez v3, :cond_0

    const-string p1, "updateDialogPosition, portrait"

    invoke-static {v5, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->getMaxWidth()I

    move-result p1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0715f6

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    iput p0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/16 p0, 0x51

    invoke-virtual {v1, p0}, Landroid/view/Window;->setGravity(I)V

    goto/16 :goto_4

    :cond_0
    const-string v3, "updateDialogPosition, landscape"

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0715ef

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mContext:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode(Landroid/app/Activity;)Z

    move-result v3

    const/4 v4, 0x0

    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->getYOffset()I

    move-result v2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->getXOffset()I

    move-result v2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    xor-int/lit8 p1, p1, 0x1

    :goto_0
    if-nez v3, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isFocusLayoutType(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isMobileLayout()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isPortrait(Landroid/content/res/Configuration;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    const/16 p0, 0x50

    goto :goto_1

    :cond_3
    const/16 p0, 0x30

    :goto_1
    if-eqz p1, :cond_4

    const v0, 0x800003

    goto :goto_2

    :cond_4
    const v0, 0x800005

    :goto_2
    or-int/2addr p0, v0

    invoke-virtual {v1, p0}, Landroid/view/Window;->setGravity(I)V

    if-eqz p1, :cond_5

    const p0, 0x7f15027a

    goto :goto_3

    :cond_5
    const p0, 0x7f150279

    :goto_3
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iput p0, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    :goto_4
    return-void
.end method

.method private updateMenuItems()Z
    .locals 6

    new-instance v0, Ls/i;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Ls/i;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mMenu:Landroid/view/Menu;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;->getInstance()Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;->getToolsPrimaryMenus()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->addMenuItems(Landroid/view/Menu;Ljava/util/List;)Landroid/view/Menu;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mMenu:Landroid/view/Menu;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;->getInstance()Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;->getToolsSecondaryMenus()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->addMenuItems(Landroid/view/Menu;Ljava/util/List;)Landroid/view/Menu;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mMoreMenuInterface:Lcom/sec/android/app/sbrowser/toolbar/MoreMenuInterface;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mMenu:Landroid/view/Menu;

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuInterface;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mMenu:Landroid/view/Menu;

    const-string v1, "si__MoreMenuHandler"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p0, "Main activity option menu is not created."

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mPrimaryMenuItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mSecondaryMenuItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mMenu:Landroid/view/Menu;

    invoke-interface {v0}, Landroid/view/Menu;->size()I

    move-result v0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_2

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mMenu:Landroid/view/Menu;

    invoke-interface {v4, v3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    const/4 v5, 0x5

    if-ge v3, v5, :cond_1

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mPrimaryMenuItems:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mSecondaryMenuItems:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mPrimaryMenuItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mSecondaryMenuItems:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "No menu item."

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_3
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public dismissPopup()V
    .locals 2

    const-string v0, "si__MoreMenuHandler"

    const-string v1, "dismissPopup"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mMoreMenuDialog:Lm/y;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lm/y;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mMoreMenuDialog:Lm/y;

    :cond_0
    return-void
.end method

.method public getMoreMenuRect()Landroid/graphics/Rect;
    .locals 5

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->isMoreMenuShowing()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mMoreMenuDialog:Lm/y;

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

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mMoreMenuDialog:Lm/y;

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

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->dismissPopup()V

    return-void
.end method

.method public onMenuKeyClicked(Z)V
    .locals 2

    const-string v0, "si__MoreMenuHandler"

    const-string v1, "onMenuKeyClicked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->showPopupMenu(Z)V

    return-void
.end method

.method public updateOgImage()V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mMoreMenuDialog:Lm/y;

    const v1, 0x7f0b041b

    invoke-virtual {v0, v1}, Lm/y;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mMoreMenuInterface:Lcom/sec/android/app/sbrowser/toolbar/MoreMenuInterface;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuInterface;->getCurrentTabUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mMoreMenuInterface:Lcom/sec/android/app/sbrowser/toolbar/MoreMenuInterface;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuInterface;->getCurrentTabTitle()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->setDominantText(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher;->getInstance()Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->mMoreMenuInterface:Lcom/sec/android/app/sbrowser/toolbar/MoreMenuInterface;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuInterface;->getCurrentTabUrl()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/sbrowser/toolbar/c;

    const/4 v4, 0x2

    invoke-direct {v3, p0, v0, v4}, Lcom/sec/android/app/sbrowser/toolbar/c;-><init>(Ljava/lang/Object;Landroid/view/KeyEvent$Callback;I)V

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher;->fetchOgImage(Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$FetchContentCallback;)V

    return-void
.end method
