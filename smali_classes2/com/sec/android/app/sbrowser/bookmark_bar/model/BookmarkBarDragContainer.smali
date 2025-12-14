.class public interface abstract Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarDragContainer;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getBookmarkListView()Landroid/widget/LinearLayout;
.end method

.method public abstract isBookmarkBarEnabled()Z
.end method

.method public abstract isMainViewShowing()Z
.end method

.method public abstract notifyVisibilityChanged()V
.end method

.method public abstract removePositionDivider()V
.end method

.method public abstract setOnDragListener(Landroid/view/View$OnDragListener;)V
.end method

.method public abstract showPosition(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method
