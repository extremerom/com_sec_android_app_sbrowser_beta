.class public Lcom/sec/android/app/sbrowser/download/DownloadNotificationBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;


# instance fields
.field mContext:Landroid/content/Context;

.field private final mDownloadSharedPreferenceHelper:Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceHelper;

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private final mSharedPrefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationBuilder;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceHelper;->getInstance()Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationBuilder;->mDownloadSharedPreferenceHelper:Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceHelper;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationBuilder;->mSharedPrefs:Landroid/content/SharedPreferences;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationBuilder;->mContext:Landroid/content/Context;

    const-string p2, "notification"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationBuilder;->mNotificationManager:Landroid/app/NotificationManager;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/download/DownloadNotificationBuilder;ILU0/o;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/download/DownloadNotificationBuilder;->lambda$buildSuccessNotification$0(ILU0/o;)V

    return-void
.end method

.method private buildPendingIntent(Landroid/content/Intent;I)Landroid/app/PendingIntent;
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationBuilder;->mContext:Landroid/content/Context;

    const/high16 v0, 0xc000000

    invoke-static {p0, p2, p1, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method private buildSummaryIconIntent(I)Landroid/app/PendingIntent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationBuilder;->mContext:Landroid/content/Context;

    const-class v2, Lcom/sec/android/app/sbrowser/download/DownloadBroadcastReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.sec.android.app.sbrowser.beta.download.DOWNLOAD_UPDATE_SUMMARY_ICON"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/download/DownloadNotificationBuilder;->buildPendingIntent(Landroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method private getProgressText(JJ)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationBuilder;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/sec/android/app/sbrowser/download/DownloadUtils;->getStringForDownloadedBytes(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationBuilder;->mContext:Landroid/content/Context;

    invoke-static {p0, p3, p4}, Lcom/sec/android/app/sbrowser/download/DownloadUtils;->getStringForDownloadedBytes(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p0

    const-string p2, "/"

    invoke-static {p1, p2, p0}, Lt/b;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$buildSuccessNotification$0(ILU0/o;)V
    .locals 0

    invoke-virtual {p2}, LU0/o;->b()Landroid/app/Notification;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/download/DownloadNotificationBuilder;->updateNotification(ILandroid/app/Notification;)V

    return-void
.end method


# virtual methods
.method public buildClickedIntent()Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DOWNLOAD_NOTIFICATION_CLICKED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-class v2, Lcom/sec/android/app/sbrowser/download/DownloadBroadcastReceiver;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "IsCompleted"

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-object v0
.end method

.method public buildNotification(ILjava/lang/String;Ljava/lang/String;I)LU0/o;
    .locals 4
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "SBrowser.NotificationBundleIconIdExtra"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    new-instance v1, LU0/o;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationBuilder;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, LU0/o;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v2, v1, LU0/o;->z:Landroid/app/Notification;

    iput p1, v2, Landroid/app/Notification;->icon:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationBuilder;->mContext:Landroid/content/Context;

    const p1, 0x7f0607fb

    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    iput p0, v1, LU0/o;->u:I

    const/4 p0, 0x1

    iput-boolean p0, v1, LU0/o;->s:Z

    const/16 p1, 0x10

    invoke-virtual {v1, p1, p0}, LU0/o;->f(IZ)V

    iput-boolean p0, v1, LU0/o;->k:Z

    if-ne p4, p0, :cond_0

    const-string p1, "Downloading"

    goto :goto_0

    :cond_0
    const-string p1, "Downloads"

    :goto_0
    iput-object p1, v1, LU0/o;->q:Ljava/lang/String;

    invoke-static {p3}, LU0/o;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v1, LU0/o;->f:Ljava/lang/CharSequence;

    iget-object p1, v1, LU0/o;->t:Landroid/os/Bundle;

    if-nez p1, :cond_1

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object p1, v1, LU0/o;->t:Landroid/os/Bundle;

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :goto_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    const/16 p1, 0x19

    invoke-static {p2, p1}, Lcom/sec/android/app/sbrowser/download/DownloadFileUtils;->getAbbreviatedFileName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LU0/o;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v1, LU0/o;->e:Ljava/lang/CharSequence;

    :cond_2
    const-string p1, "SBROWSER_DOWNLOADS_NOTIFICATION_CHANNEL"

    iput-object p1, v1, LU0/o;->w:Ljava/lang/String;

    const/4 p1, 0x2

    iput p1, v1, LU0/o;->x:I

    const/16 p1, 0x8

    invoke-virtual {v1, p1, p0}, LU0/o;->f(IZ)V

    return-object v1
.end method

.method public buildPausedNotification(Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;Ljava/lang/String;Ljava/lang/String;IIZZ)V
    .locals 14

    move-object v0, p0

    move-object v1, p1

    move/from16 v7, p4

    move/from16 v8, p5

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz v7, :cond_0

    move v6, v10

    goto :goto_0

    :cond_0
    move v6, v9

    :goto_0
    if-nez v1, :cond_1

    move-object/from16 v11, p2

    invoke-virtual {p0, v11}, Lcom/sec/android/app/sbrowser/download/DownloadNotificationBuilder;->getNotificationId(Ljava/lang/String;)I

    move-result v1

    :goto_1
    move v12, v1

    goto :goto_2

    :cond_1
    move-object/from16 v11, p2

    iget v1, v1, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;->notificationId:I

    goto :goto_1

    :goto_2
    iget-object v1, v0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f14048c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-ne v7, v10, :cond_2

    const-string v2, ""

    goto :goto_3

    :cond_2
    move-object/from16 v2, p3

    :goto_3
    const v3, 0x7f080714

    invoke-virtual {p0, v3, v2, v1, v10}, Lcom/sec/android/app/sbrowser/download/DownloadNotificationBuilder;->buildNotification(ILjava/lang/String;Ljava/lang/String;I)LU0/o;

    move-result-object v13

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationBuilder;->mContext:Landroid/content/Context;

    const-string v2, "com.sec.android.app.sbrowser.beta.download.DOWNLOAD_CANCEL"

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    invoke-static/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/download/DNSUtils;->buildActionIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v12}, Lcom/sec/android/app/sbrowser/download/DownloadNotificationBuilder;->buildSummaryIconIntent(I)Landroid/app/PendingIntent;

    move-result-object v2

    iget-object v3, v13, LU0/o;->z:Landroid/app/Notification;

    iput-object v2, v3, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f140488

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v12}, Lcom/sec/android/app/sbrowser/download/DownloadNotificationBuilder;->buildPendingIntent(Landroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const v3, 0x7f080713

    invoke-virtual {v13, v3, v2, v1}, LU0/o;->a(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationBuilder;->mContext:Landroid/content/Context;

    const-string v2, "com.sec.android.app.sbrowser.beta.download.DOWNLOAD_RESUME"

    const/4 v6, 0x0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    invoke-static/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/download/DNSUtils;->buildActionIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "DownloadIsOffTheRecord"

    invoke-virtual {v1, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "IsResumeDownload"

    invoke-virtual {v1, v2, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f14048e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v12}, Lcom/sec/android/app/sbrowser/download/DownloadNotificationBuilder;->buildPendingIntent(Landroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const v3, 0x7f08024c

    invoke-virtual {v13, v3, v2, v1}, LU0/o;->a(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    const/16 v1, 0x10

    invoke-virtual {v13, v1, v9}, LU0/o;->f(IZ)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    if-lt v1, v2, :cond_3

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationBuilder;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/download/DMSUtils;->getPendingIntentForNotification(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, v13, LU0/o;->g:Landroid/app/PendingIntent;

    goto :goto_4

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/DownloadNotificationBuilder;->buildClickedIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1, v12}, Lcom/sec/android/app/sbrowser/download/DownloadNotificationBuilder;->buildPendingIntent(Landroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, v13, LU0/o;->g:Landroid/app/PendingIntent;

    :goto_4
    const/4 v1, -0x1

    if-eq v8, v1, :cond_4

    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v2

    int-to-float v3, v8

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v3, v4

    float-to-double v3, v3

    invoke-virtual {v2, v3, v4}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, LU0/o;->i(Ljava/lang/CharSequence;)V

    :cond_4
    invoke-virtual {v13}, LU0/o;->b()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {p0, v12, v2}, Lcom/sec/android/app/sbrowser/download/DownloadNotificationBuilder;->updateNotification(ILandroid/app/Notification;)V

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationBuilder;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4}, Lcom/sec/android/app/sbrowser/download/DNSUtils;->updateSummaryIcon(Landroid/content/Context;Landroid/app/NotificationManager;ILandroid/util/Pair;)V

    iget-object v9, v0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationBuilder;->mDownloadSharedPreferenceHelper:Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceHelper;

    new-instance v10, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;

    const/4 v6, 0x1

    const/4 v8, 0x0

    move-object v0, v10

    move v1, v12

    move/from16 v2, p4

    move/from16 v3, p6

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;-><init>(IIZLjava/lang/String;Ljava/lang/String;IZZ)V

    invoke-virtual {v9, v10}, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceHelper;->addOrReplaceSharedPreferenceEntry(Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;)V

    return-void
.end method

.method public buildSuccessNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJZZI)I
    .locals 14

    move-object v0, p0

    move-object v7, p1

    move/from16 v8, p12

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/download/DownloadNotificationBuilder;->getNotificationId(Ljava/lang/String;)I

    move-result v10

    if-nez v8, :cond_0

    move-object/from16 v3, p5

    goto :goto_0

    :cond_0
    iget-object v3, v0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f14048f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_0
    const-string v4, "Posting success notification for ID - "

    const-string v9, "DownloadNotificationBuilder"

    invoke-static {v4, p1, v9}, LV0/c;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f140489

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f08070b

    invoke-virtual {p0, v5, v3, v4, v2}, Lcom/sec/android/app/sbrowser/download/DownloadNotificationBuilder;->buildNotification(ILjava/lang/String;Ljava/lang/String;I)LU0/o;

    move-result-object v11

    new-instance v12, Landroid/content/ComponentName;

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/sec/android/app/sbrowser/download/DownloadBroadcastReceiver;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v12, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p10, :cond_1

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationBuilder;->mContext:Landroid/content/Context;

    const-string v2, "com.sec.android.app.sbrowser.beta.download.DOWNLOAD_OPEN"

    move-object v3, p1

    move-object/from16 v4, p5

    move/from16 v5, p12

    move/from16 v6, p10

    invoke-static/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/download/DNSUtils;->buildActionIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Landroid/content/Intent;

    move-result-object v1

    goto :goto_1

    :cond_1
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.DOWNLOAD_NOTIFICATION_CLICKED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-array v4, v1, [J

    aput-wide p8, v4, v2

    const-string v2, "extra_click_download_ids"

    invoke-virtual {v3, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    const-string v2, "DownloadFilePath"

    move-object/from16 v4, p2

    invoke-virtual {v3, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "DownloadOriginalUrl"

    move-object/from16 v4, p3

    invoke-virtual {v3, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "DownloadReferrerUrl"

    move-object/from16 v4, p4

    invoke-virtual {v3, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "DownloadMimeType"

    move-object/from16 v4, p6

    invoke-virtual {v3, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "IsSupportedMimeType"

    move/from16 v4, p11

    invoke-virtual {v3, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "IsCompleted"

    invoke-virtual {v3, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "DownloadGuid"

    invoke-virtual {v3, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "DownloadIsOffTheRecord"

    invoke-virtual {v3, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object v1, v3

    :goto_1
    const-string v2, "notification_id"

    invoke-virtual {v1, v2, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v1, v12}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationBuilder;->mContext:Landroid/content/Context;

    const/high16 v3, 0xc000000

    invoke-static {v2, v10, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, v11, LU0/o;->g:Landroid/app/PendingIntent;

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationBuilder;->mContext:Landroid/content/Context;

    const-string v2, "com.sec.android.app.sbrowser.beta.download.DOWNLOAD_COMPLETED_DISMISS"

    const/4 v6, 0x0

    move-object v3, p1

    move-object/from16 v4, p5

    move/from16 v5, p12

    invoke-static/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/download/DNSUtils;->buildActionIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1, v10}, Lcom/sec/android/app/sbrowser/download/DownloadNotificationBuilder;->buildPendingIntent(Landroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iget-object v2, v11, LU0/o;->z:Landroid/app/Notification;

    iput-object v1, v2, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, LB2/a;

    const/4 v3, 0x5

    invoke-direct {v2, p0, v10, v11, v3}, LB2/a;-><init>(Ljava/lang/Object;ILjava/lang/Object;I)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v1

    move/from16 v2, p7

    int-to-float v2, v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, LU0/o;->i(Ljava/lang/CharSequence;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Move notification to Downloaded completed for ID - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1, p1, v9}, Lt/b;->B(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v11, v0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationBuilder;->mDownloadSharedPreferenceHelper:Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceHelper;

    new-instance v12, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;

    const/4 v4, 0x0

    const/4 v8, 0x1

    const/4 v3, 0x0

    const/4 v9, 0x0

    const/4 v13, 0x1

    move-object v1, v12

    move v2, v10

    move-object v5, p1

    move-object/from16 v6, p5

    move v7, v8

    move v8, v9

    move v9, v13

    invoke-direct/range {v1 .. v9}, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;-><init>(IIZLjava/lang/String;Ljava/lang/String;IZZ)V

    invoke-virtual {v11, v12}, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceHelper;->addOrReplaceSharedPreferenceEntry(Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/DownloadNotificationBuilder;->getScreenID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "8792"

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return v10
.end method

.method public getNotificationId(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationBuilder;->mDownloadSharedPreferenceHelper:Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceHelper;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceHelper;->getDownloadSharedPreferenceEntry(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;

    move-result-object p1

    if-eqz p1, :cond_0

    iget p0, p1, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;->notificationId:I

    return p0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationBuilder;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v0, "NextDownloadNotificationId"

    const v1, 0xf4240

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    const v2, 0x7fffffff

    if-ne p1, v2, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, p1, 0x1

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationBuilder;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return p1
.end method

.method public getScreenID()Ljava/lang/String;
    .locals 0

    const-string p0, "878"

    return-object p0
.end method

.method public updateActiveDownloadNotification(Ljava/lang/String;Ljava/lang/String;JJIJJIZZZII)V
    .locals 21

    move-object/from16 v0, p0

    move/from16 v1, p7

    move-wide/from16 v2, p8

    move-wide/from16 v4, p10

    move/from16 v15, p12

    move/from16 v6, p16

    const/4 v14, 0x1

    if-ne v15, v14, :cond_0

    iget-object v7, v0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f140490

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_0
    move-object/from16 v7, p2

    :goto_0
    const-string v8, ""

    if-eqz p15, :cond_3

    const/16 v9, 0x14

    if-eq v6, v9, :cond_2

    const/16 v9, 0x15

    if-eq v6, v9, :cond_2

    const/16 v9, 0x16

    if-ne v6, v9, :cond_1

    goto :goto_1

    :cond_1
    iget-object v6, v0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v9, 0x7f14048d

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_2
    :goto_1
    iget-object v6, v0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v9, 0x7f14047e

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    :goto_2
    if-ne v15, v14, :cond_4

    move-object v7, v8

    goto :goto_3

    :cond_3
    move-object v6, v8

    :cond_4
    :goto_3
    if-eqz p15, :cond_5

    const v9, 0x108008a

    goto :goto_4

    :cond_5
    const v9, 0x7f080183

    :goto_4
    invoke-virtual {v0, v9, v7, v6, v14}, Lcom/sec/android/app/sbrowser/download/DownloadNotificationBuilder;->buildNotification(ILjava/lang/String;Ljava/lang/String;I)LU0/o;

    move-result-object v13

    const/4 v6, -0x1

    const/4 v12, 0x0

    if-eq v1, v6, :cond_7

    if-eqz p15, :cond_6

    goto :goto_5

    :cond_6
    move v6, v12

    goto :goto_6

    :cond_7
    :goto_5
    move v6, v14

    :goto_6
    const/4 v7, 0x2

    invoke-virtual {v13, v7, v14}, LU0/o;->f(IZ)V

    if-nez p15, :cond_8

    const/16 v9, 0x64

    invoke-virtual {v13, v9, v1, v6}, LU0/o;->g(IIZ)V

    :cond_8
    iput v14, v13, LU0/o;->j:I

    const-wide/16 v16, 0x0

    if-nez v6, :cond_b

    if-nez p14, :cond_b

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->isIndia()Z

    move-result v6

    if-eqz v6, :cond_9

    cmp-long v6, v2, v16

    if-lez v6, :cond_a

    iget-object v6, v0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v8, v0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationBuilder;->mContext:Landroid/content/Context;

    invoke-static {v8, v2, v3}, Lcom/sec/android/app/sbrowser/download/DownloadUtils;->formatDuration(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const v3, 0x7f1404a6

    invoke-virtual {v6, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_7

    :cond_9
    move-wide/from16 v2, p3

    move-wide/from16 v8, p5

    invoke-direct {v0, v2, v3, v8, v9}, Lcom/sec/android/app/sbrowser/download/DownloadNotificationBuilder;->getProgressText(JJ)Ljava/lang/String;

    move-result-object v8

    :cond_a
    :goto_7
    invoke-virtual {v13, v8}, LU0/o;->d(Ljava/lang/CharSequence;)V

    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v2

    int-to-float v1, v1

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v1, v3

    float-to-double v8, v1

    invoke-virtual {v2, v8, v9}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, LU0/o;->i(Ljava/lang/CharSequence;)V

    :cond_b
    invoke-virtual/range {p0 .. p1}, Lcom/sec/android/app/sbrowser/download/DownloadNotificationBuilder;->getNotificationId(Ljava/lang/String;)I

    move-result v1

    if-eqz p14, :cond_c

    move v2, v7

    goto :goto_8

    :cond_c
    move v2, v14

    :goto_8
    iget-object v3, v0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationBuilder;->mDownloadSharedPreferenceHelper:Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceHelper;

    new-instance v11, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;

    const/16 v18, 0x1

    const/16 v19, 0x0

    move-object v6, v11

    move v7, v1

    move/from16 v8, p12

    move/from16 v9, p13

    move-object/from16 v10, p1

    move-object/from16 v20, v11

    move-object/from16 v11, p2

    move v12, v2

    move-object v2, v13

    move/from16 v13, v18

    move v15, v14

    move/from16 v14, v19

    invoke-direct/range {v6 .. v14}, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;-><init>(IIZLjava/lang/String;Ljava/lang/String;IZZ)V

    move-object/from16 v6, v20

    invoke-virtual {v3, v6}, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceHelper;->addOrReplaceSharedPreferenceEntry(Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;)V

    cmp-long v3, v4, v16

    if-lez v3, :cond_d

    iget-object v3, v2, LU0/o;->z:Landroid/app/Notification;

    iput-wide v4, v3, Landroid/app/Notification;->when:J

    :cond_d
    const-string v3, "notification_id"

    if-nez p15, :cond_e

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationBuilder;->mContext:Landroid/content/Context;

    const-string v5, "com.sec.android.app.sbrowser.beta.download.DOWNLOAD_CANCEL"

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, p1

    move-object/from16 p6, p2

    move/from16 p7, p12

    move/from16 p8, p14

    invoke-static/range {p3 .. p8}, Lcom/sec/android/app/sbrowser/download/DNSUtils;->buildActionIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "IsCancelDownload"

    invoke-virtual {v4, v5, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v4, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v5, v0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f140488

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v1}, Lcom/sec/android/app/sbrowser/download/DownloadNotificationBuilder;->buildPendingIntent(Landroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    const v6, 0x7f080713

    invoke-virtual {v2, v6, v5, v4}, LU0/o;->a(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    :cond_e
    if-nez p15, :cond_f

    const/4 v4, 0x6

    move/from16 v5, p17

    if-eq v5, v4, :cond_f

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationBuilder;->mContext:Landroid/content/Context;

    const-string v5, "com.sec.android.app.sbrowser.beta.download.DOWNLOAD_PAUSE"

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, p1

    move-object/from16 p6, p2

    move/from16 p7, p12

    move/from16 p8, p14

    invoke-static/range {p3 .. p8}, Lcom/sec/android/app/sbrowser/download/DNSUtils;->buildActionIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "IsPauseDownload"

    invoke-virtual {v4, v5, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v4, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f14048b

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v4, v1}, Lcom/sec/android/app/sbrowser/download/DownloadNotificationBuilder;->buildPendingIntent(Landroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    const v5, 0x7f080261

    invoke-virtual {v2, v5, v3, v4}, LU0/o;->a(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    :cond_f
    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, LU0/o;->f(IZ)V

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1f

    if-lt v3, v4, :cond_10

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationBuilder;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/download/DMSUtils;->getPendingIntentForNotification(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, v2, LU0/o;->g:Landroid/app/PendingIntent;

    goto :goto_9

    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/download/DownloadNotificationBuilder;->buildClickedIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-direct {v0, v3, v1}, Lcom/sec/android/app/sbrowser/download/DownloadNotificationBuilder;->buildPendingIntent(Landroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, v2, LU0/o;->g:Landroid/app/PendingIntent;

    :goto_9
    invoke-virtual {v2}, LU0/o;->b()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/download/DownloadNotificationBuilder;->updateNotification(ILandroid/app/Notification;)V

    if-eqz p15, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/download/DownloadNotificationBuilder;->getScreenID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "8788"

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    return-void
.end method

.method public updateNotification(ILandroid/app/Notification;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationBuilder;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v1, "DownloadNotificationService"

    invoke-virtual {v0, v1, p1, p2}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationBuilder;->mContext:Landroid/content/Context;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/download/DNSUtils;->hideDanglingSummaryNotification(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationBuilder;->mNotificationManager:Landroid/app/NotificationManager;

    new-instance v2, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v2, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, p0, v1, v2}, Lcom/sec/android/app/sbrowser/download/DNSUtils;->updateSummaryIcon(Landroid/content/Context;Landroid/app/NotificationManager;ILandroid/util/Pair;)V

    return-void
.end method
