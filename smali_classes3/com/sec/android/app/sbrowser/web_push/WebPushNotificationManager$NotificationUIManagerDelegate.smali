.class Lcom/sec/android/app/sbrowser/web_push/WebPushNotificationManager$NotificationUIManagerDelegate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/notifications/TerraceNotificationUIManager$TerraceNotificationUIManagerDelegate$Delegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/web_push/WebPushNotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NotificationUIManagerDelegate"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/content/SharedPreferences;IJ[Ljava/lang/String;[I)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/sec/android/app/sbrowser/web_push/WebPushNotificationManager$NotificationUIManagerDelegate;->lambda$requestNotificationPermission$0(Landroid/content/SharedPreferences;IJ[Ljava/lang/String;[I)V

    return-void
.end method

.method private static synthetic lambda$requestNotificationPermission$0(Landroid/content/SharedPreferences;IJ[Ljava/lang/String;[I)V
    .locals 0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p4, "pref_req_notification_permission_count_web_push"

    invoke-interface {p0, p4, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    array-length p0, p5

    const/4 p1, 0x0

    if-lez p0, :cond_0

    aget p0, p5, p1

    if-nez p0, :cond_0

    const/4 p0, 0x1

    invoke-static {p2, p3, p0}, Lcom/sec/terrace/browser/notifications/TerraceNotificationUIManager;->runPermissionCallback(JZ)V

    goto :goto_0

    :cond_0
    invoke-static {p2, p3, p1}, Lcom/sec/terrace/browser/notifications/TerraceNotificationUIManager;->runPermissionCallback(JZ)V

    :goto_0
    return-void
.end method

.method private showDialog(Landroid/app/Activity;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 3

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lm/k;

    const v1, 0x7f1501c5

    invoke-direct {v0, p1, v1}, Lm/k;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f140837

    invoke-virtual {v0, v1}, Lm/k;->a(I)V

    const v1, 0x7f1402c1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lm/k;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/web_push/WebPushNotificationManager$NotificationUIManagerDelegate$1;

    invoke-direct {v1, p0, p1, p3}, Lcom/sec/android/app/sbrowser/web_push/WebPushNotificationManager$NotificationUIManagerDelegate$1;-><init>(Lcom/sec/android/app/sbrowser/web_push/WebPushNotificationManager$NotificationUIManagerDelegate;Landroid/app/Activity;Landroid/content/Intent;)V

    invoke-virtual {v0, p2, v1}, Lm/k;->d(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0}, Lm/k;->create()Lm/l;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setSEP10Dialog(Landroid/app/Dialog;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void

    :cond_1
    :goto_0
    const-string p0, "WebPushNotificationPermissionInfoBar"

    const-string p1, "[showDialog] Activity is not running"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public requestNotificationPermission(Landroid/app/Activity;J)V
    .locals 6

    const-string v0, "android.permission.POST_NOTIFICATIONS"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    invoke-static {p2, p3, v2}, Lcom/sec/terrace/browser/notifications/TerraceNotificationUIManager;->runPermissionCallback(JZ)V

    return-void

    :cond_0
    invoke-static {p1}, Lw2/F;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v4, "pref_req_notification_permission_count_web_push"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    const v0, 0x7f140ed0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-static {v1}, LB/e;->i(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    const-string v4, "package"

    const-string v5, "com.sec.android.app.sbrowser.beta"

    invoke-static {v4, v5, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/android/app/sbrowser/web_push/WebPushNotificationManager$NotificationUIManagerDelegate;->showDialog(Landroid/app/Activity;Ljava/lang/String;Landroid/content/Intent;)V

    invoke-static {p2, p3, v3}, Lcom/sec/terrace/browser/notifications/TerraceNotificationUIManager;->runPermissionCallback(JZ)V

    return-void

    :cond_1
    add-int/2addr v4, v2

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lcom/sec/android/app/sbrowser/web_push/a;

    invoke-direct {v0, v1, v4, p2, p3}, Lcom/sec/android/app/sbrowser/web_push/a;-><init>(Landroid/content/SharedPreferences;IJ)V

    invoke-static {p1, p0, v0}, Lcom/sec/android/app/sbrowser/common/utils/PermissionHelper;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/utils/PermissionHelper$PermissionCallback;)V

    return-void
.end method
