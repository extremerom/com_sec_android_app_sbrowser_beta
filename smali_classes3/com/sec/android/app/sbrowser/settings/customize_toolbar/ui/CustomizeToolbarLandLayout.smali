.class public Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLandLayout;
.super Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;
.source "SourceFile"


# instance fields
.field protected mAvailablePageIndicatorBottomMargin:I

.field protected mToolbarGridLayout:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarToolbar;

.field protected mToolsPageIndicatorBottomMargin:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public getAvailableColumnCount()I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public getAvailableRowCount()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->getWindowHeight(Landroid/content/Context;)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mAvailableMenuViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v2, v0}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v2, 0x1

    aget v0, v0, v2

    sub-int/2addr v1, v0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mAvailableMenuPageIndicator:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPageIndicator;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    sub-int/2addr v1, v0

    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLandLayout;->mAvailablePageIndicatorBottomMargin:I

    sub-int/2addr v1, v0

    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mToolsItemHeight:I

    div-int/2addr v1, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLandLayout;->getAvailableRowMax()I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public getAvailableRowMax()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public getSecondaryRowCount()I
    .locals 4

    const/4 v0, 0x2

    new-array v1, v0, [I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->getWindowHeight(Landroid/content/Context;)I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mToolsSecondaryViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v3, v1}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v3, 0x1

    aget v1, v1, v3

    sub-int/2addr v2, v1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mToolsPageIndicator:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPageIndicator;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v2, v1

    iget v1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLandLayout;->mToolsPageIndicatorBottomMargin:I

    sub-int/2addr v2, v1

    iget p0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mToolsItemHeight:I

    div-int/2addr v2, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public getToolbarLayout()Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLandLayout;->mToolbarGridLayout:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarToolbar;

    return-object p0
.end method

.method public notifyMenuItemChanged()V
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->notifyMenuItemChanged()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLandLayout;->mToolbarGridLayout:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarToolbar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarToolbar;->notifyDataSetChanged()V

    return-void
.end method

.method public onFinishInflate()V
    .locals 2

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->onFinishInflate()V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07160e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLandLayout;->mToolsPageIndicatorBottomMargin:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07038f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLandLayout;->mAvailablePageIndicatorBottomMargin:I

    const v0, 0x7f0b0d88

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarToolbar;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLandLayout;->mToolbarGridLayout:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarToolbar;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mToolbarLeftItems:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarToolbar;->setLeftSideItems(Ljava/util/List;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLandLayout;->mToolbarGridLayout:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarToolbar;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mToolbarRightItems:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarToolbar;->setRightSideItems(Ljava/util/List;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLandLayout;->mToolbarGridLayout:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarToolbar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarToolbar;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mAvailableMenuPagerAdapter:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPagerAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLandLayout;->getAvailableRowCount()I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLandLayout;->getAvailableColumnCount()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPagerAdapter;->setRowCloumnCount(II)V

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->onLayout(ZIIII)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLandLayout;->updateLayout()V

    return-void
.end method

.method public updateLayout()V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLandLayout;->getAvailableRowCount()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mAvailableMenuPagerAdapter:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPagerAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPagerAdapter;->getRowCount()I

    move-result v1

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mAvailableMenuPagerAdapter:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPagerAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLandLayout;->getAvailableColumnCount()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPagerAdapter;->setRowCloumnCount(II)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mAvailableMenuViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mToolsItemHeight:I

    mul-int/2addr v2, v0

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLandLayout;->getSecondaryRowCount()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mToolsSecondaryPagerAdapter:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPagerAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPagerAdapter;->getRowCount()I

    move-result v1

    if-eq v1, v0, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mToolsSecondaryPagerAdapter:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPagerAdapter;

    const/4 v2, 0x4

    invoke-virtual {v1, v0, v2}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPagerAdapter;->setRowCloumnCount(II)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mToolsSecondaryViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget p0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mToolsItemHeight:I

    mul-int/2addr p0, v0

    iput p0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_1
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

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLandLayout;->mToolbarGridLayout:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarToolbar;

    invoke-virtual {p1, p3}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarToolbar;->setLeftSideItems(Ljava/util/List;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLandLayout;->mToolbarGridLayout:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarToolbar;

    invoke-virtual {p1, p4}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarToolbar;->setRightSideItems(Ljava/util/List;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLandLayout;->mToolbarGridLayout:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarToolbar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarToolbar;->notifyDataSetChanged()V

    return-void
.end method
