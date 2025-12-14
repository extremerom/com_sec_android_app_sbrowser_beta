.class public interface abstract Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUI;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract addHistoryItemFromContextMenu(Lcom/sec/terrace/browser/history/TerraceHistoryItem;)V
.end method

.method public abstract createHistoryBaseUiHelperInstance()V
.end method

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

.method public abstract getSelectedList()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract handleHistoryItemClick(Ljava/lang/String;)V
.end method

.method public abstract onAppBarHeightChanged(I)V
.end method

.method public abstract onBackPressed()Z
.end method

.method public abstract onCancelButtonClicked()V
.end method

.method public abstract onConfigurationChanged(Landroid/content/res/Configuration;)V
.end method

.method public abstract onCreate()V
.end method

.method public abstract onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public abstract onDeleteButtonClicked()V
.end method

.method public abstract onDestroy()V
.end method

.method public abstract onDialogDismissed()V
.end method

.method public abstract onOptionMenu(Lcom/sec/android/app/sbrowser/common/sites/history/model/HistoryConstants$OptionMenuAction;Landroid/view/Menu;Landroid/view/MenuItem;)V
.end method

.method public abstract onResume()V
.end method

.method public abstract onViewCreated()V
.end method

.method public abstract resetScrollPositionIfNecessary()V
.end method

.method public abstract setActionModeTitleAlpha(F)V
.end method

.method public abstract setActivity(Landroid/app/Activity;)V
.end method

.method public abstract setContextMenuDelegate(Lcom/sec/android/app/sbrowser/sites/history/model/HistoryContextMenuDelegate;)V
.end method

.method public abstract setHistoryCount(I)V
.end method

.method public abstract setHistoryData(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/terrace/browser/history/TerraceHistoryItem;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setHistoryDelegate(Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiDelegate;)V
.end method

.method public abstract setMenuItemVisibility(Z)V
.end method

.method public abstract setViewForNewConfig(Landroid/view/ViewGroup;)V
.end method

.method public abstract updateHeaderOnSelectAll(Z)V
.end method

.method public abstract updateOnSelectAllHistoryItem(Z)V
.end method
