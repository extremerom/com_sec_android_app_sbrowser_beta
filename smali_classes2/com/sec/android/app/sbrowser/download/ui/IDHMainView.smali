.class public interface abstract Lcom/sec/android/app/sbrowser/download/ui/IDHMainView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/download/ui/IDownloadHistoryView;


# virtual methods
.method public abstract addRecyclerViewRoundCorners()V
.end method

.method public abstract createDeleteDialogListener(Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)Lcom/sec/android/app/sbrowser/download/ui/DHDeleteDialogFragment$DHDeleteDialogListener;
.end method

.method public abstract dispatchKeyEvent(Landroid/view/KeyEvent;)Z
.end method

.method public abstract focusSpinner()V
.end method

.method public abstract getMainListItemTouchListener()Landroidx/recyclerview/widget/N0;
.end method

.method public abstract onCreateItemContextMenu(Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;Landroid/view/ContextMenu;)V
.end method

.method public abstract setDownloadFilterEnabled(Z)V
.end method

.method public abstract setTalkbackOnLongPress(Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;Landroid/view/View;)V
.end method

.method public abstract showHideSpinnerBar(Z)V
.end method

.method public abstract startActionModeAnimation(LY2/d0;Landroid/view/ViewGroup;Z)V
.end method

.method public abstract updateWindowLayout()V
.end method
