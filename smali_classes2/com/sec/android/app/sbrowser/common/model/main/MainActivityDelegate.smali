.class public interface abstract Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract canReopenClosedOldestTab()Z
.end method

.method public abstract checkInstanceOfSBrowserMainActivity(Landroid/app/Activity;)Z
.end method

.method public abstract closeOldestTab()I
.end method

.method public abstract closeTabByMaxTabLimit(I)Z
.end method

.method public abstract getActivity()Landroid/app/Activity;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract getContentLayout()Landroid/widget/FrameLayout;
.end method

.method public abstract getCurrentTabUrl()Ljava/lang/String;
.end method

.method public abstract getLastUserInteraction()J
.end method

.method public abstract getMainRenderView()Landroid/widget/FrameLayout;
.end method

.method public abstract getMoreMenuRect()Landroid/graphics/Rect;
.end method

.method public abstract getOldestTab()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;
.end method

.method public abstract getSharedPreferences()Landroid/content/SharedPreferences;
.end method

.method public abstract getTerraceActivity()Lcom/sec/terrace/TerraceActivity;
.end method

.method public abstract isAddBookmarkAvailable()Z
.end method

.method public abstract isBrowserAllowedByDPM()Z
.end method

.method public abstract isCurrentTabEditMode()Z
.end method

.method public abstract isFindOnPageRunning()Z
.end method

.method public abstract isFullScreenForDisplayCutoutMode()Z
.end method

.method public abstract isFullScreenMode()Z
.end method

.method public abstract isHelpIntroRunning()Z
.end method

.method public abstract isLightTheme()Z
.end method

.method public abstract isMainViewShowing()Z
.end method

.method public abstract isMultiTabShowing()Z
.end method

.method public abstract isNeedToResizeWindow()Z
.end method

.method public abstract isNoTabsShowing()Z
.end method

.method public abstract isParentalControlLoading()Z
.end method

.method public abstract isSecretModeEnabled()Z
.end method

.method public abstract notifyIntentHandled(Landroid/content/Intent;)V
.end method

.method public abstract onReaderButtonClick()V
.end method

.method public abstract onSIXIconUpdated()V
.end method

.method public abstract onTabTearingFinished()V
.end method

.method public abstract reopenClosedOldestTab(I)I
.end method

.method public abstract resetParentalControl()V
.end method

.method public abstract setImmersiveMode()V
.end method

.method public abstract setInvisibleMainView()V
.end method

.method public abstract setSplitMode(Z)V
.end method

.method public abstract shouldSetNavigationBarColor()Z
.end method

.method public abstract showRemoteConsentDialog(Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType;)V
.end method

.method public abstract showZoomInOutPopup()V
.end method

.method public abstract updateMultiTabView()V
.end method

.method public abstract updateToolbarButtons()V
.end method
