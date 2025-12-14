.class public interface abstract Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/ShowBookmarksViewListener;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract createFolder(Landroid/content/Context;Ljava/util/List;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;",
            ">;Z)V"
        }
    .end annotation
.end method

.method public abstract editBookmark(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)V
.end method

.method public abstract findFolderChildren(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)V
.end method

.method public abstract folderContainsBookmarks(J)Z
.end method

.method public abstract getList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getListOfObjectTypes()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getListOfObjectsIds()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getNonEditableItems()I
.end method

.method public abstract getTotalBookmarksCount()V
.end method

.method public abstract isBookmarkExistInFolder(J)Z
.end method

.method public abstract moveToFolder(Ljava/util/List;Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;",
            ">;",
            "Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onActionSelected(Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$ActivityLaunchType;Ljava/util/List;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$ActivityLaunchType;",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract onActionStart()V
.end method

.method public abstract onCreateFolderInParent(Landroid/content/Context;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onDeleteSelected(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onHandleBack(Z)Z
.end method

.method public abstract onParentSelected(IZ)V
.end method

.method public abstract onSelect(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)V
.end method

.method public abstract onSortTypeChanged()V
.end method

.method public abstract openInNewTab(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)V
.end method

.method public abstract openInNewWindow(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)V
.end method

.method public abstract openInSecretMode(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)V
.end method

.method public abstract reorderItems(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setListOfObjectTypes(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setListOfObjectsIds(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setNonEditableItems(I)V
.end method

.method public abstract showConfirmDialog(ZLcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)V
.end method
