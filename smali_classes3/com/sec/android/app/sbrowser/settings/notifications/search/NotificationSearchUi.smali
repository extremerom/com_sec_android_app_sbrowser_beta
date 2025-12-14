.class public interface abstract Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchUi;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchUi$OnMyTransitionListener;
    }
.end annotation


# virtual methods
.method public abstract getAdapter()Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchAdapter;
.end method

.method public abstract getNotificationSearchListView()Landroidx/recyclerview/widget/RecyclerView;
.end method

.method public abstract getOnClickListener()Landroid/view/View$OnClickListener;
.end method

.method public abstract getOnLongClickListener()Landroid/view/View$OnLongClickListener;
.end method

.method public abstract getSearchData()Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchData;
.end method

.method public abstract getSearchEditTextView()Landroid/view/View;
.end method

.method public abstract getSearchKeywordDeleteOnClickListener()Landroid/view/View$OnClickListener;
.end method

.method public abstract getSearchListView()Landroidx/recyclerview/widget/RecyclerView;
.end method

.method public abstract getSearchResultList()Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSearchText()Ljava/lang/String;
.end method

.method public abstract getSelectedItemCount()I
.end method

.method public abstract isSearchResultEmpty()Z
.end method

.method public abstract isShowingActionMode()Z
.end method

.method public abstract onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
.end method

.method public abstract onActivityResult(IILandroid/content/Intent;)V
.end method

.method public abstract onBackPressed()V
.end method

.method public abstract onConfigurationChanged(Landroid/content/res/Configuration;)V
.end method

.method public abstract onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
.end method

.method public abstract onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end method

.method public abstract onCtrlAndAKeyPressed()V
.end method

.method public abstract onCtrlAndDKeyPressed()V
.end method

.method public abstract onCtrlAndMKeyPressed()V
.end method

.method public abstract onDestroy()V
.end method

.method public abstract onDestroyActionMode(Landroid/view/ActionMode;)V
.end method

.method public abstract onEnterPressed()V
.end method

.method public abstract onOffsetChanged(I)V
.end method

.method public abstract onResume()V
.end method

.method public abstract onShiftPressed(Z)V
.end method

.method public abstract onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end method

.method public abstract processSearchData()V
.end method

.method public abstract processSearchData(Ljava/lang/String;)V
.end method

.method public abstract requestFocus()Z
.end method

.method public abstract setActivity(Landroid/app/Activity;)V
.end method

.method public abstract setHeightToShift(Landroid/view/View;)V
.end method

.method public abstract setKeywordMainItemClickListener()Landroid/view/View$OnClickListener;
.end method

.method public abstract setSelectedItemCount(I)V
.end method

.method public abstract setSitesSearchController(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchController;)V
.end method

.method public abstract startActionModeWithSelection(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItem;)V
.end method

.method public abstract startDeleteMode()V
.end method

.method public abstract updateCheckedItem(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItem;Landroid/view/View;)V
.end method

.method public abstract updateSearchKeywordHeader()V
.end method

.method public abstract updateSelectAllCheckBox()V
.end method

.method public abstract updateSelectAllText()V
.end method
