.class public Lcom/sec/android/app/sbrowser/capsule/BixbySBrowserLauncherActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field private mHasClientTaskId:Z

.field private mPathSegments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTaskId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/capsule/BixbySBrowserLauncherActivity;->mPathSegments:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/capsule/BixbySBrowserLauncherActivity;->mHasClientTaskId:Z

    return-void
.end method

.method private createIntentWithTargetTask(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;->getFocusedActivityClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/capsule/BixbySBrowserLauncherActivity;->mHasClientTaskId:Z

    if-eqz v1, :cond_0

    :try_start_0
    iget p0, p0, Lcom/sec/android/app/sbrowser/capsule/BixbySBrowserLauncherActivity;->mTaskId:I

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/sec/sbrowser/spl/wrapper/MajoIntent;->semSetLaunchOverTargetTask(Landroid/content/Intent;IZ)V
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "BixbyLauncherActivity"

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    const/high16 p0, 0x14000000

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "extra_by_capsule"

    const/4 p1, 0x1

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method

.method private getGoogleSearchUriForBixby()Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/capsule/BixbySBrowserLauncherActivity;->isNewClientIdForBixby()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTablet(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "tablet-android-samsung-bixby1"

    goto :goto_0

    :cond_0
    const-string p0, "ms-android-samsung-bixby1"

    goto :goto_0

    :cond_1
    const-string p0, "ms-android-samsung-bixby"

    :goto_0
    const-string v0, "https://www.google.com/search?q={searchTerms}&client={CID}&channel=bixbysearch2"

    const-string v1, "{CID}"

    invoke-virtual {v0, v1, p0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getPathSegments(I)Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/capsule/BixbySBrowserLauncherActivity;->mPathSegments:Ljava/util/List;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "getPathSegments "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BixbyLauncherActivity"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private getSearchUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "BixbyLauncherActivity"

    :try_start_0
    const-string v1, "UTF-8"

    invoke-static {p2, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[getSearch] UnsupportedEncodingException : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string v1, "default"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "[getSearch] locale : "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->isChina()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper;->getCurrentSearchEngine()Ljava/lang/String;

    move-result-object p0

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "[getSearch] currentSearchEngine : "

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper;->getSearchEngineUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/capsule/BixbySBrowserLauncherActivity;->getGoogleSearchUriForBixby()Ljava/lang/String;

    move-result-object p0

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "[getSearch] default engine : "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "{searchTerms}"

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_1
    invoke-static {p1, p2}, Lt/b;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_2
    return-object p0
.end method

.method private handleAccessWebsite(Ljava/lang/String;)V
    .locals 6

    const-string v0, "BixbyLauncherActivity"

    const-string v1, "[handleAccessWebsite]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "?"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v3}, Lcom/sec/android/app/sbrowser/capsule/BixbySBrowserLauncherActivity;->getPathSegments(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lcom/sec/android/app/sbrowser/capsule/BixbySBrowserLauncherActivity;->getPathSegments(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_4

    if-nez v3, :cond_0

    goto :goto_2

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[handleAccessWebsite] url : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isJavascriptSchemeOrInvalidUrl(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isForbiddenUri(Landroid/net/Uri;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isDataUrl(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    const-string v4, "null"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string p1, "default"

    invoke-direct {p0, p1, v3, v2}, Lcom/sec/android/app/sbrowser/capsule/BixbySBrowserLauncherActivity;->getSearchUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_2
    const-string v2, "com.sec.android.app.sbrowser.beta.INTENT_ACCESS_WEBSITE"

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/capsule/BixbySBrowserLauncherActivity;->createIntentWithTargetTask(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "extra_access_url"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const-string p0, "9188"

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLogWithoutScreenID(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v0}, Landroidx/recyclerview/widget/P;->l(Landroid/content/ActivityNotFoundException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_3
    :goto_1
    const-string p0, "shouldIgnoreIntent, return"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_2
    return-void
.end method

.method private handleGoals(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "AccessWebsite"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v0, 0x18

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "SearchKeyword"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v0, 0x17

    goto/16 :goto_0

    :sswitch_2
    const-string v1, "OpenDownloadHistory"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v0, 0x16

    goto/16 :goto_0

    :sswitch_3
    const-string v1, "ShareWebsiteScreen"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v0, 0x15

    goto/16 :goto_0

    :sswitch_4
    const-string v1, "AddToHomescreen"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v0, 0x14

    goto/16 :goto_0

    :sswitch_5
    const-string v1, "OpenQnA"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v0, 0x13

    goto/16 :goto_0

    :sswitch_6
    const-string v1, "OpenBookmark"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v0, 0x12

    goto/16 :goto_0

    :sswitch_7
    const-string v1, "OpenSettings"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v0, 0x11

    goto/16 :goto_0

    :sswitch_8
    const-string v1, "AccessIdentifiedWebsite"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v0, 0x10

    goto/16 :goto_0

    :sswitch_9
    const-string v1, "OpenTabs"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v0, 0xf

    goto/16 :goto_0

    :sswitch_a
    const-string v1, "OpenSavedpages"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v0, 0xe

    goto/16 :goto_0

    :sswitch_b
    const-string v1, "ShareVia"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v0, 0xd

    goto/16 :goto_0

    :sswitch_c
    const-string v1, "SaveWebpage"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v0, 0xc

    goto/16 :goto_0

    :sswitch_d
    const-string v1, "TranslateWebpage"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v0, 0xb

    goto/16 :goto_0

    :sswitch_e
    const-string v1, "AddToQuickaccess"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v0, 0xa

    goto/16 :goto_0

    :sswitch_f
    const-string v1, "SummarizeWebsite"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v0, 0x9

    goto/16 :goto_0

    :sswitch_10
    const-string v1, "CloseCurrentTab"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v0, 0x8

    goto/16 :goto_0

    :sswitch_11
    const-string v1, "AddBookmark"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    goto :goto_0

    :cond_11
    const/4 v0, 0x7

    goto :goto_0

    :sswitch_12
    const-string v1, "TurnOnSecretMode"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    goto :goto_0

    :cond_12
    const/4 v0, 0x6

    goto :goto_0

    :sswitch_13
    const-string v1, "ReloadWebsite"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    goto :goto_0

    :cond_13
    const/4 v0, 0x5

    goto :goto_0

    :sswitch_14
    const-string v1, "EditAddress"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    goto :goto_0

    :cond_14
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_15
    const-string v1, "OpenHistory"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    goto :goto_0

    :cond_15
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_16
    const-string v1, "CloseAllTabs"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    goto :goto_0

    :cond_16
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_17
    const-string v1, "OpenNewTab"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    goto :goto_0

    :cond_17
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_18
    const-string v1, "ReadWebpage"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    goto :goto_0

    :cond_18
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/capsule/BixbySBrowserLauncherActivity;->handleSearchKeyword(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_1
    const-string p1, "com.sec.android.app.sbrowser.beta.INTENT_OPEN_DOWNLOAD_HISTORY"

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/capsule/BixbySBrowserLauncherActivity;->startActivityForBixby(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_2
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/capsule/BixbySBrowserLauncherActivity;->handleSharingScreen()V

    goto/16 :goto_1

    :pswitch_3
    const-string p1, "com.sec.android.app.sbrowser.beta.INTENT_ADD_TO_HOMESCREEN"

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/capsule/BixbySBrowserLauncherActivity;->startActivityForBixby(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_4
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/capsule/BixbySBrowserLauncherActivity;->handleOpenQnA()V

    goto/16 :goto_1

    :pswitch_5
    const-string p1, "com.sec.android.app.sbrowser.beta.INTENT_OPEN_BOOKMARK"

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/capsule/BixbySBrowserLauncherActivity;->startActivityForBixby(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_6
    const-string p1, "com.sec.android.app.sbrowser.beta.INTENT_OPEN_SETTINGS"

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/capsule/BixbySBrowserLauncherActivity;->startActivityForBixby(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_7
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/capsule/BixbySBrowserLauncherActivity;->handleAccessWebsite(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_8
    const-string p1, "com.sec.android.app.sbrowser.beta.INTENT_OPEN_TABS"

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/capsule/BixbySBrowserLauncherActivity;->startActivityForBixby(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_9
    const-string p1, "com.sec.android.app.sbrowser.beta.INTENT_OPEN_SAVEDPAGES"

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/capsule/BixbySBrowserLauncherActivity;->startActivityForBixby(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_a
    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/capsule/BixbySBrowserLauncherActivity;->handleShareVia(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_b
    const-string p1, "com.sec.android.app.sbrowser.beta.INTENT_SAVE_WEBPAGE"

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/capsule/BixbySBrowserLauncherActivity;->startActivityForBixby(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_c
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/capsule/BixbySBrowserLauncherActivity;->handleTranslateWebpage()V

    goto :goto_1

    :pswitch_d
    const-string p1, "com.sec.android.app.sbrowser.beta.INTENT_ADD_TO_QUICKACCESS"

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/capsule/BixbySBrowserLauncherActivity;->startActivityForBixby(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_e
    const-string p1, "com.sec.android.app.sbrowser.beta.INTENT_SUMMARIZE_WEBSITE"

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/capsule/BixbySBrowserLauncherActivity;->startActivityForBixby(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_f
    const-string p1, "com.sec.android.app.sbrowser.beta.INTENT_CLOSE_CURRENT_TAB"

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/capsule/BixbySBrowserLauncherActivity;->startActivityForBixby(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_10
    const-string p1, "com.sec.android.app.sbrowser.beta.INTENT_ADD_BOOKMARK"

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/capsule/BixbySBrowserLauncherActivity;->startActivityForBixby(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_11
    const-string p1, "com.sec.android.app.sbrowser.beta.INTENT_OPEN_TURN_ON_SECRET_MODE"

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/capsule/BixbySBrowserLauncherActivity;->startActivityForBixby(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_12
    const-string p1, "com.sec.android.app.sbrowser.beta.INTENT_RELOAD_WEBSITE"

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/capsule/BixbySBrowserLauncherActivity;->startActivityForBixby(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_13
    const-string p1, "com.sec.android.app.sbrowser.beta.INTENT_EDIT_ADDRESS"

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/capsule/BixbySBrowserLauncherActivity;->startActivityForBixby(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_14
    const-string p1, "com.sec.android.app.sbrowser.beta.INTENT_OPEN_HISTORY"

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/capsule/BixbySBrowserLauncherActivity;->startActivityForBixby(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_15
    const-string p1, "com.sec.android.app.sbrowser.beta.INTENT_CLOSE_ALL_TABS"

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/capsule/BixbySBrowserLauncherActivity;->startActivityForBixby(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_16
    const-string p1, "com.sec.android.app.sbrowser.beta.INTENT_OPEN_NEW_TAB"

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/capsule/BixbySBrowserLauncherActivity;->startActivityForBixby(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_17
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/capsule/BixbySBrowserLauncherActivity;->handleReadAloud()V

    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7fb08ab3 -> :sswitch_18
        -0x7dc0b721 -> :sswitch_17
        -0x7cbfb039 -> :sswitch_16
        -0x7111c936 -> :sswitch_15
        -0x70c19196 -> :sswitch_14
        -0x6688275e -> :sswitch_13
        -0x5f693711 -> :sswitch_12
        -0x5f210729 -> :sswitch_11
        -0x5e4138ac -> :sswitch_10
        -0x584827c6 -> :sswitch_f
        -0x4723f2eb -> :sswitch_e
        -0x3af1252b -> :sswitch_d
        -0x2a73547a -> :sswitch_c
        -0x287a9c31 -> :sswitch_b
        -0x1c868859 -> :sswitch_a
        -0x1a3a02f8 -> :sswitch_9
        -0x12b331a4 -> :sswitch_8
        -0xc614f53 -> :sswitch_7
        0x15a399c0 -> :sswitch_6
        0x17ed92fa -> :sswitch_5
        0x2dea3a07 -> :sswitch_4
        0x412b0b68 -> :sswitch_3
        0x4a784722 -> :sswitch_2
        0x4d8c5301 -> :sswitch_1
        0x6f79da77 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method private handleIntent(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "BixbyLauncherActivity"

    const-string v1, "[handleIntent]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/capsule/BixbySBrowserLauncherActivity;->isAllowedPackage(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/capsule/BixbySBrowserLauncherActivity;->setTaskIds(Landroid/content/Intent;)V

    const-string p1, "android.intent.action.VIEW"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/capsule/BixbySBrowserLauncherActivity;->mPathSegments:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/capsule/BixbySBrowserLauncherActivity;->getPathSegments(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/capsule/BixbySBrowserLauncherActivity;->handleGoals(Ljava/lang/String;Ljava/lang/String;)V

    nop

    :cond_3
    :goto_0
    return-void
.end method

.method private handleOpenQnA()V
    .locals 4

    const-string v0, "[handleOpenQnA]"

    const-string v1, "BixbyLauncherActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/capsule/BixbySBrowserLauncherActivity;->getPathSegments(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/capsule/BixbySBrowserLauncherActivity;->getPathSegments(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_1

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, "[handleOpenQnA] keyword : "

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "default"

    invoke-direct {p0, v1, v0, v2}, Lcom/sec/android/app/sbrowser/capsule/BixbySBrowserLauncherActivity;->getSearchUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/capsule/BixbySBrowserLauncherActivity;->startActivityForSearchKeyword(Ljava/lang/String;)V

    const-string v1, "9182"

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/sbrowser/capsule/BixbySBrowserLauncherActivity;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private handleReadAloud()V
    .locals 6

    const-string v0, "BixbyLauncherActivity"

    const-string v1, "[handleReadAloud]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/capsule/BixbySBrowserLauncherActivity;->getPathSegments(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[handleReadAloud] language : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "undefined"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "com.sec.android.app.sbrowser.beta.INTENT_READ_WEBPAGE"

    if-nez v3, :cond_2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/capsule/BixbyUtils;->getLanguageCodeMap()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v5, "[handleReadAloud] code : "

    invoke-static {v5, v3, v0}, LV0/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lcom/sec/android/app/sbrowser/capsule/BixbySBrowserLauncherActivity;->createIntentWithTargetTask(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    move-object v2, v3

    :goto_0
    const-string v3, "language_code"

    invoke-virtual {v4, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :cond_2
    :goto_2
    invoke-direct {p0, v4}, Lcom/sec/android/app/sbrowser/capsule/BixbySBrowserLauncherActivity;->startActivityForBixby(Ljava/lang/String;)V

    return-void
.end method

.method private handleSearchKeyword(Ljava/lang/String;)V
    .locals 5

    const-string v0, "[handleSearchKeyword]"

    const-string v1, "BixbyLauncherActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/capsule/BixbySBrowserLauncherActivity;->getPathSegments(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/capsule/BixbySBrowserLauncherActivity;->getPathSegments(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v0, :cond_5

    if-nez v3, :cond_0

    goto :goto_3

    :cond_0
    const-string v4, "?"

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v2, "[handleSearchKeyword] keyword : "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "[handleSearchKeyword] engineUrl : "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isJavascriptSchemeOrInvalidUrl(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isFileUrl(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isDataUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_2

    :cond_1
    const-string v1, "///"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, LB/e;->n(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, v0, v3}, Lcom/sec/android/app/sbrowser/capsule/BixbySBrowserLauncherActivity;->getSearchUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "default"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "9180"

    goto :goto_1

    :cond_3
    const-string p1, "9181"

    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/capsule/BixbySBrowserLauncherActivity;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/capsule/BixbySBrowserLauncherActivity;->startActivityForSearchKeyword(Ljava/lang/String;)V

    return-void

    :cond_4
    :goto_2
    const-string p0, "shouldIgnoreIntent, return"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_3
    return-void
.end method

.method private handleShareVia(Ljava/lang/String;)V
    .locals 6

    const-string v0, "BixbyLauncherActivity"

    const-string v1, "[handleShareVia]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1e

    if-ge v2, v3, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/capsule/BixbySBrowserLauncherActivity;->getPathSegments(I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    const-string v3, "ShareWebsiteScreen"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "com.sec.android.app.sbrowser.beta.INTENT_SAVE_SCREEN_TO_NOTE"

    goto :goto_0

    :cond_2
    const-string p1, "com.sec.android.app.sbrowser.beta.INTENT_SHARE_VIA"

    :goto_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/capsule/BixbySBrowserLauncherActivity;->createIntentWithTargetTask(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string v3, "resultType"

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "result_type_success"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x2

    if-eqz v2, :cond_6

    invoke-direct {p0, v4}, Lcom/sec/android/app/sbrowser/capsule/BixbySBrowserLauncherActivity;->getPathSegments(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x3

    invoke-direct {p0, v4}, Lcom/sec/android/app/sbrowser/capsule/BixbySBrowserLauncherActivity;->getPathSegments(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v2, :cond_5

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    const-string v5, "com.sec.android.app.sbrowser.beta.ReceiveWeChatMomentActivity"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/capsule/BixbySBrowserLauncherActivity;->isWeChatAvailable()Z

    move-result v5

    if-nez v5, :cond_4

    const-string v2, "WeChat is not installed or not supported!"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "result_type_fail"

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    :cond_4
    const-string v3, "packageName"

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "activityName"

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    :cond_5
    :goto_1
    return-void

    :cond_6
    invoke-direct {p0, v4}, Lcom/sec/android/app/sbrowser/capsule/BixbySBrowserLauncherActivity;->getPathSegments(I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    return-void

    :cond_7
    const-string v3, "[handleShareVia] select result description : "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const-string p0, "9187"

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLogWithoutScreenID(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v0}, Landroidx/recyclerview/widget/P;->l(Landroid/content/ActivityNotFoundException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method private handleSharingScreen()V
    .locals 5

    const-string v0, "BixbyLauncherActivity"

    const-string v1, "[handleSharingScreen]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "com.sec.android.app.sbrowser.beta.INTENT_SAVE_SCREEN_TO_NOTE"

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/capsule/BixbySBrowserLauncherActivity;->createIntentWithTargetTask(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "resultType"

    const-string v4, "result_type_success"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "packageName"

    const-string v4, "com.samsung.android.app.notes"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "activityName"

    const-string v4, "com.samsung.android.app.notes.memolist.MemoPickerActivity"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const-string p0, "9187"

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLogWithoutScreenID(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v2, v0}, Landroidx/recyclerview/widget/P;->l(Landroid/content/ActivityNotFoundException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private handleTranslateWebpage()V
    .locals 7

    const-string v0, "BixbyLauncherActivity"

    const-string v1, "[handleTranslateWebpage]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/capsule/BixbySBrowserLauncherActivity;->getPathSegments(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[handleTranslateWebpage] language : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "undefined"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "com.sec.android.app.sbrowser.beta.INTENT_TRANSLATE_WEBPAGE"

    if-nez v3, :cond_4

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/capsule/BixbyUtils;->getLanguageCodeMap()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[handleTranslateWebpage] code : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "ptpt"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[handleTranslateWebpage] localeCode : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v5, "pt_pt"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "pt"

    goto :goto_0

    :cond_1
    const-string v3, "ptbr"

    :cond_2
    :goto_0
    invoke-direct {p0, v4}, Lcom/sec/android/app/sbrowser/capsule/BixbySBrowserLauncherActivity;->createIntentWithTargetTask(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_3
    move-object v2, v3

    :goto_1
    const-string v3, "language_code"

    invoke-virtual {v4, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void

    :cond_4
    :goto_3
    invoke-direct {p0, v4}, Lcom/sec/android/app/sbrowser/capsule/BixbySBrowserLauncherActivity;->startActivityForBixby(Ljava/lang/String;)V

    return-void
.end method

.method private isAllowedPackage(Landroid/content/Intent;)Z
    .locals 5

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/GEDUtils;->isGED()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "android.intent.extra.REFERRER"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    const-string v2, "android.intent.extra.REFERRER_NAME"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getReferrer()Landroid/net/Uri;

    move-result-object v4

    if-nez v4, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getReferrer()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p0, :cond_1

    const-string p1, "com.samsung.android.bixby.agent"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const-string p1, "NOT allowed package : "

    const-string v0, "BixbyLauncherActivity"

    invoke-static {p1, p0, v0}, Landroidx/recyclerview/widget/P;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private isNewClientIdForBixby()Z
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemProperties;->getClientBaseMs()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "clientBaseMs : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BixbyLauncherActivity"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "rvo1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "ss"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/CidUtil;->isEEADevice(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v2, 0x1

    :cond_2
    :goto_0
    return v2
.end method

.method private isWeChatAvailable()Z
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/wechat/WeChatHelper;->getInstance()Lcom/sec/android/app/sbrowser/wechat/WeChatHelper;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/wechat/WeChatHelper;->isSupported()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/WeChatUtils;->hasWeChat(Landroid/content/Context;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private sendEventLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    const-string p0, "google"

    invoke-virtual {p2, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "1"

    goto :goto_0

    :cond_0
    const-string p0, "naver"

    invoke-virtual {p2, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "2"

    goto :goto_0

    :cond_1
    const-string p0, "999"

    :goto_0
    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLogWithoutScreenID(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setTaskIds(Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "bixbyClient_taskId"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/capsule/BixbySBrowserLauncherActivity;->mHasClientTaskId:Z

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/capsule/BixbySBrowserLauncherActivity;->mTaskId:I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "taskId : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/sec/android/app/sbrowser/capsule/BixbySBrowserLauncherActivity;->mTaskId:I

    const-string v0, "BixbyLauncherActivity"

    invoke-static {p1, p0, v0}, Landroidx/recyclerview/widget/P;->x(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private startActivityForBixby(Ljava/lang/String;)V
    .locals 2

    const-string v0, "[startActivityForBixby] Action :"

    const-string v1, "BixbyLauncherActivity"

    invoke-static {v0, p1, v1}, LV0/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/capsule/BixbySBrowserLauncherActivity;->createIntentWithTargetTask(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "[startActivityForBixby] "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v1}, Landroidx/recyclerview/widget/P;->l(Landroid/content/ActivityNotFoundException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private startActivityForSearchKeyword(Ljava/lang/String;)V
    .locals 2

    const-string v0, "com.sec.android.app.sbrowser.beta.INTENT_SEARCH_KEYWORD"

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/capsule/BixbySBrowserLauncherActivity;->createIntentWithTargetTask(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_search_url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "[startActivityForSearchKeyword]"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "BixbyLauncherActivity"

    invoke-static {p0, p1, v0}, Landroidx/recyclerview/widget/P;->l(Landroid/content/ActivityNotFoundException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "BixbyLauncherActivity"

    const-string v0, "onCreate()"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/SALoggingInitializer;->initialize(Landroid/app/Application;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/capsule/BixbySBrowserLauncherActivity;->handleIntent(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "BixbyLauncherActivity"

    const-string v1, "onNewIntent()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/capsule/BixbySBrowserLauncherActivity;->handleIntent(Landroid/content/Intent;)V

    return-void
.end method
