.class public interface abstract Lcom/sec/android/app/sbrowser/sites/bookmark/model/select_bookmark_folder/SelectBookmarkFolderViewDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract configureAndShowView()V
.end method

.method public abstract displayList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract finish()V
.end method

.method public abstract handleLanguageChange()V
.end method

.method public abstract onConfigurationChanged()V
.end method

.method public abstract onCreateOptionsMenu(Landroid/view/Menu;)V
.end method

.method public abstract onDestroy()V
.end method

.method public abstract onOptionsItemSelected(Landroid/view/MenuItem;)V
.end method

.method public abstract onPrepareOptionsMenu(Landroid/view/Menu;)V
.end method

.method public abstract onResume()V
.end method

.method public abstract setCurrentParent(J)V
.end method

.method public abstract setListener(Lcom/sec/android/app/sbrowser/sites/bookmark/model/select_bookmark_folder/SelectBookmarkViewListener;)V
.end method

.method public abstract setSelectedFolder(J)V
.end method
