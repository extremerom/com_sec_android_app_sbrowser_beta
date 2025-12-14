.class public interface abstract Lcom/sec/android/app/sbrowser/sites/search/model/SitesSearchControllerDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract createFolder(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;)V
.end method

.method public abstract delete()V
.end method

.method public abstract editBookmarkFolder(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;)V
.end method

.method public abstract findFolderChildren(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;)V
.end method

.method public abstract getBookmarkMap()Lcom/google/common/collect/I;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/I;"
        }
    .end annotation
.end method

.method public abstract getSearchResultList()Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUrlForShare()Ljava/lang/String;
.end method

.method public abstract isFolderContainBookmark(J)Z
.end method

.method public abstract onDialogDismiss()V
.end method

.method public abstract openBookmarkItem(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;)V
.end method

.method public abstract openBookmarkItemInNewWindow(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;)V
.end method

.method public abstract openEditBookmarkActivity()Z
.end method

.method public abstract openHistoryItem(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;)V
.end method

.method public abstract openInNewWindow(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;Z)V
.end method

.method public abstract share(Ljava/lang/String;)Landroid/content/Intent;
.end method
