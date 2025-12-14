.class public Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;
.super Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/constants/preference/PreferenceKeys;


# static fields
.field public static final DOWNLOAD_RELATIVE_PATH_DEFAULT:Ljava/lang/String;


# instance fields
.field private mIsCountryIndia:Z

.field private mIsMediaStoragePermissionGranted:Ljava/lang/Boolean;

.field private mSecretModeEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->DOWNLOAD_RELATIVE_PATH_DEFAULT:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a()Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;-><init>()V

    return-object v0
.end method

.method private static getAppSdCardPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "DownloadSettings"

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/content/Context;->getExternalFilesDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object p0

    const/4 v2, 0x0

    :goto_0
    :try_start_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    aget-object v3, p0, v2

    if-eqz v3, :cond_0

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/common/download/DownloadPathUtils;->isExternalStoragePathMounted(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_0

    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "otg"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "usb"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v4, :cond_0

    return-object v3

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "IllegalState for external file dir "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string p0, "Failed to obtain sdcard path"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public static getInstance()Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;
    .locals 2

    new-instance v0, Lf1/g;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lf1/g;-><init>(I)V

    const-class v1, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/singleton/SingletonFactory;->getOrCreate(Ljava/lang/Class;Lcom/sec/android/app/sbrowser/common/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;

    return-object v0
.end method

.method public static getSDCardPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/GEDUtils;->isGED()Z

    move-result v1

    const-string v2, "DownloadSettings"

    if-nez v1, :cond_6

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->checkWriteMediaStoragePermission()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/KnoxModeUtils;->isKnoxMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v0

    :cond_2
    :try_start_0
    invoke-static {p0}, Lcom/sec/sbrowser/spl/wrapper/MajoStorageManager;->getSystemService(Landroid/content/Context;)Lcom/sec/sbrowser/spl/wrapper/MajoStorageManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/wrapper/MajoStorageManager;->getVolumes()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_3

    return-object v0

    :cond_3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/sbrowser/spl/wrapper/MajoVolumeInfo;->getVolumeInfo(Ljava/lang/Object;)Lcom/sec/sbrowser/spl/wrapper/MajoVolumeInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/sbrowser/spl/wrapper/MajoVolumeInfo;->getState()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/sec/sbrowser/spl/wrapper/MajoVolumeInfo;->getEnvironmentForState(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "mounted"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v1}, Lcom/sec/sbrowser/spl/wrapper/MajoVolumeInfo;->getDisk()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-static {v3}, Lcom/sec/sbrowser/spl/wrapper/MajoDiskInfo;->getDiskInfo(Ljava/lang/Object;)Lcom/sec/sbrowser/spl/wrapper/MajoDiskInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/sbrowser/spl/wrapper/MajoDiskInfo;->isSd()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v1}, Lcom/sec/sbrowser/spl/wrapper/MajoVolumeInfo;->getPath()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_4

    return-object v1

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Failed getSDCardPath: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1, v2}, Landroidx/recyclerview/widget/P;->q(Lcom/sec/sbrowser/spl/util/FallbackException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_5
    return-object v0

    :cond_6
    :goto_0
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->getAppSdCardPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Return App SDCard path "

    invoke-static {v0, p0, v2}, LV0/c;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private resetDownloadPathToUserPreference()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->getDownloadDefaultStorage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PHONE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    :goto_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->setDownloadDefaultStorage(I)V

    return-void
.end method

.method private updateSecretDownloadEnabledToNative(Z)V
    .locals 0

    invoke-static {p1}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->setSecretDownloadEnabled(Z)V

    return-void
.end method


# virtual methods
.method public checkAndResetDownloadRelativePath()V
    .locals 3

    sget-object v0, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->DOWNLOAD_RELATIVE_PATH_DEFAULT:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->getDownloadRelativePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const-string v1, "PHONE"

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->getDownloadDefaultStorage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ""

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->getSDCardPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/download/DownloadPathUtils;->getReadablePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->getAbsoluteRelativePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->setDownloadRelativePath(Ljava/lang/String;)Z

    const-string p0, "DownloadSettings"

    const-string v0, "Download sub-folder reset"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method public checkWriteMediaStoragePermission()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->mIsMediaStoragePermissionGranted:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-gt v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_MEDIA_STORAGE"

    invoke-static {v0, v1}, LV0/a;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->mIsMediaStoragePermissionGranted:Ljava/lang/Boolean;

    goto :goto_1

    :cond_1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->mIsMediaStoragePermissionGranted:Ljava/lang/Boolean;

    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->mIsMediaStoragePermissionGranted:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getAbsoluteRelativePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/download/DownloadPathUtils;->getDefaultInternalDownloadPath()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/download/DownloadPathUtils;->trimPath(Ljava/lang/String;)Ljava/lang/String;

    :goto_0
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-static {p1}, LB/e;->r(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v0}, LB/e;->r(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->isSecretDownloadPath(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->getDownloadRelativePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/download/DownloadPathUtils;->trimPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_2
    sget-object p0, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->DOWNLOAD_RELATIVE_PATH_DEFAULT:Ljava/lang/String;

    :goto_2
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDownloadDefaultStorage()Ljava/lang/String;
    .locals 2

    const-string v0, "download_default_storyage"

    const-string v1, "PHONE"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDownloadPathDetail(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->getDownloadDefaultStorage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/download/DownloadPathUtils;->getReadablePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "PHONE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/download/DownloadPathUtils;->getDefaultInternalDownloadPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "Phone"

    goto :goto_0

    :cond_0
    const-string p0, "Phone_Sub"

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/download/DownloadPathUtils;->getDefaultExternalDownloadPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "SDCard"

    goto :goto_0

    :cond_2
    const-string p0, "SDCard_Sub"

    :goto_0
    return-object p0
.end method

.method public getDownloadRelativePath()Ljava/lang/String;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_0

    sget-object p0, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->DOWNLOAD_RELATIVE_PATH_DEFAULT:Ljava/lang/String;

    return-object p0

    :cond_0
    const-string v0, "MEMORY_CARD"

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->getDownloadDefaultStorage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "download_relative_path_sdcard"

    sget-object v1, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->DOWNLOAD_RELATIVE_PATH_DEFAULT:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string v0, "download_relative_path"

    sget-object v1, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->DOWNLOAD_RELATIVE_PATH_DEFAULT:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public initializePreferencesValues()V
    .locals 5

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->isIndia()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->mIsCountryIndia:Z

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->isChina()Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "download_show_rename_popup"

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :goto_0
    invoke-virtual {p0, v2, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    const-string v0, "download_default_storyage"

    const-string v2, "PHONE"

    invoke-virtual {p0, v0, v2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->isChina()Z

    move-result v3

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->mIsCountryIndia:Z

    if-eqz v3, :cond_2

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/download/DownloadPathUtils;->getDefaultInternalDownloadPath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "pref_previous_saved_path"

    invoke-virtual {p0, v4, v3}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/common/download/DownloadPathUtils;->isExternalStoragePath(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v0, "MEMORY_CARD"

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->checkWriteMediaStoragePermission()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/GEDUtils;->isGED()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    move-object v0, v2

    :cond_4
    :goto_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;

    move-result-object v3

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_2

    :cond_5
    const/4 v1, 0x2

    :goto_2
    invoke-virtual {v3, v1}, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->setDownloadDefaultStorage(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->checkAndResetDownloadRelativePath()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->isSecretDownloadEnabled()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->updateSecretDownloadEnabledToNative(Z)V

    const-string p0, "Init Pref."

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/common/download/DownloadStaticLog;->addStorageSetLog(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public isAtLeastRos()Z
    .locals 1

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1e

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isAtLeastTos()Z
    .locals 1

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x21

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isDownloadRenamePopupEnabled()Z
    .locals 2

    const-string v0, "download_show_rename_popup"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isSecretDownloadEnabled()Z
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->isSecretDownloadSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "enable_secret_download"

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->mIsCountryIndia:Z

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSecretDownloadPath(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "/data/"

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSecretDownloadSupported()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->mIsCountryIndia:Z

    return p0
.end method

.method public resetIsMediaStoragePermissionGranted()V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->mIsMediaStoragePermissionGranted:Ljava/lang/Boolean;

    return-void
.end method

.method public resetSecretDownload()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/common/download/DeleteSecretDownloadsAsyncTask;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/common/download/DeleteSecretDownloadsAsyncTask;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public setDownloadDefaultStorage(I)V
    .locals 6

    const-string v0, "DownloadSettings"

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->mSecretModeEnabled:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->isSecretDownloadEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    const-string v5, "mounted"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->getSDCardPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    if-nez v1, :cond_1

    move v3, v2

    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/common/download/DownloadPathUtils;->checkMyFilesAvailable(Landroid/content/Context;)Z

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->isChina()Z

    const-string v4, "download_default_storyage"

    const-string v5, "pref_previous_saved_path"

    if-eq p1, v2, :cond_3

    if-eqz v3, :cond_3

    const-string p1, "MEMORY_CARD"

    invoke-virtual {p0, v4, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/download/DownloadPathUtils;->getDefaultExternalDownloadPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/download/DownloadPathUtils;->getReadablePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->getAbsoluteRelativePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v5, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_2
    const/4 p1, 0x0

    goto :goto_4

    :cond_3
    const-string p1, "PHONE"

    invoke-virtual {p0, v4, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/sec/android/app/sbrowser/common/download/DownloadPathUtils;->getDeviceExternalStorage(ZLandroid/content/Context;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p1, "Security exception canonicalization of file path failed"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    const-string p1, "canonicalization of file path failed"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const-string p1, "/"

    invoke-static {v1, p1}, Lt/b;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->getAbsoluteRelativePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/GEDUtils;->isGED()Z

    move-result v2

    if-nez v2, :cond_7

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->mIsCountryIndia:Z

    if-nez v2, :cond_4

    goto :goto_3

    :cond_4
    if-nez v3, :cond_5

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p0, v5, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/download/DownloadPathUtils;->isValidDownloadPath(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_2

    :cond_6
    move-object p1, v0

    :goto_2
    invoke-virtual {p0, v5, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_7
    :goto_3
    invoke-virtual {p0, v5, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistString(Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, v0

    :goto_4
    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/TerraceHelper;->isInitialized()Z

    move-result p0

    if-eqz p0, :cond_8

    invoke-static {p1}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->setDownloadDefaultStorage(Ljava/lang/String;)V

    :cond_8
    return-void
.end method

.method public setDownloadRelativePath(Ljava/lang/String;)Z
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->getDownloadRelativePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/download/DownloadPathUtils;->trimPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/download/DownloadPathUtils;->trimPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const-string v0, "MEMORY_CARD"

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->getDownloadDefaultStorage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "download_relative_path_sdcard"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "download_relative_path"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_3
    return v1
.end method

.method public setEnabledSecretDownload(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->updateSecretDownloadEnabledToNative(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->resetDownloadPathToUserPreference()V

    return-void
.end method

.method public setSecretModeEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->mSecretModeEnabled:Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->resetDownloadPathToUserPreference()V

    return-void
.end method

.method public shouldShowSecretDownloadSettingTip()Z
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->isSecretDownloadSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "secret_download_tip_card"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
