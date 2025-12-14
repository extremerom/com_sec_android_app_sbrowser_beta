.class Lcom/sec/android/app/sbrowser/backup/BackupRestoreService$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;->onStartCommand(Landroid/content/Intent;II)I
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService$2;->this$0:Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService$2;->this$0:Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;->b(Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;)I

    move-result v0

    if-nez v0, :cond_1

    const-wide/16 v0, 0x1f4

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService$2;->this$0:Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;->l(Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService$2;->this$0:Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;->m(Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService$2;->this$0:Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;->i(Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService$2;->this$0:Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;->d(Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;)Lcom/sec/android/app/sbrowser/backup/DataHelper;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService$2;->this$0:Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;->c(Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/backup/DataHelper;->initTerraceHelper(Landroid/content/Context;)V

    return-void
.end method
