.class interface abstract Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$Delegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Delegate"
.end annotation


# virtual methods
.method public abstract addObserver()V
.end method

.method public abstract checkBoxAnimation()V
.end method

.method public abstract finishDeleteMode()V
.end method

.method public abstract getChildAt(II)Landroid/view/View;
.end method

.method public abstract getHistoryItemsMap()Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getIsFirstLongPressIndex()I
.end method

.method public abstract getSelectedItemsCountByCategory()[I
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

.method public abstract getTouchActionDowned()Z
.end method

.method public abstract isInActionMode()Z
.end method

.method public abstract menuItemVisibility(Z)V
.end method

.method public abstract refreshMenus()V
.end method

.method public abstract removeObserver()V
.end method

.method public abstract selectAll()Z
.end method

.method public abstract selectAllCheckBoxAnimation()V
.end method

.method public abstract setByPassActionMode(Z)V
.end method

.method public abstract startDeleteModeVarsUpdate()V
.end method

.method public abstract updateCheckByShiftClick(II)V
.end method

.method public abstract updateGetTouchActionDowned(Z)V
.end method

.method public abstract updateGroupCount(I)V
.end method

.method public abstract updateHistoryItemNums([I)V
.end method

.method public abstract updateHistorySelectedItemCount()V
.end method

.method public abstract updateIsFirstLongPressIndex(I)V
.end method

.method public abstract updateIsLongPressDragging(Z)V
.end method

.method public abstract updateOptionsMenuSelected(Z)V
.end method

.method public abstract updatePrevSelectedIndex()V
.end method

.method public abstract updateSelectedItemsCountByCategory([I)V
.end method
