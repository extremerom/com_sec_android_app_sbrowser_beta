.class public Lcom/sec/android/app/sbrowser/blockers/content_block/download/ApkDownloadNotification;
.super Lcom/sec/android/app/sbrowser/common/blockers/ApkDCNotification;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCNotification;-><init>()V

    return-void
.end method


# virtual methods
.method public baseNotificationBuilder(Landroid/content/Context;I)LU0/o;
    .locals 2

    new-instance v0, LU0/o;

    const-string v1, "SBROWSER_EXTENSIONS_NOTIFICATION_CHANNEL"

    invoke-direct {v0, p1, v1}, LU0/o;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v1, 0x7f0607fb

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iput v1, v0, LU0/o;->u:I

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCNotification;->clickPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object p0

    iput-object p0, v0, LU0/o;->g:Landroid/app/PendingIntent;

    const-string p0, "content_block_notification_group"

    iput-object p0, v0, LU0/o;->q:Ljava/lang/String;

    const/4 p0, 0x1

    iput-boolean p0, v0, LU0/o;->s:Z

    const/4 p1, 0x2

    invoke-virtual {v0, p1, p0}, LU0/o;->f(IZ)V

    const/16 p1, 0x8

    invoke-virtual {v0, p1, p0}, LU0/o;->f(IZ)V

    const/4 p1, 0x0

    iput p1, v0, LU0/o;->j:I

    iget-object p1, v0, LU0/o;->z:Landroid/app/Notification;

    const p2, 0x7f08070b

    iput p2, p1, Landroid/app/Notification;->icon:I

    iput p0, v0, LU0/o;->v:I

    return-object v0
.end method

.method public buildActionIntentForService(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    new-instance p0, Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/sec/android/app/sbrowser/blockers/content_block/download/ApkDownloadService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-object p1
.end method

.method public cancelDownloadIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1

    const-string v0, "com.sec.android.app.sbrowser.beta.content_block.download.DOWNLOAD_CANCEL"

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/blockers/content_block/download/ApkDownloadNotification;->buildActionIntentForService(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public clickIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockIntentUtils;->getContentBlockPreferenceFragmentIntentForNotification(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public removeNotificationIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1

    const-string v0, "com.sec.android.app.sbrowser.beta.content_block.download.REMOVE_NOTIFICATION"

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/blockers/content_block/download/ApkDownloadNotification;->buildActionIntentForService(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public summaryNotification(Landroid/content/Context;)Landroid/app/Notification;
    .locals 2

    new-instance p0, LU0/o;

    const-string v0, "SBROWSER_EXTENSIONS_NOTIFICATION_CHANNEL"

    invoke-direct {p0, p1, v0}, LU0/o;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, LU0/o;->z:Landroid/app/Notification;

    const v1, 0x7f08070b

    iput v1, v0, Landroid/app/Notification;->icon:I

    const v0, 0x7f0607fb

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, LU0/o;->u:I

    const-string p1, "content_block_notification_group"

    iput-object p1, p0, LU0/o;->q:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, LU0/o;->r:Z

    invoke-virtual {p0}, LU0/o;->b()Landroid/app/Notification;

    move-result-object p0

    return-object p0
.end method
