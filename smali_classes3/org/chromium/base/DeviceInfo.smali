.class public final Lorg/chromium/base/DeviceInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/base/DeviceInfo$Natives;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# static fields
.field private static final CREATION_LOCK:Ljava/lang/Object;

.field private static sGmsVersionCodeForTesting:Ljava/lang/String;

.field private static sInitialized:Z

.field private static sInstance:Lorg/chromium/base/DeviceInfo;
    .annotation build Landroidx/annotation/GuardedBy;
    .end annotation
.end field


# instance fields
.field private mGmsVersionCode:Ljava/lang/String;

.field private final mIsAutomotive:Z

.field private final mIsDesktop:Z

.field private final mIsFoldable:Z

.field private final mIsTv:Z

.field private final mVulkanDeqpLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/chromium/base/DeviceInfo;->CREATION_LOCK:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    sput-boolean v0, Lorg/chromium/base/DeviceInfo;->sInitialized:Z

    const-string v1, "com.google.android.gms"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/chromium/base/PackageUtils;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lorg/chromium/base/DeviceInfo;->packageVersionCode(Landroid/content/pm/PackageInfo;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "gms versionCode not available."

    :goto_0
    iput-object v1, p0, Lorg/chromium/base/DeviceInfo;->mGmsVersionCode:Ljava/lang/String;

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "uimode"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/UiModeManager;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v1

    const/4 v4, 0x4

    if-ne v1, v4, :cond_1

    move v1, v0

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lorg/chromium/base/DeviceInfo;->mIsTv:Z

    :try_start_0
    const-string v1, "android.hardware.type.automotive"

    invoke-virtual {v3, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    const-string v4, "DeviceInfo"

    const-string v5, "Unable to query for Automotive system feature"

    invoke-static {v4, v5, v1}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v1, v2

    :goto_2
    iput-boolean v1, p0, Lorg/chromium/base/DeviceInfo;->mIsAutomotive:Z

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1e

    if-lt v1, v4, :cond_2

    const-string v4, "android.hardware.sensor.hinge_angle"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_3

    :cond_2
    move v0, v2

    :goto_3
    iput-boolean v0, p0, Lorg/chromium/base/DeviceInfo;->mIsFoldable:Z

    const-string v0, "android.hardware.type.pc"

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/chromium/base/DeviceInfo;->mIsDesktop:Z

    const/16 v0, 0x21

    if-lt v1, v0, :cond_4

    invoke-virtual {v3}, Landroid/content/pm/PackageManager;->getSystemAvailableFeatures()[Landroid/content/pm/FeatureInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    array-length v1, v0

    move v3, v2

    :goto_4
    if-ge v3, v1, :cond_4

    aget-object v4, v0, v3

    iget-object v5, v4, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    const-string v6, "android.software.vulkan.deqp.level"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget v2, v4, Landroid/content/pm/FeatureInfo;->version:I

    goto :goto_5

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_4
    :goto_5
    iput v2, p0, Lorg/chromium/base/DeviceInfo;->mVulkanDeqpLevel:I

    return-void
.end method

.method public static getGmsVersionCode()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/chromium/base/DeviceInfo;->sGmsVersionCodeForTesting:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Lorg/chromium/base/DeviceInfo;->getInstance()Lorg/chromium/base/DeviceInfo;

    move-result-object v0

    iget-object v0, v0, Lorg/chromium/base/DeviceInfo;->mGmsVersionCode:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method private static getInstance()Lorg/chromium/base/DeviceInfo;
    .locals 2

    sget-boolean v0, Lorg/chromium/build/BuildConfig;->IS_FOR_TEST:Z

    if-eqz v0, :cond_0

    new-instance v0, Lorg/chromium/base/DeviceInfo;

    invoke-direct {v0}, Lorg/chromium/base/DeviceInfo;-><init>()V

    return-object v0

    :cond_0
    sget-object v0, Lorg/chromium/base/DeviceInfo;->CREATION_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/chromium/base/DeviceInfo;->sInstance:Lorg/chromium/base/DeviceInfo;

    if-nez v1, :cond_1

    new-instance v1, Lorg/chromium/base/DeviceInfo;

    invoke-direct {v1}, Lorg/chromium/base/DeviceInfo;-><init>()V

    sput-object v1, Lorg/chromium/base/DeviceInfo;->sInstance:Lorg/chromium/base/DeviceInfo;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v1, Lorg/chromium/base/DeviceInfo;->sInstance:Lorg/chromium/base/DeviceInfo;

    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getVulkanDeqpLevel()I
    .locals 1

    invoke-static {}, Lorg/chromium/base/DeviceInfo;->getInstance()Lorg/chromium/base/DeviceInfo;

    move-result-object v0

    iget v0, v0, Lorg/chromium/base/DeviceInfo;->mVulkanDeqpLevel:I

    return v0
.end method

.method public static isAutomotive()Z
    .locals 1

    invoke-static {}, Lorg/chromium/base/DeviceInfo;->getInstance()Lorg/chromium/base/DeviceInfo;

    move-result-object v0

    iget-boolean v0, v0, Lorg/chromium/base/DeviceInfo;->mIsAutomotive:Z

    return v0
.end method

.method public static isDesktop()Z
    .locals 1

    invoke-static {}, Lorg/chromium/base/DeviceInfo;->getInstance()Lorg/chromium/base/DeviceInfo;

    move-result-object v0

    iget-boolean v0, v0, Lorg/chromium/base/DeviceInfo;->mIsDesktop:Z

    return v0
.end method

.method public static isFoldable()Z
    .locals 1

    invoke-static {}, Lorg/chromium/base/DeviceInfo;->getInstance()Lorg/chromium/base/DeviceInfo;

    move-result-object v0

    iget-boolean v0, v0, Lorg/chromium/base/DeviceInfo;->mIsFoldable:Z

    return v0
.end method

.method public static isTV()Z
    .locals 1

    invoke-static {}, Lorg/chromium/base/DeviceInfo;->getInstance()Lorg/chromium/base/DeviceInfo;

    move-result-object v0

    iget-boolean v0, v0, Lorg/chromium/base/DeviceInfo;->mIsTv:Z

    return v0
.end method

.method private static nativeReadyForFields()V
    .locals 7
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-static {}, Lorg/chromium/base/DeviceInfoJni;->get()Lorg/chromium/base/DeviceInfo$Natives;

    move-result-object v0

    invoke-static {}, Lorg/chromium/base/DeviceInfo;->getGmsVersionCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lorg/chromium/base/DeviceInfo;->isTV()Z

    move-result v2

    invoke-static {}, Lorg/chromium/base/DeviceInfo;->isAutomotive()Z

    move-result v3

    invoke-static {}, Lorg/chromium/base/DeviceInfo;->isFoldable()Z

    move-result v4

    invoke-static {}, Lorg/chromium/base/DeviceInfo;->isDesktop()Z

    move-result v5

    invoke-static {}, Lorg/chromium/base/DeviceInfo;->getVulkanDeqpLevel()I

    move-result v6

    invoke-interface/range {v0 .. v6}, Lorg/chromium/base/DeviceInfo$Natives;->fillFields(Ljava/lang/String;ZZZZI)V

    return-void
.end method

.method public static packageVersionCode(Landroid/content/pm/PackageInfo;)J
    .locals 2

    invoke-virtual {p0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v0

    return-wide v0
.end method
