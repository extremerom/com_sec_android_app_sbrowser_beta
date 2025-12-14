.class public abstract Lcom/sec/android/app/sbrowser/common/blockers/ApkDCNotification;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private baseFinishNotificationBuilder(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;)LU0/o;
    .locals 5

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;->getNotificationId()I

    move-result v0

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCNotification;->removeNotificationPendingIntent(Landroid/content/Context;ILjava/lang/String;Z)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;->getNotificationId()I

    move-result v1

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {p0, p1, v1, v3, v4}, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCNotification;->removeNotificationPendingIntent(Landroid/content/Context;ILjava/lang/String;Z)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;->getNotificationId()I

    move-result v3

    invoke-virtual {p0, p1, v3}, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCNotification;->baseNotificationBuilder(Landroid/content/Context;I)LU0/o;

    move-result-object p0

    const/16 p1, 0x10

    invoke-virtual {p0, p1, v2}, LU0/o;->f(IZ)V

    iput-object v0, p0, LU0/o;->g:Landroid/app/PendingIntent;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;->getAppName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LU0/o;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, LU0/o;->e:Ljava/lang/CharSequence;

    iget-object p1, p0, LU0/o;->z:Landroid/app/Notification;

    iput-object v1, p1, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    const/4 p1, 0x2

    invoke-virtual {p0, p1, v4}, LU0/o;->f(IZ)V

    return-object p0
.end method

.method private cancelDownloadPendingIntent(Landroid/content/Context;ILjava/lang/String;)Landroid/app/PendingIntent;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCNotification;->cancelDownloadIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    const-string v0, "packageName"

    invoke-virtual {p0, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    add-int/lit16 p2, p2, 0x7d0

    const/high16 p3, 0x10000000

    invoke-static {}, Lcom/sec/terrace/base/TerraceApiCompatibilityUtils;->getPendingIntentFlagMutable()I

    move-result v0

    or-int/2addr p3, v0

    invoke-static {p1, p2, p0, p3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method private removeNotificationPendingIntent(Landroid/content/Context;ILjava/lang/String;Z)Landroid/app/PendingIntent;
    .locals 2

    if-eqz p4, :cond_0

    const/16 v0, 0xfa0

    goto :goto_0

    :cond_0
    const/16 v0, 0xbb8

    :goto_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCNotification;->removeNotificationIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    const-string v1, "startActivity"

    invoke-virtual {p0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p4, "packageName"

    invoke-virtual {p0, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    add-int/2addr v0, p2

    const/high16 p2, 0x10000000

    invoke-static {}, Lcom/sec/terrace/base/TerraceApiCompatibilityUtils;->getPendingIntentFlagMutable()I

    move-result p3

    or-int/2addr p2, p3

    invoke-static {p1, v0, p0, p2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract baseNotificationBuilder(Landroid/content/Context;I)LU0/o;
.end method

.method public abstract cancelDownloadIntent(Landroid/content/Context;)Landroid/content/Intent;
.end method

.method public abstract clickIntent(Landroid/content/Context;)Landroid/content/Intent;
.end method

.method public clickPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCNotification;->clickIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    add-int/lit16 p2, p2, 0x3e8

    const/high16 v0, 0x10000000

    invoke-static {}, Lcom/sec/terrace/base/TerraceApiCompatibilityUtils;->getPendingIntentFlagMutable()I

    move-result v1

    or-int/2addr v0, v1

    invoke-static {p1, p2, p0, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public downloadFailedNotification(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;)Landroid/app/Notification;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCNotification;->baseFinishNotificationBuilder(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;)LU0/o;

    move-result-object p0

    const p2, 0x7f140381

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, LU0/o;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, LU0/o;->f:Ljava/lang/CharSequence;

    invoke-virtual {p0}, LU0/o;->b()Landroid/app/Notification;

    move-result-object p0

    return-object p0
.end method

.method public downloadInterruptedNotification(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;)Landroid/app/Notification;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCNotification;->baseFinishNotificationBuilder(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;)LU0/o;

    move-result-object p0

    const p2, 0x7f140384

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, LU0/o;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, LU0/o;->f:Ljava/lang/CharSequence;

    invoke-virtual {p0}, LU0/o;->b()Landroid/app/Notification;

    move-result-object p0

    return-object p0
.end method

.method public downloadingNotification(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;)Landroid/app/Notification;
    .locals 13

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;->getHumanReadablePercentage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f140488

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;->getNotificationId()I

    move-result v2

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v2, v3}, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCNotification;->cancelDownloadPendingIntent(Landroid/content/Context;ILjava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v7

    const-string v2, ""

    const/4 v3, 0x0

    const v4, 0x1020027

    invoke-static {v3, v2, v4}, Landroidx/core/graphics/drawable/IconCompat;->a(Landroid/content/res/Resources;Ljava/lang/String;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v5

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    invoke-static {v1}, LU0/o;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v10, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [LU0/y;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [LU0/y;

    move-object v10, v1

    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v9, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [LU0/y;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [LU0/y;

    move-object v9, v1

    :goto_1
    new-instance v1, LU0/i;

    const/4 v12, 0x1

    move-object v4, v1

    move v11, v12

    invoke-direct/range {v4 .. v12}, LU0/i;-><init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[LU0/y;[LU0/y;ZZ)V

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;->getNotificationId()I

    move-result v2

    invoke-virtual {p0, p1, v2}, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCNotification;->baseNotificationBuilder(Landroid/content/Context;I)LU0/o;

    move-result-object p0

    iget-object p1, p0, LU0/o;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;->getAppName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LU0/o;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, LU0/o;->e:Ljava/lang/CharSequence;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;->getPercentCompleted()I

    move-result p1

    const/4 v1, 0x0

    const/16 v2, 0x64

    invoke-virtual {p0, v2, p1, v1}, LU0/o;->g(IIZ)V

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;->getStartTime()J

    move-result-wide p1

    iget-object v1, p0, LU0/o;->z:Landroid/app/Notification;

    iput-wide p1, v1, Landroid/app/Notification;->when:J

    invoke-virtual {p0, v0}, LU0/o;->i(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, LU0/o;->b()Landroid/app/Notification;

    move-result-object p0

    return-object p0
.end method

.method public installFailedNotification(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;)Landroid/app/Notification;
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCNotification;->baseFinishNotificationBuilder(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;)LU0/o;

    move-result-object p0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const v1, 0x7f140382

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;->getAppName()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {v0, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, LU0/o;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, LU0/o;->f:Ljava/lang/CharSequence;

    invoke-virtual {p0}, LU0/o;->b()Landroid/app/Notification;

    move-result-object p0

    return-object p0
.end method

.method public installingNotification(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;)Landroid/app/Notification;
    .locals 1

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;->getNotificationId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCNotification;->baseNotificationBuilder(Landroid/content/Context;I)LU0/o;

    move-result-object p0

    const v0, 0x7f140383

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;->getAppName()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, LU0/o;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, LU0/o;->f:Ljava/lang/CharSequence;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;->getAppName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LU0/o;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, LU0/o;->e:Ljava/lang/CharSequence;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;->getStartTime()J

    move-result-wide p1

    iget-object v0, p0, LU0/o;->z:Landroid/app/Notification;

    iput-wide p1, v0, Landroid/app/Notification;->when:J

    invoke-virtual {p0}, LU0/o;->b()Landroid/app/Notification;

    move-result-object p0

    return-object p0
.end method

.method public abstract removeNotificationIntent(Landroid/content/Context;)Landroid/content/Intent;
.end method
