.class public interface abstract Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarksAdapterListener;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract createContextMenu(Landroid/view/ContextMenu;Landroid/view/View;I)V
.end method

.method public abstract enableNavigationForDrag(Z)V
.end method

.method public abstract handleDragEvent(ZLjava/util/List;Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;",
            ">;",
            "Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;",
            ")V"
        }
    .end annotation
.end method

.method public abstract handleOnDragLocation(F)V
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

.method public abstract onAttachedToRecyclerView()V
.end method

.method public abstract onAttachedToWindow()V
.end method

.method public abstract onCancelButtonClicked()V
.end method

.method public abstract onDragAndDropEnd()V
.end method

.method public abstract onEditModeDismissed()V
.end method

.method public abstract onEditModeSelected()V
.end method

.method public abstract onEndDrag()V
.end method

.method public abstract onItemClick(Landroid/view/View;I)V
.end method

.method public abstract onItemLongClick(Landroid/view/View;I)Z
.end method

.method public abstract onSelect(Z)V
.end method

.method public abstract onSelectAll(Z)V
.end method

.method public abstract onStartDrag(Landroidx/recyclerview/widget/h1;)V
.end method

.method public abstract onUpdateCheckBoxMode(Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$CheckBoxMode;)V
.end method

.method public abstract setMenuVisibility(Z)V
.end method

.method public abstract showConfirmDialog(ZLcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)V
.end method
