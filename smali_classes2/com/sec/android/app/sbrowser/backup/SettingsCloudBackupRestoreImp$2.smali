.class Lcom/sec/android/app/sbrowser/backup/SettingsCloudBackupRestoreImp$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LR8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/backup/SettingsCloudBackupRestoreImp;->restore(Landroid/content/Context;Landroid/os/ParcelFileDescriptor;LQ8/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/backup/SettingsCloudBackupRestoreImp;

.field final synthetic val$listener:LQ8/a;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/backup/SettingsCloudBackupRestoreImp;LQ8/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/backup/SettingsCloudBackupRestoreImp$2;->this$0:Lcom/sec/android/app/sbrowser/backup/SettingsCloudBackupRestoreImp;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/backup/SettingsCloudBackupRestoreImp$2;->val$listener:LQ8/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public transferred(JJ)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/backup/SettingsCloudBackupRestoreImp$2;->val$listener:LQ8/a;

    invoke-interface {p0, p1, p2, p3, p4}, LQ8/a;->onProgress(JJ)V

    return-void
.end method
