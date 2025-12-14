.class public Lcom/sec/android/app/sbrowser/webapp/WebappManager;
.super Landroid/app/Activity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/webapp/WebappManager$LaunchData;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/webapp/WebappManager;->lambda$launchAfterDelay$0(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private bridgeToFrontWebapp(I)V
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/app/ActivityManager;->moveTaskToFront(II)V

    invoke-virtual {p0}, Landroid/app/Activity;->finishAndRemoveTask()V

    return-void
.end method

.method private canLaunchSBrowserTab(Landroid/content/Intent;Lcom/sec/android/app/sbrowser/webapp/WebappManager$LaunchData;)Z
    .locals 1

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/webapp/WebappManager$LaunchData;->b(Lcom/sec/android/app/sbrowser/webapp/WebappManager$LaunchData;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/webapp/WebappManager;->getMacFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/webapp/WebappManager$LaunchData;->d(Lcom/sec/android/app/sbrowser/webapp/WebappManager$LaunchData;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private createIntentToLaunchForWebapp(Landroid/content/Intent;Lcom/sec/android/app/sbrowser/webapp/WebappManager$LaunchData;Z)Landroid/content/Intent;
    .locals 2

    invoke-static {p3}, Lcom/sec/android/app/sbrowser/webapp/WebappManager;->selectWebappActivitySubclass(Z)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v1, p0, v0}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/webapp/WebappManager$LaunchData;->b(Lcom/sec/android/app/sbrowser/webapp/WebappManager$LaunchData;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1, v1}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappIntentUtils;->copyWebApkLaunchIntentExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    invoke-static {p1, v1}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappIntentUtils;->copyWebappLaunchIntentExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    :goto_0
    const-string p0, "android.intent.action.VIEW"

    invoke-virtual {v1, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/webapp/WebappManager$LaunchData;->b(Lcom/sec/android/app/sbrowser/webapp/WebappManager$LaunchData;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "webapk"

    goto :goto_1

    :cond_1
    const-string p0, "webapp"

    :goto_1
    const-string p1, "://"

    invoke-static {p0, p1}, Lt/b;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/webapp/WebappManager$LaunchData;->a(Lcom/sec/android/app/sbrowser/webapp/WebappManager$LaunchData;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    if-eqz p3, :cond_2

    const/high16 p0, 0x6010000

    invoke-virtual {v1, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_2

    :cond_2
    const/high16 p0, 0x14080000

    invoke-virtual {v1, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :goto_2
    return-object v1
.end method

.method private static createRelaunchWebApkIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-direct {v0, v1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x10080000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_0
    return-object v0
.end method

.method private static extractLaunchData(Landroid/content/Intent;)Lcom/sec/android/app/sbrowser/webapp/WebappManager$LaunchData;
    .locals 6
    .param p0    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappIntentUtils;->getWebApkPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "BRING_TAB_TO_FRONT"

    const/4 v2, -0x1

    invoke-static {p0, v1, v2}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->safeGetIntExtra(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v1

    invoke-static {p0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappIntentUtils;->getUrl(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v4

    if-nez v0, :cond_0

    invoke-static {v5}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappIntentUtils;->getIdForWebApkPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    move-object v3, p0

    goto :goto_1

    :cond_0
    invoke-static {p0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappIntentUtils;->getIdForHomescreenShortcut(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :goto_1
    new-instance p0, Lcom/sec/android/app/sbrowser/webapp/WebappManager$LaunchData;

    const/4 v2, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/webapp/WebappManager$LaunchData;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private getMacFromIntent(Landroid/content/Intent;)Ljava/lang/String;
    .locals 0

    const-string p0, "com.sec.terrace.browser.webapp_mac"

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->safeGetStringExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "org.chromium.chrome.browser.webapp_mac"

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->safeGetStringExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private isValidMacForUrl(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    if-eqz p2, :cond_0

    invoke-static {p2, p0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sec/terrace/TerraceWebappAuthenticator;->isUrlValid(Ljava/lang/String;[B)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    :cond_0
    return p0
.end method

.method private static synthetic lambda$launchAfterDelay$0(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private static launchAfterDelay(Landroid/content/Context;Landroid/content/Intent;I)V
    .locals 3

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/android/app/sbrowser/webapp/e;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0, p1}, Lcom/sec/android/app/sbrowser/webapp/e;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    int-to-long p0, p2

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private launchSBrowserTab(Lcom/sec/android/app/sbrowser/webapp/WebappManager$LaunchData;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/webapp/WebappManager$LaunchData;->d(Lcom/sec/android/app/sbrowser/webapp/WebappManager$LaunchData;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    sget-object p1, Lcom/sec/android/app/sbrowser/externalnav/SBrowserIntentHandler$TabOpenType;->REUSE_URL_MATCHING_TAB_ELSE_NEW_TAB:Lcom/sec/android/app/sbrowser/externalnav/SBrowserIntentHandler$TabOpenType;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private launchWebapp(Landroid/content/Intent;Lcom/sec/android/app/sbrowser/webapp/WebappManager$LaunchData;Z)V
    .locals 0
    .param p2    # Lcom/sec/android/app/sbrowser/webapp/WebappManager$LaunchData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/webapp/WebappManager;->createIntentToLaunchForWebapp(Landroid/content/Intent;Lcom/sec/android/app/sbrowser/webapp/WebappManager$LaunchData;Z)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->isIntentForNewTaskOrNewDocument(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finishAndRemoveTask()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method private processWebappIntent(Landroid/content/Intent;Lcom/sec/android/app/sbrowser/webapp/WebappManager$LaunchData;)V
    .locals 2

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/webapp/WebappManager$LaunchData;->c(Lcom/sec/android/app/sbrowser/webapp/WebappManager$LaunchData;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/webapp/WebappManager$LaunchData;->c(Lcom/sec/android/app/sbrowser/webapp/WebappManager$LaunchData;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/webapp/WebappManager;->bridgeToFrontWebapp(I)V

    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/webapp/WebappManager;->shouldLaunchWebapp(Landroid/content/Intent;Lcom/sec/android/app/sbrowser/webapp/WebappManager$LaunchData;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/webapp/WebappManager;->canLaunchSBrowserTab(Landroid/content/Intent;Lcom/sec/android/app/sbrowser/webapp/WebappManager$LaunchData;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/webapp/WebappManager;->launchSBrowserTab(Lcom/sec/android/app/sbrowser/webapp/WebappManager$LaunchData;)V

    return-void

    :cond_1
    sget-object p2, Lcom/sec/terrace/browser/webapps/TerraceWebApkConstants;->EXTRA_WEBAPK_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    const/4 p2, 0x0

    :cond_2
    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/webapp/WebappManager;->shouldRelaunchWebApk(Landroid/content/Intent;Lcom/sec/android/app/sbrowser/webapp/WebappManager$LaunchData;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/webapp/WebappManager;->relaunchWebApk(Landroid/app/Activity;Landroid/content/Intent;Lcom/sec/android/app/sbrowser/webapp/WebappManager$LaunchData;)V

    return-void

    :cond_3
    if-eqz p2, :cond_4

    const-string v0, "com.sec.terrace.browser.webapk.use_same_task_activity"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->safeGetBooleanExtra(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/app/sbrowser/webapp/WebappManager;->launchWebapp(Landroid/content/Intent;Lcom/sec/android/app/sbrowser/webapp/WebappManager$LaunchData;Z)V

    return-void

    :cond_4
    invoke-virtual {p0}, Landroid/app/Activity;->finishAndRemoveTask()V

    return-void
.end method

.method private static relaunchWebApk(Landroid/app/Activity;Landroid/content/Intent;Lcom/sec/android/app/sbrowser/webapp/WebappManager$LaunchData;)V
    .locals 1
    .param p2    # Lcom/sec/android/app/sbrowser/webapp/WebappManager$LaunchData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/webapp/WebappManager$LaunchData;->e(Lcom/sec/android/app/sbrowser/webapp/WebappManager$LaunchData;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/webapp/WebappManager$LaunchData;->d(Lcom/sec/android/app/sbrowser/webapp/WebappManager$LaunchData;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, p2}, Lcom/sec/android/app/sbrowser/webapp/WebappManager;->createRelaunchWebApkIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const/16 v0, 0x14

    invoke-static {p2, p1, v0}, Lcom/sec/android/app/sbrowser/webapp/WebappManager;->launchAfterDelay(Landroid/content/Context;Landroid/content/Intent;I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finishAndRemoveTask()V

    return-void
.end method

.method private static selectWebappActivitySubclass(Z)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    const-class p0, Lcom/sec/android/app/sbrowser/webapp/SameTaskWebApkActivity;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-class p0, Lcom/sec/android/app/sbrowser/webapp/WebappActivity;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private shouldLaunchWebapp(Landroid/content/Intent;Lcom/sec/android/app/sbrowser/webapp/WebappManager$LaunchData;)Z
    .locals 4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/webapp/WebappManager$LaunchData;->b(Lcom/sec/android/app/sbrowser/webapp/WebappManager$LaunchData;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/webapp/WebappManager$LaunchData;->d(Lcom/sec/android/app/sbrowser/webapp/WebappManager$LaunchData;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/webapp/WebappManager$LaunchData;->e(Lcom/sec/android/app/sbrowser/webapp/WebappManager$LaunchData;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/webapp/WebappManager$LaunchData;->d(Lcom/sec/android/app/sbrowser/webapp/WebappManager$LaunchData;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/sec/terrace/browser/webapps/TerraceWebApkValidator;->canWebApkHandleUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    return v3

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/webapp/WebappManager$LaunchData;->e(Lcom/sec/android/app/sbrowser/webapp/WebappManager$LaunchData;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "is either not a WebAPK or "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/webapp/WebappManager$LaunchData;->d(Lcom/sec/android/app/sbrowser/webapp/WebappManager$LaunchData;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not within the WebAPK\'s scope"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WebappManager"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/webapp/WebappManager;->getMacFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/webapp/WebappManager$LaunchData;->d(Lcom/sec/android/app/sbrowser/webapp/WebappManager$LaunchData;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, v0}, Lcom/sec/android/app/sbrowser/webapp/WebappManager;->isValidMacForUrl(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/webapp/WebappManager;->wasIntentFromSBrowser(Landroid/content/Intent;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    move v2, v3

    :cond_3
    return v2
.end method

.method private static shouldRelaunchWebApk(Landroid/content/Intent;Lcom/sec/android/app/sbrowser/webapp/WebappManager$LaunchData;)Z
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/webapp/WebappManager$LaunchData;->b(Lcom/sec/android/app/sbrowser/webapp/WebappManager$LaunchData;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "com.sec.terrace.browser.webapk.relaunch"

    invoke-virtual {p0, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private wasIntentFromSBrowser(Landroid/content/Intent;)Z
    .locals 0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/externalnav/SBrowserIntentHandler;->wasIntentSenderSBrowser(Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "WebappManager"

    const-string v0, "onCreate"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1f

    if-ge p1, v0, :cond_0

    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->finishAndRemoveTask()V

    return-void

    :cond_1
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/webapp/WebappManager;->extractLaunchData(Landroid/content/Intent;)Lcom/sec/android/app/sbrowser/webapp/WebappManager$LaunchData;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/webapp/WebappManager;->processWebappIntent(Landroid/content/Intent;Lcom/sec/android/app/sbrowser/webapp/WebappManager$LaunchData;)V

    return-void
.end method
