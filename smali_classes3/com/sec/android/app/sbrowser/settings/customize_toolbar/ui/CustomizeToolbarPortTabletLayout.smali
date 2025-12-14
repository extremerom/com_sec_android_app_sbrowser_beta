.class public Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarPortTabletLayout;
.super Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLandLayout;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLandLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public getAvailableColumnCount()I
    .locals 0

    const/4 p0, 0x6

    return p0
.end method

.method public getAvailableRowMax()I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public onFinishInflate()V
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLandLayout;->onFinishInflate()V

    return-void
.end method

.method public updateLayout()V
    .locals 5

    const/4 v0, 0x2

    new-array v1, v0, [I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->getWindowHeight(Landroid/content/Context;)I

    move-result v2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x24

    if-lt v3, v4, :cond_0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->getStatusBarHeight(Landroid/view/View;)I

    move-result v3

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->getNavigationBarHeight(Landroid/view/View;)I

    move-result v4

    add-int/2addr v4, v3

    sub-int/2addr v2, v4

    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mAvailableMenuViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v3, v1}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v3, 0x1

    aget v1, v1, v3

    sub-int/2addr v2, v1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mAvailableMenuPageIndicator:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPageIndicator;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v2, v1

    iget v1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLandLayout;->mAvailablePageIndicatorBottomMargin:I

    sub-int/2addr v2, v1

    iget v1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mToolsItemHeight:I

    div-int/2addr v2, v1

    const/4 v1, 0x4

    if-ge v2, v3, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mToolsSecondaryPagerAdapter:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPagerAdapter;

    invoke-virtual {v0, v3, v1}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPagerAdapter;->setRowCloumnCount(II)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mToolsSecondaryViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mToolsItemHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    :cond_1
    if-lt v2, v0, :cond_2

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mToolsSecondaryPagerAdapter:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPagerAdapter;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPagerAdapter;->getRowCount()I

    move-result v4

    if-gt v4, v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mToolsSecondaryPagerAdapter:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPagerAdapter;

    invoke-virtual {v3, v0, v1}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPagerAdapter;->setRowCloumnCount(II)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mToolsSecondaryViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v3, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mToolsItemHeight:I

    mul-int/2addr v3, v0

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/lit8 v3, v2, -0x1

    goto :goto_0

    :cond_2
    move v3, v2

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarPortTabletLayout;->getAvailableRowMax()I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->mAvailableMenuPagerAdapter:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPagerAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarPortTabletLayout;->getAvailableColumnCount()I

    move-result p0

    invoke-virtual {v1, v0, p0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPagerAdapter;->setRowCloumnCount(II)V

    return-void
.end method
