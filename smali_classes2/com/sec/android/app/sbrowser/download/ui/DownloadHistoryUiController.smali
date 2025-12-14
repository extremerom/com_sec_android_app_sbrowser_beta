.class public interface abstract Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract addViewToToolbar(Landroid/view/View;)V
.end method

.method public abstract adjustKeyboardForView()V
.end method

.method public abstract deleteItemFromContextMenu(Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;)V
.end method

.method public abstract dispatchKeyEvent(Landroid/view/KeyEvent;)Z
.end method

.method public abstract executeDeleteAction(Z)V
.end method

.method public abstract executeMoveAction()V
.end method

.method public abstract executeSelectAll(Z)V
.end method

.method public abstract filter(ZZ)V
.end method

.method public abstract getAdapter()Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;
.end method

.method public abstract getAllDownloadsList()Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$DownloadItemList;
.end method

.method public abstract getAnimationHelper()Lcom/sec/android/app/sbrowser/download/ui/DHAnimationHelper;
.end method

.method public abstract getAppBar()Lcom/sec/android/app/sbrowser/download/ui/IDHAppBarView;
.end method

.method public abstract getBottomBar()Lcom/sec/android/app/sbrowser/download/ui/IDHBottomBarView;
.end method

.method public abstract getCurrentActionModeType()I
.end method

.method public abstract getCurrentFilterType()I
.end method

.method public abstract getDownloadHistoryListView()Landroidx/recyclerview/widget/RecyclerView;
.end method

.method public abstract getDownloadItemForView(Landroid/view/View;)Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;
.end method

.method public abstract getEmptyScrollView()Landroidx/core/widget/NestedScrollView;
.end method

.method public abstract getFilteredCount()I
.end method

.method public abstract getMainView()Lcom/sec/android/app/sbrowser/download/ui/IDHMainView;
.end method

.method public abstract getScreenID()Ljava/lang/String;
.end method

.method public abstract getSearchResultListSize()I
.end method

.method public abstract getSelectedItems()Ljava/util/List;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;",
            ">;"
        }
    .end annotation
.end method

.method public abstract handleTouchEventOnRecyclerView(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract hideActionModeIfNeeded()V
.end method

.method public abstract hideSearchView()V
.end method

.method public abstract isActionModeShown()Z
.end method

.method public abstract isSearchViewShowing()Z
.end method

.method public abstract isSelectAllChecked()Z
.end method

.method public abstract isSelectAllDownloadList()Z
.end method

.method public abstract isTouchActionDowned()Z
.end method

.method public abstract notifyAppBarHeightChangedWithDelay(Ljava/lang/Boolean;)V
.end method

.method public abstract notifyList()V
.end method

.method public abstract onBackPressed()Z
.end method

.method public abstract onConfigurationChanged(Landroid/content/res/Configuration;)V
.end method

.method public abstract onCreate(Landroid/os/Bundle;)V
.end method

.method public abstract onCreateOptionsMenu(Landroid/view/Menu;)V
.end method

.method public abstract onDestroy()V
.end method

.method public abstract onFilterChanged(I)V
.end method

.method public abstract onMoveOperationCompleted()V
.end method

.method public abstract onMoveOperationStart(I)V
.end method

.method public abstract onMoveProgress()V
.end method

.method public abstract onOptionsItemSelected(Landroid/view/MenuItem;)V
.end method

.method public abstract onPause()V
.end method

.method public abstract onPrepareOptionsMenu(Landroid/view/Menu;)V
.end method

.method public abstract onResume()V
.end method

.method public abstract onSelectionUpdated()V
.end method

.method public abstract onShareIntentLaunched()V
.end method

.method public abstract onToolbarKeyEventDown()V
.end method

.method public abstract onVoiceSearchResult(Landroid/content/Intent;)V
.end method

.method public abstract openDownloadItem(Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;)V
.end method

.method public abstract removeSearchClientEntry(Ljava/lang/String;)V
.end method

.method public abstract removeViewFromToolbar(Landroid/view/View;)V
.end method

.method public abstract renameDownloadItem(Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;)V
.end method

.method public abstract requestSearchEditTextDataFocus()V
.end method

.method public abstract setAnimationRunning(Z)V
.end method

.method public abstract setAppBarExpanded(Ljava/lang/Boolean;)V
.end method

.method public abstract setGoToTopAndHoverBottomPadding(I)V
.end method

.method public abstract setIsShiftPressed(Ljava/lang/Boolean;)V
.end method

.method public abstract setSelectionForFirstItem(Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;)V
.end method

.method public abstract setShouldShowOptionMenu(Ljava/lang/Boolean;)V
.end method

.method public abstract setTouchActionDowned(Z)V
.end method

.method public abstract showDeleteMoreMenuPopup(Landroid/view/View;)V
.end method

.method public abstract showDeleteTransition()V
.end method

.method public abstract showHideSpinnerBar(Ljava/lang/Boolean;)V
.end method

.method public abstract showNoDownloadLayout(Z)V
.end method

.method public abstract showSearchView()V
.end method

.method public abstract smartSearchInsert(Lcom/sec/terrace/browser/download/TerraceDownloadInfo;)V
.end method

.method public abstract startActionMode(I)V
.end method

.method public abstract updateAppBarInfo()V
.end method

.method public abstract updateToolbar(ZLandroid/view/View;)V
.end method
