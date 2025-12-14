.class public Lcom/sec/android/app/sbrowser/backup/DataHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/backup/DataHelper$RestoreCallback;
    }
.end annotation


# instance fields
.field private mRestoreCallback:Lcom/sec/android/app/sbrowser/backup/DataHelper$RestoreCallback;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/backup/DataHelper$RestoreCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/backup/DataHelper;->mRestoreCallback:Lcom/sec/android/app/sbrowser/backup/DataHelper$RestoreCallback;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/backup/DataHelper;)Lcom/sec/android/app/sbrowser/backup/DataHelper$RestoreCallback;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/backup/DataHelper;->mRestoreCallback:Lcom/sec/android/app/sbrowser/backup/DataHelper$RestoreCallback;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/backup/DataHelper;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/backup/DataHelper;->migrateQuickAccessHomepagePreferenceValue(Landroid/content/Context;)V

    return-void
.end method

.method private migrateQuickAccessHomepagePreferenceValue(Landroid/content/Context;)V
    .locals 2

    invoke-static {p1}, Lw2/F;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "show_news_feed"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/homepage/UnifiedHomePageConfig;->isSupport(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/utils/QuickAccessUtils;->setMostVisitedEnabled(Z)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lw2/F;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public copyBackupFiles(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 5

    const-string p0, "/backup"

    invoke-static {p2, p0}, Lt/b;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/io/File;

    const-string v1, "/shared_prefs/com.sec.android.app.sbrowser.beta_preferences.xml"

    invoke-static {p2, v1}, Lt/b;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    invoke-static {p0, v1}, Lt/b;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const-string v3, "DataHelper"

    const/4 v4, 0x0

    if-nez v1, :cond_0

    const-string p0, "No data to backup in SBrowser!"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_0
    const-string v1, "/shared_prefs"

    invoke-static {p0, v1}, Lt/b;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreFileUtil;->makeDirectory(Ljava/lang/String;)Ljava/io/File;

    invoke-static {v0, v2}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreFileUtil;->copyFile(Ljava/io/File;Ljava/io/File;)I

    new-instance v0, Ljava/io/File;

    const-string v1, "/app_sbrowser/Default/History"

    invoke-static {p2, v1}, Lt/b;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/io/File;

    invoke-static {p0, v1}, Lt/b;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v1, "/app_sbrowser/Default"

    invoke-static {p0, v1}, Lt/b;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreFileUtil;->makeDirectory(Ljava/lang/String;)Ljava/io/File;

    sget-object v1, Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$CopyMode;->BACKUP:Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$CopyMode;

    invoke-static {v0, v2, v1}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreFileUtil;->copyDatabaseFile(Ljava/io/File;Ljava/io/File;Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$CopyMode;)Z

    move-result v0

    if-nez v0, :cond_1

    return v4

    :cond_1
    invoke-static {p2, p0}, Lcom/sec/android/app/sbrowser/backup/SixBackupRestoreHandler;->backupSixData(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProviderBackupUtility;->getDataBaseFileName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    const-string v2, "/databases/SBrowser.db"

    invoke-static {p0, v2}, Lt/b;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$CopyMode;->BACKUP:Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$CopyMode;

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreFileUtil;->copyDatabaseFile(Ljava/io/File;Ljava/io/File;Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$CopyMode;)Z

    move-result v0

    if-nez v0, :cond_2

    return v4

    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProviderBackupUtility;->deleteBookmarkExtensionBookmark(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProviderBackupUtility;->prepareDbForBackup(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "/files"

    if-nez p3, :cond_3

    const-string p3, "copyBackupFiles files copy"

    invoke-static {v3, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p3, Ljava/io/File;

    invoke-static {p2, v0}, Lt/b;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-static {p0, v0}, Lt/b;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v3, "_cryptonito"

    invoke-static {p3, v1, v3}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreFileUtil;->copy(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string p3, "copyBackupFiles instant backup files not copy"

    invoke-static {v3, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/settings/QuickAccessSettings;->getInstance()Lcom/sec/android/app/sbrowser/quickaccess/settings/QuickAccessSettings;

    move-result-object p3

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/quickaccess/settings/QuickAccessSettings;->setQuickAccessBackupRestoreDeviceId()V

    const-string p3, "quickaccess.db"

    invoke-virtual {p1, p3}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SBrowserFeatures;->isQuickAccessSmartSwitchSupported()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v1, Ljava/io/File;

    const-string v3, "/databases/quickaccess.db"

    invoke-static {p0, v3}, Lt/b;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p3, v1, v2}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreFileUtil;->copyDatabaseFile(Ljava/io/File;Ljava/io/File;Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$CopyMode;)Z

    move-result p3

    if-nez p3, :cond_4

    return v4

    :cond_4
    new-instance p3, Ljava/io/File;

    const-string v1, "/shared_prefs/quickaccess_preferences.xml"

    invoke-static {p2, v1}, Lt/b;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p3, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    invoke-static {p0, v1}, Lt/b;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {p3, v3}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreFileUtil;->copyFile(Ljava/io/File;Ljava/io/File;)I

    :cond_5
    new-instance p3, Ljava/io/File;

    const-string v1, "/shared_prefs/quickaccess_update_failed_icons_preferences.xml"

    invoke-static {p2, v1}, Lt/b;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p3, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    invoke-static {p0, v1}, Lt/b;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {p3, v3}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreFileUtil;->copyFile(Ljava/io/File;Ljava/io/File;)I

    :cond_6
    new-instance p3, Ljava/io/File;

    const-string v1, "/files/MLP_Weights_Bias.json"

    invoke-static {p2, v1}, Lt/b;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p3, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_7

    new-instance v3, Ljava/io/File;

    invoke-static {p0, v1}, Lt/b;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lt/b;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreFileUtil;->makeDirectory(Ljava/lang/String;)Ljava/io/File;

    invoke-static {p3, v3}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreFileUtil;->copyFile(Ljava/io/File;Ljava/io/File;)I

    :cond_7
    const-string p3, "SmartTabDelete.db"

    invoke-virtual {p1, p3}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p3

    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Ljava/io/File;

    const-string v1, "/databases/SmartTabDelete.db"

    invoke-static {p0, v1}, Lt/b;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p3, v0, v2}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreFileUtil;->copyDatabaseFile(Ljava/io/File;Ljava/io/File;Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$CopyMode;)Z

    move-result p3

    if-nez p3, :cond_8

    return v4

    :cond_8
    const-string p3, "media_history.db"

    invoke-virtual {p1, p3}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p3

    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v0, Ljava/io/File;

    const-string v1, "/databases/media_history.db"

    invoke-static {p0, v1}, Lt/b;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p3, v0, v2}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreFileUtil;->copyDatabaseFile(Ljava/io/File;Ljava/io/File;Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$CopyMode;)Z

    move-result p3

    if-nez p3, :cond_9

    return v4

    :cond_9
    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_cp_native/shortcut/model/ShortCutBackupUtility;->getDataBaseFileName()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p1, p3}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_a

    new-instance v1, Ljava/io/File;

    const-string v3, "/databases/"

    invoke-static {p0, v3, p3}, Lt/b;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {v1, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreFileUtil;->copyDatabaseFile(Ljava/io/File;Ljava/io/File;Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$CopyMode;)Z

    move-result p3

    if-nez p3, :cond_a

    return v4

    :cond_a
    const-string p3, "intent_blocker.db"

    invoke-virtual {p1, p3}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p3

    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_b

    new-instance v0, Ljava/io/File;

    const-string v1, "/databases/intent_blocker.db"

    invoke-static {p0, v1}, Lt/b;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p3, v0, v2}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreFileUtil;->copyDatabaseFile(Ljava/io/File;Ljava/io/File;Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$CopyMode;)Z

    move-result p3

    if-nez p3, :cond_b

    return v4

    :cond_b
    const-string p3, "SyncMetaInfo.db"

    invoke-virtual {p1, p3}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p3

    if-eqz p3, :cond_c

    new-instance p3, Ljava/io/File;

    const-string v0, "/databases/SyncMetaInfo.db"

    invoke-static {p0, v0}, Lt/b;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p3, v2}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreFileUtil;->copyDatabaseFile(Ljava/io/File;Ljava/io/File;Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$CopyMode;)Z

    move-result p1

    if-nez p1, :cond_c

    return v4

    :cond_c
    new-instance p1, Ljava/io/File;

    const-string p3, "/shared_prefs/contents_push_preference.xml"

    invoke-static {p2, p3}, Lt/b;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_d

    new-instance p2, Ljava/io/File;

    invoke-static {p0, p3}, Lt/b;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreFileUtil;->copyFile(Ljava/io/File;Ljava/io/File;)I

    :cond_d
    const/4 p0, 0x1

    return p0
.end method

.method public copyRestoreFiles(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 6

    new-instance p0, Ljava/io/File;

    const-string v0, "/restore"

    invoke-static {p2, v0}, Lt/b;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "/databases/SBrowser.db"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProviderBackupUtility;->getDataBaseFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    sget-object v4, Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$CopyMode;->RESTORE:Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$CopyMode;

    invoke-static {v1, v2, v4}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreFileUtil;->copyDatabaseFile(Ljava/io/File;Ljava/io/File;Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$CopyMode;)Z

    move-result v1

    if-nez v1, :cond_0

    return v3

    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProviderBackupUtility;->deleteBookmarkOperatorBookmarks(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p1, v1}, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProviderBackupUtility;->updateBookmarksSyncInfo(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p1, v1}, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProviderBackupUtility;->updateSavedPagesSyncInfo(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "/shared_prefs/com.sec.android.app.sbrowser.beta_preferences.xml"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v2, "/shared_prefs"

    invoke-static {p2, v2}, Lt/b;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreFileUtil;->makeDirectory(Ljava/lang/String;)Ljava/io/File;

    invoke-static {p1, v1}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreXmlUtil;->restoreSettingsXml(Landroid/content/Context;Ljava/io/File;)V

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "/app_sbrowser/Default/History"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/io/File;

    invoke-static {p2, v4}, Lt/b;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v4, "/app_sbrowser/Default"

    invoke-static {p2, v4}, Lt/b;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreFileUtil;->makeDirectory(Ljava/lang/String;)Ljava/io/File;

    sget-object v4, Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$CopyMode;->RESTORE:Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$CopyMode;

    invoke-static {v1, v2, v4}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreFileUtil;->copyDatabaseFile(Ljava/io/File;Ljava/io/File;Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$CopyMode;)Z

    move-result v1

    if-nez v1, :cond_2

    return v3

    :cond_2
    invoke-static {p0, p2}, Lcom/sec/android/app/sbrowser/backup/SixBackupRestoreHandler;->restoreSixData(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "/shared_prefs/ZoomValue.xml"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Ljava/io/File;

    invoke-static {p2, v4}, Lt/b;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v4, "/ZoomValue.xml"

    invoke-static {p2, v4}, Lt/b;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreFileUtil;->makeDirectory(Ljava/lang/String;)Ljava/io/File;

    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreFileUtil;->copyFile(Ljava/io/File;Ljava/io/File;)I

    :cond_3
    const-string v1, "/files"

    const-string v2, "DataHelper"

    if-nez p3, :cond_4

    const-string p3, "copyRestoreFiles file copy"

    invoke-static {v2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p3, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreFileUtil;->initDstPath(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v2, "_cryptonito"

    invoke-static {p3, v0, v2}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreFileUtil;->copy(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const-string p3, "copyRestoreFiles instant file move"

    invoke-static {v2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreFileUtil;->moveDirectory(Ljava/io/File;Ljava/io/File;)Z

    const-string p3, "copyRestoreFiles instant file move completed"

    invoke-static {v2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    sget-object p3, Lcom/sec/android/app/sbrowser/backup/QuickAccessDataHelper;->INSTANCE:Lcom/sec/android/app/sbrowser/backup/QuickAccessDataHelper;

    invoke-virtual {p0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, p1, p2, v0}, Lcom/sec/android/app/sbrowser/backup/QuickAccessDataHelper;->restoreQuickAccess(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    new-instance p3, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/files/MLP_Weights_Bias.json"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/io/File;

    invoke-static {p2, v2}, Lt/b;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p2, v1}, Lt/b;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreFileUtil;->makeDirectory(Ljava/lang/String;)Ljava/io/File;

    invoke-static {p3, v0}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreFileUtil;->copyFile(Ljava/io/File;Ljava/io/File;)I

    :cond_5
    new-instance p3, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/databases/SmartTabDelete.db"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "SmartTabDelete.db"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$CopyMode;->RESTORE:Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$CopyMode;

    invoke-static {p3, v0, v1}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreFileUtil;->copyDatabaseFile(Ljava/io/File;Ljava/io/File;Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$CopyMode;)Z

    move-result p3

    if-nez p3, :cond_6

    return v3

    :cond_6
    new-instance p3, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/databases/media_history.db"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "media_history.db"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$CopyMode;->RESTORE:Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$CopyMode;

    invoke-static {p3, v0, v1}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreFileUtil;->copyDatabaseFile(Ljava/io/File;Ljava/io/File;Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$CopyMode;)Z

    move-result p3

    if-nez p3, :cond_7

    return v3

    :cond_7
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/databases"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/sec/android/app/sbrowser/multi_cp_native/shortcut/model/ShortCutBackupUtility;->copyRestoreFiles(Ljava/lang/String;)V

    new-instance p3, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/databases/intent_blocker.db"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "intent_blocker.db"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$CopyMode;->RESTORE:Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$CopyMode;

    invoke-static {p3, v0, v1}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreFileUtil;->copyDatabaseFile(Ljava/io/File;Ljava/io/File;Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$CopyMode;)Z

    move-result p3

    if-nez p3, :cond_8

    return v3

    :cond_8
    new-instance p3, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/databases/SyncMetaInfo.db"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "SyncMetaInfo.db"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$CopyMode;->RESTORE:Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$CopyMode;

    invoke-static {p3, p1, v0}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreFileUtil;->copyDatabaseFile(Ljava/io/File;Ljava/io/File;Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$CopyMode;)Z

    move-result p1

    if-nez p1, :cond_9

    return v3

    :cond_9
    new-instance p1, Ljava/io/File;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "/shared_prefs/contents_push_preference.xml"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p3

    if-eqz p3, :cond_a

    new-instance p3, Ljava/io/File;

    invoke-static {p2, v0}, Lt/b;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p3}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreFileUtil;->copyFile(Ljava/io/File;Ljava/io/File;)I

    :cond_a
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreFileUtil;->deletePath(Ljava/lang/String;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public initTerraceHelper(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/backup/DataHelper$1;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/sbrowser/backup/DataHelper$1;-><init>(Lcom/sec/android/app/sbrowser/backup/DataHelper;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public resetAccountData(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncAccountUtil;->isAccountsLoggedIn()Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Landroid/content/Intent;

    const-string v0, "com.samsung.account.SAMSUNGACCOUNT_SIGNIN_BEFORE_RESTORE"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
