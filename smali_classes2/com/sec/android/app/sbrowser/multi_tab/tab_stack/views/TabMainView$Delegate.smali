.class public interface abstract Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Delegate"
.end annotation


# virtual methods
.method public abstract cancelMoveMode()V
.end method

.method public abstract exitEditMode()V
.end method

.method public abstract exitSearchMode()V
.end method

.method public abstract extendAppBarWithAnim(Z)V
.end method

.method public abstract fromCardView()Z
.end method

.method public abstract getActivity()Landroid/app/Activity;
.end method

.method public abstract getAppBarHeight()I
.end method

.method public abstract getContentHeight()I
.end method

.method public abstract getCoordinatorContentHeight()I
.end method

.method public abstract getCoordinatorLayout()Landroidx/coordinatorlayout/widget/CoordinatorLayout;
.end method

.method public abstract getCurrentGroup()Ljava/lang/String;
.end method

.method public abstract getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
.end method

.method public abstract getCurrentTabId()I
.end method

.method public abstract getGroupColor(Ljava/lang/String;)I
.end method

.method public abstract getGroupPathHeight()I
.end method

.method public abstract getLatestReopenedPath()Ljava/lang/String;
.end method

.method public abstract getMultiTabBottomBarHeight()I
.end method

.method public abstract getRecents()Landroid/view/View;
.end method

.method public abstract getScrollPosition()I
.end method

.method public abstract getSearchFilter()Ljava/lang/String;
.end method

.method public abstract getShareButtonPosition()I
.end method

.method public abstract getTabViewLocation(Landroid/view/View;)Landroid/graphics/Rect;
.end method

.method public abstract getToolbarBitmap()Landroid/graphics/Bitmap;
.end method

.method public abstract goToRootIfNoMemberInCurrentGroup()V
.end method

.method public abstract groupMoved()V
.end method

.method public abstract handleNoTabs()V
.end method

.method public abstract isAppBarExtended()Z
.end method

.method public abstract isCardView()Z
.end method

.method public abstract isEditModeFromSearch()Z
.end method

.method public abstract isFirstIntroAnimationShown()Z
.end method

.method public abstract isGridView()Z
.end method

.method public abstract isHideStatusBarEnabled()Z
.end method

.method public abstract isMultiTabAdded()Z
.end method

.method public abstract isMultiTabAnimating()Z
.end method

.method public abstract isMultiTabDetached()Z
.end method

.method public abstract isMultiTabModeChanging()Z
.end method

.method public abstract isMultiTabOutroAnimating()Z
.end method

.method public abstract isMultiTabRemoving()Z
.end method

.method public abstract isMultiTabShowing()Z
.end method

.method public abstract isNoBottomButtonExceptShare()Z
.end method

.method public abstract isNoTabsShowing()Z
.end method

.method public abstract isSearchBarShowing()Z
.end method

.method public abstract isSecretModeEnabled()Z
.end method

.method public abstract moveTabOrder(II)V
.end method

.method public abstract onConfirmGroupDialog()V
.end method

.method public abstract onTabGroupChanged(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onTouchContent()V
.end method

.method public abstract performEndAction(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/Runnable;)V
.end method

.method public abstract reorderGroup(Ljava/lang/String;IZ)V
.end method

.method public abstract reorderTabWithGroup(IIZ)V
.end method

.method public abstract resetContainerHeight()V
.end method

.method public abstract searchTabs()V
.end method

.method public abstract searchTabsUsingSearchApi(Ljava/lang/String;)V
.end method

.method public abstract sendSALoggingForTabClick(ZZ)V
.end method

.method public abstract setBottomButtonEnabled(Z)V
.end method

.method public abstract setCloseDialog(Lm/l;)V
.end method

.method public abstract setCurrentGroup(Ljava/lang/String;)V
.end method

.method public abstract setCurrentTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
.end method

.method public abstract setEditToolbarTitle(I)V
.end method

.method public abstract setFirstIntroAnimation(Z)V
.end method

.method public abstract setMultiTabAnimating(Z)V
.end method

.method public abstract setMultiTabOutroAnimating(Z)V
.end method

.method public abstract setNavigationBarColorIfNecessary(Z)V
.end method

.method public abstract setScrollPosition(I)V
.end method

.method public abstract setSelectAllCheck(Z)V
.end method

.method public abstract setShareButtonState(Z)V
.end method

.method public abstract setThumbnailInView(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;Landroid/os/Handler;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;",
            "Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation
.end method

.method public abstract shouldIgnoreClicked()Z
.end method

.method public abstract showCreateGroupDialog(Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog$Listener;)V
.end method

.method public abstract showNoTabViewIfNeeded()V
.end method

.method public abstract showSimilarResultMessage(Z)V
.end method

.method public abstract updateButtonsBySelect()V
.end method

.method public abstract updateSearchData()V
.end method

.method public abstract updateTabCountInFloatingMenu()V
.end method
