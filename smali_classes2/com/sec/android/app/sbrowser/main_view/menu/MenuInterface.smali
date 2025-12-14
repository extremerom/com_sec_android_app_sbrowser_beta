.class public interface abstract Lcom/sec/android/app/sbrowser/main_view/menu/MenuInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract addBookmark(Z)Z
.end method

.method public abstract getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
.end method

.method public abstract getCurrentVisibleTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
.end method

.method public abstract getFocusedTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
.end method

.method public abstract getMainActivityDelegate()Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;
.end method

.method public abstract getSaLoggingDelegate()Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;
.end method

.method public abstract getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;
.end method

.method public abstract isNoTabInCurrentMode()Z
.end method

.method public abstract isPageUsesMyanmarUnicode()Z
.end method

.method public abstract isSecretModeEnabled()Z
.end method

.method public abstract isShareMenuAvailable()Z
.end method

.method public abstract onAppMenuLongClick()V
.end method

.method public abstract onPrepareOptionsMenu(Landroid/view/Menu;)Z
.end method

.method public abstract performMenuItem(ILandroid/view/View;)V
.end method

.method public abstract setPageUsesMyanmarUnicode(Z)V
.end method

.method public abstract showAddToDialog(I)Z
.end method
