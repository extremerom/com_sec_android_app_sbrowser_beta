.class public interface abstract Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/JavascriptDelegate;


# virtual methods
.method public addShortcut(IILandroid/view/View;Z)V
    .locals 0
    .param p3    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public applyReaderFontScale(Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public applyReaderOption(Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public applyReaderThemeColor(Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public canGoBack()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public canGoForward()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public changeUserAgentIfNeeded(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public changeZoomValue(ZLandroid/view/View;)V
    .locals 0

    return-void
.end method

.method public checkParentalControl(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public closeContents()V
    .locals 0

    return-void
.end method

.method public closeDialogIfNecessary()V
    .locals 0

    return-void
.end method

.method public closeInfoBar()V
    .locals 0

    return-void
.end method

.method public deactivate()V
    .locals 0

    return-void
.end method

.method public destroyNativePage()V
    .locals 0

    return-void
.end method

.method public destroySelectedText()V
    .locals 0

    return-void
.end method

.method public detachTabView()V
    .locals 0

    return-void
.end method

.method public didRemoveObjectCaptureView()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public didRemoveVisionTextView()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public didShowPrivacyDownloadDialog()V
    .locals 0

    return-void
.end method

.method public disableDefaultFontSize()V
    .locals 0

    return-void
.end method

.method public dismissContextMenu()V
    .locals 0

    return-void
.end method

.method public dismissDialogForNavigation()V
    .locals 0

    return-void
.end method

.method public dismissZoomInfoBar()V
    .locals 0

    return-void
.end method

.method public enableBitmapCompositionForLayer(Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;ZLandroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method

.method public enableBlurEffectOnToolbar(Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;IIIIIF)V
    .locals 0

    return-void
.end method

.method public enterEditMode(ZZ)V
    .locals 0

    return-void
.end method

.method public exitEditMode(ZZ)V
    .locals 0

    return-void
.end method

.method public getAppAssociatedWith()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getArticleImageUrl()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getBaseContext()Landroid/content/Context;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getBitmapAsync(IIIILandroid/graphics/Bitmap$Config;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Landroid/graphics/Bitmap$Config;",
            "Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback<",
            "Landroid/graphics/Bitmap;",
            ">;I)V"
        }
    .end annotation

    return-void
.end method

.method public getBitmapFromCache(Ljava/lang/String;Lcom/sec/terrace/Terrace$BitmapRequestCallback;)V
    .locals 0

    return-void
.end method

.method public getBottomMargin()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getContentMimeType()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getCurrentVisibleContentRect()Landroid/graphics/Rect;
    .locals 1

    new-instance p0, Landroid/graphics/Rect;

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0
.end method

.method public getDirectedNavigationHistory(ZI)Lcom/sec/terrace/navigation_interception/TerraceNavigationHistory;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getFavicon()Landroid/graphics/Bitmap;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getFaviconDominantColor()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getGroupColorId()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getGroupName()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getInnerText(Lcom/sec/terrace/Terrace$InnerTextCallback;)V
    .locals 0

    return-void
.end method

.method public getIsSameDocument()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getNativePage()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getOriginalTabOfReaderTab()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getOriginalUrl()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getPWAStatus()Lcom/sec/android/app/sbrowser/common/model/webapp/PWAStatus;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getParentTabId()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getParentalControlBlockedUrl()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getPreviousUpdatedUrl()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getProgress()D
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getReader()Lcom/sec/android/app/sbrowser/common/model/reader/IReader;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getReaderTab()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getReaderTabWhenSplitView()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getReaderTheme()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getSelectedText()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getState()Lcom/sec/terrace/TerraceState;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getTabId()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getTabLaunchType()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;
    .locals 0

    sget-object p0, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;->FROM_LINK:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;

    return-object p0
.end method

.method public getTerrace()Lcom/sec/terrace/Terrace;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getThemeColor()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getTimestampMillis()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getTopMargin()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getUrlForSearchQuery(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getUseDesktopUserAgent()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getUserAgentOption(Z)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getView()Landroid/view/ViewGroup;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getViewPortBitmapAsync(Lcom/sec/terrace/Terrace$BitmapRequestCallback;)V
    .locals 0

    return-void
.end method

.method public getVisibleContentHeight()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getWasRenderProcessGone()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getZoomValue()D
    .locals 2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    return-wide v0
.end method

.method public getZoomValueDex()D
    .locals 2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    return-wide v0
.end method

.method public getZoomValueMobile()D
    .locals 2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    return-wide v0
.end method

.method public goBack()V
    .locals 0

    return-void
.end method

.method public goForward()V
    .locals 0

    return-void
.end method

.method public goToNavigationIndex(I)V
    .locals 0

    return-void
.end method

.method public handleQuickAccessRequestResult(I)V
    .locals 0

    return-void
.end method

.method public hide()V
    .locals 0

    return-void
.end method

.method public hideInfoBar()V
    .locals 0

    return-void
.end method

.method public hideReader()V
    .locals 0

    return-void
.end method

.method public hideVideoAssistant()V
    .locals 0

    return-void
.end method

.method public isAboutBlankUrl()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isAnimating()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isArticleAvailable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isBitmapCaptureDelayed()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isBookmarkAvailable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isBookmarked()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isCheckableBottomBarVisible()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isClosed()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isClosing()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isCreatedWithTerrace()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isEditMode()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isErrorPage()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isFocusedNodeEditable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isFullScreenMode()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isFullscreenVideoMode()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isHidden()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isHoverScrolling()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isIncognito()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isInfoBarPresent()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isInitialNavigation()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isLaunchedFromSplitView()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isLoading()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isLocked()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isMultiCpUrl()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isNativeInitialScreen()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isNativePage()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isNativePageVisible()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isNeedToHideToolbarShadow()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isOfflineModePage()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isPWAInstalling()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isParentalControlNativePage()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isPdfWritingInProgress()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isQuickAccessNativePage()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isReaderPage()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isReaderTabLoadFinished()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isReaderView()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isReadyToShow()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSavedPageUrl()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSavedReaderPage()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSelectActionModeShowing()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSharable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSolidColorLightThemed()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSplitMode()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSplitModeOnLeft()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isTerraceStateDirty()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isUnifiedHomepageUrl()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isUnifiedHomepageUrl(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isUrlBlockedByParentalControl(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isZoomApplyToThisTabOnly()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isZoomApplyToThisTabOnlyDex()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isZoomApplyToThisTabOnlyMobile()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public loadParentalControlUnblockedUrl()V
    .locals 0

    return-void
.end method

.method public loadUrl(Landroid/content/Intent;Ljava/lang/String;ILjava/lang/String;ZI)V
    .locals 0

    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public loadUrl(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public loadUrl(Ljava/lang/String;ILjava/lang/String;ZI)V
    .locals 0

    return-void
.end method

.method public loadUrlFromSitesActivity(Landroid/content/Intent;)V
    .locals 0
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public loadUrlWithRunnable(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public notifyBitmapReceived()V
    .locals 0

    return-void
.end method

.method public notifyThumbnailCreated(ILandroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method

.method public onBackPressed()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onCurrentTabChanged()V
    .locals 0

    return-void
.end method

.method public onDeviceStateChanged()V
    .locals 0

    return-void
.end method

.method public onLaunchNewTabFromAssistIntent()V
    .locals 0

    return-void
.end method

.method public onLaunchNewTabFromExternalApp()V
    .locals 0

    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 0

    return-void
.end method

.method public onObjectCaptureEnded()V
    .locals 0

    return-void
.end method

.method public onObjectCaptureStarted()V
    .locals 0

    return-void
.end method

.method public onParentalConfirm()V
    .locals 0

    return-void
.end method

.method public onPictureInPictureModeChanged(Z)V
    .locals 0

    return-void
.end method

.method public onVideoAssistantEnabledChanged()V
    .locals 0

    return-void
.end method

.method public print()V
    .locals 0

    return-void
.end method

.method public reload()V
    .locals 0

    return-void
.end method

.method public restoreFieldsFromState(Lcom/sec/terrace/TerraceState;)V
    .locals 0

    return-void
.end method

.method public saveAllImages(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public savePage()V
    .locals 0

    return-void
.end method

.method public scrollBy(II)V
    .locals 0

    return-void
.end method

.method public setAccessibilityEnabled(Z)V
    .locals 0

    return-void
.end method

.method public setAppAssociatedWith(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setConfirmedZoomValue(D)V
    .locals 0

    return-void
.end method

.method public setContextMenuEnabled(Z)V
    .locals 0

    return-void
.end method

.method public setCustomUserAgentIfNeeded(Z)V
    .locals 0

    return-void
.end method

.method public setFaviconDominantColor(I)V
    .locals 0

    return-void
.end method

.method public setGroupColorId(I)V
    .locals 0

    return-void
.end method

.method public setGroupName(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setImportance(Z)V
    .locals 0

    return-void
.end method

.method public setIsAnimating(Z)V
    .locals 0

    return-void
.end method

.method public setIsBitmapCaptureDelayed(Z)V
    .locals 0

    return-void
.end method

.method public setIsLoading(Z)V
    .locals 0

    return-void
.end method

.method public setIsLocked(Z)V
    .locals 0

    return-void
.end method

.method public setIsSavedReaderPage(Z)V
    .locals 0

    return-void
.end method

.method public setIsTerraceStateDirty(Z)V
    .locals 0

    return-void
.end method

.method public setMainViewPhoneCallback(Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public setNativePageDelegate(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePageDelegate;)V
    .locals 0

    return-void
.end method

.method public setNativePageEarly(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage;)V
    .locals 0

    return-void
.end method

.method public setOriginalUrlForSavedPage(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setParentTabId(I)V
    .locals 0

    return-void
.end method

.method public setParentalControlBlockedUrl(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setPendingLoadUrl(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setReaderPageEnabled(ZZZZ)V
    .locals 0

    return-void
.end method

.method public setRemoveParentalControlHistory()V
    .locals 0

    return-void
.end method

.method public setRestoredZoomValue(DZDZ)V
    .locals 0

    return-void
.end method

.method public setSplitViewSize(II)V
    .locals 0

    return-void
.end method

.method public setThemeColor(IZ)V
    .locals 0

    return-void
.end method

.method public setTopControlsHeight(II)V
    .locals 0

    return-void
.end method

.method public setTopControlsHeight(IIZ)V
    .locals 0

    return-void
.end method

.method public setUseDesktopUserAgent(ZZ)V
    .locals 0

    return-void
.end method

.method public setUserAgentOption(ZII)V
    .locals 0

    return-void
.end method

.method public setVideoAssistantActivated(Z)V
    .locals 0

    return-void
.end method

.method public setWebContentsXOffset(I)V
    .locals 0

    return-void
.end method

.method public setZoomApplyToThisTabOnly(Z)V
    .locals 0

    return-void
.end method

.method public setZoomInfoBarAnchorView(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public setZoomValue(D)V
    .locals 0

    return-void
.end method

.method public shouldShowBottomBarShadow()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public shouldShowToolbarShadow()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public show()V
    .locals 0

    return-void
.end method

.method public showInfoBar()V
    .locals 0

    return-void
.end method

.method public showZoomInfoBar(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public startFinding(Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public stopFinding()V
    .locals 0

    return-void
.end method

.method public stopLoading()V
    .locals 0

    return-void
.end method

.method public stopMediaSession()V
    .locals 0

    return-void
.end method

.method public updateBrowserControlsState(IZ)V
    .locals 0

    return-void
.end method

.method public updateInfoBar()V
    .locals 0

    return-void
.end method

.method public updateIntent(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public updateIsBookmarked(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public updateParentalControlData()V
    .locals 0

    return-void
.end method

.method public updateTitle()V
    .locals 0

    return-void
.end method

.method public updateZoomValue()V
    .locals 0

    return-void
.end method
