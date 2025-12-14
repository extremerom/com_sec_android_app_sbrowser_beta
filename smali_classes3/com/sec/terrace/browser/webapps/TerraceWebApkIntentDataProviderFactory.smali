.class public Lcom/sec/terrace/browser/webapps/TerraceWebApkIntentDataProviderFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final RESOURCE_SHORTCUTS:Ljava/lang/String; = "shortcuts"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final RESOURCE_XML_TYPE:Ljava/lang/String; = "xml"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method private static computeSource(Landroid/content/Intent;)I
    .locals 3

    const-string v0, "com.sec.terrace.browser.webapp_source"

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Lorg/chromium/base/IntentUtils;->safeGetIntExtra(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v0

    const/16 v2, 0x11

    if-lt v0, v2, :cond_0

    return v1

    :cond_0
    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    invoke-static {p0}, Lcom/sec/terrace/browser/webapps/TerraceWebApkIntentDataProviderFactory;->isSourceFromSbrowser(Landroid/content/Intent;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 p0, 0xe

    return p0

    :cond_1
    return v0
.end method

.method public static create(Landroid/content/Intent;)Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;
    .locals 12

    invoke-static {p0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappIntentUtils;->getWebApkPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    return-object v2

    :cond_0
    const-string v0, "com.sec.terrace.browser.webapk_force_navigation"

    const/4 v3, 0x1

    invoke-static {p0, v0, v3}, Lorg/chromium/base/IntentUtils;->safeGetBooleanExtra(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v4

    const-string v0, "com.sec.terrace.browser.webapk.selected_share_target_activity_class_name"

    invoke-static {p0, v0}, Lorg/chromium/base/IntentUtils;->safeGetStringExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "android.intent.extra.SUBJECT"

    invoke-static {p0, v0}, Lorg/chromium/base/IntentUtils;->safeGetStringExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.extra.TEXT"

    invoke-static {p0, v2}, Lorg/chromium/base/IntentUtils;->safeGetStringExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "android.intent.extra.STREAM"

    invoke-static {p0, v5}, Lorg/chromium/base/IntentUtils;->getParcelableArrayListExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    if-nez v6, :cond_1

    invoke-static {p0, v5}, Lorg/chromium/base/IntentUtils;->safeGetParcelableExtra(Landroid/content/Intent;Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    if-eqz v5, :cond_1

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    new-instance v5, LK/a;

    invoke-direct {v5, v0, v2, v6}, LK/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    move-object v9, v5

    goto :goto_0

    :cond_2
    move-object v9, v2

    :goto_0
    const-string v0, "com.sec.terrace.browser.webapp_url"

    invoke-static {p0, v0}, Lorg/chromium/base/IntentUtils;->safeGetStringExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "com.sec.terrace.browser.webapp_name"

    invoke-static {p0, v0}, Lorg/chromium/base/IntentUtils;->safeGetStringExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "com.sec.terrace.browser.webapp_icon"

    invoke-static {p0, v0}, Lorg/chromium/base/IntentUtils;->safeGetStringExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "com.sec.terrace.browser.is_icon_generated"

    const/4 v7, 0x0

    invoke-static {p0, v6, v7}, Lorg/chromium/base/IntentUtils;->safeGetBooleanExtra(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v8

    invoke-static {p0}, Lcom/sec/terrace/browser/webapps/TerraceWebApkIntentDataProviderFactory;->computeSource(Landroid/content/Intent;)I

    move-result v6

    const-string v11, "com.sec.terrace.browser.webapp_icon_adaptive"

    invoke-static {p0, v11, v7}, Lorg/chromium/base/IntentUtils;->safeGetBooleanExtra(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v11

    new-instance v7, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappIcon;

    invoke-direct {v7, v0, v3}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappIcon;-><init>(Ljava/lang/String;Z)V

    move-object v0, p0

    move v3, v6

    move-object v6, v7

    move v7, v8

    move v8, v11

    invoke-static/range {v0 .. v10}, Lcom/sec/terrace/browser/webapps/TerraceWebApkIntentDataProviderFactory;->create(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappIcon;ZZLK/a;Ljava/lang/String;)Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;

    move-result-object p0

    return-object p0
.end method

.method public static create(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappIcon;ZZLK/a;Ljava/lang/String;)Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;
    .locals 26

    move-object/from16 v15, p1

    move-object/from16 v0, p10

    invoke-static/range {p1 .. p1}, Lcom/sec/terrace/browser/webapps/TerraceWebApkIntentDataProviderFactory;->extractWebApkMetaData(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    :try_start_0
    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v15}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "com.sec.terrace.browser.webapk.shell_apk.name"

    invoke-static {v1, v4}, Lcom/sec/terrace/browser/webapps/TerraceWebApkIntentDataProviderFactory;->getStringOrInt(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    goto :goto_0

    :cond_1
    move-object/from16 v5, p5

    :goto_0
    const-string v4, "com.sec.terrace.browser.webapk.shell_apk.shortName"

    invoke-static {v1, v4}, Lcom/sec/terrace/browser/webapps/TerraceWebApkIntentDataProviderFactory;->getStringOrInt(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v4, "com.sec.terrace.browser.webapk.shell_apk.scope"

    invoke-static {v1, v4}, Lorg/chromium/base/IntentUtils;->safeGetString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v4, "com.sec.terrace.browser.webapk.shell_apk.displayMode"

    invoke-static {v1, v4}, Lorg/chromium/base/IntentUtils;->safeGetString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/terrace/browser/webapps/TerraceWebApkIntentDataProviderFactory;->displayModeFromString(Ljava/lang/String;)I

    move-result v8

    const-string v4, "org.chromium.content_public.common.orientation"

    invoke-static {v1, v4}, Lorg/chromium/base/IntentUtils;->safeGetString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/terrace/browser/webapps/TerraceWebApkIntentDataProviderFactory;->orientationFromString(Ljava/lang/String;)I

    move-result v9

    const-string v4, "com.sec.terrace.browser.webapk.shell_apk.themeColor"

    const-wide v10, 0x80000000L

    invoke-static {v1, v4, v10, v11}, Lcom/sec/terrace/browser/webapps/TerraceWebApkIntentDataProviderFactory;->getLongFromMetaData(Landroid/os/Bundle;Ljava/lang/String;J)J

    move-result-wide v12

    const-string v4, "com.sec.terrace.browser.webapk.shell_apk.backgroundColor"

    invoke-static {v1, v4, v10, v11}, Lcom/sec/terrace/browser/webapps/TerraceWebApkIntentDataProviderFactory;->getLongFromMetaData(Landroid/os/Bundle;Ljava/lang/String;J)J

    move-result-wide v16

    const-string v4, "com.sec.terrace.browser.webapk.shell_apk.shellApkVersion"

    const/4 v10, 0x0

    invoke-static {v1, v4, v10}, Lorg/chromium/base/IntentUtils;->safeGetInt(Landroid/os/Bundle;Ljava/lang/String;I)I

    move-result v18

    const-string v4, "com.sec.terrace.browser.webapk.shell_apk.webManifestUrl"

    invoke-static {v1, v4}, Lorg/chromium/base/IntentUtils;->safeGetString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v4, "com.sec.terrace.browser.webapk.shell_apk.startUrl"

    invoke-static {v1, v4}, Lorg/chromium/base/IntentUtils;->safeGetString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static {v1}, Lcom/sec/terrace/browser/webapps/TerraceWebApkIntentDataProviderFactory;->getIconUrlAndIconMurmur2HashMap(Landroid/os/Bundle;)Ljava/util/Map;

    move-result-object v21

    const-string v4, "com.sec.terrace.browser.webapk.shell_apk.iconId"

    invoke-static {v1, v4, v10}, Lorg/chromium/base/IntentUtils;->safeGetInt(Landroid/os/Bundle;Ljava/lang/String;I)I

    move-result v11

    const-string v4, "com.sec.terrace.browser.webapk.shell_apk.splashId"

    invoke-static {v1, v4, v10}, Lorg/chromium/base/IntentUtils;->safeGetInt(Landroid/os/Bundle;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_2

    new-instance v4, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappIcon;

    invoke-direct {v4, v15, v1}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappIcon;-><init>(Ljava/lang/String;I)V

    move-object/from16 v22, v4

    goto :goto_1

    :cond_2
    move-object/from16 v22, p6

    :goto_1
    invoke-static/range {p1 .. p1}, Lcom/sec/terrace/browser/webapps/TerraceWebApkIntentDataProviderFactory;->extractFirstShareTarget(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v1

    iget-object v4, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v23, v4

    check-cast v23, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkShareTarget;

    if-eqz v0, :cond_3

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    move-object/from16 v24, v2

    goto :goto_2

    :cond_3
    move-object/from16 v24, p9

    :goto_2
    invoke-static/range {p1 .. p1}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappIntentUtils;->getIdForWebApkPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappIcon;

    move-object v4, v0

    invoke-direct {v0, v15, v11}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappIcon;-><init>(Ljava/lang/String;I)V

    invoke-static {v15, v3}, Lcom/sec/terrace/browser/webapps/TerraceWebApkIntentDataProviderFactory;->parseShortcutItems(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/util/List;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move-object v3, v7

    move v7, v8

    move v8, v9

    move/from16 v9, p3

    move-wide v10, v12

    move-wide/from16 v12, v16

    move/from16 v14, p8

    move-object/from16 v15, p1

    move/from16 v16, v18

    move-object/from16 v17, v19

    move-object/from16 v18, v20

    move-object/from16 v19, v21

    move-object/from16 v20, v23

    move/from16 v21, p4

    move/from16 v23, p7

    invoke-static/range {v0 .. v25}, Lcom/sec/terrace/browser/webapps/TerraceWebApkIntentDataProviderFactory;->create(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappIcon;Ljava/lang/String;Ljava/lang/String;IIIJJZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkShareTarget;ZLcom/sec/terrace/browser/browserservices/intents/TerraceWebappIcon;ZLK/a;Ljava/util/List;)Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;

    move-result-object v0

    return-object v0

    :catch_0
    return-object v2
.end method

.method public static create(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappIcon;Ljava/lang/String;Ljava/lang/String;IIIJJZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkShareTarget;ZLcom/sec/terrace/browser/browserservices/intents/TerraceWebappIcon;ZLK/a;Ljava/util/List;)Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappIcon;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIJJZ",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkShareTarget;",
            "Z",
            "Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappIcon;",
            "Z",
            "LK/a;",
            "Ljava/util/List<",
            "Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkExtras$ShortcutItem;",
            ">;)",
            "Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;"
        }
    .end annotation

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v14, p15

    move-object/from16 v12, p18

    if-eqz v1, :cond_5

    if-eqz v2, :cond_5

    if-eqz v12, :cond_5

    if-nez v14, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static/range {p18 .. p18}, Lcom/sec/terrace/browser/shortcut_helper/TinShortcutHelper;->getScopeFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto :goto_0

    :cond_1
    move-object/from16 v3, p3

    :goto_0
    if-nez p4, :cond_2

    new-instance v0, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappIcon;

    invoke-direct {v0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappIcon;-><init>()V

    move-object v4, v0

    goto :goto_1

    :cond_2
    move-object/from16 v4, p4

    :goto_1
    if-nez p22, :cond_3

    new-instance v0, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappIcon;

    invoke-direct {v0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappIcon;-><init>()V

    move-object/from16 v20, v0

    goto :goto_2

    :cond_3
    move-object/from16 v20, p22

    :goto_2
    if-nez p20, :cond_4

    new-instance v0, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkShareTarget;

    invoke-direct {v0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkShareTarget;-><init>()V

    move-object/from16 v21, v0

    goto :goto_3

    :cond_4
    move-object/from16 v21, p20

    :goto_3
    new-instance v13, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappExtras;

    move-object v0, v13

    const/4 v15, 0x0

    const/16 v17, 0x0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-wide/from16 v10, p10

    move-object/from16 v22, v13

    move-wide/from16 v12, p12

    move-object/from16 v14, p15

    move/from16 v16, p23

    move/from16 v18, p14

    move/from16 v19, p21

    invoke-direct/range {v0 .. v19}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappExtras;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappIcon;Ljava/lang/String;Ljava/lang/String;IIIJJLjava/lang/String;Ljava/lang/String;ZZZZ)V

    new-instance v0, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkExtras;

    move-object/from16 p1, v0

    move-object/from16 p2, p15

    move-object/from16 p3, v20

    move/from16 p4, p16

    move-object/from16 p5, p17

    move-object/from16 p6, p18

    move-object/from16 p7, p19

    move-object/from16 p8, v21

    move-object/from16 p9, p25

    invoke-direct/range {p1 .. p9}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkExtras;-><init>(Ljava/lang/String;Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappIcon;ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkShareTarget;Ljava/util/List;)V

    new-instance v1, Lcom/sec/terrace/browser/webapps/TerraceWebappIntentDataProvider;

    move-object/from16 v2, p0

    move-object/from16 v3, p24

    move-object/from16 v4, v22

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/sec/terrace/browser/webapps/TerraceWebappIntentDataProvider;-><init>(Landroid/content/Intent;LK/a;Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappExtras;Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkExtras;)V

    return-object v1

    :cond_5
    :goto_4
    const-string v0, "Incomplete data provided: "

    const-string v3, ", "

    invoke-static {v0, v1, v3, v2, v3}, Lcom/sec/android/app/sbrowser/autofill/password/k;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, p18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, p15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebApkInfo"

    invoke-static {v1, v0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method private static displayModeFromString(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "fullscreen"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x4

    return p0

    :cond_1
    const-string v1, "standalone"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const-string v1, "minimal-ui"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 p0, 0x2

    return p0

    :cond_3
    const-string v1, "browser"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    return v0
.end method

.method private static extractFirstShareTarget(Ljava/lang/String;)Landroid/util/Pair;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkShareTarget;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "*/*"

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v1, 0x80

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v0, "com.sec.terrace.browser.webapk.shell_apk.shareAction"

    invoke-static {v2, v0}, Lorg/chromium/base/IntentUtils;->safeGetString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance p0, Landroid/util/Pair;

    new-instance v0, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkShareTarget;

    invoke-direct {v0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkShareTarget;-><init>()V

    invoke-direct {p0, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_1
    const-string v1, "com.sec.terrace.browser.webapk.shell_apk.shareParamNames"

    invoke-static {v2, v1}, Lorg/chromium/base/IntentUtils;->safeGetString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/terrace/browser/webapps/TinWebApkShareTargetUtil;->decodeJsonStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const-string v1, "com.sec.terrace.browser.webapk.shell_apk.shareParamAccepts"

    invoke-static {v2, v1}, Lorg/chromium/base/IntentUtils;->safeGetString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/terrace/browser/webapps/TinWebApkShareTargetUtil;->decodeJsonAccepts(Ljava/lang/String;)[[Ljava/lang/String;

    move-result-object v11

    const-string v1, "com.sec.terrace.browser.webapk.shell_apk.shareMethod"

    invoke-static {v2, v1}, Lorg/chromium/base/IntentUtils;->safeGetString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "POST"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v8, v4

    goto :goto_1

    :cond_2
    move v8, v3

    :goto_1
    const-string v1, "com.sec.terrace.browser.webapk.shell_apk.shareEnctype"

    invoke-static {v2, v1}, Lorg/chromium/base/IntentUtils;->safeGetString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "multipart/form-data"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v9, v4

    goto :goto_2

    :cond_3
    move v9, v3

    :goto_2
    new-instance v1, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkShareTarget;

    invoke-static {v2, v0}, Lorg/chromium/base/IntentUtils;->safeGetString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "com.sec.terrace.browser.webapk.shell_apk.shareParamTitle"

    invoke-static {v2, v0}, Lorg/chromium/base/IntentUtils;->safeGetString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "com.sec.terrace.browser.webapk.shell_apk.shareParamText"

    invoke-static {v2, v0}, Lorg/chromium/base/IntentUtils;->safeGetString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v0, "com.sec.terrace.browser.webapk.shell_apk.shareParamUrl"

    invoke-static {v2, v0}, Lorg/chromium/base/IntentUtils;->safeGetString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v3, v1

    invoke-direct/range {v3 .. v11}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkShareTarget;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ[Ljava/lang/String;[[Ljava/lang/String;)V

    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_4
    new-instance p0, Landroid/util/Pair;

    new-instance v0, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkShareTarget;

    invoke-direct {v0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkShareTarget;-><init>()V

    invoke-direct {p0, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method private static extractWebApkMetaData(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x80

    :try_start_0
    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getIconUrlAndIconMurmur2HashMap(Landroid/os/Bundle;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "com.sec.terrace.browser.webapk.shell_apk.iconUrlsAndIconMurmur2Hashes"

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    const-string v1, "[ ]+"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v1, p0

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    const-string p0, "WebApkInfo"

    const-string v1, "The icon URLs and icon murmur2 hashes don\'t come in pairs."

    invoke-static {p0, v1}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    aget-object v2, p0, v1

    add-int/lit8 v3, v1, 0x1

    aget-object v3, p0, v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private static getLongFromMetaData(Landroid/os/Bundle;Ljava/lang/String;J)J
    .locals 1
    .param p0    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string p1, "L"

    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    :cond_1
    :goto_0
    return-wide p2
.end method

.method private static getStringOrInt(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p0, p1}, Lorg/chromium/base/IntentUtils;->safeGetString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    invoke-static {p0, p1, v1}, Lorg/chromium/base/IntentUtils;->safeGetInt(Landroid/os/Bundle;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private static isSourceFromSbrowser(Landroid/content/Intent;)Z
    .locals 1

    const-string v0, "com.android.browser.application_id"

    invoke-static {p0, v0}, Lorg/chromium/base/IntentUtils;->safeGetStringExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static orientationFromString(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "any"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x5

    return p0

    :cond_1
    const-string v1, "natural"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 p0, 0x8

    return p0

    :cond_2
    const-string v1, "landscape"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 p0, 0x6

    return p0

    :cond_3
    const-string v1, "landscape-primary"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 p0, 0x3

    return p0

    :cond_4
    const-string v1, "landscape-secondary"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 p0, 0x4

    return p0

    :cond_5
    const-string v1, "portrait"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 p0, 0x7

    return p0

    :cond_6
    const-string v1, "portrait-primary"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_7
    const-string v1, "portrait-secondary"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, 0x2

    return p0

    :cond_8
    return v0
.end method

.method private static parseShortcutItems(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/res/Resources;",
            ")",
            "Ljava/util/List<",
            "Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkExtras$ShortcutItem;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "http://schemas.android.com/apk/res/android"

    const-string v3, "shortcuts"

    const-string v4, "xml"

    invoke-virtual {v1, v3, v4, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    :cond_0
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    :goto_0
    const/4 v6, 0x1

    if-eq v5, v6, :cond_5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_4

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v7, "shortcut"

    invoke-static {v5, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "shortcutLongLabel"

    const/4 v7, 0x0

    invoke-interface {v3, v2, v5, v7}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    const-string v8, "shortcutShortLabel"

    invoke-interface {v3, v2, v8, v7}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v8

    const-string v9, "iconUrl"

    const/4 v10, 0x0

    invoke-interface {v3, v10, v9}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v9, "iconHash"

    invoke-interface {v3, v10, v9}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v9, "icon"

    invoke-interface {v3, v2, v9, v7}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v7

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    if-eq v9, v6, :cond_1

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v9, "intent"

    invoke-static {v6, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    :cond_1
    const-string v6, "data"

    invoke-interface {v3, v2, v6}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    new-instance v6, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkExtras$ShortcutItem;

    if-eqz v5, :cond_2

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v12, v5

    goto :goto_1

    :cond_2
    move-object v12, v10

    :goto_1
    if-eqz v8, :cond_3

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    :cond_3
    move-object v13, v10

    new-instance v5, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappIcon;

    invoke-direct {v5, v0, v7}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappIcon;-><init>(Ljava/lang/String;I)V

    move-object v11, v6

    move-object/from16 v17, v5

    invoke-direct/range {v11 .. v17}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkExtras$ShortcutItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappIcon;)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_5
    return-object v4

    :catch_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method
