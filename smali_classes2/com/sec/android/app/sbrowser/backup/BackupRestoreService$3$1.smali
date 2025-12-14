.class Lcom/sec/android/app/sbrowser/backup/BackupRestoreService$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/backup/BackupRestoreService$3;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/sbrowser/backup/BackupRestoreService$3;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/backup/BackupRestoreService$3;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService$3$1;->this$1:Lcom/sec/android/app/sbrowser/backup/BackupRestoreService$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService$3$1;->this$1:Lcom/sec/android/app/sbrowser/backup/BackupRestoreService$3;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService$3;->this$0:Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;->j(Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;)V

    return-void
.end method
