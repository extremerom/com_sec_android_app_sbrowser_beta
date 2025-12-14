.class public interface abstract Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract addAncestors(Ljava/util/List;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;",
            ">;Z)V"
        }
    .end annotation
.end method

.method public abstract appendAncestor(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;ZZ)V
.end method

.method public abstract clearAllOptions()V
.end method

.method public abstract closeMenu()V
.end method

.method public abstract createFolderInParent(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract dispatchKeyEvent(Landroid/view/KeyEvent;)Z
.end method

.method public abstract dispatchMoreKeyEvent(Landroid/view/KeyEvent;)Z
.end method

.method public abstract enableNavigationForDrag(Z)V
.end method

.method public abstract exitCABMode()V
.end method

.method public abstract getCurrentTabInformativeSubTitle()Ljava/lang/String;
.end method

.method public abstract getCurrentTabInformativeTitle()Ljava/lang/String;
.end method

.method public abstract getDndList()Landroidx/recyclerview/widget/RecyclerView;
.end method

.method public abstract getFirstVisiblePosition()I
.end method

.method public abstract isCABShown()Z
.end method

.method public abstract isLaunchedFromBookmarkBar()Z
.end method

.method public abstract isRecyclerViewScrolling()Z
.end method

.method public abstract launchInActionMode()V
.end method

.method public abstract moveItemsToFolder(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)V
.end method

.method public abstract onAppBarHeightChanged(I)V
.end method

.method public abstract onBackpressed()Z
.end method

.method public abstract onConfigurationChanged(Landroid/content/res/Configuration;)V
.end method

.method public abstract onCreateOptionsMenu(Landroid/view/Menu;)V
.end method

.method public abstract onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public abstract onDeleteButtonClicked()V
.end method

.method public abstract onDestroy()V
.end method

.method public abstract onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end method

.method public abstract onPause()V
.end method

.method public abstract onPrepareOptionsMenu(Landroid/view/Menu;)V
.end method

.method public abstract onResume()V
.end method

.method public abstract resetScrollPosition()V
.end method

.method public abstract sendStatusLog(I)V
.end method

.method public abstract setActionModeTitleAlpha(F)V
.end method

.method public abstract setAncestorPosition(I)V
.end method

.method public abstract setChildren(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setLaunchedFromBookmarkBar(Z)V
.end method

.method public abstract setListener(Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/ShowBookmarksViewListener;)V
.end method

.method public abstract setNoBookmarksLayout(Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$ShowBookmarkLayout;)V
.end method

.method public abstract setParent(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)V
.end method

.method public abstract setRoot(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)V
.end method

.method public abstract setSceneAnimation(Z)V
.end method

.method public abstract setSitesActivity(Landroid/app/Activity;)V
.end method

.method public abstract setViewForNewConfig(Landroid/view/ViewGroup;)V
.end method

.method public abstract showDeleteConfirmDialog(ZLcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)V
    .param p2    # Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract showSearchOption(Z)V
.end method

.method public varargs abstract switchToPreviousParent([I)V
.end method

.method public abstract updateActionMode()V
.end method

.method public abstract updateChildren()V
.end method

.method public abstract updateInformativeAppBarInfo()V
.end method

.method public abstract updateLongPressList(Ljava/lang/Object;)V
.end method

.method public abstract updateNavigationBarFolderName(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)V
.end method
