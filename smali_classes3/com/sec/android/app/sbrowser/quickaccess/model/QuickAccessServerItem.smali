.class public Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessServerItem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mApiKeyMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBaseUrlMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRetryCount:I


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessServerItem;->mApiKeyMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessServerItem;->mBaseUrlMap:Ljava/util/HashMap;

    const-string v1, "dev"

    const-string v2, "https://dev-api.samqaicongen.com/QuickAccess/"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessServerItem;->mBaseUrlMap:Ljava/util/HashMap;

    const-string v1, "stage"

    const-string v2, "https://stg-api.samqaicongen.com/QuickAccess/"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessServerItem;->mBaseUrlMap:Ljava/util/HashMap;

    const-string v0, "product"

    const-string v1, "https://secureapi.samqaicongen.com/QuickAccess/"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessServerItem;->lambda$getApiKey$0(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private appendQuery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessServerItem;->generateQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    return-object p1
.end method

.method private appendQueryAllowingEmptyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessServerItem;->generateQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private generateQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "&"

    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    :try_start_0
    const-string p0, "UTF-8"

    invoke-static {p3, p0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "appendQuery: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "QuickAccessServerItem"

    invoke-static {v0, p0}, Lcom/sec/sbrowser/spl/wrapper/MajoLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getCurrentServerBaseUrl()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessServerItem;->mBaseUrlMap:Ljava/util/HashMap;

    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/settings/QuickAccessSettings;->getInstance()Lcom/sec/android/app/sbrowser/quickaccess/settings/QuickAccessSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/settings/QuickAccessSettings;->getCurrentServerProfile()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private static synthetic lambda$getApiKey$0(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "quick_access_api_key.properties"

    invoke-static {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/AssetUtil;->getProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private makeQueryString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isUnpackBinary()Z

    move-result v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->getCountryIsoCode()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    const-string v2, "YOG"

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/SalesCodeUtil;->getSalesCode()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    if-eqz v0, :cond_1

    const-string v0, "SM-UNPACK"

    goto :goto_1

    :cond_1
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    :goto_1
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessQueryParameterUtils;->getPayingClientId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/iuid/IUIDManager;->getInstance()Lcom/sec/android/app/sbrowser/common/utils/iuid/IUIDManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/utils/iuid/IUIDManager;->getIUID()Ljava/lang/String;

    move-result-object v4

    const-string v5, "country"

    invoke-direct {p0, p2, v5, v1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessServerItem;->appendQuery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "operator"

    invoke-direct {p0, p2, v1, v2}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessServerItem;->appendQuery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "sbrowserVersion"

    invoke-direct {p0, p2, v1, v3}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessServerItem;->appendQuery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "model"

    invoke-direct {p0, p2, v1, v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessServerItem;->appendQuery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "clientType"

    invoke-direct {p0, p2, v0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessServerItem;->appendQuery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "iuid"

    invoke-direct {p0, p1, p2, v4}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessServerItem;->appendQuery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/GEDUtils;->isGED()Z

    move-result p2

    const-string v0, "platform"

    if-eqz p2, :cond_2

    const-string p2, "GED"

    invoke-direct {p0, p1, v0, p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessServerItem;->appendQuery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/AppInfo;->isBetaApk()Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, "BETA"

    invoke-direct {p0, p1, v0, p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessServerItem;->appendQuery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_3
    :goto_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p2, "global"

    invoke-direct {p0, p1, v5, p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessServerItem;->appendQuery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_4
    return-object p1
.end method

.method private makeQueryStringForSiteItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "td"

    invoke-direct {p0, p2, v0, p3}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessServerItem;->appendQueryAllowingEmptyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "lo"

    invoke-direct {p0, p2, v0, p3}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessServerItem;->appendQuery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "cc"

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->getCountryIsoCode()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, p3, v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessServerItem;->appendQuery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "oc"

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/SalesCodeUtil;->getSalesCode()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, p3, v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessServerItem;->appendQuery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/GEDUtils;->isGED()Z

    move-result p3

    if-eqz p3, :cond_0

    const-string p3, "ged"

    goto :goto_0

    :cond_0
    const-string p3, "samsung"

    :goto_0
    const-string v0, "ma"

    invoke-direct {p0, p2, v0, p3}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessServerItem;->appendQuery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "mo"

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-direct {p0, p2, p3, v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessServerItem;->appendQuery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    const-string v0, "av"

    invoke-direct {p0, p2, v0, p3}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessServerItem;->appendQuery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/AppInfo;->isBetaApk()Z

    move-result p3

    if-eqz p3, :cond_1

    const-string p3, "beta"

    goto :goto_1

    :cond_1
    const-string p3, "stable"

    :goto_1
    const-string v0, "ir"

    invoke-direct {p0, p2, v0, p3}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessServerItem;->appendQuery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "iv"

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p3, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessServerItem;->appendQuery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "url"

    invoke-direct {p0, p1, p2, p4}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessServerItem;->appendQuery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getApiKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/settings/QuickAccessSettings;->getInstance()Lcom/sec/android/app/sbrowser/quickaccess/settings/QuickAccessSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/settings/QuickAccessSettings;->getCurrentServerProfile()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessServerItem;->mApiKeyMap:Ljava/util/HashMap;

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/model/C;

    invoke-direct {v1, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/C;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getCurrentRetryCount()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessServerItem;->mRetryCount:I

    return p0
.end method

.method public getEndpointForGetCPItems(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, ""

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessServerItem;->makeQueryString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessServerItem;->getCurrentServerBaseUrl()Ljava/lang/String;

    move-result-object p0

    const-string v1, "getCPItems?"

    invoke-static {v0, p0, v1, p1}, LV0/c;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getEndpointForGetItem(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    const-string v1, "id"

    invoke-direct {p0, v0, v1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessServerItem;->appendQuery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessServerItem;->makeQueryString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessServerItem;->getCurrentServerBaseUrl()Ljava/lang/String;

    move-result-object p0

    const-string v0, "getItem?"

    invoke-static {p2, p0, v0, p1}, LV0/c;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getEndpointForSiteItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessServerItem;->makeQueryStringForSiteItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessServerItem;->getCurrentServerBaseUrl()Ljava/lang/String;

    move-result-object p0

    const-string p3, "siteItem?"

    invoke-static {p2, p0, p3, p1}, LV0/c;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public increaseRetryCount()V
    .locals 2

    iget v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessServerItem;->mRetryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessServerItem;->mRetryCount:I

    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/settings/QuickAccessSettings;->getInstance()Lcom/sec/android/app/sbrowser/quickaccess/settings/QuickAccessSettings;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/settings/QuickAccessSettings;->setLastFailedTimeMillis(J)V

    return-void
.end method

.method public isMaxRetryCountReached()Z
    .locals 1

    iget p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessServerItem;->mRetryCount:I

    const/16 v0, 0xa

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public resetRetryCount()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessServerItem;->mRetryCount:I

    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/settings/QuickAccessSettings;->getInstance()Lcom/sec/android/app/sbrowser/quickaccess/settings/QuickAccessSettings;

    move-result-object p0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/settings/QuickAccessSettings;->setLastFailedTimeMillis(J)V

    return-void
.end method
