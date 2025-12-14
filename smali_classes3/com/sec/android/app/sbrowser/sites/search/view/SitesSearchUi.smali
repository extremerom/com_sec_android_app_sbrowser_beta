.class public interface abstract Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchUi;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract callNotifyDataSetChanged()V
.end method

.method public abstract dispatchKeyEvent(Landroid/view/KeyEvent;)Z
.end method

.method public abstract exitSearchActionMode()V
.end method

.method public abstract getCurrentTabInformativeTitle()Ljava/lang/String;
.end method

.method public abstract getOnClickListener()Landroid/view/View$OnClickListener;
.end method

.method public abstract getOnCreateContextMenuListener()Landroid/view/View$OnCreateContextMenuListener;
.end method

.method public abstract getOnLongClickListener()Landroid/view/View$OnLongClickListener;
.end method

.method public abstract getSearchKeywordDeleteOnClickListener()Landroid/view/View$OnClickListener;
.end method

.method public abstract getSelectedSearchItemList()Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isShowingActionMode()Z
.end method

.method public abstract onAppBarHeightChanged(I)V
.end method

.method public abstract onConfigurationChanged(Landroid/content/res/Configuration;)V
.end method

.method public abstract onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end method

.method public abstract onDeleteButtonClicked()V
.end method

.method public abstract onDestroy()V
.end method

.method public abstract onResume()V
.end method

.method public abstract onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end method

.method public abstract processSearchData(ZZ)V
.end method

.method public abstract requestFocus()Z
.end method

.method public abstract setActionModeTitleAlpha(F)V
.end method

.method public abstract setActivity(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityListener;Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;)V
.end method

.method public abstract setKeywordMainItemClickListener()Landroid/view/View$OnClickListener;
.end method

.method public abstract setSceneAnimation(Lcom/sec/android/app/sbrowser/sites/model/SitesTransitionListener;)V
.end method

.method public abstract setSitesSearchController(Lcom/sec/android/app/sbrowser/sites/search/model/SitesSearchControllerDelegate;)V
.end method

.method public abstract showSearchKeywordListView()V
.end method

.method public abstract stopScrollOnClear()V
.end method

.method public abstract updatHeader()V
.end method

.method public abstract updateSearchKeywordHeader()V
.end method
