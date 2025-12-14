.class public Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper$SettingSearchEngineInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SettingSearchEngineInfo"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mName:Ljava/lang/String;

.field public final mSearchEngineData:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper$SettingSearchEngineInfo;->mName:Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper$SettingSearchEngineInfo;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->isChina()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "array"

    const-string v2, "com.sec.android.app.sbrowser.beta"

    invoke-virtual {v0, p2, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper$SettingSearchEngineInfo;->getSearchEngineInfoFromFile(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper$SettingSearchEngineInfo;->mSearchEngineData:[Ljava/lang/String;

    goto :goto_1

    :cond_1
    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper$SettingSearchEngineInfo;->getSearchEngineInfoFromFile(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper$SettingSearchEngineInfo;->mSearchEngineData:[Ljava/lang/String;

    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper$SettingSearchEngineInfo;->mSearchEngineData:[Ljava/lang/String;

    if-eqz v0, :cond_9

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    invoke-static {p2}, Lcom/sec/terrace/base/TerraceApiCompatibilityUtils;->getLocale(Landroid/content/res/Configuration;)Ljava/util/Locale;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const/16 v2, 0x2d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper$SettingSearchEngineInfo;->mSearchEngineData:[Ljava/lang/String;

    aget-object v2, v0, v1

    const-string v3, "{language}"

    invoke-virtual {v2, v3, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper$SettingSearchEngineInfo;->mSearchEngineData:[Ljava/lang/String;

    const/4 v2, 0x5

    aget-object v4, v0, v2

    invoke-virtual {v4, v3, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, v2

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper$SettingSearchEngineInfo;->mSearchEngineData:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object p2, p2, v0

    const-string v3, "bing"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    const/4 v3, -0x1

    if-eqz p2, :cond_3

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper$SettingSearchEngineInfo;->mSearchEngineData:[Ljava/lang/String;

    aget-object v4, v0, v1

    const-string v5, "&PC=SMSM&FORM=MBDPSB"

    invoke-static {p2, v4, v5}, Lt/b;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, v1

    goto :goto_2

    :cond_3
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->isTurkey()Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper$SettingSearchEngineInfo;->mSearchEngineData:[Ljava/lang/String;

    aget-object p2, p2, v0

    const-string v0, "Yandex.com"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper$SettingSearchEngineInfo;->mSearchEngineData:[Ljava/lang/String;

    aget-object p2, p2, v1

    const-string v0, "https://yandex.com/search"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    if-eq p2, v3, :cond_4

    const-string p2, "SettingSearchEngineHelper"

    const-string v4, "Yandex common and TR then adding .tr at domain"

    invoke-static {p2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper$SettingSearchEngineInfo;->mSearchEngineData:[Ljava/lang/String;

    aget-object v4, p2, v1

    const-string v5, "https://yandex.com.tr/search"

    invoke-virtual {v4, v0, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v1

    :cond_4
    :goto_2
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper$SettingSearchEngineInfo;->mSearchEngineData:[Ljava/lang/String;

    aget-object p2, p2, v1

    const-string v0, "{CID}"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    if-eq p2, v3, :cond_5

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper$SettingSearchEngineInfo;->mSearchEngineData:[Ljava/lang/String;

    aget-object v3, p2, v1

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper$SettingSearchEngineInfo;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/common/device/CidUtil;->getClientIdForEarlyAccess(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v1

    :cond_5
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper$SettingSearchEngineInfo;->mSearchEngineData:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object p2, p2, v0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper$SettingSearchEngineInfo;->mSearchEngineData:[Ljava/lang/String;

    const-string v3, "UTF-8"

    aput-object v3, p2, v0

    move-object p2, v3

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper$SettingSearchEngineInfo;->mSearchEngineData:[Ljava/lang/String;

    aget-object v3, v0, v1

    const-string v4, "{inputEncoding}"

    invoke-virtual {v3, v4, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper$SettingSearchEngineInfo;->mSearchEngineData:[Ljava/lang/String;

    aget-object v3, v0, v2

    invoke-virtual {v3, v4, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, v2

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper$SettingSearchEngineInfo;->mSearchEngineData:[Ljava/lang/String;

    aget-object v0, p2, v1

    const-string v3, "{packageName}"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v3, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper$SettingSearchEngineInfo;->mSearchEngineData:[Ljava/lang/String;

    aget-object p1, p0, v2

    invoke-static {}, Lcom/sec/android/app/sbrowser/global_config/RichEntityConfig;->getInstance()Lcom/sec/android/app/sbrowser/global_config/RichEntityConfig;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/global_config/RichEntityConfig;->isRichEntityEnabled()Z

    move-result p2

    if-eqz p2, :cond_7

    const-string p2, "tpsf=sme"

    goto :goto_3

    :cond_7
    const-string p2, "tpsf=smec"

    :goto_3
    const-string v0, "{tpsf}"

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v2

    return-void

    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, " has an empty search URI"

    invoke-static {p2, p1}, Lt/b;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No data found for "

    invoke-static {p1, p2}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper$SettingSearchEngineInfo;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper$SettingSearchEngineInfo;->getSuggestUri()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getSearchEngineInfoFromFile(Ljava/lang/String;)[Ljava/lang/String;
    .locals 12

    const/4 v0, 0x6

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Label"

    aput-object v3, v1, v2

    const/4 v4, 0x1

    const-string v5, ""

    aput-object v5, v1, v4

    const/4 v6, 0x2

    aput-object v5, v1, v6

    const/4 v7, 0x3

    aput-object v5, v1, v7

    const/4 v8, 0x4

    aput-object v5, v1, v8

    const/4 v9, 0x5

    aput-object v5, v1, v9

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper$SettingSearchEngineInfo;->mContext:Landroid/content/Context;

    const-string v10, "search_engines.json"

    invoke-static {v5, v10}, Lcom/sec/android/app/sbrowser/common/device/FileUtil;->isExisted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    const/4 v11, 0x0

    if-eqz v5, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper$SettingSearchEngineInfo;->mContext:Landroid/content/Context;

    invoke-static {p0, v10}, Lcom/sec/android/app/sbrowser/common/device/FileUtil;->read(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v11

    :goto_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string p0, "search_engines/search_engines.json"

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/debug/JsonLoader;->loadJsonFromAsset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const-string v10, "SettingSearchEngineHelper"

    if-eqz v5, :cond_2

    const-string p0, "Cannot read file in downloaded or asset : "

    invoke-static {p0, p1, v10}, LV0/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v11

    :cond_2
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v2

    const-string v5, "Keyword"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    const-string v4, "FaviconURL"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v6

    const-string v4, "SearchURL"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v7

    const-string v4, "Encoding"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v8

    const-string v4, "SuggestURL"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v9
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    goto :goto_1

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "getSearchEngineInfoFromFile: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, v10}, Lcom/sec/android/app/sbrowser/autofill/password/k;->B(Lorg/json/JSONException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    aget-object p0, v1, v2

    invoke-virtual {v3, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "getSearchEngineInfoFromFile: No data is loaded for "

    invoke-static {p0, p1, v10}, Landroidx/recyclerview/widget/P;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v11

    :cond_3
    return-object v1
.end method

.method private getSuggestUri()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper$SettingSearchEngineInfo;->mSearchEngineData:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object p0, p0, v0

    return-object p0
.end method


# virtual methods
.method public getEncoding()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper$SettingSearchEngineInfo;->mSearchEngineData:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object p0, p0, v0

    return-object p0
.end method

.method public getFaviconUri()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper$SettingSearchEngineInfo;->mSearchEngineData:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object p0, p0, v0

    return-object p0
.end method

.method public getKeyword()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper$SettingSearchEngineInfo;->mSearchEngineData:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object p0, p0, v0

    return-object p0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper$SettingSearchEngineInfo;->mSearchEngineData:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper$SettingSearchEngineInfo;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public getSearchUri()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper$SettingSearchEngineInfo;->mSearchEngineData:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object p0, p0, v0

    return-object p0
.end method
