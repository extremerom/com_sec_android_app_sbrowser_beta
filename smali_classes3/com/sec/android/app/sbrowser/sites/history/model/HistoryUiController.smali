.class public interface abstract Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiController;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract dispatchKeyEvent(Landroid/view/KeyEvent;)Z
.end method

.method public abstract dispatchMoreKeyEvent(Landroid/view/KeyEvent;)Z
.end method

.method public abstract getCurrentTabInformativeSubTitle()Ljava/lang/String;
.end method

.method public abstract getCurrentTabInformativeTitle()Ljava/lang/String;
.end method

.method public abstract getDndList()Landroidx/recyclerview/widget/RecyclerView;
.end method

.method public abstract getSitesSearchItems(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;)V
.end method

.method public abstract isHistoryListEmpty()Z
.end method

.method public abstract onAppBarHeightChanged(I)V
.end method

.method public abstract onAttach(Landroid/content/Context;Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUI;)V
.end method

.method public abstract onBackPressed()Z
.end method

.method public abstract onCancelButtonClicked()V
.end method

.method public abstract onConfigurationChanged(Landroid/content/res/Configuration;)V
.end method

.method public abstract onCreate()V
.end method

.method public abstract onCreateOptionsMenu(Landroid/view/Menu;)V
.end method

.method public abstract onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public abstract onDeleteButtonClicked()V
.end method

.method public abstract onDestroy()V
.end method

.method public abstract onDialogDismissed()V
.end method

.method public abstract onOptionsItemSelected(Landroid/view/MenuItem;)V
.end method

.method public abstract onPause()V
.end method

.method public abstract onPrepareOptionsMenu(Landroid/view/Menu;)V
.end method

.method public abstract onResume()V
.end method

.method public abstract onSearchDelete(Ljava/util/concurrent/CopyOnWriteArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end method

.method public abstract setActionModeTitleAlpha(F)V
.end method

.method public abstract setOnClickForSearchItem(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;)V
.end method

.method public abstract setSearchData(Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;)V
.end method

.method public abstract setViewForNewConfig(Landroid/view/ViewGroup;)V
.end method

.method public abstract updateHistorySearchDataAfterSync()V
.end method
