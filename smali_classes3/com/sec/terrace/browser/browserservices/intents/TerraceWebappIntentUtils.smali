.class public Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappIntentUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final WEBAPK_INTENT_EXTRAS:[Ljava/lang/String;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final WEBAPP_INTENT_EXTRAS:[Ljava/lang/String;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 38

    sget-object v18, Lcom/sec/terrace/browser/webapps/TerraceWebApkConstants;->EXTRA_WEBAPK_PACKAGE_NAME:Ljava/lang/String;

    move-object/from16 v25, v18

    const-string v19, "com.sec.terrace.browser.webapp_mac"

    const-string v20, "org.chromium.chrome.browser.webapp_mac"

    const-string v0, "com.sec.terrace.browser.webapp_id"

    const-string v1, "org.chromium.chrome.browser.webapp_id"

    const-string v2, "com.sec.terrace.browser.webapp_url"

    const-string v3, "org.chromium.chrome.browser.webapp_url"

    const-string v4, "com.sec.terrace.browser.webapk_force_navigation"

    const-string v5, "com.sec.terrace.browser.webapp_source"

    const-string v6, "com.sec.terrace.browser.webapp_scope"

    const-string v7, "com.sec.terrace.browser.webapp_icon"

    const-string v8, "com.sec.terrace.browser.webapp_shortcut_version"

    const-string v9, "com.sec.terrace.browser.webapp_name"

    const-string v10, "com.sec.terrace.browser.webapp_short_name"

    const-string v11, "com.sec.terrace.browser.webapp_display_mode"

    const-string v12, "org.chromium.content_public.common.orientation"

    const-string v13, "com.sec.terrace.browser.theme_color"

    const-string v14, "com.sec.terrace.browser.background_color"

    const-string v15, "com.sec.terrace.browser.is_icon_generated"

    const-string v16, "com.sec.terrace.browser.webapp_icon_adaptive"

    const-string v17, "com.sec.terrace.browser.webapp_url_index"

    filled-new-array/range {v0 .. v20}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappIntentUtils;->WEBAPP_INTENT_EXTRAS:[Ljava/lang/String;

    const-string v36, "android.intent.extra.TEXT"

    const-string v37, "android.intent.extra.STREAM"

    const-string v21, "com.sec.terrace.browser.webapp_id"

    const-string v22, "com.sec.terrace.browser.webapp_url"

    const-string v23, "com.sec.terrace.browser.webapk_force_navigation"

    const-string v24, "com.sec.terrace.browser.webapp_source"

    const-string v26, "com.sec.terrace.browser.webapp_icon_adaptive"

    const-string v27, "org.chromium.content_public.common.orientation"

    const-string v28, "com.sec.terrace.browser.webapp_short_name"

    const-string v29, "com.sec.terrace.browser.background_color"

    const-string v30, "com.sec.terrace.browser.theme_color"

    const-string v31, "com.sec.terrace.browser.webapp_icon"

    const-string v32, "com.sec.terrace.browser.webapp_name"

    const-string v33, "com.sec.terrace.browser.is_icon_generated"

    const-string v34, "com.sec.terrace.browser.webapk.selected_share_target_activity_class_name"

    const-string v35, "android.intent.extra.SUBJECT"

    filled-new-array/range {v21 .. v37}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappIntentUtils;->WEBAPK_INTENT_EXTRAS:[Ljava/lang/String;

    return-void
.end method

.method private static copyIntentExtras(Landroid/content/Intent;Landroid/content/Intent;[Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {p0}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p2, v2

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1, p0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    return-void
.end method

.method public static copyWebApkLaunchIntentExtras(Landroid/content/Intent;Landroid/content/Intent;)V
    .locals 1

    sget-object v0, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappIntentUtils;->WEBAPK_INTENT_EXTRAS:[Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappIntentUtils;->copyIntentExtras(Landroid/content/Intent;Landroid/content/Intent;[Ljava/lang/String;)V

    return-void
.end method

.method public static copyWebappLaunchIntentExtras(Landroid/content/Intent;Landroid/content/Intent;)V
    .locals 1

    sget-object v0, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappIntentUtils;->WEBAPP_INTENT_EXTRAS:[Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappIntentUtils;->copyIntentExtras(Landroid/content/Intent;Landroid/content/Intent;[Ljava/lang/String;)V

    return-void
.end method

.method public static getIdForHomescreenShortcut(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1

    const-string v0, "com.sec.terrace.browser.webapp_id"

    invoke-static {p0, v0}, Lorg/chromium/base/IntentUtils;->safeGetStringExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "org.chromium.chrome.browser.webapp_id"

    invoke-static {p0, v0}, Lorg/chromium/base/IntentUtils;->safeGetStringExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static getIdForWebApkPackage(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "webapk-"

    invoke-static {v0, p0}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getUrl(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1

    const-string v0, "com.sec.terrace.browser.webapp_url"

    invoke-static {p0, v0}, Lorg/chromium/base/IntentUtils;->safeGetStringExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "org.chromium.chrome.browser.webapp_url"

    invoke-static {p0, v0}, Lorg/chromium/base/IntentUtils;->safeGetStringExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static getWebApkPackageName(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/terrace/browser/webapps/TerraceWebApkConstants;->EXTRA_WEBAPK_PACKAGE_NAME:Ljava/lang/String;

    invoke-static {p0, v0}, Lorg/chromium/base/IntentUtils;->safeGetStringExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
