.class public Lcom/sec/android/app/sbrowser/toolbar/ToolbarDefault;
.super Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/toolbar/ToolbarDelegate;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/toolbar/ToolbarDelegate;)V

    return-void
.end method


# virtual methods
.method public onModeFinished()V
    .locals 0

    return-void
.end method

.method public setDefaultToolbarHeight()V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->getOuterLayout()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->getLocationBar()Lcom/sec/android/app/sbrowser/omnibox/LocationBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0715d5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07073e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->getOuterLayout()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->getOuterLayout()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setProgressBar()V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->getProgressBar()Landroidx/appcompat/widget/SeslProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 v1, 0x8

    const v2, 0x7f0b0d94

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->getProgressBar()Landroidx/appcompat/widget/SeslProgressBar;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setToolbarHeight()V
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->setToolbarHeight()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarDefault;->setDefaultToolbarHeight()V

    return-void
.end method

.method public setToolbarLayout()V
    .locals 2

    const-string v0, "si__ToolbarDefault"

    const-string v1, "setToolbarLayout"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->getToolbarMainLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->getToolbarMainLayout()Landroid/widget/RelativeLayout;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public updateBookmarkBarPosition()V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->getBookmarkBarContainer()Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->getBookmarkBarContainer()Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isPcGuiSupported()Z

    move-result v1

    const/4 v2, 0x3

    if-nez v1, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->mContext:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isTabBarEnabled(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isTabBar1LineLayout(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    const v1, 0x7f0b0da1

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    :cond_1
    const v1, 0x7f0b0d94

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->getBookmarkBarContainer()Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public updateOuterLayoutPosition()V
    .locals 5

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->getOuterLayout()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->getOuterLayout()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isPcGuiSupported()Z

    move-result v1

    const v2, 0x7f0b0d95

    const/4 v3, 0x3

    if-nez v1, :cond_1

    invoke-virtual {v0, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v1

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->mContext:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isTabBarEnabled(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isTabBar1LineLayout(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    const v1, 0x7f0b0da1

    invoke-virtual {v0, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->getOuterLayout()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public updateTabBarPosition()V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->getTabBar()Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->getTabBar()Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isTabBar1LineLayout(Landroid/content/Context;)Z

    move-result v0

    const v1, 0x7f0714c4

    const/4 v2, -0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->getBaseLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->getTabBar()Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-ne v0, v2, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->getTabBar()Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->getTabBar()Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v1, 0x10

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->getBaseLayout()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->getTabBar()Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->getBaseLayout()Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->getLocationBar()Lcom/sec/android/app/sbrowser/omnibox/LocationBar;

    move-result-object p0

    invoke-virtual {v3, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {v1, v2, p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_1
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-direct {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isPcGuiSupported()Z

    move-result v1

    const/4 v3, 0x3

    if-eqz v1, :cond_2

    const v1, 0x7f0b0d95

    invoke-virtual {v0, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    :cond_2
    const v1, 0x7f0b0d94

    invoke-virtual {v0, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->getToolbarMainLayout()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->getTabBar()Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    if-ne v1, v2, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->getTabBar()Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->getTabBar()Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->getToolbarMainLayout()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->getTabBar()Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->getView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {v1, p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->getTabBar()Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->getView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public updateToolbarLayout()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->changeMode()V

    return-void
.end method

.method public updateToolbarLayoutPosition()V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isPcGuiSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarDefault;->updateTabBarPosition()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarDefault;->updateOuterLayoutPosition()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarDefault;->updateOuterLayoutPosition()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarDefault;->updateTabBarPosition()V

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarDefault;->updateBookmarkBarPosition()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->getInstance()Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->isTransbarPopupType(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarDefault;->updateTransBarPosition()V

    :cond_1
    return-void
.end method

.method public updateTransBarPosition()V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->getTransBarContainer()Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainer;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->getTransBarContainer()Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isBookmarkBarEnabled(Landroid/app/Activity;)Z

    move-result v1

    const/4 v2, 0x3

    if-eqz v1, :cond_1

    const v1, 0x7f0b0d79

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isPcGuiSupported()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->mContext:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isTabBarEnabled(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isTabBar1LineLayout(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    const v1, 0x7f0b0da1

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    :cond_2
    const v1, 0x7f0b0d94

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->getTransBarContainer()Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainer;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
