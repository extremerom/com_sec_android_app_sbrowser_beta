.class public Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarPhonePortLayout;
.super Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;
.source "SourceFile"


# instance fields
.field private mBottombarGridLayout:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarBottombar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private getPrimaryColumnCount()I
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->getWindowWidth(Landroid/content/Context;)I

    move-result v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mContext:Landroid/content/Context;

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

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->getWindowWidth(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f071623

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mContext:Landroid/content/Context;

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


# virtual methods
.method public getToolbarLayout()Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarPhonePortLayout;->mBottombarGridLayout:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarBottombar;

    return-object p0
.end method

.method public notifyMenuItemChanged()V
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->notifyMenuItemChanged()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarPhonePortLayout;->mBottombarGridLayout:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarBottombar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarBottombar;->notifyDataSetChanged()V

    return-void
.end method

.method public onFinishInflate()V
    .locals 2

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->onFinishInflate()V

    const v0, 0x7f0b01d6

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarBottombar;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarPhonePortLayout;->mBottombarGridLayout:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarBottombar;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mToolbarLeftItems:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarBottombar;->setLeftSideItems(Ljava/util/List;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarPhonePortLayout;->mBottombarGridLayout:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarBottombar;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mToolbarRightItems:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarBottombar;->setRightSideItems(Ljava/util/List;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarPhonePortLayout;->mBottombarGridLayout:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarBottombar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarBottombar;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mToolsPrimaryLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarPhonePortLayout;->getPrimaryColumnCount()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mToolsSecondaryPagerAdapter:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPagerAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPagerAdapter;->getRowCount()I

    move-result v1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarPhonePortLayout;->getSecondaryColumnCount()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPagerAdapter;->setRowCloumnCount(II)V

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarPhonePortLayout;->getPrimaryColumnCount()I

    move-result v0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarPhonePortLayout;->getSecondaryColumnCount()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mToolsPrimaryLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v2

    if-eq v2, v0, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mToolsPrimaryLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mToolsSecondaryPagerAdapter:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPagerAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPagerAdapter;->getColumnCount()I

    move-result v0

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mToolsSecondaryPagerAdapter:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPagerAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPagerAdapter;->getRowCount()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPagerAdapter;->setRowCloumnCount(II)V

    :cond_1
    invoke-super/range {p0 .. p5}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->onLayout(ZIIII)V

    const/4 p1, 0x2

    new-array p2, p1, [I

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->getStatusBarHeight(Landroid/view/View;)I

    move-result p3

    iget-object p4, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mContext:Landroid/content/Context;

    invoke-static {p4}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->getWindowHeight(Landroid/content/Context;)I

    move-result p4

    sget p5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x24

    if-lt p5, v0, :cond_2

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->getNavigationBarHeight(Landroid/view/View;)I

    move-result p5

    add-int/2addr p5, p3

    sub-int/2addr p4, p5

    :cond_2
    iget-object p5, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mAvailableMenuViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p5, p2}, Landroid/view/View;->getLocationInWindow([I)V

    add-int/2addr p4, p3

    const/4 p3, 0x1

    aget p2, p2, p3

    sub-int/2addr p4, p2

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mAvailableMenuPageIndicator:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPageIndicator;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    sub-int/2addr p4, p2

    iget p2, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mToolsItemHeight:I

    div-int/2addr p4, p2

    if-ge p4, p3, :cond_3

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mToolsSecondaryPagerAdapter:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPagerAdapter;

    invoke-virtual {p2, p3, v1}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPagerAdapter;->setRowCloumnCount(II)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mToolsSecondaryViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget p4, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mToolsItemHeight:I

    iput p4, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    :cond_3
    if-lt p4, p1, :cond_4

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mToolsSecondaryPagerAdapter:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPagerAdapter;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPagerAdapter;->getRowCount()I

    move-result p2

    if-gt p2, p3, :cond_4

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mToolsSecondaryPagerAdapter:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPagerAdapter;

    invoke-virtual {p2, p1, v1}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPagerAdapter;->setRowCloumnCount(II)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mToolsSecondaryViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget p3, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mToolsItemHeight:I

    mul-int/2addr p3, p1

    iput p3, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/lit8 p3, p4, -0x1

    goto :goto_0

    :cond_4
    move p3, p4

    :goto_0
    if-ge p3, p1, :cond_5

    move p1, p3

    :cond_5
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mAvailableMenuPagerAdapter:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPagerAdapter;

    invoke-virtual {p0, p1, v1}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPagerAdapter;->setRowCloumnCount(II)V

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

    invoke-super/range {p0 .. p5}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->updateMenuItems(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarPhonePortLayout;->mBottombarGridLayout:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarBottombar;

    invoke-virtual {p1, p3}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarBottombar;->setLeftSideItems(Ljava/util/List;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarPhonePortLayout;->mBottombarGridLayout:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarBottombar;

    invoke-virtual {p1, p4}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarBottombar;->setRightSideItems(Ljava/util/List;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarPhonePortLayout;->mBottombarGridLayout:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarBottombar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarBottombar;->notifyDataSetChanged()V

    return-void
.end method
