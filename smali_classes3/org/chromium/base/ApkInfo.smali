.class public final Lorg/chromium/base/ApkInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/base/ApkInfo$Natives;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final CREATION_LOCK:Ljava/lang/Object;

.field private static sBrowserPackageInfo:Landroid/content/pm/PackageInfo;

.field private static sInitialized:Z

.field private static volatile sInstance:Lorg/chromium/base/ApkInfo;


# instance fields
.field private final mBrowserApplicationInfo:Landroid/content/pm/ApplicationInfo;

.field private final mHostPackageLabel:Ljava/lang/String;

.field private final mHostPackageName:Ljava/lang/String;

.field private final mHostVersionCode:J

.field private final mInstallerPackageName:Ljava/lang/String;

.field private final mPackageName:Ljava/lang/String;

.field private final mResourcesVersion:Ljava/lang/String;

.field private final mVersionName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/chromium/base/ApkInfo;->CREATION_LOCK:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    sput-boolean v0, Lorg/chromium/base/ApkInfo;->sInitialized:Z

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-static {}, Lorg/chromium/base/CommandLine;->isInitialized()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    invoke-static {}, Lorg/chromium/base/CommandLine;->getInstance()Lorg/chromium/base/CommandLine;

    move-result-object v4

    const-string v6, "host-package-name"

    invoke-virtual {v4, v6}, Lorg/chromium/base/CommandLine;->getSwitchValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "host-package-label"

    invoke-virtual {v4, v7}, Lorg/chromium/base/CommandLine;->getSwitchValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "package-name"

    invoke-virtual {v4, v8}, Lorg/chromium/base/CommandLine;->getSwitchValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "package-version-name"

    invoke-virtual {v4, v9}, Lorg/chromium/base/CommandLine;->getSwitchValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "host-version-code"

    invoke-virtual {v4, v10}, Lorg/chromium/base/CommandLine;->getSwitchValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v5

    goto :goto_0

    :cond_1
    move-object v4, v5

    move-object v6, v4

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    :goto_0
    const/4 v10, 0x0

    if-eqz v6, :cond_2

    if-eqz v7, :cond_2

    if-eqz v4, :cond_2

    if-eqz v8, :cond_2

    if-eqz v9, :cond_2

    goto :goto_1

    :cond_2
    move v0, v10

    :goto_1
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v0, :cond_3

    invoke-static {v6}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/chromium/base/ApkInfo;->mHostPackageName:Ljava/lang/String;

    invoke-static {v7}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/chromium/base/ApkInfo;->mHostPackageLabel:Ljava/lang/String;

    invoke-static {v4}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, p0, Lorg/chromium/base/ApkInfo;->mHostVersionCode:J

    invoke-static {v9}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/chromium/base/ApkInfo;->mVersionName:Ljava/lang/String;

    invoke-static {v8}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/chromium/base/ApkInfo;->mPackageName:Ljava/lang/String;

    goto/16 :goto_4

    :cond_3
    invoke-static {}, Lorg/chromium/base/ContextUtils;->isSdkSandboxProcess()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    add-int/lit16 v0, v0, -0x2710

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    array-length v4, v0

    if-lez v4, :cond_4

    aget-object v0, v0, v10

    const-string v4, ":"

    invoke-static {v2, v4, v0}, Lt/b;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_4
    move-object v0, v2

    move-object v4, v0

    :goto_2
    iput-object v4, p0, Lorg/chromium/base/ApkInfo;->mHostPackageName:Ljava/lang/String;

    invoke-virtual {v3, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Lorg/chromium/base/ApkInfo;->nullToEmpty(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/chromium/base/ApkInfo;->mHostPackageLabel:Ljava/lang/String;

    sget-object v4, Lorg/chromium/base/ApkInfo;->sBrowserPackageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v4, :cond_5

    invoke-static {v0, v10}, Lorg/chromium/base/PackageUtils;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    invoke-static {v1}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    invoke-static {v1}, Lorg/chromium/base/PackageUtils;->packageVersionCode(Landroid/content/pm/PackageInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lorg/chromium/base/ApkInfo;->mHostVersionCode:J

    sget-object v1, Lorg/chromium/base/ApkInfo;->sBrowserPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v2, p0, Lorg/chromium/base/ApkInfo;->mPackageName:Ljava/lang/String;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {v1}, Lorg/chromium/base/ApkInfo;->nullToEmpty(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/chromium/base/ApkInfo;->mVersionName:Ljava/lang/String;

    sget-object v1, Lorg/chromium/base/ApkInfo;->sBrowserPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    sput-object v5, Lorg/chromium/base/ApkInfo;->sBrowserPackageInfo:Landroid/content/pm/PackageInfo;

    :goto_3
    move-object v2, v0

    goto :goto_4

    :cond_5
    iput-object v2, p0, Lorg/chromium/base/ApkInfo;->mPackageName:Ljava/lang/String;

    sget-wide v4, Lorg/chromium/build/BuildConfig;->VERSION_CODE:J

    iput-wide v4, p0, Lorg/chromium/base/ApkInfo;->mHostVersionCode:J

    sget-boolean v2, Lorg/chromium/build/SamsungBuildConfig;->SAMSUNG_INTERNET_ANDROID_FEATURES:Z

    if-eqz v2, :cond_6

    invoke-static {v0, v10}, Lorg/chromium/base/PackageUtils;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    invoke-static {v2}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {v2}, Lorg/chromium/base/ApkInfo;->nullToEmpty(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/chromium/base/ApkInfo;->mVersionName:Ljava/lang/String;

    goto :goto_3

    :cond_6
    invoke-static {}, Lorg/chromium/base/version_info/VersionInfo;->getProductVersion()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/chromium/base/ApkInfo;->mVersionName:Ljava/lang/String;

    goto :goto_3

    :goto_4
    iput-object v1, p0, Lorg/chromium/base/ApkInfo;->mBrowserApplicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/base/ApkInfo;->nullToEmpty(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/base/ApkInfo;->mInstallerPackageName:Ljava/lang/String;

    sget v0, Lorg/chromium/build/BuildConfig;->R_STRING_PRODUCT_VERSION:I

    if-eqz v0, :cond_7

    :try_start_0
    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lorg/chromium/build/BuildConfig;->R_STRING_PRODUCT_VERSION:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    const-string v0, "Not found"

    goto :goto_5

    :cond_7
    const-string v0, "Not Enabled"

    :goto_5
    iput-object v0, p0, Lorg/chromium/base/ApkInfo;->mResourcesVersion:Ljava/lang/String;

    return-void
.end method

.method public static getHostPackageLabel()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lorg/chromium/base/ApkInfo;->getInstance()Lorg/chromium/base/ApkInfo;

    move-result-object v0

    iget-object v0, v0, Lorg/chromium/base/ApkInfo;->mHostPackageLabel:Ljava/lang/String;

    return-object v0
.end method

.method public static getHostPackageName()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lorg/chromium/base/ApkInfo;->getInstance()Lorg/chromium/base/ApkInfo;

    move-result-object v0

    iget-object v0, v0, Lorg/chromium/base/ApkInfo;->mHostPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public static getHostVersionCode()J
    .locals 2

    invoke-static {}, Lorg/chromium/base/ApkInfo;->getInstance()Lorg/chromium/base/ApkInfo;

    move-result-object v0

    iget-wide v0, v0, Lorg/chromium/base/ApkInfo;->mHostVersionCode:J

    return-wide v0
.end method

.method public static getInstallerPackageName()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lorg/chromium/base/ApkInfo;->getInstance()Lorg/chromium/base/ApkInfo;

    move-result-object v0

    iget-object v0, v0, Lorg/chromium/base/ApkInfo;->mInstallerPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance()Lorg/chromium/base/ApkInfo;
    .locals 2

    sget-boolean v0, Lorg/chromium/build/BuildConfig;->IS_FOR_TEST:Z

    if-eqz v0, :cond_0

    new-instance v0, Lorg/chromium/base/ApkInfo;

    invoke-direct {v0}, Lorg/chromium/base/ApkInfo;-><init>()V

    return-object v0

    :cond_0
    sget-object v0, Lorg/chromium/base/ApkInfo;->sInstance:Lorg/chromium/base/ApkInfo;

    if-nez v0, :cond_2

    sget-object v0, Lorg/chromium/base/ApkInfo;->CREATION_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/chromium/base/ApkInfo;->sInstance:Lorg/chromium/base/ApkInfo;

    if-nez v1, :cond_1

    new-instance v1, Lorg/chromium/base/ApkInfo;

    invoke-direct {v1}, Lorg/chromium/base/ApkInfo;-><init>()V

    sput-object v1, Lorg/chromium/base/ApkInfo;->sInstance:Lorg/chromium/base/ApkInfo;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :goto_2
    sget-object v0, Lorg/chromium/base/ApkInfo;->sInstance:Lorg/chromium/base/ApkInfo;

    return-object v0
.end method

.method public static getPackageName()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lorg/chromium/base/ApkInfo;->getInstance()Lorg/chromium/base/ApkInfo;

    move-result-object v0

    iget-object v0, v0, Lorg/chromium/base/ApkInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public static getPackageVersionName()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lorg/chromium/base/ApkInfo;->getInstance()Lorg/chromium/base/ApkInfo;

    move-result-object v0

    iget-object v0, v0, Lorg/chromium/base/ApkInfo;->mVersionName:Ljava/lang/String;

    return-object v0
.end method

.method public static getResourcesVersion()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lorg/chromium/base/ApkInfo;->getInstance()Lorg/chromium/base/ApkInfo;

    move-result-object v0

    iget-object v0, v0, Lorg/chromium/base/ApkInfo;->mResourcesVersion:Ljava/lang/String;

    return-object v0
.end method

.method public static isDebugApp()Z
    .locals 1

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static nativeReadyForFields()V
    .locals 13
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-static {}, Lorg/chromium/base/ApkInfo;->getInstance()Lorg/chromium/base/ApkInfo;

    move-result-object v0

    invoke-static {}, Lorg/chromium/base/ApkInfoJni;->get()Lorg/chromium/base/ApkInfo$Natives;

    move-result-object v1

    iget-object v2, v0, Lorg/chromium/base/ApkInfo;->mHostPackageName:Ljava/lang/String;

    iget-wide v3, v0, Lorg/chromium/base/ApkInfo;->mHostVersionCode:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lorg/chromium/base/ApkInfo;->mHostPackageLabel:Ljava/lang/String;

    sget-wide v5, Lorg/chromium/build/BuildConfig;->VERSION_CODE:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lorg/chromium/base/ApkInfo;->mVersionName:Ljava/lang/String;

    iget-object v7, v0, Lorg/chromium/base/ApkInfo;->mPackageName:Ljava/lang/String;

    iget-object v8, v0, Lorg/chromium/base/ApkInfo;->mResourcesVersion:Ljava/lang/String;

    iget-object v9, v0, Lorg/chromium/base/ApkInfo;->mInstallerPackageName:Ljava/lang/String;

    invoke-static {}, Lorg/chromium/base/ApkInfo;->isDebugApp()Z

    move-result v10

    invoke-static {}, Lorg/chromium/base/ApkInfo;->targetsAtLeastU()Z

    move-result v11

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v12, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-interface/range {v1 .. v12}, Lorg/chromium/base/ApkInfo$Natives;->fillFields(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZI)V

    return-void
.end method

.method private static nullToEmpty(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static targetsAtLeastU()Z
    .locals 2

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public getBrowserApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .locals 0

    iget-object p0, p0, Lorg/chromium/base/ApkInfo;->mBrowserApplicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object p0
.end method
