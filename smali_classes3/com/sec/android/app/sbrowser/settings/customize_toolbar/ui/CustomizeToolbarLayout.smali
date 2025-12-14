.class public abstract Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager$MenuItemObserver;


# instance fields
.field protected mAvailableMenuPageIndicator:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPageIndicator;

.field protected mAvailableMenuPagerAdapter:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPagerAdapter;

.field protected mAvailableMenuViewPager:Landroidx/viewpager/widget/ViewPager;

.field protected mContext:Landroid/content/Context;

.field private mHiddenMenuItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field protected mPrimaryItemHeight:I

.field private mPrimaryMenuItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSecondaryMenuItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field protected mToolbarLeftItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field protected mToolbarRightItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field protected mToolsItemHeight:I

.field protected mToolsPageIndicator:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPageIndicator;

.field mToolsPrimaryAdapter:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPrimaryRecyclerAdapter;

.field protected mToolsPrimaryLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

.field protected mToolsPrimaryView:Landroidx/recyclerview/widget/RecyclerView;

.field protected mToolsSecondaryPagerAdapter:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPagerAdapter;

.field protected mToolsSecondaryViewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->init(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->lambda$onFinishInflate$1(I)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->lambda$onFinishInflate$0(I)V

    return-void
.end method

.method private getAvailableItemHeight()I
    .locals 2

    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mToolsItemHeight:I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTabletStyle(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f070396

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f071621

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mToolsItemHeight:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f071618

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mPrimaryItemHeight:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;->getInstance()Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;->getToolsPrimaryMenus()Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mPrimaryMenuItems:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;->getInstance()Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;->getToolsSecondaryMenus()Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mSecondaryMenuItems:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;->getInstance()Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;->getToolbarLeftItems()Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mToolbarLeftItems:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;->getInstance()Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;->getToolbarRightItems()Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mToolbarRightItems:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;->getInstance()Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;->getHiddenMenuItems()Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mHiddenMenuItems:Ljava/util/List;

    return-void
.end method

.method private synthetic lambda$onFinishInflate$0(I)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mToolsSecondaryViewPager:Landroidx/viewpager/widget/ViewPager;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    return-void
.end method

.method private synthetic lambda$onFinishInflate$1(I)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mAvailableMenuViewPager:Landroidx/viewpager/widget/ViewPager;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    return-void
.end method

.method private updateAvailableViewHeight()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mAvailableMenuPagerAdapter:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPagerAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPagerAdapter;->getRowCount()I

    move-result v0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->getAvailableItemHeight()I

    move-result v1

    mul-int/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mAvailableMenuViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mAvailableMenuViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mAvailableMenuViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v2, v0, :cond_0

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mAvailableMenuViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private updateToolsViewHeight()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mToolsPrimaryLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mPrimaryItemHeight:I

    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mPrimaryItemHeight:I

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mToolsPrimaryView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v2, v0, :cond_1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mToolsPrimaryView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mToolsItemHeight:I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mToolsSecondaryPagerAdapter:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPagerAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPagerAdapter;->getRowCount()I

    move-result v1

    mul-int/2addr v1, v0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mToolsSecondaryViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v2, v1, :cond_2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mToolsSecondaryViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;->getInstance()Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;->unsetSkipExtensionMenuUpdate()V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;->getInstance()Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;->setSkipExtensionMenuUpdate()V

    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public done()Z
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mPrimaryMenuItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mContext:Landroid/content/Context;

    const v2, 0x7f14041d

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/sec/android/app/sbrowser/common/utils/SnackbarUtil;->show(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;->getInstance()Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mPrimaryMenuItems:Ljava/util/List;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mSecondaryMenuItems:Ljava/util/List;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mToolbarLeftItems:Ljava/util/List;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mToolbarRightItems:Ljava/util/List;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mHiddenMenuItems:Ljava/util/List;

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;->saveCustomizedMenu(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    const/4 p0, 0x1

    return p0
.end method

.method public getAvailableMenuViewPager()Landroidx/viewpager/widget/ViewPager;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mAvailableMenuViewPager:Landroidx/viewpager/widget/ViewPager;

    return-object p0
.end method

.method public getScrollView()Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController$OnDragListener;
    .locals 1

    const v0, 0x7f0b0a73

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController$OnDragListener;

    return-object p0
.end method

.method public abstract getToolbarLayout()Landroid/view/ViewGroup;
.end method

.method public getToolsPrimaryView()Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mToolsPrimaryView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method public getToolsSecondaryView()Landroidx/viewpager/widget/ViewPager;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mToolsSecondaryViewPager:Landroidx/viewpager/widget/ViewPager;

    return-object p0
.end method

.method public notifyMenuItemChanged()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mPrimaryMenuItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mSecondaryMenuItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mToolbarLeftItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mToolbarRightItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mHiddenMenuItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mPrimaryMenuItems:Ljava/util/List;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;->getInstance()Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;->getToolsPrimaryMenus()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mSecondaryMenuItems:Ljava/util/List;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;->getInstance()Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;->getToolsSecondaryMenus()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mToolbarLeftItems:Ljava/util/List;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;->getInstance()Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;->getToolbarLeftItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mToolbarRightItems:Ljava/util/List;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;->getInstance()Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;->getToolbarRightItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mHiddenMenuItems:Ljava/util/List;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;->getInstance()Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;->getHiddenMenuItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mToolsPrimaryAdapter:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPrimaryRecyclerAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/u0;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mToolsSecondaryPagerAdapter:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPagerAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPagerAdapter;->notifyDataSetChanged()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mAvailableMenuPagerAdapter:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPagerAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPagerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;->getInstance()Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;->addMenuItemObserver(Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager$MenuItemObserver;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->updateAvailableViewHeight()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;->getInstance()Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;->removeMenuItemObserver(Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager$MenuItemObserver;)V

    return-void
.end method

.method public onFinishInflate()V
    .locals 10

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    const v0, 0x7f0b08fd

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mToolsPrimaryView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPrimaryRecyclerAdapter;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mPrimaryMenuItems:Ljava/util/List;

    invoke-direct {v1, v2, v0, v3}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPrimaryRecyclerAdapter;-><init>(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;Ljava/util/List;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mToolsPrimaryAdapter:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPrimaryRecyclerAdapter;

    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mToolsPrimaryLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mToolsPrimaryView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/J0;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mToolsPrimaryView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mToolsPrimaryAdapter:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPrimaryRecyclerAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/u0;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mToolsPrimaryView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mPrimaryItemHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const v0, 0x7f0b075c

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mToolsSecondaryViewPager:Landroidx/viewpager/widget/ViewPager;

    const v0, 0x7f0b075a

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPageIndicator;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mToolsPageIndicator:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPageIndicator;

    new-instance v1, LAa/c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, LAa/c;-><init>(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;I)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPageIndicator;->setPageSelectListener(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPageIndicator$PageSelectListener;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPagerAdapter;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mSecondaryMenuItems:Ljava/util/List;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mToolsPageIndicator:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPageIndicator;

    new-instance v7, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/SecondaryItemDecoration;

    invoke-direct {v7, v4}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/SecondaryItemDecoration;-><init>(Landroid/content/Context;)V

    const/4 v8, 0x4

    const/4 v9, 0x2

    move-object v3, v0

    invoke-direct/range {v3 .. v9}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPagerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPageIndicator;Landroidx/recyclerview/widget/F0;II)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mToolsSecondaryPagerAdapter:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPagerAdapter;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mToolsSecondaryViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Lc3/a;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mToolsSecondaryViewPager:Landroidx/viewpager/widget/ViewPager;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mToolsSecondaryPagerAdapter:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPagerAdapter;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Lc3/f;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mToolsSecondaryPagerAdapter:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPagerAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPagerAdapter;->notifyDataSetChanged()V

    const v0, 0x7f0b014b

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mAvailableMenuViewPager:Landroidx/viewpager/widget/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    const v0, 0x7f0b014a

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPageIndicator;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mAvailableMenuPageIndicator:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPageIndicator;

    new-instance v1, LAa/c;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, LAa/c;-><init>(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;I)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPageIndicator;->setPageSelectListener(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPageIndicator$PageSelectListener;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPagerAdapter;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mHiddenMenuItems:Ljava/util/List;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mAvailableMenuPageIndicator:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPageIndicator;

    new-instance v7, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/AvailableItemDecoration;

    invoke-direct {v7, v4}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/AvailableItemDecoration;-><init>(Landroid/content/Context;)V

    move-object v3, v0

    invoke-direct/range {v3 .. v9}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPagerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPageIndicator;Landroidx/recyclerview/widget/F0;II)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mAvailableMenuPagerAdapter:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPagerAdapter;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPagerAdapter;->setDeleteButtonVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mAvailableMenuViewPager:Landroidx/viewpager/widget/ViewPager;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mAvailableMenuPagerAdapter:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPagerAdapter;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Lc3/a;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mAvailableMenuViewPager:Landroidx/viewpager/widget/ViewPager;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mAvailableMenuPagerAdapter:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPagerAdapter;

    invoke-virtual {v0, p0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Lc3/f;)V

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mToolsPrimaryView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mToolsPrimaryView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mPrimaryItemHeight:I

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mAvailableMenuPagerAdapter:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPagerAdapter;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPagerAdapter;->measureItemHeight()I

    move-result p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mToolsSecondaryPagerAdapter:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPagerAdapter;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPagerAdapter;->measureItemHeight()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mToolsItemHeight:I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->updateToolsViewHeight()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->updateAvailableViewHeight()V

    return-void
.end method

.method public updateMenuItems(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/MenuItem;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/MenuItem;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/MenuItem;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/MenuItem;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/MenuItem;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mPrimaryMenuItems:Ljava/util/List;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mSecondaryMenuItems:Ljava/util/List;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mToolbarLeftItems:Ljava/util/List;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mToolbarRightItems:Ljava/util/List;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mHiddenMenuItems:Ljava/util/List;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mToolsPrimaryAdapter:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPrimaryRecyclerAdapter;

    invoke-virtual {p2, p1}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarRecyclerAdapter;->setMenuItems(Ljava/util/List;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mToolsSecondaryPagerAdapter:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPagerAdapter;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mSecondaryMenuItems:Ljava/util/List;

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPagerAdapter;->setMenuItems(Ljava/util/List;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mAvailableMenuPagerAdapter:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPagerAdapter;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mHiddenMenuItems:Ljava/util/List;

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPagerAdapter;->setMenuItems(Ljava/util/List;)V

    return-void
.end method
