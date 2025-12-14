.class Lcom/sec/android/app/sbrowser/backup/BackupRestoreService$1;
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

.field final synthetic val$needToVerify:Z


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService$1;->this$0:Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService$1;->val$needToVerify:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService$1;->val$needToVerify:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService$1;->this$0:Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;->k(Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService$1;->this$0:Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;->h(Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService$1;->this$0:Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;->c(Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;)Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService$1;->this$0:Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;->mVerifyingReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService$1;->this$0:Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;->j(Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;)V

    :goto_0
    return-void
.end method
