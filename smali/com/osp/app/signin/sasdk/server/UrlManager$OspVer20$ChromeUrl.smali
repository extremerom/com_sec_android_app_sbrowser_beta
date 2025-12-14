.class public Lcom/osp/app/signin/sasdk/server/UrlManager$OspVer20$ChromeUrl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/osp/app/signin/sasdk/server/UrlManager$OspVer20;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChromeUrl"
.end annotation


# static fields
.field private static final PARAMETER_AND:Ljava/lang/String; = "&"

.field private static final PARAMETER_EQUAL:Ljava/lang/String; = "="

.field private static final PARAMETER_QUESTION:Ljava/lang/String; = "?"

.field private static final SHA256:Ljava/lang/String; = "S256"


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "ChromeUrl class can not be instantiated"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getUrlEncoded(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "UrlManager"

    const-string v2, ""

    if-eqz v0, :cond_0

    const-string p0, "origin text is null or empty"

    invoke-static {v1, p0}, Lcom/osp/app/signin/sasdk/common/SDKLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_0
    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "UnsupportedEncodingException occurred : "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/osp/app/signin/sasdk/common/SDKLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v2
.end method

.method public static getUrlForCommonServiceType(Landroid/content/Context;Landroid/os/Bundle;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "&mode="

    const-string v1, "&svcParam="

    const-string v2, "?locale="

    invoke-static {p0, p1, p2, p3}, Lcom/osp/app/signin/sasdk/server/UrlManager$OspVer20$ChromeUrl;->makeSvcParamVO(Landroid/content/Context;Landroid/os/Bundle;ILjava/lang/String;)Lcom/osp/app/signin/sasdk/server/SvcParamVO;

    move-result-object p0

    :try_start_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/osp/app/signin/sasdk/common/Util;->getLocale()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/osp/app/signin/sasdk/server/UrlManager$OspVer20$ChromeUrl;->getUrlEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/osp/app/signin/sasdk/common/MetaManager;->getInstance()Lcom/osp/app/signin/sasdk/common/MetaManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/osp/app/signin/sasdk/common/MetaManager;->getEntryPointResponseData()Lcom/osp/app/signin/sasdk/response/EntryPointResponseData;

    move-result-object p3

    invoke-virtual {p3}, Lcom/osp/app/signin/sasdk/response/EntryPointResponseData;->getPbeKySpcIters()Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p3}, Lcom/osp/app/signin/sasdk/common/Encryption;->encrypt(Lcom/osp/app/signin/sasdk/server/SvcParamVO;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Lcom/osp/app/signin/sasdk/server/UrlManager$OspVer20$ChromeUrl;->getUrlEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "UrlManager"

    const-string p3, "Exception occurred during getUrlForSignUp"

    invoke-static {p1, p3, p0}, Lcom/osp/app/signin/sasdk/common/SDKLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p0, ""

    :goto_0
    invoke-static {}, Lcom/osp/app/signin/sasdk/common/MetaManager;->getInstance()Lcom/osp/app/signin/sasdk/common/MetaManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/osp/app/signin/sasdk/common/MetaManager;->getEntryPointApiBaseUrl(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/osp/app/signin/sasdk/server/UrlManager$OspVer20;->access$000(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getUrlForConnectedServicesList(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "client_id"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "access_token"

    invoke-virtual {p0, v2, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/mobile/myprofile/settings/direct/connectedService.do?serviceID="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/osp/app/signin/sasdk/server/UrlManager$OspVer20$ChromeUrl;->getUrlEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&tokenValue="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/osp/app/signin/sasdk/server/UrlManager$OspVer20$ChromeUrl;->getUrlEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&languageCode="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/osp/app/signin/sasdk/server/UrlManager$OspVer20$ChromeUrl;->getUrlEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&countryCode="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/osp/app/signin/sasdk/server/UrlManager$OspVer20$ChromeUrl;->getUrlEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&mode="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/osp/app/signin/sasdk/server/UrlManager$OspVer20$ChromeUrl;->getUrlEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Request URL path : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "UrlManager"

    invoke-static {p2, p1}, Lcom/osp/app/signin/sasdk/common/SDKLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x70

    invoke-static {p1}, Lcom/osp/app/signin/sasdk/server/UrlManager$OspVer20$Auth2;->getBaseUrlForAPI(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/osp/app/signin/sasdk/server/UrlManager$OspVer20;->access$000(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getUrlForRequestWebLinking(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/accounts/oauth/disclaimer?clientId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/osp/app/signin/sasdk/server/UrlManager$OspVer20$ChromeUrl;->getUrlEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&serviceId="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/osp/app/signin/sasdk/server/UrlManager$OspVer20$ChromeUrl;->getUrlEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&disclaimerYNFlag="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/osp/app/signin/sasdk/server/UrlManager$OspVer20$ChromeUrl;->getUrlEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&state="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/osp/app/signin/sasdk/server/UrlManager$OspVer20$ChromeUrl;->getUrlEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&returnType="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Lcom/osp/app/signin/sasdk/server/UrlManager$OspVer20$ChromeUrl;->getUrlEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&auth_server_url="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p5}, Lcom/osp/app/signin/sasdk/server/UrlManager$OspVer20$ChromeUrl;->getUrlWithoutProtocol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/osp/app/signin/sasdk/server/UrlManager$OspVer20$ChromeUrl;->getUrlEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&linkingCode="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p6}, Lcom/osp/app/signin/sasdk/server/UrlManager$OspVer20$ChromeUrl;->getUrlEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&mode="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p7}, Lcom/osp/app/signin/sasdk/server/UrlManager$OspVer20$ChromeUrl;->getUrlEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Request URL path : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "UrlManager"

    invoke-static {p2, p1}, Lcom/osp/app/signin/sasdk/common/SDKLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x6e

    invoke-static {p1}, Lcom/osp/app/signin/sasdk/server/UrlManager$OspVer20$Auth2;->getBaseUrlForAPI(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/osp/app/signin/sasdk/server/UrlManager$OspVer20;->access$000(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getUrlWithoutProtocol(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const-string v0, "https://"

    const-string v1, "http://"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_2

    aget-object v2, v0, v1

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    aget-object p0, p0, v0

    return-object p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method private static makeSvcParamVO(Landroid/content/Context;Landroid/os/Bundle;ILjava/lang/String;)Lcom/osp/app/signin/sasdk/server/SvcParamVO;
    .locals 4

    new-instance v0, Lcom/osp/app/signin/sasdk/server/SvcParamVO;

    invoke-direct {v0}, Lcom/osp/app/signin/sasdk/server/SvcParamVO;-><init>()V

    invoke-static {p0}, Lcom/osp/app/signin/sasdk/common/Util;->getCountryCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/osp/app/signin/sasdk/server/SvcParamVO;->setCountryCode(Ljava/lang/String;)V

    const-string v1, "client_id"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/osp/app/signin/sasdk/server/SvcParamVO;->setClientId(Ljava/lang/String;)V

    const-string v1, "redirect_uri"

    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/osp/app/signin/sasdk/server/SvcParamVO;->setRedirectUri(Ljava/lang/String;)V

    const-string v1, "state"

    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/osp/app/signin/sasdk/server/SvcParamVO;->setState(Ljava/lang/String;)V

    const-string v1, "Y"

    invoke-virtual {v0, v1}, Lcom/osp/app/signin/sasdk/server/SvcParamVO;->setResponseEncryptionYNFlag(Ljava/lang/String;)V

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/osp/app/signin/sasdk/server/SvcParamVO;->setResponseEncryptionType(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/osp/app/signin/sasdk/common/Util;->getManufacturer()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "|"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/osp/app/signin/sasdk/server/SvcParamVO;->setDeviceInfo(Ljava/lang/String;)V

    const/16 p3, 0x69

    if-ne p2, p3, :cond_0

    const-string v1, "device_name"

    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/osp/app/signin/sasdk/server/SvcParamVO;->setDeviceName(Ljava/lang/String;)V

    :cond_0
    const/16 v1, 0x67

    const/16 v3, 0x68

    if-eq p2, v1, :cond_1

    if-eq p2, v3, :cond_1

    if-ne p2, p3, :cond_5

    :cond_1
    const-string v1, "replaceable_client_id"

    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/osp/app/signin/sasdk/server/SvcParamVO;->setReplaceableClientId(Ljava/lang/String;)V

    const-string v1, "replaceable_device_physical_address_text"

    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/osp/app/signin/sasdk/server/SvcParamVO;->setReplaceableDevicePhysicalAddressText(Ljava/lang/String;)V

    const-string v1, "scope"

    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/osp/app/signin/sasdk/server/SvcParamVO;->setScope(Ljava/lang/String;)V

    const-string v1, "APP"

    invoke-virtual {v0, v1}, Lcom/osp/app/signin/sasdk/server/SvcParamVO;->setDeviceType(Ljava/lang/String;)V

    invoke-static {}, Lcom/osp/app/signin/sasdk/common/Util;->getBuildModel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/osp/app/signin/sasdk/server/SvcParamVO;->setDeviceModelID(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/osp/app/signin/sasdk/common/Util;->getAndroidID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/osp/app/signin/sasdk/server/SvcParamVO;->setDeviceUniqueID(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/osp/app/signin/sasdk/common/Util;->getDevicePhysicalAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/osp/app/signin/sasdk/server/SvcParamVO;->setDevicePhysicalAddressText(Ljava/lang/String;)V

    invoke-static {}, Lcom/osp/app/signin/sasdk/common/Util;->getDeviceOSVersion()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/osp/app/signin/sasdk/server/SvcParamVO;->setDeviceOSVersion(Ljava/lang/String;)V

    invoke-static {}, Lcom/osp/app/signin/sasdk/common/Util;->isCompetitorDevice()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/osp/app/signin/sasdk/server/SvcParamVO;->setCompetitorDeviceYNFlag(Ljava/lang/String;)V

    const-string p0, "code_verifier"

    invoke-virtual {p1, p0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/osp/app/signin/sasdk/common/Encryption;->generateCodeChallenge(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/osp/app/signin/sasdk/server/SvcParamVO;->setCodeChallenge(Ljava/lang/String;)V

    const-string p0, "S256"

    invoke-virtual {v0, p0}, Lcom/osp/app/signin/sasdk/server/SvcParamVO;->setCodeChallengeMethod(Ljava/lang/String;)V

    const-string p0, "ipt_login_id"

    if-eq p2, v3, :cond_4

    if-eq p2, p3, :cond_2

    goto :goto_0

    :cond_2
    const-string p2, "replaceable_client_connect_yn"

    invoke-virtual {p1, p2, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_3

    const-string p2, "N"

    :cond_3
    invoke-virtual {p1, p0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/osp/app/signin/sasdk/server/SvcParamVO;->setSvcIptLgnID(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/osp/app/signin/sasdk/server/SvcParamVO;->setReplaceableClientConnectYN(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1, p0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/osp/app/signin/sasdk/server/SvcParamVO;->setSvcIptLgnID(Ljava/lang/String;)V

    const-string p0, "birth_date"

    invoke-virtual {p1, p0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/osp/app/signin/sasdk/server/SvcParamVO;->setBirthDate(Ljava/lang/String;)V

    const-string p0, "first_name"

    invoke-virtual {p1, p0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/osp/app/signin/sasdk/server/SvcParamVO;->setFirstName(Ljava/lang/String;)V

    const-string p0, "last_name"

    invoke-virtual {p1, p0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/osp/app/signin/sasdk/server/SvcParamVO;->setLastName(Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-object v0
.end method
