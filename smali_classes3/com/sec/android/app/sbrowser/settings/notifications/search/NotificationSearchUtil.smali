.class public Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchUtil$NotificationSearchListDeleteTransition;
    }
.end annotation


# direct methods
.method public static searchDelete(Landroid/content/Context;Ljava/util/concurrent/CopyOnWriteArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItem;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationModel;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationModel;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItem;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItem;->getPersID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItem;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItem;->getId()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, p0, v1, v2}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationModel;->deleteNotification(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public static setSearchData(Landroid/content/Context;Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchData;)V
    .locals 10

    const-string v0, "NotificationSearchUtil"

    const-string v1, "Setting search Data in NotificationController"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationModel;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationModel;-><init>()V

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationModel;->getAllNotifications(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItem;

    new-instance v9, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItem;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItem;->getVisitTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItem;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItem;->getDescreption()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItem;->getPersID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItem;->getIsRead()I

    move-result v7

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItem;->getIcon()[B

    move-result-object v8

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItem;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[B)V

    invoke-virtual {p1, v9}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchData;->add(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItem;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public static startVoiceRecognitionActivity(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/utils/VoiceRecognizer;->launch(Landroid/app/Activity;Z)V

    return-void
.end method

.method public static updateDB(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItem;)V
    .locals 3

    const-string v0, "com.sec.terrace.browser.notifications.CLICK_NOTIFICATION"

    invoke-static {v0}, LB/e;->i(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItem;->getPersID()Ljava/lang/String;

    move-result-object v1

    const-string v2, "notification_persistent_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "notification_info_origin"

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItem;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "NotificationId"

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItem;->getPersID()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v0}, Lcom/sec/terrace/browser/notifications/TerraceNotificationUIManager;->dispatchNotificationEvent(Landroid/content/Intent;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "NotificationSearchUtil"

    const-string v0, "Unable to dispatch the notification event to Terrace."

    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static voiceSearchResult(Landroid/content/Intent;Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchData;Landroid/widget/EditText;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    :cond_0
    if-nez p0, :cond_1

    return-void

    :cond_1
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/utils/VoiceRecognizer;->toResult(Landroid/content/Intent;)Lcom/sec/android/app/sbrowser/utils/VoiceRecognizer$Result;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/utils/VoiceRecognizer$Result;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/utils/VoiceRecognizer$Result;->keyword()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Landroid/widget/TextView;->length()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setSelection(I)V

    new-instance p2, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchKeywordItem;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p2, p0, v0, v1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchKeywordItem;-><init>(Ljava/lang/String;J)V

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchData;->addSearchKeywordToDB(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchKeywordItem;)V

    return-void
.end method
