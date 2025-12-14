.class Lcom/sec/android/app/sbrowser/main_view/MainViewPhone$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;->createHideToolbarDelegate()Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone$6;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentTab()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone$6;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentVisibleTab()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone$6;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getCurrentVisibleTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    return-object p0
.end method

.method public getFixedBottombarHeight()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone$6;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewToolbar:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->getFixedBottombarHeight()I

    move-result p0

    return p0
.end method

.method public getFixedToolbarHeight()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone$6;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewToolbar:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->getFixedToolbarHeight()I

    move-result p0

    return p0
.end method

.method public getInstantTab()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone$6;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getInstantTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    return-object p0
.end method

.method public getTopControlsOffsetYPix()F
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone$6;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;

    iget p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mTopControlsOffsetYPix:F

    return p0
.end method

.method public isBitmapToolbarHidden()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone$6;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->isBitmapToolbarHidden()Z

    move-result p0

    return p0
.end method

.method public isFindOnPageRunning()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone$6;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;->isFindOnPageRunning()Z

    move-result p0

    return p0
.end method

.method public isFocused()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone$6;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;

    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result p0

    return p0
.end method

.method public isLocationBarEditMode()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone$6;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;->isLocationBarEditMode()Z

    move-result p0

    return p0
.end method

.method public isMultiTabShowing()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone$6;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;->isMultiTabShowing()Z

    move-result p0

    return p0
.end method

.method public isNewQuickAccessPage()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone$6;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->isNewQuickAccessNativePage()Z

    move-result p0

    return p0
.end method

.method public isNoTabsShowing()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone$6;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;->isNoTabsShowing()Z

    move-result p0

    return p0
.end method

.method public isResultViewShowing()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone$6;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->isResultViewShowing()Z

    move-result p0

    return p0
.end method

.method public isSplitTabMode()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone$6;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mSplitTab:Lcom/sec/android/app/sbrowser/main_view/MainViewSplitTab;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewSplitTab;->isShowing()Z

    move-result p0

    return p0
.end method

.method public isSwipeViewShowing()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone$6;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mToolbarSwipe:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->isSwipeViewShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isTabBarAnimating()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone$6;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->isTabBarShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone$6;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getTabBar()Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->isAnimating()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public shouldBottomBarShow()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone$6;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;->shouldBottomBarShow()Z

    move-result p0

    return p0
.end method

.method public shouldBottomBitmapLayerEnabled()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone$6;->shouldBottomBarShow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone$6;->isNewQuickAccessPage()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public shouldEnableCustomHeader()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone$6;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewWindow:Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->shouldEnableCustomHeader()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public shouldTopBarShow()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone$6;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;->shouldTopBarShow()Z

    move-result p0

    return p0
.end method

.method public shouldTopBitmapLayerEnabled()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone$6;->shouldTopBarShow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone$6;->isNewQuickAccessPage()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
