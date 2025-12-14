.class public interface abstract Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailCommonUi;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract createSelectionMode(Z)V
.end method

.method public abstract deleteSelectedData()V
.end method

.method public abstract destroySelectionMode()V
.end method

.method public abstract getAdapter()Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;
.end method

.method public abstract getListView()Landroidx/recyclerview/widget/RecyclerView;
.end method

.method public abstract getMainView()Landroid/view/View;
.end method

.method public abstract isActionMode()Z
.end method

.method public abstract onActionHome()V
.end method

.method public abstract onBackPressed()V
.end method

.method public abstract onClickDeleteButton()V
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public abstract onCreate(Landroid/os/Bundle;)V
.end method

.method public abstract onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
.end method

.method public abstract onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public abstract onCtrlAndAKeyPressed()V
.end method

.method public abstract onCtrlAndDKeyPressed()V
.end method

.method public abstract onCtrlAndMKeyPressed()V
.end method

.method public abstract onDestroy()V
.end method

.method public abstract onOptionsItemSelected(Landroid/view/MenuItem;)V
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public abstract onPrepareOptionsMenu(Landroid/view/Menu;)V
.end method

.method public abstract onResume()V
.end method

.method public abstract onShiftKeyPressed(Z)V
.end method

.method public abstract onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end method

.method public abstract onWindowFocusChanged(Z)V
.end method

.method public abstract requestFocusOnSelectAll()V
.end method

.method public abstract setControllerDelegate(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi$ControllerDelegate;)V
.end method

.method public abstract setListData(Ljava/util/concurrent/CopyOnWriteArrayList;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/PrivacyHistoryBaseView;",
            ">;Z)V"
        }
    .end annotation
.end method

.method public abstract setLongPressDragging(Z)V
.end method

.method public abstract updateCheckedState()V
.end method

.method public abstract updateContentDescription(Landroid/view/View;)V
.end method

.method public abstract updateSelectAllCheckBox(Z)V
.end method

.method public abstract updateSelectedList(I)Z
.end method
