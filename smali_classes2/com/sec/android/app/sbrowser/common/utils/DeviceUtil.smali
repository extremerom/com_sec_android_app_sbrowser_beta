.class public Lcom/sec/android/app/sbrowser/common/utils/DeviceUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sIsRecognizeSpeechAvailable:Ljava/lang/Boolean;

.field private static sUniqueDeviceId:Ljava/lang/String;


# direct methods
.method private static a([B)Ljava/lang/String;
    .locals 10

    const/4 v0, 0x2

    aget-byte v0, p0, v0

    const/16 v1, 0xf

    and-int/2addr v0, v1

    const/4 v2, 0x6

    aget-byte v2, p0, v2

    and-int/lit16 v3, v2, 0xff

    add-int/2addr v0, v3

    const/16 v3, 0x8

    aget-byte v3, p0, v3

    and-int/lit16 v4, v3, 0xff

    add-int/2addr v0, v4

    const/16 v4, 0x11

    aget-byte v4, p0, v4

    and-int/lit16 v5, v4, 0xf0

    add-int/2addr v0, v5

    const/16 v5, 0x13

    aget-byte v5, p0, v5

    and-int/lit16 v6, v5, 0xf0

    add-int/2addr v0, v6

    and-int/lit16 v2, v2, 0xff

    const/16 v6, 0x9

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    add-int/2addr v2, v6

    const/16 v6, 0xd

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    add-int/2addr v2, v6

    aget-byte v6, p0, v1

    and-int/lit16 v6, v6, 0xff

    add-int/2addr v2, v6

    const/16 v6, 0x18

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xfe

    add-int/2addr v2, v6

    const/4 v6, 0x5

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xf0

    const/16 v7, 0xa

    aget-byte v8, p0, v7

    and-int/lit16 v8, v8, 0xfe

    add-int/2addr v6, v8

    const/16 v8, 0xb

    aget-byte v8, p0, v8

    and-int/2addr v8, v1

    add-int/2addr v6, v8

    const/16 v8, 0x10

    aget-byte v8, p0, v8

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v6, v8

    and-int/lit16 v4, v4, 0xf0

    add-int/2addr v6, v4

    const/4 v4, 0x0

    aget-byte v4, p0, v4

    and-int/2addr v4, v1

    const/16 v8, 0x12

    aget-byte v8, p0, v8

    and-int/2addr v8, v1

    add-int/2addr v4, v8

    const/16 v8, 0x14

    aget-byte v8, p0, v8

    and-int/2addr v8, v1

    add-int/2addr v4, v8

    const/16 v8, 0x19

    aget-byte v8, p0, v8

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v4, v8

    const/4 v8, 0x3

    aget-byte v8, p0, v8

    and-int/lit16 v9, v8, 0xfe

    add-int/2addr v4, v9

    const/4 v9, 0x1

    aget-byte v9, p0, v9

    and-int/2addr v9, v1

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v9, v8

    const/4 v8, 0x7

    aget-byte v8, p0, v8

    and-int/2addr v8, v1

    add-int/2addr v9, v8

    const/16 v8, 0xc

    aget-byte v8, p0, v8

    and-int/2addr v8, v1

    add-int/2addr v9, v8

    const/16 v8, 0x15

    aget-byte v8, p0, v8

    and-int/2addr v1, v8

    add-int/2addr v9, v1

    const/16 v1, 0xe

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v1, v5

    const/16 v5, 0x17

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v1, v5

    const/16 v5, 0x16

    aget-byte p0, p0, v5

    and-int/lit16 p0, p0, 0xff

    add-int/2addr v1, p0

    and-int/lit16 p0, v3, 0xfe

    add-int/2addr v1, p0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    rem-int/lit8 v0, v0, 0x1a

    add-int/lit8 v0, v0, 0x41

    int-to-char v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    rem-int/lit8 v2, v2, 0x1a

    add-int/lit8 v2, v2, 0x61

    int-to-char v0, v2

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    rem-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x30

    int-to-char v0, v6

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    rem-int/2addr v4, v7

    add-int/lit8 v4, v4, 0x30

    int-to-char v0, v4

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    rem-int/lit8 v9, v9, 0x1a

    add-int/lit8 v9, v9, 0x41

    int-to-char v0, v9

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    rem-int/lit8 v1, v1, 0x1a

    add-int/lit8 v1, v1, 0x61

    int-to-char v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDeviceName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/DeviceUtil;->getSystemDeviceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/AppInfo;->isBetaApk()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, " (Beta)"

    invoke-static {p0, v0}, Lt/b;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static getDeviceUniqueId()Ljava/lang/String;
    .locals 6

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemSettings;->getAndroidId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"

    const/16 v3, 0x1a

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    :goto_0
    if-ge v4, v3, :cond_1

    const/16 v5, 0x3e

    invoke-virtual {v0, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/DeviceUtil;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getIsRecognizeSpeechAvailable()Z
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    sget-object v0, Lcom/sec/android/app/sbrowser/common/utils/DeviceUtil;->sIsRecognizeSpeechAvailable:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private static getSystemDeviceName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_name"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/DeviceUtil;->getTrimmedDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/DeviceUtil;->getTrimmedDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object p0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object p0
.end method

.method public static getTrimmedDeviceName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method public static declared-synchronized getUniqueDeviceId()Ljava/lang/String;
    .locals 6

    const-class v0, Lcom/sec/android/app/sbrowser/common/utils/DeviceUtil;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/sec/android/app/sbrowser/common/utils/DeviceUtil;->sUniqueDeviceId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/sec/android/app/sbrowser/common/utils/DeviceUtil;->sUniqueDeviceId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    :cond_1
    :try_start_2
    const-string v2, "unique_device_id_preferences"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v4, "unique_device_id"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/sec/android/app/sbrowser/common/utils/DeviceUtil;->sUniqueDeviceId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/DeviceUtil;->getDeviceUniqueId()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/sec/android/app/sbrowser/common/utils/DeviceUtil;->sUniqueDeviceId:Ljava/lang/String;

    const-string v2, "unique_device_id_preferences"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "unique_device_id"

    sget-object v3, Lcom/sec/android/app/sbrowser/common/utils/DeviceUtil;->sUniqueDeviceId:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_2
    sget-object v1, Lcom/sec/android/app/sbrowser/common/utils/DeviceUtil;->sUniqueDeviceId:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_0
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public static getUserSerialNumber(Landroid/content/Context;)J
    .locals 2

    const-string v0, "user"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static isAnimationEnabled(Landroid/content/Context;)Z
    .locals 4

    const-string v0, "transition_animation_scale"

    const-string v1, "window_animation_scale"

    const-string v2, "animator_duration_scale"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v2, v1, v3}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static isAnonymousUser()Z
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->isChina()Z

    move-result v0

    return v0
.end method

.method public static isLowMemoryOneUI7Device(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 6

    const-string v0, "DeviceUtil"

    const-string v1, "Low Memory Device: "

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x23

    if-ge v2, v3, :cond_0

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_0
    :try_start_0
    const-string v2, "activity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    new-instance v2, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v2}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    invoke-virtual {p0, v2}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    invoke-static {v2}, LA2/q;->c(Landroid/app/ActivityManager$MemoryInfo;)J

    move-result-wide v2

    const-wide/16 v4, 0x400

    div-long/2addr v2, v4

    const-wide/32 v4, 0x400000

    cmp-long p0, v2, v4

    if-gtz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v1, "Exception getMemoryInfo : "

    invoke-static {p0, v1, v0}, Landroidx/recyclerview/widget/P;->r(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static isRecognizeSpeechAvailable(Landroid/content/Context;)Z
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    sget-object v0, Lcom/sec/android/app/sbrowser/common/utils/DeviceUtil;->sIsRecognizeSpeechAvailable:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_1
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/DeviceUtil;->updateRecognizeSpeechAvailable(Landroid/content/Context;)V

    sget-object p0, Lcom/sec/android/app/sbrowser/common/utils/DeviceUtil;->sIsRecognizeSpeechAvailable:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static isSviEnabled()Z
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->isHoneyVoiceSearchSupported()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->isChina()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/DeviceUtil;->isSviLocaleSupported()Z

    move-result v0

    return v0
.end method

.method private static isSviLocaleSupported()Z
    .locals 7

    const-string v0, "content://com.samsung.android.honeyboard.provider.VoiceLanguageListProvider/is_honeyvoice_locale_supported"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    move v2, v0

    goto :goto_4

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v2, v0

    :goto_1
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "is_honeyvoice_locale_supported"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    goto :goto_2

    :cond_2
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :goto_2
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v1

    :try_start_4
    invoke-virtual {v3, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "isSystemLocaleSupported: exception!!"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "DeviceUtil"

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    const/4 v1, 0x1

    if-ne v2, v1, :cond_3

    move v0, v1

    :cond_3
    return v0
.end method

.method public static isWebPushFeatureEnabled()Z
    .locals 2

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->isChina()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/KnoxModeUtils;->isKnoxMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static setUniqueDeviceId(Ljava/lang/String;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    sput-object p0, Lcom/sec/android/app/sbrowser/common/utils/DeviceUtil;->sUniqueDeviceId:Ljava/lang/String;

    return-void
.end method

.method public static updateRecognizeSpeechAvailable(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    invoke-static {v1}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/DeviceUtil;->isSviEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object p0, Lcom/sec/android/app/sbrowser/common/utils/DeviceUtil;->sIsRecognizeSpeechAvailable:Ljava/lang/Boolean;

    return-void

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->isChina()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object p0, Lcom/sec/android/app/sbrowser/common/utils/DeviceUtil;->sIsRecognizeSpeechAvailable:Ljava/lang/Boolean;

    return-void

    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    if-nez p0, :cond_3

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object p0, Lcom/sec/android/app/sbrowser/common/utils/DeviceUtil;->sIsRecognizeSpeechAvailable:Ljava/lang/Boolean;

    return-void

    :cond_3
    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_4

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object p0, Lcom/sec/android/app/sbrowser/common/utils/DeviceUtil;->sIsRecognizeSpeechAvailable:Ljava/lang/Boolean;

    goto :goto_1

    :cond_4
    const-string p0, "DeviceUtil"

    const-string v0, "RECOGNIZE_SPEECH is not working"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object p0, Lcom/sec/android/app/sbrowser/common/utils/DeviceUtil;->sIsRecognizeSpeechAvailable:Ljava/lang/Boolean;

    :goto_1
    return-void
.end method
