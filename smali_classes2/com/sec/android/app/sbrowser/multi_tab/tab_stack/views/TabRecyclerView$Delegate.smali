.class public interface abstract Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView$Delegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Delegate"
.end annotation


# virtual methods
.method public abstract dismissAnimation(ZI)V
.end method

.method public abstract getContainerHeight()I
.end method

.method public abstract getItemCount()I
.end method

.method public abstract getSpanCount()I
.end method

.method public abstract getTabIndex(Landroid/view/View;)I
.end method

.method public abstract getTabMainView()Landroid/view/View;
.end method

.method public abstract getTitle(Landroid/view/View;)Ljava/lang/String;
.end method

.method public abstract hasLockTab(Landroid/view/View;)Z
.end method

.method public abstract isAppbarExtended()Z
.end method

.method public abstract isGroupTab(Landroid/view/View;)Z
.end method

.method public abstract isHideStatusBarEnabled()Z
.end method

.method public abstract isLockedTab(Landroid/view/View;)Z
.end method

.method public abstract isNoTabsShowing()Z
.end method

.method public abstract isReordering()Z
.end method

.method public abstract removeUnlockedMemberBySwipe(I)V
.end method

.method public abstract resetContainerHeight()V
.end method

.method public abstract setCloseDialog(Lm/l;)V
.end method
