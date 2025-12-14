.class public interface abstract Lcom/sec/android/app/sbrowser/sites/bookmark/model/select_bookmark_folder/SelectBookmarkViewListener;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract cancelButtonSelected()V
.end method

.method public abstract createFolder()V
.end method

.method public abstract getCollapseMap()Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getExpandList(J)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getExpandMap()Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUpdatedStrings(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract handleSelectBookmark()V
.end method

.method public abstract isFolderDialogActive()Z
.end method

.method public abstract onSelect(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)V
.end method
