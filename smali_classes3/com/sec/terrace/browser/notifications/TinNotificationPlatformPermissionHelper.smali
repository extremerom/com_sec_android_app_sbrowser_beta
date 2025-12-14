.class public Lcom/sec/terrace/browser/notifications/TinNotificationPlatformPermissionHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/notifications/TinNotificationPlatformPermissionHelper$Natives;,
        Lcom/sec/terrace/browser/notifications/TinNotificationPlatformPermissionHelper$PermissionCallback;
    }
.end annotation


# static fields
.field private static sNextRequestCode:I

.field private static sOutstandingPermissionRequests:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/sec/terrace/browser/notifications/TinNotificationPlatformPermissionHelper$PermissionCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformPermissionHelper;->sOutstandingPermissionRequests:Landroid/util/SparseArray;

    const/4 v0, 0x0

    sput v0, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformPermissionHelper;->sNextRequestCode:I

    return-void
.end method

.method private static generateNextRequestCode()I
    .locals 2

    sget v0, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformPermissionHelper;->sNextRequestCode:I

    add-int/lit16 v1, v0, 0x3e8

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x64

    sput v0, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformPermissionHelper;->sNextRequestCode:I

    return v1
.end method

.method private static getHasRequestedPermissionKey(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v0, 0x80

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object p0

    iget-object v0, p0, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const-string p0, "HasRequestedAndroidPermission::"

    invoke-static {p0, p1}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getPermission()Z
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_1

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.POST_NOTIFICATIONS"

    invoke-static {v0, v1}, LV0/a;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, LU0/u;

    invoke-direct {v1, v0}, LU0/u;-><init>(Landroid/content/Context;)V

    iget-object v0, v1, LU0/u;->b:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->areNotificationsEnabled()Z

    move-result v0

    return v0
.end method

.method public static onRequestPermissionsResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V
    .locals 5

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p2, v2

    invoke-static {p0, v3}, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformPermissionHelper;->getHasRequestedPermissionKey(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    sget-object p0, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformPermissionHelper;->sOutstandingPermissionRequests:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformPermissionHelper$PermissionCallback;

    sget-object v0, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformPermissionHelper;->sOutstandingPermissionRequests:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    if-eqz p0, :cond_1

    invoke-interface {p0, p2, p3}, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformPermissionHelper$PermissionCallback;->onRequestPermissionsResult([Ljava/lang/String;[I)V

    :cond_1
    return-void
.end method

.method private static requestNotificationPermission(J)V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-static {}, Lcom/sec/terrace/TinTerraceInternals;->getCurrentTerraceActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/sec/terrace/browser/notifications/TerraceNotificationUIManager;->requestNotificationPermission(Landroid/app/Activity;J)V

    return-void
.end method

.method private static requestNotificationPermissionForExt(Ljava/lang/String;J)V
    .locals 4
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    invoke-static {p1, p2, v2}, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformPermissionHelper;->runPermissionCallbackForExt(JI)V

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/TerraceHelper;->getCurrentTerraceActivity()Lcom/sec/terrace/TerraceActivity;

    move-result-object v0

    const-string v1, "android.permission.POST_NOTIFICATIONS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    invoke-static {p1, p2, v2}, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformPermissionHelper;->runPermissionCallbackForExt(JI)V

    return-void

    :cond_1
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3, p0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_2

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformPermissionHelper$1;

    invoke-direct {v2, v0, p0, p1, p2}, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformPermissionHelper$1;-><init>(Lcom/sec/terrace/TerraceActivity;Ljava/lang/String;J)V

    invoke-static {v0, v1, v2}, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformPermissionHelper;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;Lcom/sec/terrace/browser/notifications/TinNotificationPlatformPermissionHelper$PermissionCallback;)V

    goto :goto_0

    :cond_2
    const/4 p0, -0x1

    invoke-static {p1, p2, p0}, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformPermissionHelper;->runPermissionCallbackForExt(JI)V

    :goto_0
    return-void
.end method

.method public static requestPermissions(Landroid/app/Activity;[Ljava/lang/String;Lcom/sec/terrace/browser/notifications/TinNotificationPlatformPermissionHelper$PermissionCallback;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformPermissionHelper;->generateNextRequestCode()I

    move-result v0

    sget-object v1, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformPermissionHelper;->sOutstandingPermissionRequests:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    return-void
.end method

.method public static runPermissionCallback(JZ)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformPermissionHelperJni;->get()Lcom/sec/terrace/browser/notifications/TinNotificationPlatformPermissionHelper$Natives;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformPermissionHelper$Natives;->runPermissionCallback(JZ)V

    return-void
.end method

.method public static runPermissionCallbackForExt(JI)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformPermissionHelperJni;->get()Lcom/sec/terrace/browser/notifications/TinNotificationPlatformPermissionHelper$Natives;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformPermissionHelper$Natives;->runPermissionCallbackForExt(JI)V

    return-void
.end method
