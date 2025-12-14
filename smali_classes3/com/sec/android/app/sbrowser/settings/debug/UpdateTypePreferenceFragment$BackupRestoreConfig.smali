.class Lcom/sec/android/app/sbrowser/settings/debug/UpdateTypePreferenceFragment$BackupRestoreConfig;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/settings/debug/UpdateTypePreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BackupRestoreConfig"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field mDestFile:Ljava/io/File;

.field mSrcFile:Ljava/io/File;

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/settings/debug/UpdateTypePreferenceFragment;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/sbrowser/settings/debug/UpdateTypePreferenceFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/debug/UpdateTypePreferenceFragment$BackupRestoreConfig;->this$0:Lcom/sec/android/app/sbrowser/settings/debug/UpdateTypePreferenceFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/debug/UpdateTypePreferenceFragment$BackupRestoreConfig;->mSrcFile:Ljava/io/File;

    new-instance p2, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/debug/UpdateTypePreferenceFragment$BackupRestoreConfig;->mDestFile:Ljava/io/File;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/settings/debug/UpdateTypePreferenceFragment;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/settings/debug/UpdateTypePreferenceFragment$BackupRestoreConfig;-><init>(Lcom/sec/android/app/sbrowser/settings/debug/UpdateTypePreferenceFragment;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    const-string p1, "UpdateType"

    const-string v0, "doInBackground"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/debug/UpdateTypePreferenceFragment$BackupRestoreConfig;->this$0:Lcom/sec/android/app/sbrowser/settings/debug/UpdateTypePreferenceFragment;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/debug/UpdateTypePreferenceFragment$BackupRestoreConfig;->mSrcFile:Ljava/io/File;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/debug/UpdateTypePreferenceFragment$BackupRestoreConfig;->mDestFile:Ljava/io/File;

    invoke-static {p1, v0, p0}, Lcom/sec/android/app/sbrowser/settings/debug/UpdateTypePreferenceFragment;->h(Lcom/sec/android/app/sbrowser/settings/debug/UpdateTypePreferenceFragment;Ljava/io/File;Ljava/io/File;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/debug/UpdateTypePreferenceFragment$BackupRestoreConfig;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public onPostExecute(Ljava/lang/Boolean;)V
    .locals 2

    const-string p1, "onPostExecute"

    const-string v0, "UpdateType"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/debug/UpdateTypePreferenceFragment$BackupRestoreConfig;->mSrcFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "update_versions_copy.json"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/debug/UpdateTypePreferenceFragment$BackupRestoreConfig;->mSrcFile:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "Restore configuration done. BACKUP is deleted"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p0, "Restore configuration done. BACKUP deletion is failed"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/debug/UpdateTypePreferenceFragment$BackupRestoreConfig;->mDestFile:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "BACKUP is created."

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/debug/UpdateTypePreferenceFragment$BackupRestoreConfig;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
