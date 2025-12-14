.class public Lcom/sec/android/app/sbrowser/download/DownloadBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private checkAndResetDownloadPath(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string p0, "DownloadBroadcastReceiver"

    const-string v0, "checkAndResetDownloadPath"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->setDownloadDefaultStorage(I)V

    const-string p0, "PHONE"

    const-string p1, "Unmounted"

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/download/DownloadStaticLog;->addStorageSetLog(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    return-void
.end method

.method private handleDismissIntent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/download/DNSUtils;->isDownloadOperationIntent(Landroid/content/Intent;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "DownloadGuid"

    invoke-static {p2, p0}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->safeGetStringExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 p2, -0x1

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/download/DNSUtils;->hideDanglingSummaryNotification(Landroid/content/Context;I)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceHelper;->getInstance()Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceHelper;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceHelper;->removeSharedPreferenceEntry(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private launchDownloadHistory()Z
    .locals 9

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getRunningActivities()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/download/DownloadBroadcastReceiver$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/download/DownloadBroadcastReceiver$1;-><init>(Lcom/sec/android/app/sbrowser/download/DownloadBroadcastReceiver;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.app.sbrowser.beta.LAUNCH_DOWNLOAD_HISTORY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x1

    move v3, v2

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->isInPictureInPictureMode()Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-direct {v0, v4, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v4, 0x10020000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_0
    invoke-static {v4}, Lcom/sec/terrace/TerraceApplicationStatus;->getStateForActivity(Landroid/app/Activity;)I

    move-result v6

    const/4 v7, 0x6

    if-ne v6, v7, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x3

    if-ne v6, v3, :cond_2

    move v7, v2

    goto :goto_1

    :cond_2
    move v7, v5

    :goto_1
    instance-of v8, v4, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    if-eqz v8, :cond_3

    goto :goto_2

    :cond_3
    instance-of v8, v4, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryActivity;

    if-eqz v8, :cond_5

    if-ne v6, v3, :cond_4

    return v2

    :cond_4
    const/high16 v0, 0x4000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :goto_2
    move v3, v7

    goto :goto_4

    :cond_5
    move v3, v7

    goto :goto_0

    :cond_6
    :goto_3
    const/4 v4, 0x0

    :goto_4
    if-nez v4, :cond_7

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v0, "should_force_fullscreen"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_7
    const-string v0, "should_animate"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v0, v5, [Landroid/content/Intent;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/content/Intent;

    invoke-virtual {v4, p0}, Landroid/content/Context;->startActivities([Landroid/content/Intent;)V

    return v2
.end method

.method private performDownloadOperation(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/download/DNSUtils;->isDownloadOperationIntent(Landroid/content/Intent;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/download/DNSUtils;->startDownloadNotificationService(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    const/4 v0, 0x7

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-void

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x0

    const-string v5, "sdcardPath is unmounted"

    const-string v6, "DownloadBroadcastReceiver"

    const/4 v7, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v8, "com.sec.android.app.sbrowser.beta.download.DOWNLOAD_CLEAR_SAVE_ALL_IMAGES"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v7, 0x11

    goto/16 :goto_0

    :sswitch_1
    const-string v8, "com.sec.android.app.sbrowser.beta.download.DOWNLOAD_COMPLETED_DISMISS"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v7, 0x10

    goto/16 :goto_0

    :sswitch_2
    const-string v8, "com.sec.android.app.sbrowser.beta.download.DOWNLOAD_UPDATE_SUMMARY_ICON"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v7, 0xf

    goto/16 :goto_0

    :sswitch_3
    const-string v8, "com.sec.android.app.sbrowser.beta.download.DOWNLOAD_OPEN"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v7, 0xe

    goto/16 :goto_0

    :sswitch_4
    const-string v8, "com.sec.android.app.sbrowser.beta.download.DOWNLOAD_RETRY_SAVE_ALL_IMAGES"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v7, 0xd

    goto/16 :goto_0

    :sswitch_5
    const-string v8, "com.sec.android.app.sbrowser.beta.download.DOWNLOAD_PAUSE"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v7, 0xc

    goto/16 :goto_0

    :sswitch_6
    const-string v8, "com.sec.android.app.sbrowser.beta.download.DOWNLOAD_RESUME"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v7, 0xb

    goto/16 :goto_0

    :sswitch_7
    const-string v8, "com.sec.android.app.sbrowser.beta.download.DOWNLOAD_FAIL_CANCEL"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v7, 0xa

    goto/16 :goto_0

    :sswitch_8
    const-string v8, "com.sec.android.app.sbrowser.beta.download.DOWNLOAD_FAILED_DISMISSED"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v7, 0x9

    goto/16 :goto_0

    :sswitch_9
    const-string v8, "com.sec.android.app.sbrowser.beta.download.DOWNLOAD_CANCEL"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v7, 0x8

    goto/16 :goto_0

    :sswitch_a
    const-string v8, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    goto :goto_0

    :cond_b
    move v7, v0

    goto :goto_0

    :sswitch_b
    const-string v8, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    goto :goto_0

    :cond_c
    const/4 v7, 0x6

    goto :goto_0

    :sswitch_c
    const-string v8, "android.os.storage.action.VOLUME_STATE_CHANGED"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    goto :goto_0

    :cond_d
    const/4 v7, 0x5

    goto :goto_0

    :sswitch_d
    const-string v8, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    goto :goto_0

    :cond_e
    const/4 v7, 0x4

    goto :goto_0

    :sswitch_e
    const-string v8, "com.sec.android.app.sbrowser.beta.download.DOWNLOAD_PAUSE_SAVE_ALL_IMAGES"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    goto :goto_0

    :cond_f
    const/4 v7, 0x3

    goto :goto_0

    :sswitch_f
    const-string v8, "android.intent.action.DOWNLOAD_NOTIFICATION_CLICKED"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    goto :goto_0

    :cond_10
    const/4 v7, 0x2

    goto :goto_0

    :sswitch_10
    const-string v8, "com.sec.android.app.sbrowser.beta.download.DOWNLOAD_RESUME_SAVE_ALL_IMAGES"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    goto :goto_0

    :cond_11
    move v7, v1

    goto :goto_0

    :sswitch_11
    const-string v8, "com.sec.android.app.sbrowser.beta.download.DOWNLOAD_CANCEL_SAVE_ALL_IMAGES"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    goto :goto_0

    :cond_12
    move v7, v2

    :goto_0
    packed-switch v7, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->getDownloadManagerService()Lcom/sec/android/app/sbrowser/download/DownloadManagerService;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->onSaveAllOperationClear()V

    goto/16 :goto_2

    :pswitch_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->getDownloadManagerService()Lcom/sec/android/app/sbrowser/download/DownloadManagerService;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->onSaveAllOperationRetry()V

    goto/16 :goto_2

    :pswitch_2
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/download/DownloadBroadcastReceiver;->handleDismissIntent(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_2

    :pswitch_3
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/download/DownloadBroadcastReceiver;->performDownloadOperation(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_2

    :pswitch_4
    invoke-static {p2}, Lcom/sec/android/app/sbrowser/common/download/DownloadPathUtils;->getMediaBroadcastCase(Landroid/content/Intent;)I

    move-result p2

    if-ne p2, v1, :cond_16

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->getSDCardPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/common/download/DownloadPathUtils;->getDownloadSaveAsPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lcom/sec/android/app/sbrowser/download/DownloadBroadcastReceiver;->checkAndResetDownloadPath(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_5
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/GEDUtils;->isGED()Z

    move-result p1

    if-eqz p1, :cond_16

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_13

    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_13
    const-string p1, ""

    :goto_1
    invoke-static {v4}, Lcom/sec/android/app/sbrowser/common/download/DownloadPathUtils;->getDownloadSaveAsPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lcom/sec/android/app/sbrowser/download/DownloadBroadcastReceiver;->checkAndResetDownloadPath(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_6
    invoke-static {}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->getDownloadManagerService()Lcom/sec/android/app/sbrowser/download/DownloadManagerService;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->onSaveAllOperationPause()V

    goto :goto_2

    :pswitch_7
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "IsCompleted"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    :cond_14
    if-eqz v2, :cond_15

    const-string p0, "8819"

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLogWithoutScreenID(Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/download/DownloadFileUtils;->openDownload(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_2

    :cond_15
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/DownloadBroadcastReceiver;->launchDownloadHistory()Z

    goto :goto_2

    :pswitch_8
    invoke-static {}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->getDownloadManagerService()Lcom/sec/android/app/sbrowser/download/DownloadManagerService;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->onSaveAllOperationResume()V

    goto :goto_2

    :pswitch_9
    invoke-static {}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->getDownloadManagerService()Lcom/sec/android/app/sbrowser/download/DownloadManagerService;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->onSaveAllOperationCancel()V

    :cond_16
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x77043421 -> :sswitch_11
        -0x76bc606e -> :sswitch_10
        -0x6cf7d69b -> :sswitch_f
        -0x6869d79d -> :sswitch_e
        -0x6342a1e0 -> :sswitch_d
        -0x54155685 -> :sswitch_c
        -0x39738481 -> :sswitch_b
        -0x254e496f -> :sswitch_a
        -0x23bbacda -> :sswitch_9
        -0x1b24474d -> :sswitch_8
        -0x1aaef271 -> :sswitch_7
        -0x9e81327 -> :sswitch_6
        -0x6fc856 -> :sswitch_5
        0xa588115 -> :sswitch_4
        0x318889f6 -> :sswitch_3
        0x3c0d501c -> :sswitch_2
        0x42567c2a -> :sswitch_1
        0x537e2aba -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
