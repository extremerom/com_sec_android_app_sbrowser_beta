.class public Lcom/sec/android/app/sbrowser/webapp/WebApkHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/webapp/WebApkHelper$DialogListener;
    }
.end annotation


# static fields
.field private static sDialogMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lm/l;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/webapp/WebApkHelper;->sDialogMap:Ljava/util/Map;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/webapp/WebApkHelper$DialogListener;Landroid/content/Context;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/webapp/WebApkHelper;->lambda$showDialog$1(Lcom/sec/android/app/sbrowser/webapp/WebApkHelper$DialogListener;Landroid/content/Context;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static applyWebApkPreference(Landroid/content/Context;)V
    .locals 3

    invoke-static {p0}, Lw2/F;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "prd_api_url"

    invoke-static {p0, v1}, Lcom/sec/android/app/sbrowser/webapp/WebApkHelper;->getStringFromGlobalConfig(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_prd_api_url"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "stg_api_url"

    invoke-static {p0, v1}, Lcom/sec/android/app/sbrowser/webapp/WebApkHelper;->getStringFromGlobalConfig(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_stg_api_url"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "dev_api_url"

    invoke-static {p0, v1}, Lcom/sec/android/app/sbrowser/webapp/WebApkHelper;->getStringFromGlobalConfig(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_dev_api_url"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "prd_cdn_url"

    invoke-static {p0, v1}, Lcom/sec/android/app/sbrowser/webapp/WebApkHelper;->getStringFromGlobalConfig(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_prd_cdn_url"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "stg_cdn_url"

    invoke-static {p0, v1}, Lcom/sec/android/app/sbrowser/webapp/WebApkHelper;->getStringFromGlobalConfig(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_stg_cdn_url"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "dev_cdn_url"

    invoke-static {p0, v1}, Lcom/sec/android/app/sbrowser/webapp/WebApkHelper;->getStringFromGlobalConfig(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_dev_cdn_url"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "shell_apk_version"

    invoke-static {p0, v1}, Lcom/sec/android/app/sbrowser/webapp/WebApkHelper;->getIntFromGlobalConfig(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    const-string v1, "pref_shell_apk_version"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static synthetic b(Landroid/app/Activity;Ljava/lang/Runnable;[Ljava/lang/String;[I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/webapp/WebApkHelper;->lambda$requestNotificationPermissionIfNeededForTOS$0(Landroid/app/Activity;Ljava/lang/Runnable;[Ljava/lang/String;[I)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/webapp/WebApkHelper$DialogListener;Landroid/content/Context;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/webapp/WebApkHelper;->lambda$showDialog$3(Lcom/sec/android/app/sbrowser/webapp/WebApkHelper$DialogListener;Landroid/content/Context;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static createLaunchWebApkIntent(Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p0, 0x10000000

    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string p0, "com.sec.terrace.browser.webapk_force_navigation"

    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/webapp/WebApkHelper$DialogListener;Landroid/content/Context;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/webapp/WebApkHelper;->lambda$showDialog$2(Lcom/sec/android/app/sbrowser/webapp/WebApkHelper$DialogListener;Landroid/content/Context;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static destroyDialogIfExisted(Landroid/content/Context;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/sec/android/app/sbrowser/webapp/WebApkHelper;->sDialogMap:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lm/l;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/webapp/WebApkHelper;->isShowing(Lm/l;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lm/y;->dismiss()V

    return-void
.end method

.method public static synthetic e(Ljava/lang/Runnable;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/webapp/WebApkHelper;->lambda$showDialog$4(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method private static getIntFromGlobalConfig(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->getInstance()Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;

    move-result-object v0

    const-string v1, "WebApk"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, p0, p1, v2}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->getInt(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private static getStringFromGlobalConfig(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->getInstance()Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;

    move-result-object v0

    const-string v1, "WebApk"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, p1, v2}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->getString(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static isShowing(Lm/l;)Z
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupported(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/webapp/WebApkHelper;->isWebApkAlwaysEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->getInstance()Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;

    move-result-object v0

    const-string v1, "WebApk"

    invoke-virtual {v0, v1, p0}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->isSupport(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemSettings;->isEasyModeForSystemWindow()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemSettings;->isEmergencyMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemSettings;->isUltraPowerSavingMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/KnoxModeUtils;->isKnoxMode(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static isWebApkAlwaysEnabled(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lw2/F;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "pref_webapk_always_enable"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$requestNotificationPermissionIfNeededForTOS$0(Landroid/app/Activity;Ljava/lang/Runnable;[Ljava/lang/String;[I)V
    .locals 0

    invoke-static {p0}, Lw2/F;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p2, "pref_req_permission_notification_webapk"

    const/4 p3, 0x1

    invoke-interface {p0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private static synthetic lambda$showDialog$1(Lcom/sec/android/app/sbrowser/webapp/WebApkHelper$DialogListener;Landroid/content/Context;Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p2, 0x1

    invoke-interface {p0, p2}, Lcom/sec/android/app/sbrowser/webapp/WebApkHelper$DialogListener;->onResult(Z)V

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/webapp/WebApkHelper;->destroyDialogIfExisted(Landroid/content/Context;)V

    const-string p0, "201"

    const-string p1, "1138"

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$showDialog$2(Lcom/sec/android/app/sbrowser/webapp/WebApkHelper$DialogListener;Landroid/content/Context;Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p2, 0x0

    invoke-interface {p0, p2}, Lcom/sec/android/app/sbrowser/webapp/WebApkHelper$DialogListener;->onResult(Z)V

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/webapp/WebApkHelper;->destroyDialogIfExisted(Landroid/content/Context;)V

    const-string p0, "201"

    const-string p1, "1139"

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$showDialog$3(Lcom/sec/android/app/sbrowser/webapp/WebApkHelper$DialogListener;Landroid/content/Context;Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p2, 0x0

    invoke-interface {p0, p2}, Lcom/sec/android/app/sbrowser/webapp/WebApkHelper$DialogListener;->onResult(Z)V

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/webapp/WebApkHelper;->destroyDialogIfExisted(Landroid/content/Context;)V

    return-void
.end method

.method private static synthetic lambda$showDialog$4(Ljava/lang/Runnable;Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public static requestNotificationPermissionIfNeeded(Landroid/app/Activity;Ljava/lang/Runnable;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-ge v0, v1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/webapp/WebApkHelper;->requestNotificationPermissionIfNeededForTOS(Landroid/app/Activity;Ljava/lang/Runnable;)V

    return-void
.end method

.method private static requestNotificationPermissionIfNeededForTOS(Landroid/app/Activity;Ljava/lang/Runnable;)V
    .locals 4
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    const-string v0, "android.permission.POST_NOTIFICATIONS"

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/utils/PermissionHelper;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p0}, Lw2/F;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_req_permission_notification_webapk"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/webapp/d;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/sbrowser/webapp/d;-><init>(Landroid/app/Activity;Ljava/lang/Runnable;)V

    invoke-static {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/PermissionHelper;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/utils/PermissionHelper$PermissionCallback;)V

    return-void

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public static showDialog(Landroid/content/Context;Landroid/view/View;ZLcom/sec/android/app/sbrowser/webapp/WebApkHelper$DialogListener;)V
    .locals 3

    if-eqz p0, :cond_2

    sget-object v0, Lcom/sec/android/app/sbrowser/webapp/WebApkHelper;->sDialogMap:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm/l;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/webapp/WebApkHelper;->isShowing(Lm/l;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Lm/k;

    const v1, 0x7f1501c5

    invoke-direct {v0, p0, v1}, Lm/k;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f1410ea

    invoke-virtual {v0, v1}, Lm/k;->a(I)V

    new-instance v1, Lcom/sec/android/app/sbrowser/webapp/b;

    const/4 v2, 0x0

    invoke-direct {v1, p3, p0, v2}, Lcom/sec/android/app/sbrowser/webapp/b;-><init>(Lcom/sec/android/app/sbrowser/webapp/WebApkHelper$DialogListener;Landroid/content/Context;I)V

    const v2, 0x7f140068

    invoke-virtual {v0, v2, v1}, Lm/k;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/webapp/b;

    const/4 v2, 0x1

    invoke-direct {v1, p3, p0, v2}, Lcom/sec/android/app/sbrowser/webapp/b;-><init>(Lcom/sec/android/app/sbrowser/webapp/WebApkHelper$DialogListener;Landroid/content/Context;I)V

    const v2, 0x7f1402ac

    invoke-virtual {v0, v2, v1}, Lm/k;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/webapp/c;

    invoke-direct {v1, p3, p0}, Lcom/sec/android/app/sbrowser/webapp/c;-><init>(Lcom/sec/android/app/sbrowser/webapp/WebApkHelper$DialogListener;Landroid/content/Context;)V

    iget-object p3, v0, Lm/k;->a:Lm/h;

    iput-object v1, p3, Lm/h;->o:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0}, Lm/k;->create()Lm/l;

    move-result-object p3

    if-eqz p2, :cond_1

    invoke-static {p0, p3, p1}, Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil;->setAnchorWithType(Landroid/content/Context;Landroid/app/Dialog;Landroid/view/View;)V

    goto :goto_0

    :cond_1
    invoke-static {p0, p3, p1}, Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil;->setAnchor(Landroid/content/Context;Landroid/app/Dialog;Landroid/view/View;)V

    :goto_0
    invoke-virtual {p3}, Landroid/app/Dialog;->show()V

    sget-object p1, Lcom/sec/android/app/sbrowser/webapp/WebApkHelper;->sDialogMap:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_1
    return-void
.end method

.method public static showDialog(Landroid/content/Context;Landroid/view/View;ZLjava/lang/Runnable;)V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/search_widget/a;

    const/16 v1, 0xd

    invoke-direct {v0, v1, p3}, Lcom/sec/android/app/sbrowser/search_widget/a;-><init>(ILjava/lang/Object;)V

    invoke-static {p0, p1, p2, v0}, Lcom/sec/android/app/sbrowser/webapp/WebApkHelper;->showDialog(Landroid/content/Context;Landroid/view/View;ZLcom/sec/android/app/sbrowser/webapp/WebApkHelper$DialogListener;)V

    return-void
.end method
