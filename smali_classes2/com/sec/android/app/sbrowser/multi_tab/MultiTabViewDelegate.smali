.class interface abstract Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract changeGroupColor(Ljava/lang/String;I)V
.end method

.method public abstract clickMenuKey(Landroid/view/KeyEvent;)V
.end method

.method public abstract closeAllTabs()V
.end method

.method public abstract closeMultiTab()V
.end method

.method public abstract closeMultipleTabs(Ljava/util/List;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation
.end method

.method public abstract closeTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
.end method

.method public abstract createNewTab(ZZLjava/lang/String;)V
.end method

.method public abstract filterOptionsMenu(Landroid/view/Menu;)V
.end method

.method public abstract findStartEndIndexes(II)Le1/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Le1/b;"
        }
    .end annotation
.end method

.method public abstract getBottombarBitmap()Landroid/graphics/Bitmap;
.end method

.method public abstract getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
.end method

.method public abstract getCurrentTabId()I
.end method

.method public abstract getCurrentTabIndex()I
.end method

.method public abstract getFullscreenBitmapFromCache(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Landroid/graphics/Bitmap;
.end method

.method public abstract getFullscreenBitmapFromMemCache(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Landroid/graphics/Bitmap;
.end method

.method public abstract getGroupColorId(Ljava/lang/String;)I
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

.method public abstract getLatestReopenedPath()Ljava/lang/String;
.end method

.method public abstract getMode()Ljava/lang/String;
.end method

.method public abstract getModeFromOldPref()Ljava/lang/String;
.end method

.method public abstract getMultiTabList(Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getNormalTabCount()I
.end method

.method public abstract getRemovedTabList(Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSecretTabCount()I
.end method

.method public abstract getStatusBarColor()I
.end method

.method public abstract getTabCountOfCurrentGroup()I
.end method

.method public abstract getThumbnailBitmapFromCache(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Z)Landroid/graphics/Bitmap;
.end method

.method public abstract getThumbnailBitmapFromMemCache(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Z)Landroid/graphics/Bitmap;
.end method

.method public abstract getTimeLaunchTabsRequested()J
.end method

.method public abstract getToolbarBitmap()Landroid/graphics/Bitmap;
.end method

.method public abstract getToolbarHeight()I
.end method

.method public abstract isBmpCallbackReceived()Z
.end method

.method public abstract isHideStatusBarEnabled()Z
.end method

.method public abstract isLaunchedByBixby()Z
.end method

.method public abstract moveTabOrder(II)V
.end method

.method public abstract notifyToolbarColorChanged()V
.end method

.method public abstract onMultiTabLaunched()V
.end method

.method public abstract onSecretClicked()V
.end method

.method public abstract onStartOutroAnimation()V
.end method

.method public abstract onSyncedTabsClicked()V
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

.method public abstract onViewDestroy()V
.end method

.method public abstract removeSyncedDevice()V
.end method

.method public abstract renameGroup(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract reorderGroup(Ljava/lang/String;IZ)V
.end method

.method public abstract reorderTabWithGroup(IIZ)V
.end method

.method public abstract setCurrentTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
.end method

.method public abstract setGroup(ILjava/lang/String;I)V
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

.method public abstract showReopenClosedTabMenu(Landroid/view/Menu;)V
.end method

.method public abstract undoCloseTab()I
.end method
