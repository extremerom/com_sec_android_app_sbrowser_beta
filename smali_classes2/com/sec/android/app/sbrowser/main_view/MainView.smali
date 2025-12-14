.class public interface abstract Lcom/sec/android/app/sbrowser/main_view/MainView;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract canReopenClosedOldestTab()Z
.end method

.method public abstract clearFocusUrlBar()V
.end method

.method public abstract closeOldestTab()I
.end method

.method public abstract closeTabByMaxTabLimit(I)Z
.end method

.method public abstract finishMultiTabStack(Z)V
.end method

.method public abstract getAppMenu()Lcom/sec/android/app/sbrowser/common/model/main/menu/IAppMenu;
.end method

.method public abstract getContentLayout()Landroid/widget/FrameLayout;
.end method

.method public abstract getMoreMenuRect()Landroid/graphics/Rect;
.end method

.method public abstract getNewTabHandler()Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;
.end method

.method public abstract getOldestTab()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;
.end method

.method public abstract getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;
.end method

.method public abstract handleActivityResult(IILandroid/content/Intent;)V
.end method

.method public abstract handleKeyEvent(Landroid/view/KeyEvent;)Ljava/lang/Boolean;
.end method

.method public abstract isAuthLockScreenShown()Z
.end method

.method public abstract isCurrentTabNativePage()Z
.end method

.method public abstract isCurrentTabUnifiedHomepage()Z
.end method

.method public abstract isFindOnPageRunning()Z
.end method

.method public abstract isFullScreenForDisplayCutoutMode()Z
.end method

.method public abstract isFullscreenVideoMode()Z
.end method

.method public abstract isMainViewShowing()Z
.end method

.method public abstract isMultiTabShowing()Z
.end method

.method public abstract isNoTabsShowing()Z
.end method

.method public abstract isSecretModeEnabled()Z
.end method

.method public abstract launchHelpIntroIfNeeded()V
.end method

.method public abstract launchNewTab(Z)V
.end method

.method public abstract notifyMultiWindowModeChanged(Z)V
.end method

.method public abstract onBackPressed()V
.end method

.method public abstract onDestroy()V
.end method

.method public abstract onLowMemory()V
.end method

.method public abstract onNativeInitializationSuccess(Landroid/content/Intent;Landroid/os/Bundle;)V
.end method

.method public abstract onNewIntent(Landroid/content/Intent;)V
.end method

.method public abstract onPause()V
.end method

.method public abstract onPostInflation(Landroid/os/Bundle;)V
.end method

.method public abstract onProvideAssistContent()Ljava/lang/String;
.end method

.method public abstract onProvideKeyboardShortcuts(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/KeyboardShortcutGroup;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onReaderButtonClick()V
.end method

.method public abstract onResume()V
.end method

.method public abstract onSIXIconUpdated()V
.end method

.method public abstract onStart()V
.end method

.method public abstract onStop()V
.end method

.method public abstract onTabTearingFinished()V
.end method

.method public abstract onTrimMemory(I)V
.end method

.method public abstract prepareRecreate()V
.end method

.method public abstract reopenClosedOldestTab(I)I
.end method

.method public abstract resetParentalControlPage(ZZ)V
.end method

.method public abstract sendTouchEvent(Landroid/view/MotionEvent;)Z
.end method

.method public abstract setContentView(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;)V
.end method

.method public abstract setImmersiveMode()V
.end method

.method public abstract setSaveInstanceState(Z)V
.end method

.method public abstract showNoTabsMoreMenu()Z
.end method

.method public abstract talkBackChanged(Z)V
.end method

.method public abstract updateAssistantMenuIfNecessary()V
.end method

.method public abstract updateMultiTabView()V
.end method

.method public abstract updateTaskDescriptionIfNeeded()V
.end method

.method public abstract updateToolbarButtons()V
.end method
