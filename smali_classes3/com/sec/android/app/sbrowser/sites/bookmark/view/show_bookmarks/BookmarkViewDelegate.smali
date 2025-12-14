.class public interface abstract Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkViewDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract IsShiftPressed()Z
.end method

.method public abstract enableFolderNavigation(Z)V
.end method

.method public abstract getActivity()Landroid/app/Activity;
.end method

.method public abstract getAdapter()Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarksViewAdapter;
.end method

.method public abstract getCheckBoxMode()Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$CheckBoxMode;
.end method

.method public abstract getChildrenList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCurrentParent()Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;
.end method

.method public abstract getDndListView()Landroidx/recyclerview/widget/RecyclerView;
.end method

.method public abstract getDragAndDropList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getListener()Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/ShowBookmarksViewListener;
.end method

.method public abstract getMenu()Landroid/view/Menu;
.end method

.method public abstract isIsAnimating()Z
.end method

.method public abstract isLaunchedFromBookmarkBar()Z
.end method

.method public abstract onBackpressed()Z
.end method

.method public abstract setLaunchedFromBookmarkBar(Z)V
.end method

.method public abstract showDeleteConfirmDialog(ZLcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)V
    .param p2    # Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract switchToCheckBoxMode(Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$CheckBoxMode;)V
.end method

.method public abstract updateDragAndDropList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateInformativeAppBarInfo()V
.end method
