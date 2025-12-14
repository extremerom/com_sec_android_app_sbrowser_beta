.class public interface abstract Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract addBookmark()V
.end method

.method public abstract addBookmark(Z)V
.end method

.method public abstract addBookmarkBar()V
.end method

.method public abstract addBottombar()V
.end method

.method public abstract addOnDragListenerToContentView(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
.end method

.method public abstract addToolbar()V
.end method

.method public abstract applySecretModeStatus(ZLandroid/os/Bundle;)V
.end method

.method public abstract applySecureDataUnlockedStatus()V
.end method

.method public abstract canSwipeTabPaging()Z
.end method

.method public abstract cancelReaderMode()V
.end method

.method public abstract checkOnBackPressedMultiTab()Ljava/lang/Boolean;
.end method

.method public abstract checkUseSecretMode()Z
.end method

.method public abstract clearFocusUrlBar()V
.end method

.method public abstract closeAllTabs()V
.end method

.method public abstract closeAllTabsForBixby()V
.end method

.method public abstract closeAllTabsInternal()V
.end method

.method public abstract closeCurrentTabForBixby()V
.end method

.method public abstract closeMultiTabByNewIntent()V
.end method

.method public abstract configureBottombar()V
.end method

.method public abstract convertBitmapToolbarToView()V
.end method

.method public abstract dismissEditBookmarkSnackBarIfNeeded()V
.end method

.method public abstract enableAddBookmarkButton(Z)V
.end method

.method public abstract exitPictureInPictureController(Landroid/content/Intent;Ljava/lang/String;)V
.end method

.method public abstract finishEditMode()V
.end method

.method public abstract finishFindOnPage()Z
.end method

.method public abstract finishMultiTabStack(Z)V
.end method

.method public abstract finishNoTabsFragment()V
.end method

.method public abstract getAppMenu()Lcom/sec/android/app/sbrowser/common/model/main/menu/IAppMenu;
.end method

.method public abstract getBitmapHandler()Lcom/sec/android/app/sbrowser/main_view/main_interface/BitmapHandler;
.end method

.method public abstract getBookmarkBarContainer()Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;
.end method

.method public abstract getBottomControlsOffsetYPix()F
.end method

.method public abstract getBottombar()Lcom/sec/android/app/sbrowser/toolbar/Bottombar;
.end method

.method public abstract getContentLayout()Landroid/widget/FrameLayout;
.end method

.method public abstract getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
.end method

.method public abstract getCurrentVisibleTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
.end method

.method public abstract getFindOnPage()Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;
.end method

.method public abstract getFocusedTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
.end method

.method public abstract getFullScreenBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
.end method

.method public abstract getFullscreenBitmapFromCache(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Landroid/graphics/Bitmap;
.end method

.method public abstract getGroupColorValue(Ljava/lang/String;)I
.end method

.method public abstract getGroupNameList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getHideToolbarManager()Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;
.end method

.method public abstract getHomePageUrl(Z)Ljava/lang/String;
.end method

.method public abstract getMainViewAi()Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;
.end method

.method public abstract getMainViewConnectivity()Lcom/sec/android/app/sbrowser/common/model/main/IMainViewConnectivity;
.end method

.method public abstract getMainViewToolbar()Lcom/sec/android/app/sbrowser/common/model/main/IMainViewToolbar;
.end method

.method public abstract getMenuPopupAnchorView(I)Landroid/view/View;
.end method

.method public abstract getMultiTabNavigationBarState()Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;
.end method

.method public abstract getOptionMenuBadgeCount()I
.end method

.method public abstract getSBrowserViewModel()Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;
.end method

.method public abstract getSaLoggingDelegate()Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;
.end method

.method public abstract getSaveInstanceState()Z
.end method

.method public abstract getSaveWebPage()Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage;
.end method

.method public abstract getSplitTab()Lcom/sec/android/app/sbrowser/common/model/main/IMainViewSplitTab;
.end method

.method public abstract getStatusBarColor()I
.end method

.method public abstract getTabBar()Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;
.end method

.method public abstract getTabById(I)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
.end method

.method public abstract getTabCount()I
.end method

.method public abstract getTabCountOfCurrentGroup()I
.end method

.method public abstract getTabCountOfGroup(I)I
.end method

.method public abstract getTabEventListener()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;
.end method

.method public abstract getTabLayout()Lcom/sec/android/app/sbrowser/tab/TabLayout;
.end method

.method public abstract getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;
.end method

.method public abstract getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;
.end method

.method public abstract getToolbarSwipe()Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;
.end method

.method public abstract getTopControlsOffsetYPix()F
.end method

.method public abstract getTransBarContainer()Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainer;
.end method

.method public abstract getView()Landroid/view/View;
.end method

.method public abstract handleNoTabs()V
.end method

.method public abstract handleNoTabsKeyEvent(Landroid/view/KeyEvent;)Z
.end method

.method public abstract handlePendingActivityResult()V
.end method

.method public abstract hideAllPopups()V
.end method

.method public abstract hideReadAloudToolbar(ZZ)V
.end method

.method public abstract initMainViewBookmark()V
.end method

.method public abstract initMainViewTabClickListener()V
.end method

.method public abstract initSwipeTabPaging()V
.end method

.method public abstract inputUrl()V
.end method

.method public abstract inputUrlForSearch()V
.end method

.method public abstract isAuthLockScreenShown()Z
.end method

.method public abstract isBitmapToolbarHidden()Z
.end method

.method public abstract isBookmarkBarContainerShowing()Z
.end method

.method public abstract isBookmarkShowing()Z
.end method

.method public abstract isDecorFitsSystemWindow()Z
.end method

.method public abstract isFindOnPageRunning()Z
.end method

.method public abstract isFullScreenCutoutMode()Z
.end method

.method public abstract isFullScreenNoCutout()Z
.end method

.method public abstract isFullscreenMode()Z
.end method

.method public abstract isFullscreenVideoMode()Z
.end method

.method public abstract isIncognitoMode()Z
.end method

.method public abstract isInitialized()Z
.end method

.method public abstract isLocationBarEditMode()Z
.end method

.method public abstract isMainViewShowing()Z
.end method

.method public abstract isMultiTabClosing()Z
.end method

.method public abstract isMultiTabLaunchedByBixby()Z
.end method

.method public abstract isMultiTabShowing()Z
.end method

.method public abstract isNativeInitialized()Z
.end method

.method public abstract isNewQuickAccessNativePage()Z
.end method

.method public abstract isNoTabsShowing()Z
.end method

.method public abstract isReaderModeInProgress()Z
.end method

.method public abstract isResultViewShowing()Z
.end method

.method public abstract isResumed()Z
.end method

.method public abstract isSecretModeEnabled()Z
.end method

.method public abstract isSettingLayout()Z
.end method

.method public abstract isTabAnimationRunning()Z
.end method

.method public abstract isTabBarShowing()Z
.end method

.method public abstract isTabBarShowingWithOneLine()Z
.end method

.method public abstract isTabBarShowingWithTwoLine()Z
.end method

.method public abstract isTabRestored()Z
.end method

.method public abstract isTransBarContainerShowing()Z
.end method

.method public abstract isValidTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z
.end method

.method public abstract launchMultiTabStack()V
.end method

.method public abstract launchNewTab(Z)V
.end method

.method public abstract launchVoiceRecognizer()V
.end method

.method public abstract loadContentPage()V
.end method

.method public abstract loadHomePage()V
.end method

.method public abstract loadHomePageNewTab(ZLjava/lang/String;)V
.end method

.method public abstract loadMultiTab()Lcom/sec/android/app/sbrowser/multi_tab/MultiTab;
.end method

.method public abstract notifyBackForwardStatusChanged()V
.end method

.method public abstract notifyCurrentUrlChanged()V
.end method

.method public abstract notifyLetterBoxColorChanged()V
.end method

.method public abstract notifyLoadingStatusChanged(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
.end method

.method public abstract notifyReaderStatusChanged(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;ZZ)V
.end method

.method public abstract notifyStatusBarThemeColorChanged()V
.end method

.method public abstract notifyThemeChanged()V
.end method

.method public abstract notifyThemeColorChanged()V
.end method

.method public abstract notifyToolbarHeightChanged()V
.end method

.method public abstract onBackPressed()V
.end method

.method public abstract onBottomOffsetsChanged(F)V
.end method

.method public abstract onBottomOffsetsForFullscreenChanged(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;FF)V
.end method

.method public abstract onBottombarVisibilityChanged(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Z)V
.end method

.method public abstract onCloseTabRequest(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
.end method

.method public abstract onCurrentTabChanged()V
.end method

.method public abstract onDecorFitsSystemWindowsChanged(Z)V
.end method

.method public abstract onEditModeFinished()V
.end method

.method public abstract onEditModeStarted()V
.end method

.method public abstract onFindOnPage(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/String;)V
.end method

.method public abstract onFindOnPageResult(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;II)V
.end method

.method public abstract onHostTabChanged(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
.end method

.method public abstract onHoverExit()V
.end method

.method public abstract onLayoutModeChanged()V
.end method

.method public abstract onLoadFinished(I)V
.end method

.method public abstract onNativePageEditModeChanged(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Z)V
.end method

.method public abstract onNativePageVisibilityChanged(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Z)V
.end method

.method public abstract onOffsetsForFullscreenChanged(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;FF)V
.end method

.method public abstract onPopupMenuShown(Lcom/sec/android/app/sbrowser/common/model/PopupMenuType;)V
.end method

.method public abstract onReaderAnimationCleared(Z)V
.end method

.method public abstract onReaderButtonClicked()V
.end method

.method public abstract onReaderOptionButtonClick(Landroid/view/View;)V
.end method

.method public abstract onReadyToCreateTab(Landroid/widget/FrameLayout;Ljava/lang/String;ZLandroid/content/Intent;)V
.end method

.method public abstract onResultViewVisibilityChanged(Z)V
.end method

.method public abstract onSaveWebPage()V
.end method

.method public abstract onScrollStarted()V
.end method

.method public abstract onSmartTipShow()V
.end method

.method public abstract onTabGroupListChanged()V
.end method

.method public abstract onTabStateLoaded()V
.end method

.method public abstract onTabTearingFinished()V
.end method

.method public abstract onTopOffsetsChanged(F)V
.end method

.method public abstract onUnusedTabsClosed()V
.end method

.method public abstract onVoiceRecognizerResult(Lcom/sec/android/app/sbrowser/utils/VoiceRecognizer$Result;)V
.end method

.method public abstract onWebContentsCreated(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/String;)Z
.end method

.method public abstract openInSecretMode(Ljava/lang/String;)V
.end method

.method public abstract openSecretModeForFile()V
.end method

.method public abstract removeBottombar()V
.end method

.method public abstract removeOnDragListenerToContentView(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
.end method

.method public abstract removeToolbar()V
.end method

.method public abstract reopenClosedTab()V
.end method

.method public abstract requestUrlEditMode(Landroid/view/View;)V
.end method

.method public abstract restoreReadAloudToolbar()V
.end method

.method public abstract runBookmarkAction(Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/Bookmarks$AddBookmarkAction;)V
.end method

.method public abstract savePage(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
.end method

.method public abstract savePageUtilityCheck()Z
.end method

.method public abstract scrollTab(I)V
.end method

.method public abstract sendUrl(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Z)V
.end method

.method public abstract setAccessibilityEnabled(Z)V
.end method

.method public abstract setBookmarkBarInterface()V
.end method

.method public abstract setBookmarkShowing(Z)V
.end method

.method public abstract setCurrentTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
.end method

.method public abstract setForceStatusBarUpdate(Z)V
.end method

.method public abstract setFullscreenImmersiveMode(Z)V
.end method

.method public abstract setImmersiveMode()V
.end method

.method public abstract setInitialized(Z)V
.end method

.method public abstract setIsClearDisplayed(Z)V
.end method

.method public abstract setMediaSessionUrl(Landroid/content/Intent;)V
.end method

.method public abstract setNightModeEnabled(Z)V
.end method

.method public abstract setSecretModeEnabled(Z)V
.end method

.method public abstract setSettingLayout(Z)V
.end method

.method public abstract setTabRestored(Z)V
.end method

.method public abstract shouldEnableCustomHeader()Z
.end method

.method public abstract shouldOpenLinksInSecretMode(Landroid/content/Intent;)Z
.end method

.method public abstract shouldShowBottomBarShadow()Z
.end method

.method public abstract shouldShowMenu()Z
.end method

.method public abstract showGroupNameDialog(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;II)V
.end method

.method public abstract showNoTabsInMultiTab()V
.end method

.method public abstract startFindOnPage(Ljava/lang/String;)V
.end method

.method public abstract startTabAnimation()V
.end method

.method public abstract stopReadAloud()V
.end method

.method public abstract toggleSecretMode()V
.end method

.method public abstract updateAssistantMenuIfNecessary()V
.end method

.method public abstract updateCustomHeader(Z)V
.end method

.method public abstract updateDecorFitsSystemWindows()V
.end method

.method public abstract updateFullScreen()V
.end method

.method public abstract updateLayout(Landroid/content/res/Configuration;Z)V
.end method

.method public abstract updateMainViewBookmark()V
.end method

.method public abstract updateOptionMenuBadgeVisibility(I)V
.end method

.method public abstract updateTabBarContainerVisibility()V
.end method

.method public abstract updateTaskDescriptionIfNeeded()V
.end method

.method public abstract updateToolbarVisibility()V
.end method

.method public abstract updateTouchIcon(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
.end method

.method public abstract updateVoiceButtonStatus()V
.end method

.method public abstract waitingForBitmapManager(Ljava/lang/Runnable;)V
.end method

.method public abstract waitingForTabRestore(Ljava/lang/Runnable;)V
.end method
