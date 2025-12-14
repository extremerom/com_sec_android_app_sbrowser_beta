.class public Lcom/sec/android/app/sbrowser/download/DNSUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static buildActionIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-class v1, Lcom/sec/android/app/sbrowser/download/DownloadBroadcastReceiver;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string p1, "DownloadGuid"

    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "DownloadFileName"

    invoke-virtual {p0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "DownloadIsOffTheRecord"

    invoke-virtual {p0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "DownloadIsOfflinePage"

    invoke-virtual {p0, p1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object p0
.end method

.method private static buildGroupSummaryIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.sbrowser.beta.LAUNCH_DOWNLOAD_HISTORY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "IsNotification"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const v1, 0xf423f

    const/high16 v2, 0xc000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public static buildSummaryNotification(Landroid/content/Context;II)Landroid/app/Notification;
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "SBrowser.NotificationBundleIconIdExtra"

    invoke-virtual {v0, v1, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    new-instance v1, LU0/o;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, LU0/o;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v2, 0x7f1404a8

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, LU0/o;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v1, LU0/o;->e:Ljava/lang/CharSequence;

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const p2, 0x7f08070b

    :goto_0
    iget-object v3, v1, LU0/o;->z:Landroid/app/Notification;

    iput p2, v3, Landroid/app/Notification;->icon:I

    const p2, 0x7f0607fb

    invoke-virtual {p0, p2}, Landroid/content/Context;->getColor(I)I

    move-result p2

    iput p2, v1, LU0/o;->u:I

    iput-boolean v2, v1, LU0/o;->s:Z

    if-ne p1, v2, :cond_1

    const-string p1, "Downloading"

    goto :goto_1

    :cond_1
    const-string p1, "Downloads"

    :goto_1
    iput-object p1, v1, LU0/o;->q:Ljava/lang/String;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/download/DNSUtils;->buildGroupSummaryIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object p0

    iput-object p0, v1, LU0/o;->g:Landroid/app/PendingIntent;

    iput-boolean v2, v1, LU0/o;->r:Z

    iget-object p0, v1, LU0/o;->t:Landroid/os/Bundle;

    if-nez p0, :cond_2

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object p0, v1, LU0/o;->t:Landroid/os/Bundle;

    goto :goto_2

    :cond_2
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :goto_2
    const-string p0, "SBROWSER_DOWNLOADS_NOTIFICATION_CHANNEL"

    iput-object p0, v1, LU0/o;->w:Ljava/lang/String;

    const/4 p0, 0x2

    iput p0, v1, LU0/o;->x:I

    const/16 p0, 0x8

    invoke-virtual {v1, p0, v2}, LU0/o;->f(IZ)V

    invoke-virtual {v1}, LU0/o;->b()Landroid/app/Notification;

    move-result-object p0

    return-object p0
.end method

.method public static canResumeDownload(Landroid/content/Context;Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;)Z
    .locals 2

    iget-boolean v0, p1, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;->isAutoResumable:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/download/DownloadManagerServiceHelper;->isActiveNetworkMetered(Landroid/content/Context;)Z

    move-result p0

    iget-boolean p1, p1, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;->canDownloadWhileMetered:Z

    if-nez p1, :cond_1

    if-nez p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public static clearResumptionAttemptLeft()V
    .locals 2

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lw2/F;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ResumptionAttemptLeft"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private static getSummaryIcon(Landroid/content/Context;Landroid/app/NotificationManager;ILandroid/util/Pair;)Landroid/util/Pair;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/app/NotificationManager;",
            "I",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Landroid/app/Notification;",
            ">;)",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p3

    invoke-virtual/range {p1 .. p1}, Landroid/app/NotificationManager;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    array-length v2, v1

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_0
    const-string v10, "SBrowser.NotificationBundleIconIdExtra"

    const v13, 0x7f080714

    const v14, 0x7f080183

    if-ge v5, v2, :cond_9

    aget-object v16, v1, v5

    invoke-virtual/range {v16 .. v16}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v3

    const-string v15, "Downloading"

    invoke-static {v3, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    move/from16 v15, p2

    goto :goto_6

    :cond_0
    invoke-virtual/range {v16 .. v16}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v3

    move/from16 v15, p2

    if-ne v3, v15, :cond_1

    goto :goto_6

    :cond_1
    invoke-virtual/range {v16 .. v16}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v3

    const v11, 0xf423f

    if-ne v3, v11, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-eqz v0, :cond_3

    iget-object v11, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual/range {v16 .. v16}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v12

    if-ne v11, v12, :cond_3

    goto :goto_6

    :cond_3
    invoke-virtual/range {v16 .. v16}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v11

    iget-object v11, v11, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v11, v10}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v10

    if-eqz v3, :cond_4

    move v4, v10

    goto :goto_6

    :cond_4
    if-ne v10, v14, :cond_5

    const/4 v3, 0x1

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    :goto_2
    or-int/2addr v6, v3

    if-ne v10, v13, :cond_6

    const/4 v3, 0x1

    goto :goto_3

    :cond_6
    const/4 v3, 0x0

    :goto_3
    or-int/2addr v7, v3

    const v3, 0x7f08070b

    if-ne v10, v3, :cond_7

    const/4 v3, 0x1

    goto :goto_4

    :cond_7
    const/4 v3, 0x0

    :goto_4
    or-int/2addr v8, v3

    const v3, 0x7f080712

    if-ne v10, v3, :cond_8

    const/4 v3, 0x1

    goto :goto_5

    :cond_8
    const/4 v3, 0x0

    :goto_5
    or-int/2addr v9, v3

    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_9
    if-eqz v0, :cond_e

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, v10}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v14, :cond_a

    const/4 v1, 0x1

    goto :goto_7

    :cond_a
    const/4 v1, 0x0

    :goto_7
    or-int/2addr v6, v1

    if-ne v0, v13, :cond_b

    const/4 v1, 0x1

    goto :goto_8

    :cond_b
    const/4 v1, 0x0

    :goto_8
    or-int/2addr v7, v1

    const v1, 0x7f08070b

    if-ne v0, v1, :cond_c

    const/4 v2, 0x1

    goto :goto_9

    :cond_c
    const/4 v2, 0x0

    :goto_9
    or-int/2addr v8, v2

    const v2, 0x7f080712

    if-ne v0, v2, :cond_d

    const/4 v0, 0x1

    goto :goto_a

    :cond_d
    const/4 v0, 0x0

    :goto_a
    or-int/2addr v9, v0

    goto :goto_b

    :cond_e
    const v1, 0x7f08070b

    const v2, 0x7f080712

    :goto_b
    if-eqz v6, :cond_f

    move v11, v14

    goto :goto_c

    :cond_f
    if-eqz v9, :cond_10

    move v11, v2

    goto :goto_c

    :cond_10
    if-eqz v7, :cond_11

    move v11, v13

    goto :goto_c

    :cond_11
    if-eqz v8, :cond_12

    move v11, v1

    goto :goto_c

    :cond_12
    const v11, 0x1080082

    :goto_c
    new-instance v0, Landroid/util/Pair;

    if-eq v11, v4, :cond_13

    const/4 v3, 0x1

    goto :goto_d

    :cond_13
    const/4 v3, 0x0

    :goto_d
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static getSummaryNotification(Landroid/app/NotificationManager;I)Landroid/service/notification/StatusBarNotification;
    .locals 4

    invoke-virtual {p0}, Landroid/app/NotificationManager;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v3

    if-ne v3, p1, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static hasDownloadNotifications(Landroid/app/NotificationManager;ILjava/lang/String;I)Z
    .locals 8

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/app/NotificationManager;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object p0

    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_4

    aget-object v3, p0, v2

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, p3, :cond_1

    move v5, v6

    goto :goto_1

    :cond_1
    move v5, v0

    :goto_1
    const/4 v7, -0x1

    if-eq p1, v7, :cond_2

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p1, v3, :cond_2

    move v3, v6

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_3

    :cond_2
    move v3, v0

    :goto_2
    if-eqz v4, :cond_3

    if-nez v5, :cond_3

    if-nez v3, :cond_3

    return v6

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "getActiveNotifications() throws error "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DNSUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return v0
.end method

.method public static hideCompletedSummaryNotificationIfNecessary(Landroid/content/Context;I)V
    .locals 2

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    const-string v0, "Downloads"

    const v1, 0xf423e

    invoke-static {p0, p1, v0, v1}, Lcom/sec/android/app/sbrowser/download/DNSUtils;->hasDownloadNotifications(Landroid/app/NotificationManager;ILjava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-static {p0, v1}, Lcom/sec/android/app/sbrowser/download/DNSUtils;->getSummaryNotification(Landroid/app/NotificationManager;I)Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method public static hideDanglingSummaryNotification(Landroid/content/Context;I)V
    .locals 3

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/download/DNSUtils;->hideCompletedSummaryNotificationIfNecessary(Landroid/content/Context;I)V

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const-string v1, "Downloading"

    const v2, 0xf423f

    invoke-static {v0, p1, v1, v2}, Lcom/sec/android/app/sbrowser/download/DNSUtils;->hasDownloadNotifications(Landroid/app/NotificationManager;ILjava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-static {v0, v2}, Lcom/sec/android/app/sbrowser/download/DNSUtils;->getSummaryNotification(Landroid/app/NotificationManager;I)Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    iget p1, p1, Landroid/app/Notification;->flags:I

    and-int/lit8 p1, p1, 0x40

    if-eqz p1, :cond_2

    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.sec.android.app.sbrowser.beta.download.ACTION_SUMMARY_FAIL_SAFE"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/download/DNSUtils;->startDownloadNotificationService(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    :goto_0
    return-void
.end method

.method public static isDownloadOperationIntent(Landroid/content/Intent;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "IsNotification"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    const-string v1, "com.sec.android.app.sbrowser.beta.download.DOWNLOAD_RESUME_ALL"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    const-string v1, "com.sec.android.app.sbrowser.beta.download.DOWNLOAD_CANCEL"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "com.sec.android.app.sbrowser.beta.download.DOWNLOAD_RESUME"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "com.sec.android.app.sbrowser.beta.download.DOWNLOAD_PAUSE"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "com.sec.android.app.sbrowser.beta.download.DOWNLOAD_OPEN"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "com.sec.android.app.sbrowser.beta.download.DOWNLOAD_FAIL_CANCEL"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "com.sec.android.app.sbrowser.beta.download.DOWNLOAD_FAILED_DISMISSED"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "com.sec.android.app.sbrowser.beta.download.DOWNLOAD_COMPLETED_DISMISS"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v0

    :cond_3
    const-string v1, "DownloadFileName"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "DownloadGuid"

    invoke-virtual {p0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_0

    :cond_4
    invoke-static {p0, v1}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->safeGetStringExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    return v0

    :cond_5
    invoke-static {p0, v3}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->safeGetStringExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;->isValidGUID(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_6

    return v0

    :cond_6
    return v2

    :cond_7
    :goto_0
    return v0
.end method

.method public static isTrackingResumableDownload(Landroid/content/Context;)Z
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceHelper;->getInstance()Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceHelper;->getEntries()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;

    invoke-static {p0, v1}, Lcom/sec/android/app/sbrowser/download/DNSUtils;->canResumeDownload(Landroid/content/Context;Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static removeNotification(Landroid/content/Context;ILjava/lang/String;)V
    .locals 2

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const-string v1, "DownloadNotificationService"

    invoke-virtual {v0, v1, p1}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceHelper;->getInstance()Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceHelper;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceHelper;->removeSharedPreferenceEntry(Ljava/lang/String;)V

    :cond_0
    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/download/DNSUtils;->hideDanglingSummaryNotification(Landroid/content/Context;I)V

    return-void
.end method

.method public static startDownloadNotificationService(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    const-string v0, "DNSUtils"

    new-instance v1, Landroid/content/Intent;

    if-eqz p1, :cond_0

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    :goto_0
    new-instance p1, Landroid/content/ComponentName;

    const-class v2, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;

    invoke-direct {p1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string p1, "IsNotification"

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, -0x1

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/download/DNSUtils;->hideDanglingSummaryNotification(Landroid/content/Context;I)V

    return-void

    :cond_1
    :try_start_0
    const-string p1, "Starting downloadNotification foreground service"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "startForegroundService() error: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public static updateSummaryIcon(Landroid/content/Context;Landroid/app/NotificationManager;ILandroid/util/Pair;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/app/NotificationManager;",
            "I",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Landroid/app/Notification;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/download/DNSUtils;->getSummaryIcon(Landroid/content/Context;Landroid/app/NotificationManager;ILandroid/util/Pair;)Landroid/util/Pair;

    move-result-object p3

    iget-object v0, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Downloading"

    const v1, 0xf423f

    invoke-static {p1, p2, v0, v1}, Lcom/sec/android/app/sbrowser/download/DNSUtils;->hasDownloadNotifications(Landroid/app/NotificationManager;ILjava/lang/String;I)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 p3, 0x1

    invoke-static {p0, p3, p2}, Lcom/sec/android/app/sbrowser/download/DNSUtils;->buildSummaryNotification(Landroid/content/Context;II)Landroid/app/Notification;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_1
    :goto_0
    return-void
.end method
