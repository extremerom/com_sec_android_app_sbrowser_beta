.class public interface abstract Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUiController;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getNotificationDataResult()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getNotificationItemList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isNotificationListEmpty()Z
.end method

.method public abstract isSearchDataEmpty()Z
.end method

.method public abstract onActionHome()V
.end method

.method public abstract onBackPressed()V
.end method

.method public abstract onConfigurationChanged(Landroid/content/res/Configuration;)V
.end method

.method public abstract onCreate(Landroid/app/Activity;)V
.end method

.method public abstract onCreateOptionsMenu(Landroid/view/Menu;)V
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

.method public abstract onOptionsItemSelected(Landroid/view/MenuItem;)V
.end method

.method public abstract onPause()V
.end method

.method public abstract onPrepareOptionsMenu(Landroid/view/Menu;)V
.end method

.method public abstract onResume()V
.end method

.method public abstract onSearchKeyPressed()V
.end method

.method public abstract onShiftKeyPressed(Z)V
.end method

.method public abstract onStop()V
.end method

.method public abstract onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end method

.method public abstract setViewForNewConfig(Landroid/view/ViewGroup;)V
.end method
