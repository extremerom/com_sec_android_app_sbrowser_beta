.class public interface abstract Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageUi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/sites/savedpage/model/BaseSavedPageUi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageUi$TransitionListener;
    }
.end annotation


# virtual methods
.method public abstract createContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;I)V
.end method

.method public abstract dispatchKeyEvent(Landroid/view/KeyEvent;)Z
.end method

.method public abstract dispatchMoreKeyEvent(Landroid/view/KeyEvent;)Z
.end method

.method public abstract getCurrentTabInformativeSubTitle()Ljava/lang/String;
.end method

.method public abstract getCurrentTabInformativeTitle()Ljava/lang/String;
.end method

.method public abstract getFirstVisiblePosition()I
.end method

.method public abstract getLastVisiblePosition()I
.end method

.method public abstract getSavedPageImageFetcher()Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageImageFetcher;
.end method

.method public abstract getSavedPageListView()Landroidx/recyclerview/widget/RecyclerView;
.end method

.method public abstract handleOnClickForSearchItem(Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;)V
.end method

.method public abstract onAppBarHeightChanged(I)V
.end method

.method public abstract onBackPressed()Z
.end method

.method public abstract onConfigurationChanged(Landroid/content/res/Configuration;)V
.end method

.method public abstract onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
.end method

.method public abstract onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end method

.method public abstract onDeleteButtonClicked()V
.end method

.method public abstract onDestroy()V
.end method

.method public abstract onDialogDismissed()V
.end method

.method public abstract onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation
.end method

.method public abstract onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation
.end method

.method public abstract onOptionsItemSelected(Landroid/view/MenuItem;)Z
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

.method public abstract setActivity(Landroid/app/Activity;)V
.end method

.method public abstract setDelegate(Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageContextMenuDelegate;)V
.end method

.method public abstract setOptionMenuVisibility(Z)V
.end method

.method public abstract setSavedPageController(Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageControllerDelegate;)V
.end method

.method public abstract setViewForNewConfig(Landroid/view/ViewGroup;)V
.end method
