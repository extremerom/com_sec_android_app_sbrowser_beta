.class public Lcom/sec/android/app/sbrowser/backup/SBrowserBackupRestoreReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "onReceive runs.. "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BackupRestoreReceiver"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "onReceive : intent action is NULL!"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_1

    invoke-virtual {v1, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_1
    const-string v2, "com.sec.android.app.sbrowser.beta"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p1, v1}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "startForegroundService BackupRestoreService error : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v1, v0}, Landroidx/recyclerview/widget/P;->t(Ljava/lang/RuntimeException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    if-eqz p2, :cond_2

    const-string p1, "SOURCE"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "MANUFACTURER"

    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    move-object v1, p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    move-object p2, p1

    move-object v1, p2

    :goto_0
    const-string p1, "com.samsung.android.intent.action.REQUEST_BACKUP_SBROWSER"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {}, Lcom/sec/android/app/sbrowser/backup/SmartSwitchUtil;->getInstance()Lcom/sec/android/app/sbrowser/backup/SmartSwitchUtil;

    move-result-object p0

    const-string p1, "OTHER_VND"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/backup/SmartSwitchUtil;->setNeedToVerify(Z)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/backup/SmartSwitchUtil;->getInstance()Lcom/sec/android/app/sbrowser/backup/SmartSwitchUtil;

    move-result-object v0

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/backup/SmartSwitchUtil;->sendBackupResponse(Ljava/lang/String;IIJ)V

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/sec/android/app/sbrowser/backup/SmartSwitchUtil;->getInstance()Lcom/sec/android/app/sbrowser/backup/SmartSwitchUtil;

    move-result-object v0

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/backup/SmartSwitchUtil;->sendRestoreResponse(Ljava/lang/String;IIJ)V

    :goto_1
    return-void
.end method
