.class public Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TSS2_OPEN_LIKE_LIST:[Ljava/lang/String;

.field private static volatile sCheckedIfRequestPinShortcutSupported:Z

.field private static sDisplayDesktopWebSite:Ljava/lang/Boolean;

.field private static sEnableSALogging:Z

.field private static volatile sIsBlackberry:Ljava/lang/Boolean;

.field private static sIsHideStatusBarSupported:Ljava/lang/Boolean;

.field private static volatile sIsRequestPinShortcutSupported:Z

.field private static sIsSyncInternalizationActivated:Ljava/lang/Boolean;

.field private static sIsSystemSupportNightTheme:Ljava/lang/Boolean;

.field private static sKnoxWarrantyBlown:Z

.field private static final sLock:Ljava/lang/Object;

.field private static final sLockForSystemSupportNightTheme:Ljava/lang/Object;

.field public static sSdpSupportedState:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->sLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->sLockForSystemSupportNightTheme:Ljava/lang/Object;

    const-string v0, "ro.boot.warranty_bit"

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->sKnoxWarrantyBlown:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->sIsSyncInternalizationActivated:Ljava/lang/Boolean;

    const/4 v1, 0x1

    sput-boolean v1, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->sEnableSALogging:Z

    sput-object v0, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->sIsHideStatusBarSupported:Ljava/lang/Boolean;

    sput-object v0, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->sDisplayDesktopWebSite:Ljava/lang/Boolean;

    const-string v1, "DO2"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->TSS2_OPEN_LIKE_LIST:[Ljava/lang/String;

    sput-object v0, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->sIsBlackberry:Ljava/lang/Boolean;

    return-void
.end method

.method public static amountOfPhysicalMemoryMB()I
    .locals 8

    const-string v0, "si__DeviceSettings"

    const-string v1, "^MemTotal:\\s+([0-9]+) kB$"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v2

    :try_start_0
    new-instance v3, Ljava/io/FileReader;

    const-string v4, "/proc/meminfo"

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :goto_0
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    const-string v1, "/proc/meminfo lacks a MemTotal entry?"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_3

    :cond_0
    invoke-virtual {v1, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v5, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/16 v7, 0x400

    if-gt v6, v7, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid /proc/meminfo total size in kB: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {v3}, Ljava/io/Reader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_2
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto :goto_8

    :catchall_1
    move-exception v0

    goto :goto_9

    :catch_0
    move-exception v1

    goto :goto_7

    :catchall_2
    move-exception v1

    goto :goto_5

    :cond_2
    :try_start_5
    div-int/2addr v6, v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    invoke-virtual {v3}, Ljava/io/Reader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return v6

    :goto_3
    :try_start_8
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception v4

    :try_start_9
    invoke-virtual {v1, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :goto_5
    :try_start_a
    invoke-virtual {v3}, Ljava/io/Reader;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    goto :goto_6

    :catchall_4
    move-exception v3

    :try_start_b
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6
    throw v1
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :goto_7
    :try_start_c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot get total physical size from /proc/meminfo"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto :goto_2

    :goto_8
    const/4 v0, 0x0

    return v0

    :goto_9
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v0
.end method

.method public static checkEMTokenEnabled(Landroid/content/Context;)Z
    .locals 2

    new-instance v0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;

    invoke-direct {v0, p0}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->isConnected()Z

    move-result p0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return v1

    :cond_0
    const/16 p0, 0x31

    invoke-virtual {v0, p0}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->getStatus(I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    move v1, v0

    :cond_1
    return v1
.end method

.method public static convertStringForJpnIfNeeded(I)I
    .locals 5

    const/16 v0, 0x8

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    new-array v2, v0, [I

    fill-array-data v2, :array_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isReplaceSecBrandAsGalaxy()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    aget v4, v1, v3

    if-ne v4, p0, :cond_0

    aget p0, v2, v3

    return p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return p0

    :array_0
    .array-data 4
        0x7f140814
        0x7f140f85
        0x7f140da4
        0x7f140f83
        0x7f140815
        0x7f140819
        0x7f141041
        0x7f140509
    .end array-data

    :array_1
    .array-data 4
        0x7f140817
        0x7f140f86
        0x7f140dab
        0x7f140f84
        0x7f140816
        0x7f14081a
        0x7f141042
        0x7f14050b
    .end array-data
.end method

.method public static getAppName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isReplaceSecBrandAsGalaxy()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f1400d3

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/AppInfo;->isBetaApk()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f1400d0

    goto :goto_0

    :cond_1
    const v0, 0x7f1400cf

    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAppNameId()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/AppInfo;->isBetaApk()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isReplaceSecBrandAsGalaxy()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f1400d1

    goto :goto_0

    :cond_0
    const v0, 0x7f1400d0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isReplaceSecBrandAsGalaxy()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f1400d3

    goto :goto_0

    :cond_2
    const v0, 0x7f1400cf

    :goto_0
    return v0
.end method

.method public static getDefaultValueForDisplayDesktopWebSite(Landroid/content/Context;)Z
    .locals 4

    sget-object v0, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->sDisplayDesktopWebSite:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->getPhysicalDefaultDisplayInches(Landroid/content/Context;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    cmpl-double p0, v0, v2

    if-ltz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->sDisplayDesktopWebSite:Ljava/lang/Boolean;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "getDefaultValueForDisplayDesktopWebSite: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->sDisplayDesktopWebSite:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "si__DeviceSettings"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->sDisplayDesktopWebSite:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static getDisplayCutoutMode(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v1, "config_mainBuiltInDisplayCutout"

    const-string v2, "string"

    const-string v3, "android"

    invoke-virtual {p0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_1

    const/4 v0, 0x1

    goto :goto_2

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can not update hasDisplayCutout. "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "si__DeviceSettings"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_2
    return v0
.end method

.method public static getEnablePWA(Landroid/content/Context;)Z
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettingsManager;->isPWASupported()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isAddShortCutToHomeScreenAvailable(Landroid/content/Context;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettingsManager;->setPWASupported(Ljava/lang/Boolean;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettingsManager;->isPWASupported()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static getEnableSALogging()Z
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/GEDUtils;->isGED()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SBrowserFeatures;->isSurveyModeEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-boolean v0, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->sEnableSALogging:Z

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private static getPhysicalDefaultDisplayInches(Landroid/content/Context;)D
    .locals 7

    const-string v0, "display"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/DisplayManager;

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget p0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float p0, p0

    iget v1, v0, Landroid/util/DisplayMetrics;->xdpi:F

    div-float/2addr p0, v1

    float-to-double v1, p0

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    iget p0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float p0, p0

    iget v0, v0, Landroid/util/DisplayMetrics;->ydpi:F

    div-float/2addr p0, v0

    float-to-double v5, p0

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    add-double/2addr v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static getPhysicalScreenInches(Landroid/content/Context;)D
    .locals 7

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v1, "window"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget p0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float p0, p0

    iget v1, v0, Landroid/util/DisplayMetrics;->xdpi:F

    div-float/2addr p0, v1

    float-to-double v1, p0

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    iget p0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float p0, p0

    iget v0, v0, Landroid/util/DisplayMetrics;->ydpi:F

    div-float/2addr p0, v0

    float-to-double v5, p0

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    add-double/2addr v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static getTss2CustomerFile()Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/Tss2Customer.xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getVersionName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, ""

    return-object p0
.end method

.method public static isAddShortCutToHomeScreenAvailable(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isAddShortCutToHomeScreenAvailable(Landroid/content/Context;Z)Z

    move-result p0

    return p0
.end method

.method public static isAddShortCutToHomeScreenAvailable(Landroid/content/Context;Z)Z
    .locals 6

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/KnoxModeUtils;->isKnoxMode(Landroid/content/Context;)Z

    move-result v0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/KnoxModeUtils;->isAndroidForWorkMode(Landroid/content/Context;)Z

    move-result v1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemSettings;->isEasyModeForSystemWindow()Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "isKnoxMode = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "si__DeviceSettings"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "isAFW = "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "isEasyMode = "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/NetDeviceUtils;->isNetworkAvailable()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    if-nez v0, :cond_1

    if-nez v1, :cond_1

    if-nez v2, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemSettings;->isEmergencyMode()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemSettings;->isUltraPowerSavingMode()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isAddToHomeIntentSupported(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isAddToHomeIntentSupported(Landroid/content/Context;)Z
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    sget-boolean v0, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->sIsRequestPinShortcutSupported:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x20

    invoke-virtual {p0, v0, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    xor-int/2addr p0, v1

    const-string v0, "isAddToHomeSupported = "

    const-string v1, "si__DeviceSettings"

    invoke-static {v0, v1, p0}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    return p0
.end method

.method public static isAppPinned(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    invoke-virtual {p0}, Landroid/app/ActivityManager;->getLockTaskModeState()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isAssistantMenuMode()Z
    .locals 4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    :try_start_0
    sget-object v2, Lcom/sec/sbrowser/spl/wrapper/MajoSettings$System;->ASSISTANT_MENU:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    invoke-virtual {v2}, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;->get()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v1

    :cond_1
    invoke-virtual {v2}, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;->get()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    move v1, v2

    :cond_2
    return v1

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "si__DeviceSettings"

    invoke-static {v0, v2, v3}, Landroidx/recyclerview/widget/P;->s(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return v1
.end method

.method public static isAttSubsidiary()Z
    .locals 2

    const-string v0, "ATT"

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemProperties;->getCscSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "AIO"

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemProperties;->getCscSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "APP"

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemProperties;->getCscSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static declared-synchronized isBlackberry()Z
    .locals 3

    const-class v0, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->sIsBlackberry:Ljava/lang/Boolean;

    if-nez v1, :cond_1

    const-string v1, "ro.product.manufacturer"

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/device/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "blackberry"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->sIsBlackberry:Ljava/lang/Boolean;

    :cond_1
    sget-object v1, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->sIsBlackberry:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static isBluetoothAudioDeviceConnected()Z
    .locals 6

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    invoke-virtual {v4}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static isBrowserInFreeFormWindowMode(Landroid/app/Activity;)Z
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInFreeFormWindowMode()Z

    move-result p0

    return p0
.end method

.method public static isChm()Z
    .locals 2

    const-string v0, "CHM"

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemProperties;->getCscSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isColorPaletteEnabled(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "wallpapertheme_state"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    move v0, v1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "wallpapertheme_state : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "isColorPaletteEnabled : "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "si__DeviceSettings"

    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static isCtc()Z
    .locals 2

    const-string v0, "CTC"

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemProperties;->getCscSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isCutOutDisplayModel(Landroid/content/Context;)Z
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SBrowserFeatures;->isCutOutDisplaySupported()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->getDisplayCutoutMode(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isDcm()Z
    .locals 2

    const-string v0, "DCM"

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemProperties;->getCscSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isDexLiveConnected()Z
    .locals 4

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "dexonpc_connection_state"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "dexonpc_connection_state : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "isDexLiveConnected : "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "si__DeviceSettings"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static isDigitalLegacyMode(Landroid/content/Context;)Z
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x23

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    const-string v0, "user"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    if-eqz p0, :cond_1

    :try_start_0
    invoke-static {}, Lcom/sec/sbrowser/spl/wrapper/MajoUserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, v0}, Lcom/sec/sbrowser/spl/wrapper/MajoUserManager;->semGetSemUserInfo(Landroid/os/UserManager;I)Lcom/sec/sbrowser/spl/wrapper/SemUserInfo;

    move-result-object p0

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/SemUserInfo;->FLAG_DIGITAL_LEGACY_MODE:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {v0}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/sbrowser/spl/wrapper/SemUserInfo;->hasFlags(I)Z

    move-result p0
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    :cond_1
    return v2
.end method

.method public static isDisasterNetModel()Z
    .locals 2

    const-string v0, "U06"

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemProperties;->getCscSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "K06"

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemProperties;->getCscSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isDsh()Z
    .locals 2

    const-string v0, "DSH"

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemProperties;->getCscSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isEmanualSupported()Z
    .locals 2

    const-string v0, "persist.omc.countryiso_code"

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "ro.csc.countryiso_code"

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v1, "US"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "USA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "CA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "CAN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isEngBinary()Z
    .locals 2

    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isFlipClosed(Landroid/content/Context;)Z
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->emulateFolderDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->isFolderClosed()Z

    move-result p0

    return p0

    :cond_0
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isFolderType(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public static isFoldableDeviceTypeFold()Z
    .locals 3

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ne v0, v1, :cond_0

    const-string v0, "SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_WM_CONTROLS_DISPLAY_SWITCH"

    invoke-static {v0}, Lcom/sec/sbrowser/spl/wrapper/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    return v0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    const-string v0, "SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_FOLDABLE_TYPE_FOLD"

    invoke-static {v0}, Lcom/sec/sbrowser/spl/wrapper/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "exception : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "si__DeviceSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public static isFoldableDeviceTypeMulti()Z
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->isChangeUARefresh()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    :try_start_0
    const-string v0, "SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_MULTI_FOLD"

    invoke-static {v0}, Lcom/sec/sbrowser/spl/wrapper/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "exception : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "si__DeviceSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public static isFoldableStandardViewMode(Landroid/app/Activity;)Z
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isFoldableDeviceTypeFold()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->getSmallestDeviceWidthDp(Landroid/content/Context;)I

    move-result p0

    const/16 v0, 0x258

    if-ge p0, v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isFrontScreen()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isFolderType(Landroid/content/Context;)Z
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->emulateFolderDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 v0, 0x0

    if-nez p0, :cond_1

    return v0

    :cond_1
    :try_start_0
    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/MajoPackageManager;->FEATURE_FOLDER_TYPE:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    invoke-virtual {v1}, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;->get()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    const-string p0, "si__DeviceSettings"

    const-string v1, "FEATURE_FOLDER_TYPE is null"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {v1}, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;->get()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return v0
.end method

.method public static isFrontScreen()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/sbrowser/spl/wrapper/MajoConfiguration;->getDisplayDeviceType(Landroid/content/res/Configuration;)I

    move-result v1

    sget-object v2, Lcom/sec/sbrowser/spl/wrapper/MajoConfiguration;->SEM_DISPLAY_DEVICE_TYPE_SUB:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "exception : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "si__DeviceSettings"

    invoke-static {v1, v2, v3}, Landroidx/recyclerview/widget/P;->C(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return v0
.end method

.method public static isGO()Z
    .locals 2

    sget v0, Lcom/sec/sbrowser/spl/util/PlatformInfo;->SPL_VERSION:I

    const/16 v1, 0x3ec

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isHideCutoutCameraTurnedOn(Landroid/content/Context;)Z
    .locals 2

    const v0, 0xf425d

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/PlatformInfo;->isInGroup(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/sec/sbrowser/spl/wrapper/MajoUserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/sec/sbrowser/spl/wrapper/SemActivityTaskManager;->getCameraCutoutSettings(ILjava/lang/String;)I

    move-result p0

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/SemActivityTaskManager;->CAMERA_CUTOUT_SETTING_HIDE:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {v0}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p0, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v1
.end method

.method public static isHoverScrollEnabled(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/MajoSettings$System;->PEN_HOVERING:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    invoke-virtual {v1}, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;->get()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {v1}, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;->get()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    move v0, v1

    :catch_0
    :cond_0
    return v0
.end method

.method public static isInFreeFormWindowMode()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/sec/sbrowser/spl/wrapper/SemMultiWindowManager;

    invoke-direct {v1}, Lcom/sec/sbrowser/spl/wrapper/SemMultiWindowManager;-><init>()V

    invoke-virtual {v1}, Lcom/sec/sbrowser/spl/wrapper/SemMultiWindowManager;->getMode()I

    move-result v1

    sget-object v2, Lcom/sec/sbrowser/spl/wrapper/SemMultiWindowManager;->MODE_FREEFORM:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "FallbackException : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "si__DeviceSettings"

    invoke-static {v1, v2, v3}, Landroidx/recyclerview/widget/P;->q(Lcom/sec/sbrowser/spl/util/FallbackException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v0
.end method

.method public static isInLockTaskMode(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    invoke-virtual {p0}, Landroid/app/ActivityManager;->getLockTaskModeState()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isInMultiWindowMode(Landroid/app/Activity;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result p0

    return p0
.end method

.method public static isInteractionControlEnabled(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/MajoSettings$System;->ACCESS_CONTROL:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    invoke-virtual {v1}, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;->get()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {v1}, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;->get()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    move v0, v1

    :catch_0
    :cond_0
    return v0
.end method

.method public static isInternetAccountEnabled()Z
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/GEDUtils;->isGED()Z

    move-result v0

    return v0
.end method

.method public static isKnoxWarrantyBlown()Z
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->useKnoxWarrantyBlown()Z

    move-result v0

    const-string v1, "si__DeviceSettings"

    if-eqz v0, :cond_0

    const-string v0, "sKnoxWarrantyBlown: true"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "sKnoxWarrantyBlown: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->sKnoxWarrantyBlown:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->sKnoxWarrantyBlown:Z

    return v0
.end method

.method public static isLDUModel()Z
    .locals 2

    const-string v0, "LDU"

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemProperties;->getCscSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "PAP"

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemProperties;->getCscSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "FOP"

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemProperties;->getCscSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isLowEndDevice(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    const-string v1, "activity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    invoke-virtual {p0}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result p0

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->amountOfPhysicalMemoryMB()I

    move-result p0

    if-lez p0, :cond_1

    const/16 v2, 0x400

    if-gt p0, v2, :cond_1

    move v0, v1

    :cond_1
    return v0

    :cond_2
    const-string p0, "si__DeviceSettings"

    const-string v1, "ApplicationContext is null in ApplicationStatus"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static isPerformanceFeatureTrialEnabled()Z
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->amountOfPhysicalMemoryMB()I

    move-result v0

    if-lez v0, :cond_0

    const/16 v1, 0x1800

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isReplaceSecBrandAsGalaxy()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "CscFeature_Common_ReplaceSecBrandAsGalaxy"

    invoke-static {v1, v0}, Lcom/sec/sbrowser/spl/wrapper/CscFeature;->getEnableStatus(Ljava/lang/String;Z)Z

    move-result v1
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "si__DeviceSettings"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    :goto_0
    const v2, 0xf425f

    invoke-static {v2}, Lcom/sec/sbrowser/spl/util/PlatformInfo;->isInGroup(I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    move v0, v1

    :goto_1
    return v0
.end method

.method public static isRequestPinShortcutSupported(Landroid/content/Context;)Z
    .locals 2

    sget-boolean v0, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->sCheckedIfRequestPinShortcutSupported:Z

    if-nez v0, :cond_2

    sget-object v0, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->sCheckedIfRequestPinShortcutSupported:Z

    if-nez v1, :cond_1

    const-class v1, Landroid/content/pm/ShortcutManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ShortcutManager;

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/pm/ShortcutManager;->isRequestPinShortcutSupported()Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    :goto_0
    sput-boolean p0, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->sIsRequestPinShortcutSupported:Z

    sput-boolean v1, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->sCheckedIfRequestPinShortcutSupported:Z

    :cond_1
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_2
    sget-boolean p0, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->sIsRequestPinShortcutSupported:Z

    return p0
.end method

.method public static isRetailMode()Z
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isLDUModel()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isShopDemo(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isRunningInDexOnPc(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    move-object v1, p0

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "dexonpc_connection_state"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x3

    if-ne p0, v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "dexonpc_connection_state : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "isRunningInDexOnPc : "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "si__DeviceSettings"

    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static isSdpSupported()Z
    .locals 4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isSecureDataSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/KnoxModeUtils;->getKnoxAPILevel()I

    move-result v0

    const-string v2, "si__DeviceSettings"

    if-gtz v0, :cond_1

    const-string v0, "isSdpSupported : false, cause of knox API level"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    sget v0, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->sSdpSupportedState:I

    const/4 v3, 0x1

    if-nez v0, :cond_3

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/sdp/SdpUtil;->getInstance()Lcom/samsung/android/knox/sdp/SdpUtil;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/samsung/android/knox/sdp/SdpUtil;->getInstance()Lcom/samsung/android/knox/sdp/SdpUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/sdp/SdpUtil;->isSdpSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    :goto_0
    sput v0, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->sSdpSupportedState:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v0, "isSdpSupported : false, cause of RuntimeException"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3
    :goto_1
    sget v0, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->sSdpSupportedState:I

    if-ne v0, v3, :cond_4

    move v1, v3

    :cond_4
    return v1
.end method

.method public static isSdpSupportedForWebPayments()Z
    .locals 6

    const-string v0, "isSdpSupportedForWebPayments(): version == "

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isSdpSupported()Z

    move-result v1

    const-string v2, "isSdpSupportedForWebPayments(): isSdpSupported == "

    const-string v3, "si__DeviceSettings"

    invoke-static {v2, v3, v1}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isKnoxWarrantyBlown()Z

    move-result v1

    const-string v4, "isSdpSupportedForWebPayments(): isWarrantyBlown == "

    invoke-static {v4, v3, v1}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v1, :cond_1

    return v2

    :cond_1
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/sdp/internal/SdpTrustedOperations;->getInstance()Lcom/samsung/android/knox/sdp/internal/SdpTrustedOperations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/knox/sdp/internal/SdpTrustedOperations;->getSupportedSDKVersion()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-wide v0, 0x3ff3333333333333L    # 1.2

    cmpl-double v0, v4, v0

    if-ltz v0, :cond_2

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_2

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Unexpected error: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Null pointer encountered: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Unable to format version string to double: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_3
    return v2
.end method

.method private static isSecureDataSupported()Z
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/AppInfo;->isStableApk()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/GEDUtils;->isGED()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isKnoxWarrantyBlown()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const-string v0, "si__DeviceSettings"

    const-string v1, "isSecureDataSupported : false"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public static isSepLite()Z
    .locals 3

    :try_start_0
    const-string v0, "SEC_FLOATING_FEATURE_COMMON_CONFIG_SEP_CATEGORY"

    invoke-static {v0}, Lcom/sec/sbrowser/spl/wrapper/FloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sep_lite_new"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "si__DeviceSettings"

    invoke-static {v0, v1, v2}, Landroidx/recyclerview/widget/P;->q(Lcom/sec/sbrowser/spl/util/FallbackException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isSer()Z
    .locals 2

    const-string v0, "SER"

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemProperties;->getCscSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->isRussia()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->isBelarus()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isShopDemo(Landroid/content/Context;)Z
    .locals 4

    const-string v0, "si__DeviceSettings"

    const-string v1, "isShopDemo: "

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v3, "shopdemo"

    invoke-static {p0, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v3, 0x1

    if-ne p0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "isShopDemo - Exception : "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public static isShowCutoutCameraTurnedOn(Landroid/content/Context;)Z
    .locals 2

    const v0, 0xf425d

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/PlatformInfo;->isInGroup(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/sec/sbrowser/spl/wrapper/MajoUserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/sec/sbrowser/spl/wrapper/SemActivityTaskManager;->getCameraCutoutSettings(ILjava/lang/String;)I

    move-result p0

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/SemActivityTaskManager;->CAMERA_CUTOUT_SETTING_SHOW:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {v0}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p0, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v1
.end method

.method public static isSingleSkuSupport()Z
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemProperties;->isSingleSkuSupport()Z

    move-result v0

    return v0
.end method

.method public static isSkc()Z
    .locals 2

    const-string v0, "SKC"

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemProperties;->getCscSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSmartTipEnabled()Z
    .locals 1

    invoke-static {}, Lcom/sec/sbrowser/spl/wrapper/SplFeature;->supportSmartTip()Z

    move-result v0

    return v0
.end method

.method public static isSprSubsidiary()Z
    .locals 2

    const-string v0, "SPR"

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemProperties;->getCscSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "BST"

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemProperties;->getCscSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "VMU"

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemProperties;->getCscSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "XAS"

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemProperties;->getCscSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isSupportHideStatusBar(Landroid/content/Context;)Z
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->sIsHideStatusBarSupported:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/GEDUtils;->isGED()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isCutOutDisplayModel(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_1

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1e

    if-lt p0, v0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->sIsHideStatusBarSupported:Ljava/lang/Boolean;

    return p0
.end method

.method public static isSyncInternalizationEnabled()Z
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->sIsSyncInternalizationActivated:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/AppInfo;->isBetaApk()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/GEDUtils;->isGED()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isChm()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->sIsSyncInternalizationActivated:Ljava/lang/Boolean;

    return v0
.end method

.method public static isSystemNightTheme(Landroid/content/res/Configuration;)Z
    .locals 1

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x30

    const/16 v0, 0x20

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSystemSupportNightTheme()Z
    .locals 7

    sget-object v0, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->sLockForSystemSupportNightTheme:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->sIsSystemSupportNightTheme:Ljava/lang/Boolean;

    if-nez v1, :cond_6

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    goto :goto_3

    :cond_0
    const v3, 0xf4254

    invoke-static {v3}, Lcom/sec/sbrowser/spl/util/PlatformInfo;->isInGroup(I)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "current_sec_active_themepackage"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "current_theme_support_night_mode"

    sget-object v6, Lcom/sec/sbrowser/spl/wrapper/MajoUserHandle;->SEM_USER_OWNER:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {v6}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v3, v5, v2, v6}, Lcom/sec/sbrowser/spl/wrapper/MajoSettings$System;->semGetIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v4, :cond_2

    move v3, v4

    goto :goto_0

    :cond_2
    move v3, v2

    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    sput-object v3, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->sIsSystemSupportNightTheme:Ljava/lang/Boolean;
    :try_end_1
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    :try_start_2
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "current_theme_support_night_mode"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_3

    move v2, v4

    :cond_3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->sIsSystemSupportNightTheme:Ljava/lang/Boolean;

    goto :goto_2

    :cond_4
    :goto_1
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v1, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->sIsSystemSupportNightTheme:Ljava/lang/Boolean;

    monitor-exit v0

    return v4

    :cond_5
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v1, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->sIsSystemSupportNightTheme:Ljava/lang/Boolean;

    :cond_6
    :goto_2
    sget-object v1, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->sIsSystemSupportNightTheme:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    monitor-exit v0

    return v1

    :goto_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public static isTabASeries()Z
    .locals 2

    const-string v0, "ro.product.name"

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "gta"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isTalkBackEnabled(Landroid/content/Context;)Z
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "enabled_accessibility_services"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    const-string v1, "(?i).*com.samsung.android.app.talkback.TalkBackService.*"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "(?i).*com.google.android.marvin.talkback.TalkBackService.*"

    invoke-virtual {p0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "(?i).*com.samsung.android.marvin.talkback.TalkBackService.*"

    invoke-virtual {p0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    if-nez v1, :cond_0

    if-nez v2, :cond_0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static isTmoSubsidiary()Z
    .locals 2

    const-string v0, "TMB"

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemProperties;->getCscSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "TMK"

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemProperties;->getCscSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isTracfoneSubsidiary()Z
    .locals 2

    const-string v0, "TFN"

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemProperties;->getCscSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "TFO"

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemProperties;->getCscSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "TFA"

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemProperties;->getCscSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "TFV"

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemProperties;->getCscSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isTss2Activated()Z
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->isDebugTss2Activated()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string v0, "si__DeviceSettings"

    const-string v2, "isTss2Activated(): debug mode enabled."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemProperties;->isSingleSkuSupport()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemProperties;->isUnifiedSalesCodeSupport()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemProperties;->isSingleSkuActivated()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isTss2Open()Z
    .locals 5

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemProperties;->getCscSalesCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemProperties;->getActivatedIdCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "salesCode: "

    const-string v3, ", activatedId: "

    const-string v4, "si__DeviceSettings"

    invoke-static {v2, v0, v3, v1, v4}, LB/e;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isTss2OpenLikeSalesCode()Z
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemProperties;->getActivatedIdCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "activatedId: "

    const-string v2, "si__DeviceSettings"

    invoke-static {v1, v0, v2}, LV0/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->TSS2_OPEN_LIKE_LIST:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isUnpackBinary()Z
    .locals 1

    :try_start_0
    const-string v0, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_UNPACK"

    invoke-static {v0}, Lcom/sec/sbrowser/spl/wrapper/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isUserBinary()Z
    .locals 2

    const-string v0, "user"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isUserConsentRequired(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->isAwesomeIntelligenceSupported()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "intelligent_features_info_confirmed"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_1

    move v0, v2

    :cond_1
    return v0

    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "ai_info_confirmed"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_3

    move v0, v2

    :cond_3
    return v0
.end method

.method public static isVersionCodeOOrO_MR1()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static isVzw()Z
    .locals 2

    const-string v0, "VZW"

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemProperties;->getCscSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isWiredHeadSetOn()Z
    .locals 2

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    return v0
.end method

.method public static prepareIsRequestPinShortcutSupported(Landroid/content/Context;)V
    .locals 0
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isRequestPinShortcutSupported(Landroid/content/Context;)Z

    return-void
.end method

.method public static resetDefaultValueForDisplayDesktopWebSite()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->sDisplayDesktopWebSite:Ljava/lang/Boolean;

    return-void
.end method

.method public static setUserConsent(Landroid/content/Context;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->isAwesomeIntelligenceSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "ai_info_confirmed"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public static shouldRequestUpdateForFavicon(Z)Z
    .locals 14

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lw2/F;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/NetDeviceUtils;->isNetworkAvailable()Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "si__DeviceSettings"

    if-nez v1, :cond_0

    const-string p0, "No network available, no need to request update"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v1, "favicon_not_added_updated_time"

    const-string v6, "favicon_updated_time"

    if-eqz p0, :cond_1

    move-object v7, v6

    goto :goto_0

    :cond_1
    move-object v7, v1

    :goto_0
    const-wide/16 v8, -0x1

    invoke-interface {v0, v7, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    cmp-long v7, v10, v8

    const-string v8, "SETTING"

    const-string v9, "MAIN"

    if-eqz v7, :cond_4

    sub-long v10, v4, v10

    const-wide/32 v12, 0x1d4c0

    cmp-long v7, v10, v12

    if-lez v7, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "favicon update requested from "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p0, :cond_3

    move-object v8, v9

    :cond_3
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " interval of :"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_4
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, "favicon time of "

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p0, :cond_5

    move-object v8, v9

    :cond_5
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "updated to ="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-eqz p0, :cond_6

    move-object v1, v6

    :cond_6
    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 p0, 0x1

    return p0
.end method

.method public static shouldUseAlternativeImplementationForSdp()Z
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isSecureDataSupported()Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isSdpSupported()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static shouldUseDarkStatusBar()Z
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettingsManager;->isTablet()Ljava/lang/Boolean;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v2, "XIAOMI"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/GEDUtils;->isGED()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static supportBiometricsWithNonSamsungDevice()Z
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/GEDUtils;->isGED()Z

    move-result v0

    return v0
.end method

.method public static supportFingerprintAuthWithNonSamsungDevice()Z
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/GEDUtils;->isGED()Z

    move-result v0

    return v0
.end method

.method public static supportInDisplayFingerprintSensor()Z
    .locals 3

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    invoke-static {v0}, Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager;->createInstance(Landroid/content/Context;)Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager;->getCharacteristics()Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager$SemCharacteristics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager$SemCharacteristics;->getSensorPosition()I

    move-result v0

    sget-object v2, Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager$SemCharacteristics;->SENSOR_POSITION_IN_DISPLAY:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    const-string v0, "si__DeviceSettings"

    const-string v2, "supportInDisplayFingerprintSensor reflect failed"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v1
.end method

.method public static supportLandscapeIrisPreview()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static supportLargeScreen(Landroid/content/Context;)Z
    .locals 1

    const v0, 0xf4259

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/PlatformInfo;->isInGroup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTabletLayout(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static supportSpen()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_SPEN_VERSION"

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lcom/sec/sbrowser/spl/wrapper/FloatingFeature;->getInteger(Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to get Spen version - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "si__DeviceSettings"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static supportTabSwitchByShortcut(Landroid/content/Context;)Z
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/ActivityUtil;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isTabBarEnabled(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->supportToolbarSwipe(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static supportToolbarSwipe(Landroid/content/Context;)Z
    .locals 2

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode(Landroid/app/Activity;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTabletLayout(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isFoldableDeviceTypeFold()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public static supportsSystemScanner()Z
    .locals 1

    :try_start_0
    const-string v0, "SEC_FLOATING_FEATURE_CAMERA_SUPPORT_QRCODE"

    invoke-static {v0}, Lcom/sec/sbrowser/spl/wrapper/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public static updateSystemSupportNightTheme()V
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->sLockForSystemSupportNightTheme:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->sIsSystemSupportNightTheme:Ljava/lang/Boolean;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static useSemIrisManager()Z
    .locals 1

    const v0, 0xf4257

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/PlatformInfo;->isInGroup(I)Z

    move-result v0

    return v0
.end method
