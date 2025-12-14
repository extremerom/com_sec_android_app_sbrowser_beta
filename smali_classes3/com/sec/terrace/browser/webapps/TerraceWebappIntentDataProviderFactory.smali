.class public Lcom/sec/terrace/browser/webapps/TerraceWebappIntentDataProviderFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static create(Landroid/content/Intent;)Lcom/sec/terrace/browser/webapps/TerraceWebappIntentDataProvider;
    .locals 25
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    move-object/from16 v0, p0

    invoke-static/range {p0 .. p0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappIntentUtils;->getIdForHomescreenShortcut(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    invoke-static/range {p0 .. p0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappIntentUtils;->getUrl(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_0

    if-nez v3, :cond_1

    :cond_0
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_1
    const-string v1, "com.sec.terrace.browser.webapp_icon"

    invoke-static {v0, v1}, Lorg/chromium/base/IntentUtils;->safeGetStringExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v1, "com.sec.terrace.browser.webapp_scope"

    invoke-static {v0, v1}, Lorg/chromium/base/IntentUtils;->safeGetStringExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v3}, Lcom/sec/terrace/browser/shortcut_helper/TinShortcutHelper;->getScopeFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_2
    move-object/from16 v21, v1

    const-string v1, "com.sec.terrace.browser.webapp_display_mode"

    const/4 v6, 0x3

    invoke-static {v0, v1, v6}, Lorg/chromium/base/IntentUtils;->safeGetIntExtra(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v8

    const-string v1, "org.chromium.content_public.common.orientation"

    const/4 v7, 0x0

    invoke-static {v0, v1, v7}, Lorg/chromium/base/IntentUtils;->safeGetIntExtra(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v9

    invoke-static/range {p0 .. p0}, Lcom/sec/terrace/browser/webapps/TerraceWebappIntentDataProviderFactory;->sourceFromIntent(Landroid/content/Intent;)I

    move-result v10

    const-string v1, "com.sec.terrace.browser.theme_color"

    const-wide v13, 0x80000000L

    invoke-static {v0, v1, v13, v14}, Lorg/chromium/base/IntentUtils;->safeGetLongExtra(Landroid/content/Intent;Ljava/lang/String;J)J

    move-result-wide v11

    const-string v1, "com.sec.terrace.browser.background_color"

    invoke-static {v0, v1, v13, v14}, Lorg/chromium/base/IntentUtils;->safeGetLongExtra(Landroid/content/Intent;Ljava/lang/String;J)J

    move-result-wide v13

    const-string v1, "com.sec.terrace.browser.is_icon_generated"

    invoke-static {v0, v1, v7}, Lorg/chromium/base/IntentUtils;->safeGetBooleanExtra(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v17

    const-string v1, "com.sec.terrace.browser.webapp_icon_adaptive"

    invoke-static {v0, v1, v7}, Lorg/chromium/base/IntentUtils;->safeGetBooleanExtra(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v19

    const-string v1, "com.sec.terrace.browser.webapk_force_navigation"

    invoke-static {v0, v1, v7}, Lorg/chromium/base/IntentUtils;->safeGetBooleanExtra(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v20

    sget-object v1, Lcom/sec/terrace/browser/webapps/TerraceWebApkConstants;->EXTRA_WEBAPK_PACKAGE_NAME:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/chromium/base/IntentUtils;->safeGetStringExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v1, "com.sec.terrace.browser.webapp_url_index"

    invoke-static {v0, v1}, Lorg/chromium/base/IntentUtils;->safeGetStringExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {p0 .. p0}, Lcom/sec/terrace/browser/webapps/TerraceWebappIntentDataProviderFactory;->nameFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v6

    invoke-static/range {p0 .. p0}, Lcom/sec/terrace/browser/webapps/TerraceWebappIntentDataProviderFactory;->shortNameFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    move v4, v7

    move-object v7, v1

    const-string v1, "com.sec.terrace.browser.is_launch_from_external"

    invoke-static {v0, v1, v4}, Lorg/chromium/base/IntentUtils;->safeGetBooleanExtra(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v18

    new-instance v4, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappExtras;

    move-object v1, v4

    move-object/from16 v22, v4

    new-instance v4, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappIcon;

    move-object v0, v5

    move-object v5, v4

    move-object/from16 v23, v1

    const/4 v1, 0x1

    invoke-direct {v4, v0, v1}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappIcon;-><init>(Ljava/lang/String;Z)V

    move-object/from16 v1, v22

    const/4 v0, 0x0

    move-object/from16 v4, v21

    move-object/from16 v24, v1

    move-object/from16 v1, v23

    invoke-direct/range {v1 .. v20}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappExtras;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappIcon;Ljava/lang/String;Ljava/lang/String;IIIJJLjava/lang/String;Ljava/lang/String;ZZZZ)V

    new-instance v1, Lcom/sec/terrace/browser/webapps/TerraceWebappIntentDataProvider;

    move-object/from16 v2, p0

    move-object/from16 v3, v24

    invoke-direct {v1, v2, v0, v3, v0}, Lcom/sec/terrace/browser/webapps/TerraceWebappIntentDataProvider;-><init>(Landroid/content/Intent;LK/a;Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappExtras;Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkExtras;)V

    return-object v1

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Incomplete data provided: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WebappInfo"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private static nameFromIntent(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1

    const-string v0, "com.sec.terrace.browser.webapp_name"

    invoke-static {p0, v0}, Lorg/chromium/base/IntentUtils;->safeGetStringExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/sec/terrace/browser/webapps/TerraceWebappIntentDataProviderFactory;->titleFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private static shortNameFromIntent(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1

    const-string v0, "com.sec.terrace.browser.webapp_short_name"

    invoke-static {p0, v0}, Lorg/chromium/base/IntentUtils;->safeGetStringExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/sec/terrace/browser/webapps/TerraceWebappIntentDataProviderFactory;->titleFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private static sourceFromIntent(Landroid/content/Intent;)I
    .locals 2

    const-string v0, "com.sec.terrace.browser.webapp_source"

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Lorg/chromium/base/IntentUtils;->safeGetIntExtra(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result p0

    const/16 v0, 0x11

    if-lt p0, v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, p0

    :goto_0
    return v1
.end method

.method private static titleFromIntent(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1

    const-string v0, "com.sec.terrace.browser.webapp_title"

    invoke-static {p0, v0}, Lorg/chromium/base/IntentUtils;->safeGetStringExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method
