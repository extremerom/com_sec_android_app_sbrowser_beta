.class public interface abstract Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUi;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUi$OnMyTransitionListener;,
        Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUi$NotificationUiDelegate;
    }
.end annotation


# virtual methods
.method public abstract getAdapter()Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;
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

.method public abstract isShowingActionMode()Z
.end method

.method public abstract onActionHome()V
.end method

.method public abstract onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
.end method

.method public abstract onBackPressed()V
.end method

.method public abstract onConfigurationChanged(Landroid/content/res/Configuration;)V
.end method

.method public abstract onCreate()V
.end method

.method public abstract onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
.end method

.method public abstract onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public abstract onCtrlAndAKeyPressed()V
.end method

.method public abstract onCtrlAndDKeyPressed()V
.end method

.method public abstract onCtrlAndFKeyPressed()V
.end method

.method public abstract onCtrlAndMKeyPressed()V
.end method

.method public abstract onDestroy()V
.end method

.method public abstract onDestroyActionMode(Landroid/view/ActionMode;)V
.end method

.method public abstract onOptionMenu(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationConstants$OptionMenuAction;Landroid/view/Menu;Landroid/view/MenuItem;)V
.end method

.method public abstract onPause()V
.end method

.method public abstract onResume()V
.end method

.method public abstract onSearchKeyPressed()V
.end method

.method public abstract onShiftKeyPressed(Z)V
.end method

.method public abstract setActivity(Landroid/app/Activity;)V
.end method

.method public abstract setContextMenuDelegate(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationContextMenuDelegate;)V
.end method

.method public abstract setHeightToShift(I)V
.end method

.method public abstract setNotification(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUiController;)V
.end method

.method public abstract setNotificationData(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItem;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setNotificationDelegate(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUi$NotificationUiDelegate;)V
.end method

.method public abstract setNotificationSelectedItemCount()V
.end method

.method public abstract setTouchActionDowned(Z)V
.end method

.method public abstract setViewForNewConfig(Landroid/view/ViewGroup;)V
.end method

.method public abstract startActionMode()V
.end method

.method public abstract startDeleteMode()V
.end method

.method public abstract updateCheckBoxOnSelectAll(Z)V
.end method
