.class public interface abstract Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/ShowBookmarksViewDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getChildAt(I)Landroid/view/View;
.end method

.method public abstract getChildCount()I
.end method

.method public abstract getFirstVisiblePos()I
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

.method public abstract isBookmarkBar()Z
.end method

.method public abstract isBookmarkExistInFolder(J)Z
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

.method public abstract setSeslGotoTopAndHoverBottomPadding(I)V
.end method

.method public abstract smoothScrollBy(I)V
.end method
