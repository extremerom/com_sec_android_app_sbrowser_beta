.class public Lcom/sec/android/app/sbrowser/settings/debug/UpdateTypePreferenceFragment;
.super Lw2/A;
.source "SourceFile"

# interfaces
.implements Lw2/m;
.implements Lw2/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/settings/debug/UpdateTypePreferenceFragment$BackupRestoreConfig;
    }
.end annotation


# instance fields
.field private mDescription:Landroidx/preference/PreferenceScreen;

.field private mFakeCurrentPref:Landroidx/preference/EditTextPreference;

.field private mFakeVersion:Ljava/lang/String;

.field private mForcePref:Landroidx/preference/EditTextPreference;

.field private mForced:Ljava/lang/String;

.field private mRecommendPref:Landroidx/preference/EditTextPreference;

.field private mRecommended:Ljava/lang/String;

.field private mRestorePref:Landroidx/preference/PreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lw2/A;-><init>()V

    return-void
.end method

.method private copyFile(Ljava/io/File;Ljava/io/File;)Z
    .locals 11

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v1, "UpdateType"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Source file "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " does not exist"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Error during creation of ["

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] directory"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v9}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, v6, v7}, Lcom/sec/android/app/sbrowser/settings/debug/UpdateTypePreferenceFragment;->isStorageFull(Ljava/lang/String;J)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "storage FULL"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v10, :cond_2

    :try_start_5
    invoke-virtual {v10}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_2
    :goto_0
    :try_start_6
    invoke-virtual {v9}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    return v2

    :catch_0
    move-exception p0

    goto :goto_9

    :catchall_1
    move-exception p0

    goto :goto_7

    :catchall_2
    move-exception p0

    goto :goto_5

    :catchall_3
    move-exception p0

    goto :goto_1

    :cond_3
    const-wide/16 v4, 0x0

    move-object v3, v9

    move-object v8, v10

    :try_start_9
    invoke-virtual/range {v3 .. v8}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    move-result-wide v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    const-wide/16 v5, 0x0

    cmp-long p0, v3, v5

    if-gez p0, :cond_5

    if-eqz v10, :cond_4

    :try_start_a
    invoke-virtual {v10}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :cond_4
    :try_start_b
    invoke-virtual {v9}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :try_start_c
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :try_start_d
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_0

    return v2

    :cond_5
    if-eqz v10, :cond_6

    :try_start_e
    invoke-virtual {v10}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    :cond_6
    :try_start_f
    invoke-virtual {v9}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    :try_start_10
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    :try_start_11
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_0

    const/4 p0, 0x1

    return p0

    :goto_1
    if-eqz v10, :cond_7

    :try_start_12
    invoke-virtual {v10}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    goto :goto_2

    :catchall_4
    move-exception p2

    :try_start_13
    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_2
    throw p0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    :goto_3
    if-eqz v9, :cond_8

    :try_start_14
    invoke-virtual {v9}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_5

    goto :goto_4

    :catchall_5
    move-exception p2

    :try_start_15
    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8
    :goto_4
    throw p0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    :goto_5
    :try_start_16
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_6

    goto :goto_6

    :catchall_6
    move-exception p1

    :try_start_17
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6
    throw p0
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    :goto_7
    :try_start_18
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_7

    goto :goto_8

    :catchall_7
    move-exception p1

    :try_start_19
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_8
    throw p0
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_0

    :goto_9
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string p0, "exception"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public static bridge synthetic h(Lcom/sec/android/app/sbrowser/settings/debug/UpdateTypePreferenceFragment;Ljava/io/File;Ljava/io/File;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/debug/UpdateTypePreferenceFragment;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method private isStorageFull(Ljava/lang/String;J)Z
    .locals 0

    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/TerraceHelper;->isStorageFull()Z

    move-result p0

    return p0
.end method

.method private loadServerConfiguration()V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/stub/AppUpdateManager;->getInstance()Lcom/sec/android/app/sbrowser/stub/AppUpdateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/stub/AppUpdateManager;->loadData()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/debug/UpdateTypePreferenceFragment;->saveConfiguration()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/debug/UpdateTypePreferenceFragment;->mDescription:Landroidx/preference/PreferenceScreen;

    const-string v1, "Initial server data"

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/debug/UpdateTypePreferenceFragment;->mDescription:Landroidx/preference/PreferenceScreen;

    const-string v1, "Update data"

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/stub/AppUpdateManager;->getInstance()Lcom/sec/android/app/sbrowser/stub/AppUpdateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/stub/AppUpdateManager;->getRecommendedVersions()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v1, v0}, LB/e;->n(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/debug/UpdateTypePreferenceFragment;->mRecommended:Ljava/lang/String;

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/stub/AppUpdateManager;->getInstance()Lcom/sec/android/app/sbrowser/stub/AppUpdateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/stub/AppUpdateManager;->getFakeCurrentVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/debug/UpdateTypePreferenceFragment;->mFakeVersion:Ljava/lang/String;

    invoke-static {}, Lcom/sec/android/app/sbrowser/stub/AppUpdateManager;->getInstance()Lcom/sec/android/app/sbrowser/stub/AppUpdateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/stub/AppUpdateManager;->getForcedVersions()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v1, v0}, LB/e;->n(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/debug/UpdateTypePreferenceFragment;->mForced:Ljava/lang/String;

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/debug/UpdateTypePreferenceFragment;->mRecommendPref:Landroidx/preference/EditTextPreference;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/debug/UpdateTypePreferenceFragment;->mRecommended:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/debug/UpdateTypePreferenceFragment;->mRecommendPref:Landroidx/preference/EditTextPreference;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/debug/UpdateTypePreferenceFragment;->mRecommended:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/preference/EditTextPreference;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/debug/UpdateTypePreferenceFragment;->mForcePref:Landroidx/preference/EditTextPreference;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/debug/UpdateTypePreferenceFragment;->mForced:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/debug/UpdateTypePreferenceFragment;->mForcePref:Landroidx/preference/EditTextPreference;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/debug/UpdateTypePreferenceFragment;->mForced:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/preference/EditTextPreference;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/debug/UpdateTypePreferenceFragment;->mFakeCurrentPref:Landroidx/preference/EditTextPreference;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/debug/UpdateTypePreferenceFragment;->mFakeVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/debug/UpdateTypePreferenceFragment;->mFakeCurrentPref:Landroidx/preference/EditTextPreference;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/debug/UpdateTypePreferenceFragment;->mFakeVersion:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroidx/preference/EditTextPreference;->e(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private restoreServerConfiguration()V
    .locals 4

    const-string v0, "UpdateType"

    const-string v1, "restoreServerConfiguration"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/debug/UpdateTypePreferenceFragment$BackupRestoreConfig;

    const-string v1, "update_versions_copy.json"

    const-string v2, "update_versions.json"

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/settings/debug/UpdateTypePreferenceFragment$BackupRestoreConfig;-><init>(Lcom/sec/android/app/sbrowser/settings/debug/UpdateTypePreferenceFragment;Ljava/lang/String;Ljava/lang/String;I)V

    new-array p0, v3, [Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private saveConfiguration()Z
    .locals 4

    const-string v0, "UpdateType"

    const-string v1, "saveConfiguration"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/update_versions_copy.json"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string p0, "BACKUP file is existed already"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/settings/debug/UpdateTypePreferenceFragment$BackupRestoreConfig;

    const-string v1, "update_versions_copy.json"

    const-string v3, "update_versions.json"

    invoke-direct {v0, p0, v3, v1, v2}, Lcom/sec/android/app/sbrowser/settings/debug/UpdateTypePreferenceFragment$BackupRestoreConfig;-><init>(Lcom/sec/android/app/sbrowser/settings/debug/UpdateTypePreferenceFragment;Ljava/lang/String;Ljava/lang/String;I)V

    new-array p0, v2, [Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    const/4 p0, 0x1

    return p0
.end method

.method private showSnackBar()V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f1410a0

    const/4 v2, -0x1

    invoke-static {v1, v2, v0}, LH6/o;->h(IILandroid/view/View;)LH6/o;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/debug/UpdateTypePreferenceFragment$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/settings/debug/UpdateTypePreferenceFragment$1;-><init>(Lcom/sec/android/app/sbrowser/settings/debug/UpdateTypePreferenceFragment;)V

    invoke-virtual {v0, v1}, LH6/m;->a(LH6/n;)V

    invoke-virtual {v0}, LH6/o;->l()V

    return-void
.end method

.method private updateSummary()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/debug/UpdateTypePreferenceFragment;->mRecommendPref:Landroidx/preference/EditTextPreference;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/debug/UpdateTypePreferenceFragment;->mRecommended:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/debug/UpdateTypePreferenceFragment;->mForcePref:Landroidx/preference/EditTextPreference;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/debug/UpdateTypePreferenceFragment;->mForced:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/debug/UpdateTypePreferenceFragment;->mFakeCurrentPref:Landroidx/preference/EditTextPreference;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/debug/UpdateTypePreferenceFragment;->mFakeVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/debug/UpdateTypePreferenceFragment;->mDescription:Landroidx/preference/PreferenceScreen;

    const-string v0, "update data"

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private writeFile(Ljava/lang/String;)V
    .locals 3

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "writeFile json : "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "UpdateType"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "/update_versions.json"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v1, Ljava/io/OutputStreamWriter;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_4

    :catch_0
    move-exception p0

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_5
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v1

    :try_start_6
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_1
    :try_start_7
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception p0

    :try_start_8
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p1
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "File Write Error "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    invoke-static {}, Lcom/sec/android/app/sbrowser/stub/AppUpdateManager;->getInstance()Lcom/sec/android/app/sbrowser/stub/AppUpdateManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/stub/AppUpdateManager;->resetData()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/stub/StubUtil;->resetPrefsForUpdate()V

    return-void
.end method

.method private writeToJson()V
    .locals 7

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Landroid/util/JsonWriter;

    invoke-direct {v1, v0}, Landroid/util/JsonWriter;-><init>(Ljava/io/Writer;)V

    :try_start_0
    invoke-virtual {v1}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    const-string v2, "version"

    invoke-virtual {v1, v2}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v2

    const-wide/16 v3, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    const-string v2, "recommend"

    invoke-virtual {v1, v2}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/debug/UpdateTypePreferenceFragment;->mRecommended:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    const-string v4, ","

    if-nez v2, :cond_0

    :try_start_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/debug/UpdateTypePreferenceFragment;->mRecommended:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    move v5, v3

    :goto_0
    array-length v6, v2

    if-ge v5, v6, :cond_0

    aget-object v6, v2, v5

    invoke-virtual {v1, v6}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_2

    :cond_0
    invoke-virtual {v1}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    const-string v2, "force"

    invoke-virtual {v1, v2}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/debug/UpdateTypePreferenceFragment;->mForced:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/debug/UpdateTypePreferenceFragment;->mForced:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    :goto_1
    array-length v4, v2

    if-ge v3, v4, :cond_1

    aget-object v4, v2, v3

    invoke-virtual {v1, v4}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    const-string v2, "fake"

    invoke-virtual {v1, v2}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/debug/UpdateTypePreferenceFragment;->mFakeVersion:Ljava/lang/String;

    if-nez v3, :cond_2

    const-string v3, ""

    :cond_2
    invoke-virtual {v2, v3}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    const-string v2, "testOnly"

    invoke-virtual {v1, v2}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v2

    const-string v3, "true"

    invoke-virtual {v2, v3}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    invoke-virtual {v1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :goto_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/settings/debug/UpdateTypePreferenceFragment;->writeFile(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object p1

    const p2, 0x7f1410a1

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setTitle(I)V

    const p1, 0x7f180083

    invoke-virtual {p0, p1}, Lw2/A;->addPreferencesFromResource(I)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/stub/StubUtil;->getVersionCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lw2/A;->getPreferenceManager()Lw2/F;

    move-result-object p2

    const-string v0, "app_update_description"

    invoke-virtual {p2, v0}, Lw2/F;->b(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    check-cast p2, Landroidx/preference/PreferenceScreen;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/debug/UpdateTypePreferenceFragment;->mDescription:Landroidx/preference/PreferenceScreen;

    invoke-virtual {p0}, Lw2/A;->getPreferenceManager()Lw2/F;

    move-result-object p2

    const-string v0, "edit_recommend"

    invoke-virtual {p2, v0}, Lw2/F;->b(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    check-cast p2, Landroidx/preference/EditTextPreference;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/debug/UpdateTypePreferenceFragment;->mRecommendPref:Landroidx/preference/EditTextPreference;

    const-string v0, "You have typed \'Fake current version\'.\n\nType \'current app store\' version as \"Recommended\""

    invoke-virtual {p2, v0}, Landroidx/preference/DialogPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/debug/UpdateTypePreferenceFragment;->mRecommendPref:Landroidx/preference/EditTextPreference;

    invoke-virtual {p2, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Lw2/m;)V

    invoke-virtual {p0}, Lw2/A;->getPreferenceManager()Lw2/F;

    move-result-object p2

    const-string v0, "edit_force"

    invoke-virtual {p2, v0}, Lw2/F;->b(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    check-cast p2, Landroidx/preference/EditTextPreference;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/debug/UpdateTypePreferenceFragment;->mForcePref:Landroidx/preference/EditTextPreference;

    const-string v0, "You have typed \'Fake current version\'.\n\nType \'current app store\' version as \"Forced\""

    invoke-virtual {p2, v0}, Landroidx/preference/DialogPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/debug/UpdateTypePreferenceFragment;->mForcePref:Landroidx/preference/EditTextPreference;

    invoke-virtual {p2, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Lw2/m;)V

    invoke-virtual {p0}, Lw2/A;->getPreferenceManager()Lw2/F;

    move-result-object p2

    const-string v0, "fake_current_version"

    invoke-virtual {p2, v0}, Lw2/F;->b(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    check-cast p2, Landroidx/preference/EditTextPreference;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/debug/UpdateTypePreferenceFragment;->mFakeCurrentPref:Landroidx/preference/EditTextPreference;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Now installed : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\nBut, edit fake current version like \n 1 22 0 0 01 000 (10 digit)\nto check REAL APP STORE version"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/preference/DialogPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/debug/UpdateTypePreferenceFragment;->mFakeCurrentPref:Landroidx/preference/EditTextPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Lw2/m;)V

    invoke-virtual {p0}, Lw2/A;->getPreferenceManager()Lw2/F;

    move-result-object p1

    const-string p2, "app_update_restore"

    invoke-virtual {p1, p2}, Lw2/F;->b(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceScreen;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/debug/UpdateTypePreferenceFragment;->mRestorePref:Landroidx/preference/PreferenceScreen;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Lw2/n;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/debug/UpdateTypePreferenceFragment;->loadServerConfiguration()V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onPreferenceChange : key "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UpdateType"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "edit_recommend"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "recommended values :  "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/debug/UpdateTypePreferenceFragment;->mRecommended:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "edit_force"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "forced values :  "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/debug/UpdateTypePreferenceFragment;->mForced:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v0, "fake_current_version"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/debug/UpdateTypePreferenceFragment;->mFakeVersion:Ljava/lang/String;

    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/debug/UpdateTypePreferenceFragment;->writeToJson()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/debug/UpdateTypePreferenceFragment;->updateSummary()V

    const/4 p0, 0x1

    return p0
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2
    .param p1    # Landroidx/preference/Preference;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onPreferenceChange : key "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UpdateType"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "app_update_restore"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Restore configuration : restore backup file"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/debug/UpdateTypePreferenceFragment;->restoreServerConfiguration()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/debug/UpdateTypePreferenceFragment;->showSnackBar()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
