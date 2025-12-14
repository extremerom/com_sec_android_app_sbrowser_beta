.class public interface abstract Lcom/sec/android/app/sbrowser/multi_tab/MultiTab;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/multi_tab/MultiTab$MultiTabEventListener;,
        Lcom/sec/android/app/sbrowser/multi_tab/MultiTab$MultiTabDelegate;
    }
.end annotation


# direct methods
.method public static create(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/multi_tab/MultiTab;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public abstract applySecretModeStatus(Z)V
.end method

.method public abstract bringToFront()V
.end method

.method public abstract cancelMoveMode()V
.end method

.method public abstract closeAllTabs()V
.end method

.method public abstract closeGroupList()V
.end method

.method public abstract dispatchKeyEvent(Landroid/view/KeyEvent;)Z
.end method

.method public abstract exitEditMode()V
.end method

.method public abstract exitSearchMode()V
.end method

.method public abstract finishMultiTab()V
.end method

.method public abstract getMultiTabNavigationBarState()Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;
.end method

.method public abstract isEditMode()Z
.end method

.method public abstract isGroupListShowing()Z
.end method

.method public abstract isMoveMode()Z
.end method

.method public abstract isMultiTabAnimating()Z
.end method

.method public abstract isMultiTabClosing()Z
.end method

.method public abstract isMultiTabModeChanging()Z
.end method

.method public abstract isMultiTabPopBackErrorOccurred()Z
.end method

.method public abstract isSearchBarShowing()Z
.end method

.method public abstract isTabDragging()Z
.end method

.method public abstract launchMultiTab(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabLaunchCallback;)V
    .param p1    # Lcom/sec/android/app/sbrowser/multi_tab/MultiTabLaunchCallback;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract notifyAllTabsRemoved()V
.end method

.method public abstract notifyTabAdded(I)V
.end method

.method public abstract notifyTabGroupNameChanged(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onCloseTabRequest(I)V
.end method

.method public abstract onMultiTabVoiceRecognizerResult(Ljava/lang/String;)V
.end method

.method public abstract onWindowFocusChanged(Z)V
.end method

.method public abstract openNewTab()V
.end method

.method public abstract reopenClosedTab()V
.end method

.method public abstract setDelegate(Lcom/sec/android/app/sbrowser/multi_tab/MultiTab$MultiTabDelegate;)V
.end method

.method public abstract setListener(Lcom/sec/android/app/sbrowser/multi_tab/MultiTab$MultiTabEventListener;)V
.end method

.method public abstract setMultiTabNewTabSelected(Z)V
.end method

.method public abstract shouldShowMenu()Z
.end method

.method public abstract showNoTabs()V
.end method

.method public abstract startIntroAnimIfDelayed()V
.end method

.method public abstract startOutroAnimation(Z)V
.end method

.method public abstract switchMode(Ljava/lang/String;)V
.end method

.method public abstract updateMultiTabView()V
.end method
