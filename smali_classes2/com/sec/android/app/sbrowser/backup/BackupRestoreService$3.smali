.class Lcom/sec/android/app/sbrowser/backup/BackupRestoreService$3;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService$3;->this$0:Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const-string p1, "BackupRestoreService"

    const-string v0, "mVerifyingReceiver onReceive"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    const-string p0, "Empty intent for smart switch verify request"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService$3;->this$0:Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;->e(Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService$3;->this$0:Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;->e(Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_1
    const-string v0, "VERIFY_KEY"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService$3;->this$0:Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;->g(Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;)I

    move-result v0

    if-ne p2, v0, :cond_2

    const-string p2, "VerifyKey matched"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService$3$1;

    invoke-direct {p2, p0}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService$3$1;-><init>(Lcom/sec/android/app/sbrowser/backup/BackupRestoreService$3;)V

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_2
    const-string p2, "VerifyKey not matched"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/backup/SmartSwitchUtil;->getInstance()Lcom/sec/android/app/sbrowser/backup/SmartSwitchUtil;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService$3;->this$0:Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;->f(Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/backup/SmartSwitchUtil;->sendBackupResponse(Ljava/lang/String;IIJ)V

    :goto_0
    return-void
.end method
