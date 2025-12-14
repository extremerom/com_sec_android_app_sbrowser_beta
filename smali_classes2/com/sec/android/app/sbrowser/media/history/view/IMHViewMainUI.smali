.class public interface abstract Lcom/sec/android/app/sbrowser/media/history/view/IMHViewMainUI;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract cancelButtonClicked()V
.end method

.method public abstract clearModelList()V
.end method

.method public abstract getActionModeType()Lcom/sec/android/app/sbrowser/media/history/common/MHConstants$ActionModeType;
.end method

.method public abstract getActivity()Landroid/app/Activity;
.end method

.method public abstract getController()Lcom/sec/android/app/sbrowser/media/history/view/IMHController;
.end method

.method public abstract getItemCount()I
.end method

.method public abstract getMediaHistoryList()Landroidx/recyclerview/widget/RecyclerView;
.end method

.method public abstract getSelectedItemCount()I
.end method

.method public abstract getToolbarTitle()Landroid/view/View;
.end method

.method public abstract isDelayNeeded()Z
.end method

.method public abstract isInActionMode()Z
.end method

.method public abstract scrollListToShowCheckedItem(I)V
.end method

.method public abstract selectAllListItem(Z)V
.end method

.method public abstract setActionModeType(Lcom/sec/android/app/sbrowser/media/history/common/MHConstants$ActionModeType;)V
.end method

.method public abstract startActionMode()V
.end method

.method public abstract updateItemSelectedList(I)V
.end method
