.class public Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroVersionUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static getDebugFullVersion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroVersionUtils;->getRegionCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "off"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroVersionUtils;->getMajorVersionCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroVersionUtils;->getMinorVersionCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_1
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getLatestPpVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getDebugHelpIntroRegionCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getDebugHelpIntroPpMajorVersion()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getDebugHelpIntroPpMinorVersion()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroVersionUtils;->getPpVersionFallback()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->getInstance()Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;

    move-result-object v4

    const-string v5, "HelpIntro"

    const-string v6, "helpIntroVersionPp"

    invoke-virtual {v4, v5, p0, v6, v3}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->getString(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v4, "off"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, v3}, Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroVersionUtils;->isVersionLatest(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v3, p0

    :cond_1
    return-object v3

    :cond_2
    :goto_0
    invoke-static {p0, v1, v2}, Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroVersionUtils;->getDebugFullVersion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "[Legal] PP debug version: "

    const-string v1, "HelpIntroVersionUtils"

    invoke-static {v0, p0, v1}, LV0/c;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static getLatestTosVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getDebugHelpIntroRegionCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getDebugHelpIntroTosMajorVersion()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getDebugHelpIntroTosMinorVersion()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroVersionUtils;->getTosVersionFallback()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->getInstance()Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;

    move-result-object v4

    const-string v5, "HelpIntro"

    const-string v6, "helpIntroVersionTos"

    invoke-virtual {v4, v5, p0, v6, v3}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->getString(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v4, "off"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, v3}, Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroVersionUtils;->isVersionLatest(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v3, p0

    :cond_1
    return-object v3

    :cond_2
    :goto_0
    invoke-static {p0, v1, v2}, Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroVersionUtils;->getDebugFullVersion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "[Legal] TOS debug version: "

    const-string v1, "HelpIntroVersionUtils"

    invoke-static {v0, p0, v1}, LV0/c;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static getMajorVersionCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getMinorVersionCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getPpVersionFallback()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->isUsa()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "3.2.3"

    return-object v0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->isGDPR()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "2.2.2"

    return-object v0

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->isKorea()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "4.4.1"

    return-object v0

    :cond_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->isIndia()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "6.2.3"

    return-object v0

    :cond_3
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->isChina()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "5.3.4"

    return-object v0

    :cond_4
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->isBrazil()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "7.3.2"

    return-object v0

    :cond_5
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->isTurkey()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "8.3.2"

    return-object v0

    :cond_6
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->isLatinAmerica()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "9.3.2"

    return-object v0

    :cond_7
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->isVietnam()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "10.2.3"

    return-object v0

    :cond_8
    const-string v0, "1.2.2"

    return-object v0
.end method

.method public static getRegionCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getDebugHelpIntroRegionCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private static getTosVersionFallback()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->isUsa()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "2.2.0"

    return-object v0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->isKorea()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "3.2.0"

    return-object v0

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->isChina()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "4.3.0"

    return-object v0

    :cond_2
    const-string v0, "1.2.0"

    return-object v0
.end method

.method private static isVersionLatest(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroVersionUtils;->verifyVersionFormat(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroVersionUtils;->getMajorVersionCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroVersionUtils;->getMajorVersionCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-le v0, v2, :cond_1

    return v3

    :cond_1
    if-ge v0, v2, :cond_2

    return v1

    :cond_2
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroVersionUtils;->getMinorVersionCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroVersionUtils;->getMinorVersionCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-ge p0, p1, :cond_3

    return v1

    :cond_3
    return v3

    :catch_0
    const-string p0, "HelpIntroVersionUtils"

    const-string p1, "[Legal] version format from global config is wrong, format error"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private static verifyVersionFormat(Ljava/lang/String;)Z
    .locals 4

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "HelpIntroVersionUtils"

    if-eqz v0, :cond_0

    const-string p0, "[Legal] version from global config is empty"

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const-string v0, "."

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/utils/decoder/StringUtils;->countMatches(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const-string p0, "[Legal] version format from global config is wrong, dot error"

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    :try_start_0
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroVersionUtils;->getRegionCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroVersionUtils;->getMajorVersionCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroVersionUtils;->getMinorVersionCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const-string p0, "[Legal] version format from global config is wrong, format error"

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method
