.class public Lorg/chromium/base/BuildInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/base/BuildInfo$Holder;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field public final abiString:Ljava/lang/String;

.field public final androidBuildFingerprint:Ljava/lang/String;

.field public final hostPackageLabel:Ljava/lang/String;

.field public final hostPackageName:Ljava/lang/String;

.field public final hostVersionCode:J

.field public final installerPackageName:Ljava/lang/String;

.field public final isAutomotive:Z

.field public final isDesktop:Z

.field public final isFoldable:Z

.field public final isTV:Z

.field private final mCertLock:Ljava/lang/Object;

.field private mHostSigningCertSha256:Ljava/lang/String;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
    .end annotation
.end field

.field public final packageName:Ljava/lang/String;

.field public final resourcesVersion:Ljava/lang/String;

.field public final versionCode:J

.field public final versionName:Ljava/lang/String;

.field public final vulkanDeqpLevel:I


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-wide v0, Lorg/chromium/build/BuildConfig;->VERSION_CODE:J

    iput-wide v0, p0, Lorg/chromium/base/BuildInfo;->versionCode:J

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/chromium/base/BuildInfo;->mCertLock:Ljava/lang/Object;

    invoke-static {}, Lorg/chromium/base/ApkInfo;->getHostPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/base/BuildInfo;->hostPackageName:Ljava/lang/String;

    invoke-static {}, Lorg/chromium/base/ApkInfo;->getHostPackageLabel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/base/BuildInfo;->hostPackageLabel:Ljava/lang/String;

    invoke-static {}, Lorg/chromium/base/ApkInfo;->getHostVersionCode()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/base/BuildInfo;->hostVersionCode:J

    invoke-static {}, Lorg/chromium/base/ApkInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/base/BuildInfo;->packageName:Ljava/lang/String;

    invoke-static {}, Lorg/chromium/base/ApkInfo;->getPackageVersionName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/base/BuildInfo;->versionName:Ljava/lang/String;

    invoke-static {}, Lorg/chromium/base/ApkInfo;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/base/BuildInfo;->installerPackageName:Ljava/lang/String;

    invoke-static {}, Lorg/chromium/base/AndroidInfo;->getAndroidSupportedAbis()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/base/BuildInfo;->abiString:Ljava/lang/String;

    invoke-static {}, Lorg/chromium/base/AndroidInfo;->getAndroidBuildFingerprint()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/base/BuildInfo;->androidBuildFingerprint:Ljava/lang/String;

    invoke-static {}, Lorg/chromium/base/ApkInfo;->getResourcesVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/base/BuildInfo;->resourcesVersion:Ljava/lang/String;

    invoke-static {}, Lorg/chromium/base/DeviceInfo;->isTV()Z

    move-result v0

    iput-boolean v0, p0, Lorg/chromium/base/BuildInfo;->isTV:Z

    invoke-static {}, Lorg/chromium/base/DeviceInfo;->isAutomotive()Z

    move-result v0

    iput-boolean v0, p0, Lorg/chromium/base/BuildInfo;->isAutomotive:Z

    invoke-static {}, Lorg/chromium/base/DeviceInfo;->isFoldable()Z

    move-result v0

    iput-boolean v0, p0, Lorg/chromium/base/BuildInfo;->isFoldable:Z

    invoke-static {}, Lorg/chromium/base/DeviceInfo;->isDesktop()Z

    move-result v0

    iput-boolean v0, p0, Lorg/chromium/base/BuildInfo;->isDesktop:Z

    invoke-static {}, Lorg/chromium/base/DeviceInfo;->getVulkanDeqpLevel()I

    move-result v0

    iput v0, p0, Lorg/chromium/base/BuildInfo;->vulkanDeqpLevel:I

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/base/BuildInfo;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/chromium/base/BuildInfo;
    .locals 1

    sget-boolean v0, Lorg/chromium/build/BuildConfig;->IS_FOR_TEST:Z

    if-eqz v0, :cond_0

    new-instance v0, Lorg/chromium/base/BuildInfo;

    invoke-direct {v0}, Lorg/chromium/base/BuildInfo;-><init>()V

    return-object v0

    :cond_0
    invoke-static {}, Lorg/chromium/base/BuildInfo$Holder;->a()Lorg/chromium/base/BuildInfo;

    move-result-object v0

    return-object v0
.end method

.method private getPackageInfoFlags()I
    .locals 0

    const/high16 p0, 0x8000000

    return p0
.end method

.method private getPackageSignatures(Landroid/content/pm/PackageInfo;)[Landroid/content/pm/Signature;
    .locals 0

    iget-object p0, p1, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/content/pm/SigningInfo;->getSigningCertificateHistory()[Landroid/content/pm/Signature;

    move-result-object p0

    return-object p0
.end method

.method public static isDebugAndroid()Z
    .locals 1

    invoke-static {}, Lorg/chromium/base/AndroidInfo;->isDebugAndroid()Z

    move-result v0

    return v0
.end method

.method private static lazyGetHostSigningCertSha256()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-static {}, Lorg/chromium/base/BuildInfo;->getInstance()Lorg/chromium/base/BuildInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/base/BuildInfo;->getHostSigningCertSha256()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static packageVersionCode(Landroid/content/pm/PackageInfo;)J
    .locals 2

    invoke-virtual {p0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v0

    return-wide v0
.end method

.method public static targetsAtLeastT()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x21

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

    invoke-static {}, Lorg/chromium/base/ApkInfo;->getInstance()Lorg/chromium/base/ApkInfo;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/base/ApkInfo;->getBrowserApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    return-object p0
.end method

.method public getHostSigningCertSha256()Ljava/lang/String;
    .locals 5
    .annotation build Lorg/chromium/build/annotations/NullUnmarked;
    .end annotation

    iget-object v0, p0, Lorg/chromium/base/BuildInfo;->mCertLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/chromium/base/BuildInfo;->mHostSigningCertSha256:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v1, ""

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lorg/chromium/base/BuildInfo;->getPackageInfoFlags()I

    move-result v3

    invoke-static {v2, v3}, Lorg/chromium/base/PackageUtils;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/chromium/base/BuildInfo;->getPackageSignatures(Landroid/content/pm/PackageInfo;)[Landroid/content/pm/Signature;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    :try_start_1
    const-string v3, "SHA-256"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    aget-object v2, v2, v4

    invoke-virtual {v2}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    invoke-static {v2}, Lorg/chromium/base/PackageUtils;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_2
    const-string v3, "BuildInfo"

    const-string v4, "Unable to hash host app signature"

    invoke-static {v3, v4, v2}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    iput-object v1, p0, Lorg/chromium/base/BuildInfo;->mHostSigningCertSha256:Ljava/lang/String;

    :cond_1
    iget-object p0, p0, Lorg/chromium/base/BuildInfo;->mHostSigningCertSha256:Ljava/lang/String;

    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
