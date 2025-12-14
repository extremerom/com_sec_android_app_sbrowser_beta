.class Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoClient;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoClient$RequestBackgroundInfoCallback;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoClient;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public fetchBackgroundInfo(Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoClient$RequestBackgroundInfoCallback;)V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoClient;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoClient$1;

    invoke-direct {v1, p0, p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoClient$1;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoClient;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoClient$RequestBackgroundInfoCallback;)V

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;->fetch(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/model/global_config/FetchCallback;)V

    return-void
.end method

.method public getEncodedValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    :try_start_0
    const-string p0, "utf-8"

    invoke-static {p1, p0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "UnsupportedEncodingException while encode value: "

    const-string v0, "QuickAccessBackgroundInfoClient"

    invoke-static {p0, p1, v0}, Landroidx/recyclerview/widget/P;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method

.method public parseQuickAccessBackgroundInfo(Lorg/json/JSONObject;)Lcom/sec/android/app/sbrowser/quickaccess/domain/QuickAccessBackgroundInfo;
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const-string p0, "color"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string p1, "popupBackground"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "popupDivider"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "popupItemTitle"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "homeBackground"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v2, Lcom/sec/android/app/sbrowser/quickaccess/domain/QuickAccessBackgroundInfo;

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0

    invoke-direct {v2, p1, v0, v1, p0}, Lcom/sec/android/app/sbrowser/quickaccess/domain/QuickAccessBackgroundInfo;-><init>(IIII)V

    return-object v2
.end method

.method public requestBackgroundInfo(Ljava/lang/String;ZZLcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoClient$RequestBackgroundInfoCallback;)V
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoRequestParameter;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoRequestParameter;-><init>()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->getInstance()Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoClient;->mContext:Landroid/content/Context;

    const-string v3, "backgroundInfoUrl"

    const-string v4, "QuickAccess"

    invoke-virtual {v1, v4, v2, v3}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->createFetch(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;->setUseETag(Z)Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoRequestParameter;->getAndroidVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoClient;->getEncodedValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "av"

    invoke-virtual {v1, v3, v2}, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoRequestParameter;->getDeviceManufacturer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoClient;->getEncodedValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ma"

    invoke-virtual {v1, v3, v2}, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoRequestParameter;->getInternetRelease()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoClient;->getEncodedValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ir"

    invoke-virtual {v1, v3, v2}, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoRequestParameter;->getInternetVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoClient;->getEncodedValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "iv"

    invoke-virtual {v1, v3, v2}, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoRequestParameter;->getDeviceModel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoClient;->getEncodedValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "mo"

    invoke-virtual {v1, v3, v2}, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoClient;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoRequestParameter;->getDeviceType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoClient;->getEncodedValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "dt"

    invoke-virtual {v1, v3, v2}, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoRequestParameter;->getOperatorCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoClient;->getEncodedValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "oc"

    invoke-virtual {v1, v3, v2}, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoRequestParameter;->getCountryCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoClient;->getEncodedValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "cc"

    invoke-virtual {v1, v3, v2}, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoClient;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoRequestParameter;->getClientType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoClient;->getEncodedValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ct"

    invoke-virtual {v1, v3, v2}, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;

    move-result-object v1

    const-string v2, "fr"

    invoke-virtual {v1, v2, p1}, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoClient;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoRequestParameter;->getHomePageType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoClient;->getEncodedValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "hp"

    invoke-virtual {p1, v1, v0}, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;

    move-result-object p1

    const-string v0, "sm"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;

    move-result-object p1

    const-string p2, "vi"

    invoke-static {p3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;

    move-result-object p1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/iuid/IUIDManager;->getInstance()Lcom/sec/android/app/sbrowser/common/utils/iuid/IUIDManager;

    move-result-object p2

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoClient;->mContext:Landroid/content/Context;

    const-string v0, "quickaccess"

    invoke-virtual {p2, p3, v0}, Lcom/sec/android/app/sbrowser/common/utils/iuid/IUIDManager;->getLegacyFeatureIuid(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "ui"

    invoke-virtual {p1, p3, p2}, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;

    move-result-object p1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/iuid/IUIDManager;->getInstance()Lcom/sec/android/app/sbrowser/common/utils/iuid/IUIDManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/utils/iuid/IUIDManager;->getIUID()Ljava/lang/String;

    move-result-object p2

    const-string p3, "gui"

    invoke-virtual {p1, p3, p2}, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;

    move-result-object p1

    invoke-virtual {p0, p1, p4}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoClient;->fetchBackgroundInfo(Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoClient$RequestBackgroundInfoCallback;)V

    return-void
.end method
