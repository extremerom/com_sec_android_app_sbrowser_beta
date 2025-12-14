.class public interface abstract Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter$TabRecyclerAdapterListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TabRecyclerAdapterListener"
.end annotation


# virtual methods
.method public abstract dragTabToGroup(ILjava/lang/String;)V
.end method

.method public abstract dragTabToTab(II)V
.end method

.method public abstract getBottomPaddingHeight()I
.end method

.method public abstract getCurrentGroup()Ljava/lang/String;
.end method

.method public abstract getCurrentTabId()I
.end method

.method public abstract getModeType()Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;
.end method

.method public abstract getSpanCount()I
.end method

.method public abstract getTabRecyclerView()Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;
.end method

.method public abstract isEditModeFromSearch()Z
.end method

.method public abstract isMoveMode()Z
.end method

.method public abstract isSearchBarShowing()Z
.end method

.method public abstract isTabDragging()Z
.end method

.method public abstract onCloseTab(ILandroid/view/View;)V
.end method

.method public abstract onDragEnd()V
.end method

.method public abstract onDragStart(Landroidx/recyclerview/widget/h1;)V
.end method

.method public abstract onGroupDragEnd()V
.end method

.method public abstract onGroupDragLocation(F)V
.end method

.method public abstract onItemClick(Landroid/view/View;I)V
.end method

.method public abstract onItemDetached(I)V
.end method

.method public abstract onItemLongClick(Landroid/view/View;Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;)Z
.end method

.method public abstract onItemMoved(II)V
.end method

.method public abstract onRequestTabData(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;Z)V
.end method

.method public abstract onTabUnlocked(I)V
.end method

.method public abstract scrollToPosition(I)V
.end method

.method public abstract scrollToTop()V
.end method

.method public abstract setIsTabDragging(Z)V
.end method

.method public abstract updateTabList()V
.end method
