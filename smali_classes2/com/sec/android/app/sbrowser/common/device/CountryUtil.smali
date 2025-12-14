.class public Lcom/sec/android/app/sbrowser/common/device/CountryUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final COUNTRY_RESET_TARGET:[Ljava/lang/String;

.field public static final GDPRCountryIsoList:[Ljava/lang/String;

.field public static final LatinAmericaCountryIsoList:[Ljava/lang/String;

.field private static final NONE_PAYING_CID:[Ljava/lang/String;

.field private static final REVENUE_UNSHARED_COUNTRIES:[Ljava/lang/String;

.field private static sCountryIso:Ljava/lang/String;

.field private static sIsResetCheckDone:Z

.field private static sIsSaveCountryAvailable:Z

.field private static final sLock:Ljava/lang/Object;

.field private static sSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 42

    const-string v30, "NO"

    const-string v31, "CH"

    const-string v0, "GR"

    const-string v1, "NL"

    const-string v2, "DK"

    const-string v3, "DE"

    const-string v4, "LV"

    const-string v5, "RO"

    const-string v6, "LU"

    const-string v7, "LT"

    const-string v8, "MT"

    const-string v9, "BE"

    const-string v10, "BG"

    const-string v11, "SE"

    const-string v12, "ES"

    const-string v13, "SK"

    const-string v14, "SI"

    const-string v15, "IE"

    const-string v16, "EE"

    const-string v17, "AT"

    const-string v18, "IT"

    const-string v19, "CZ"

    const-string v20, "HR"

    const-string v21, "CY"

    const-string v22, "PT"

    const-string v23, "PL"

    const-string v24, "FR"

    const-string v25, "FI"

    const-string v26, "HU"

    const-string v27, "GB"

    const-string v28, "IS"

    const-string v29, "LI"

    filled-new-array/range {v0 .. v31}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->GDPRCountryIsoList:[Ljava/lang/String;

    const-string v40, "UY"

    const-string v41, "VE"

    const-string v1, "AG"

    const-string v2, "AI"

    const-string v3, "AR"

    const-string v4, "AW"

    const-string v5, "BB"

    const-string v6, "BS"

    const-string v7, "BZ"

    const-string v8, "BM"

    const-string v9, "BO"

    const-string v10, "VG"

    const-string v11, "KY"

    const-string v12, "CL"

    const-string v13, "CO"

    const-string v14, "CR"

    const-string v15, "CU"

    const-string v16, "DM"

    const-string v17, "DO"

    const-string v18, "EC"

    const-string v19, "SV"

    const-string v20, "GF"

    const-string v21, "GD"

    const-string v22, "GT"

    const-string v23, "GY"

    const-string v24, "HT"

    const-string v25, "HN"

    const-string v26, "JM"

    const-string v27, "MX"

    const-string v28, "AN"

    const-string v29, "NI"

    const-string v30, "PA"

    const-string v31, "PY"

    const-string v32, "PE"

    const-string v33, "PR"

    const-string v34, "KN"

    const-string v35, "LC"

    const-string v36, "VC"

    const-string v37, "SR"

    const-string v38, "TT"

    const-string v39, "TC"

    filled-new-array/range {v1 .. v41}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->LatinAmericaCountryIsoList:[Ljava/lang/String;

    const-string v0, "RU"

    const-string v1, "CN"

    const-string v2, "KR"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->REVENUE_UNSHARED_COUNTRIES:[Ljava/lang/String;

    const-string v0, "tablet-android-samsung-ss"

    const-string v1, "tablet-ms-android-samsung-ss"

    const-string v2, "ms-android-samsung-ss"

    const-string v3, "ms-ms-android-samsung-ss"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->NONE_PAYING_CID:[Ljava/lang/String;

    const-string v16, "SM-T976"

    const-string v17, "SM-T978"

    const-string v1, "SM-N9810"

    const-string v2, "SM-N981"

    const-string v3, "SM-N985"

    const-string v4, "SM-N986"

    const-string v5, "SM-N9860"

    const-string v6, "SC-53A"

    const-string v7, "SCG06"

    const-string v8, "SM-F916"

    const-string v9, "SM-F9160"

    const-string v10, "SCG05"

    const-string v11, "SM-T870"

    const-string v12, "SM-T875"

    const-string v13, "SM-T878"

    const-string v14, "SM-T970"

    const-string v15, "SM-T975"

    filled-new-array/range {v1 .. v17}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->COUNTRY_RESET_TARGET:[Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->sCountryIso:Ljava/lang/String;

    const/4 v1, 0x0

    sput-boolean v1, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->sIsResetCheckDone:Z

    sput-boolean v1, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->sIsSaveCountryAvailable:Z

    sput-object v0, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->sSharedPreferences:Landroid/content/SharedPreferences;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public static changeCountryIso(Ljava/lang/String;)V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    sput-object p0, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->sCountryIso:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->sCountryIso:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->sCountryIso:Ljava/lang/String;

    :cond_0
    sget-object p0, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->sCountryIso:Ljava/lang/String;

    const-string v0, "Sim Country Iso"

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->saveConfiguration(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static checkRevenueShareAndCID()Z
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/GEDUtils;->isGED()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->sCountryIso:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->isRevenueUnsharedCountry(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->isPayingCID()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->getCscCountryIsoCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->sCountryIso:Ljava/lang/String;

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getCountry3DigitsIso()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->getCountryIso()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->getCountry3DigitsIso(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCountry3DigitsIso(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    new-instance v0, Ljava/util/Locale;

    const-string v1, ""

    invoke-direct {v0, v1, p0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/NetDeviceUtils;->getNetworkCountryCodeISO3()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCountryIso()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->getCountryIsoCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCountryIsoCode()Ljava/lang/String;
    .locals 11

    const-string v0, "LocaleCountryIso: "

    const-string v1, "CscCountryIso: "

    const-string v2, "NetworkCountryIso: "

    const-string v3, "SimCountryIso: "

    const-string v4, "Keep the country of previous version: "

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getFeatureVariationEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getCountryIsoCodeValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v0, "CountryUtil"

    const-string v1, "Use debug CountryIso: "

    invoke-static {v1, v5, v0}, LV0/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v5

    :cond_0
    sget-object v5, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->sLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->resetCountryCodeIfNeeded()V

    sget-object v6, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->sCountryIso:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "pref_preconfigured_country_code"

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->sCountryIso:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->isAppUpdated()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->getCscCountryIsoCode()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->sCountryIso:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    sget-object v6, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->sCountryIso:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->sCountryIso:Ljava/lang/String;

    const-string v6, "CountryUtil"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->sCountryIso:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->sCountryIso:Ljava/lang/String;

    const-string v6, "Csc Country Iso"

    invoke-static {v4, v6}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->saveConfiguration(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_2

    :cond_1
    :goto_0
    sget-object v4, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->sCountryIso:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v0, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->sCountryIso:Ljava/lang/String;

    monitor-exit v5

    return-object v0

    :cond_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->getSimCountryIso()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->getCscCountryIsoCode()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->getLocaleCountryIsoCode()Ljava/lang/String;

    move-result-object v8

    const-string v9, "CountryUtil"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "CountryUtil"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "CountryUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "CountryUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    sput-object v4, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->sCountryIso:Ljava/lang/String;

    const-string v0, "Sim Country Iso"

    goto :goto_1

    :cond_3
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    sput-object v7, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->sCountryIso:Ljava/lang/String;

    const-string v0, "Csc Country Iso"

    goto :goto_1

    :cond_4
    sput-object v8, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->sCountryIso:Ljava/lang/String;

    const-string v0, "Locale Country Iso"

    :goto_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->checkRevenueShareAndCID()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v0, "Csc Country Iso"

    :cond_5
    sget-object v1, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->sCountryIso:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v1, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->sCountryIso:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->sCountryIso:Ljava/lang/String;

    :cond_6
    sget-object v1, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->sCountryIso:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->saveConfiguration(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v5

    return-object v1

    :goto_2
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getCscCountryIsoCode()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemProperties;->getCscCountryIsoCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getLocaleCountryIsoCode()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemProperties;->getCountryCodeintoLocaleForGED()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getNetworkCountryIso()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/NetDeviceUtils;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRegionForReset(Ljava/lang/String;)I
    .locals 1

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->isGDPRCountryIso(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->isUsaCountryIso(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x3

    return p0

    :cond_1
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->isKoreaCountryIso(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x4

    return p0

    :cond_2
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->isChinaCountryIso(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p0, 0x5

    return p0

    :cond_3
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->isIndiaCountryIso(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x6

    return p0

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method private static getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->sSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lw2/F;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->sSharedPreferences:Landroid/content/SharedPreferences;

    :cond_0
    sget-object v0, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->sSharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public static getSimCountryIso()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/NetDeviceUtils;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static isAppUpdated()Z
    .locals 7

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_is_set_country_after_reset"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "CountryUtil"

    if-eqz v0, :cond_0

    const-string v0, "Do not check app updated"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v3, "home_page_type"

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "home_page_index"

    const/4 v5, -0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "PREF_HOMEPAGE_TYPE: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", PREF_HOME_PAGE_INDEX: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eq v3, v5, :cond_2

    :cond_1
    const/4 v2, 0x1

    :cond_2
    return v2
.end method

.method public static isBelarus()Z
    .locals 2

    const-string v0, "BY"

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->getCountryIsoCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isBrazil()Z
    .locals 2

    const-string v0, "BR"

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->getCountryIsoCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isChina()Z
    .locals 2

    const-string v0, "CN"

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->getCountryIsoCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isChinaCountryIso(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "CN"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isContainModelName()Z
    .locals 6

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemProperties;->getModelName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v0, "CountryUtil"

    const-string v1, "There is No model name in ro.product.model"

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    sget-object v1, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->COUNTRY_RESET_TARGET:[Ljava/lang/String;

    array-length v3, v1

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v1, v4

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public static isGDPR()Z
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->getCountryIso()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->isGDPRCountryIso(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static isGDPRCountryIso(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->GDPRCountryIsoList:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isIndia()Z
    .locals 2

    const-string v0, "IN"

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->getCountryIsoCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isIndiaCountryIso(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "IN"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isJapan()Z
    .locals 2

    const-string v0, "JP"

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->getCountryIsoCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isKorea()Z
    .locals 2

    const-string v0, "KR"

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->getCountryIsoCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isKoreaCountryIso(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "KR"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isLatinAmerica()Z
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->getCountryIso()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->isLatinAmericaCountryIso(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static isLatinAmericaCountryIso(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->LatinAmericaCountryIsoList:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isPayingCID()Z
    .locals 4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/CidUtil;->getClientId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isSingleSkuSupport()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/CidUtil;->getClientIdFromSystemProperty(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->NONE_PAYING_CID:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v2, v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "CID: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isPayingCID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CountryUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private static isRevenueUnsharedCountry(Ljava/lang/String;)Z
    .locals 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sget-object v0, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->REVENUE_UNSHARED_COUNTRIES:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Country: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", isRevenueUnsharedCountry: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "CountryUtil"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static isRussia()Z
    .locals 2

    const-string v0, "RU"

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->getCountryIsoCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isTurkey()Z
    .locals 2

    const-string v0, "TR"

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->getCountryIsoCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isUsa()Z
    .locals 2

    const-string v0, "US"

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->getCountryIsoCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isUsaCountryIso(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "US"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isVietnam()Z
    .locals 2

    const-string v0, "VN"

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->getCountryIsoCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static removeHelpIntroVersion()V
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "CountryUtil"

    const-string v1, "Application context is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v1, "global_config_preference"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "pref_global_config_HelpIntro_data_helpIntroVersionTos"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_global_config_HelpIntro_data_helpIntroVersionPp"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    return-void
.end method

.method private static removeHelpIntroVersionIfNeeded()V
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_wrong_network_country_iso"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->sCountryIso:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->getRegionForReset(Ljava/lang/String;)I

    move-result v0

    sget-object v1, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->sCountryIso:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->getRegionForReset(Ljava/lang/String;)I

    move-result v1

    const-string v2, "CountryUtil"

    if-eq v0, v1, :cond_0

    const-string v0, "Init help intro version"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->removeHelpIntroVersion()V

    goto :goto_0

    :cond_0
    const-string v0, "No change due to the same region"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public static reset()V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->sCountryIso:Ljava/lang/String;

    sput-object v0, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->sSharedPreferences:Landroid/content/SharedPreferences;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->sIsSaveCountryAvailable:Z

    return-void
.end method

.method public static resetCountryCodeIfNeeded()V
    .locals 8
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    sget-boolean v0, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->sIsResetCheckDone:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "pref_reset_country_code_done"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    sput-boolean v1, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->sIsResetCheckDone:Z

    return-void

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/GEDUtils;->isGED()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "pref_preconfigured_country_code"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v5, "CountryUtil"

    if-eqz v4, :cond_3

    const-string v0, "First launch"

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v6, "pref_preconfigured_country_code_origin"

    invoke-interface {v4, v6, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "Network Country Iso"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v0, "No network country iso"

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->isContainModelName()Z

    move-result v4

    if-nez v4, :cond_5

    const-string v0, "Not a target"

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->getSimCountryIso()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    const-string v0, "From sim and saved are the same"

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->getCscCountryIsoCode()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v0, "No sim, csc and saved are the same"

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_7
    const-string v4, "Reset"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sput-object v3, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->sCountryIso:Ljava/lang/String;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "pref_wrong_network_country_iso"

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "pref_is_set_country_after_reset"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private static saveConfiguration(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "Save "

    sget-object v1, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->sLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-boolean v2, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->sIsSaveCountryAvailable:Z

    if-nez v2, :cond_0

    const-string p0, "CountryUtil"

    const-string p1, "Do not save country yet!"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    sput-object p0, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->sCountryIso:Ljava/lang/String;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "pref_preconfigured_country_code"

    invoke-interface {v2, v3, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "pref_preconfigured_country_code_origin"

    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v2, "CountryUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->removeHelpIntroVersionIfNeeded()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "pref_country_sa_logging_needed"

    const/4 v0, 0x1

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    monitor-exit v1

    return-void

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static setSaveAvailableForTest()V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->sIsSaveCountryAvailable:Z

    return-void
.end method

.method public static setSaveCountryAvailable()V
    .locals 1

    sget-boolean v0, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->sIsSaveCountryAvailable:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->sIsSaveCountryAvailable:Z

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->getCountryIsoCode()Ljava/lang/String;

    :cond_0
    return-void
.end method
