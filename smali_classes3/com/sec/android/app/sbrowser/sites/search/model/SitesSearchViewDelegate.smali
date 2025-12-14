.class public interface abstract Lcom/sec/android/app/sbrowser/sites/search/model/SitesSearchViewDelegate;
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

.method public abstract isShowingActionMode()Z
.end method

.method public abstract onAppBarHeightChanged(I)V
.end method

.method public abstract onAttach(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityListener;Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;)V
.end method

.method public abstract onConfigurationChanged(Landroid/content/res/Configuration;)V
.end method

.method public abstract onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
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

.method public abstract setSceneAnimation(Lcom/sec/android/app/sbrowser/sites/model/SitesTransitionListener;)V
.end method

.method public abstract showSearchKeywordListView()V
.end method

.method public abstract stopScrollOnClear()V
.end method
