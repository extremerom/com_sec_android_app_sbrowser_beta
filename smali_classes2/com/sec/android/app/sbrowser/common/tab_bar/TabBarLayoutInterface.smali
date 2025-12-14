.class public interface abstract Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarLayoutInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public activateCurrentTabButton()V
    .locals 0

    return-void
.end method

.method public addDummyTabButton(ZILjava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public addTabButton(ZILjava/lang/String;II)V
    .locals 0

    return-void
.end method

.method public cleanDummyTabButtons()V
    .locals 0

    return-void
.end method

.method public dismissCloseConfirmDialog()V
    .locals 0

    return-void
.end method

.method public dismissContextMenu()V
    .locals 0

    return-void
.end method

.method public dismissGroupNameDialog()V
    .locals 0

    return-void
.end method

.method public enableTabBar(Z)V
    .locals 0

    return-void
.end method

.method public focusInLeft()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public focusNewTabButton()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getLayout()Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getTabBarButtons()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public groupTabButton(ZILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public isAnimating()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isInTabBarArea(Landroid/view/DragEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isTabTearing()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public lockTabButton(IZ)V
    .locals 0

    return-void
.end method

.method public moveTabButton(ZII)V
    .locals 0

    return-void
.end method

.method public moveTabGroup(ZLjava/lang/String;IZ)V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public onSecretModeChanged(Z)V
    .locals 0

    return-void
.end method

.method public onStop()V
    .locals 0

    return-void
.end method

.method public onTabStateLoaded()V
    .locals 0

    return-void
.end method

.method public onTabTearingFinished()V
    .locals 0

    return-void
.end method

.method public postUpdateLayout()V
    .locals 0

    return-void
.end method

.method public removeAllTabButtons(Z)V
    .locals 0

    return-void
.end method

.method public removeAllTabButtonsInGroup(ZLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public removeAllUnlockedTabButtons(Z)V
    .locals 0

    return-void
.end method

.method public removeAllUnlockedTabButtonsInGroup(ZLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public removeDummyTabButton(ZI)V
    .locals 0

    return-void
.end method

.method public removeOtherTabButtons(ZI)V
    .locals 0

    return-void
.end method

.method public removeOtherTabButtonsInGroup(ZLjava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public removeTabButtonWithAnimation(ZI)V
    .locals 0

    return-void
.end method

.method public scrollToCurrentTabButton()V
    .locals 0

    return-void
.end method

.method public setBackgroundColor(Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;I)V
    .locals 0

    return-void
.end method

.method public setDelegate(Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;)V
    .locals 0

    return-void
.end method

.method public setIsTabTearing(Z)V
    .locals 0

    return-void
.end method

.method public setListener(Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;)V
    .locals 0

    return-void
.end method

.method public setNewTabButtonVisibility(Z)V
    .locals 0

    return-void
.end method

.method public shouldCaptureLater()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public stopDragging(Z)V
    .locals 0

    return-void
.end method

.method public switchToNextTabButton(ZZZ)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public ungroupTabButton(ZILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public ungroupTabGroup(ZLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public updateCurrentTab(II)V
    .locals 0

    return-void
.end method

.method public updateCurrentTabButtonProgress(I)V
    .locals 0

    return-void
.end method

.method public updateTabButtonFavicon(I)V
    .locals 0

    return-void
.end method

.method public updateTabButtonFavicon(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public updateTabButtonTitle(I)V
    .locals 0

    return-void
.end method

.method public updateTabGroup(ZLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public updateTabGroupColor(ZLjava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public updateTabGroupName(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public updateVisibility(Z)V
    .locals 0

    return-void
.end method
