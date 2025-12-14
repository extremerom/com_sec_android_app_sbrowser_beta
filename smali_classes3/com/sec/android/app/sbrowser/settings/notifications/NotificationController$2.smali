.class Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUi$NotificationUiDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController$2;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deleteNotificationData(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController$2;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;->onDeleteNotificationData(Z)V

    return-void
.end method

.method public launchSelectedUrl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController$2;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;->onLaunchSelectedUrl(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public selectAllNotificationItem(Z)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController$2;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;->a(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItem;

    invoke-virtual {v2, p1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItem;->setIsSelected(Z)V

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController$2;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;->b(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;)Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUi;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUi;->getSelectedList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController$2;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;->b(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;)Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUi;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUi;->getSelectedList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController$2;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;->b(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;)Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUi;->getSelectedList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController$2;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;->b(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;)Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUi;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUi;->updateCheckBoxOnSelectAll(Z)V

    return-void
.end method

.method public shareNotificationData(Landroid/os/Bundle;)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController$2;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;->prepareUrlsFromSelectedItemsforShareVia()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;->shareUrls(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public updateDB(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItem;)V
    .locals 2

    const-string p0, "com.sec.terrace.browser.notifications.CLICK_NOTIFICATION"

    invoke-static {p0}, LB/e;->i(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItem;->getPersID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "notification_persistent_id"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "notification_info_origin"

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItem;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "NotificationId"

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItem;->getPersID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0}, Lcom/sec/terrace/browser/notifications/TerraceNotificationUIManager;->dispatchNotificationEvent(Landroid/content/Intent;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "NotificationController"

    const-string p1, "Onclick Unable to dispatch the notification event to Chrome."

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
