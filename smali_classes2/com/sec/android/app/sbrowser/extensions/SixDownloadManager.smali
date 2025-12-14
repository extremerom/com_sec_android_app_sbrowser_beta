.class public Lcom/sec/android/app/sbrowser/extensions/SixDownloadManager;
.super Lcom/sec/android/app/sbrowser/common/blockers/ApkDCManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/extensions/SixDownloadManager$LazyHolder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCManager;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/extensions/SixDownloadManager;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Runnable;[Ljava/lang/String;[I)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/extensions/SixDownloadManager;->lambda$checkNotiPermissionAndRun$0(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Runnable;[Ljava/lang/String;[I)V

    return-void
.end method

.method public static getInstance()Lcom/sec/android/app/sbrowser/extensions/SixDownloadManager;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixDownloadManager$LazyHolder;->a()Lcom/sec/android/app/sbrowser/extensions/SixDownloadManager;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$checkNotiPermissionAndRun$0(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Runnable;[Ljava/lang/String;[I)V
    .locals 0

    invoke-static {p0}, Lw2/F;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const/4 p3, 0x1

    invoke-interface {p0, p1, p3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    return-void
.end method


# virtual methods
.method public addInstalledPackageNameFromDirectDownload(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public checkNotiPermissionAndRun(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 2

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x21

    if-ge p0, v0, :cond_0

    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    const-string p0, "six_req_permission_noti."

    invoke-static {p0, p2}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p2, "android.permission.POST_NOTIFICATIONS"

    invoke-virtual {p1, p2}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    invoke-static {p1}, Lw2/F;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/sec/android/app/sbrowser/download/a;

    invoke-direct {v0, p1, p0, p3}, Lcom/sec/android/app/sbrowser/download/a;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-static {p1, p2, v0}, Lcom/sec/android/app/sbrowser/common/utils/PermissionHelper;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/utils/PermissionHelper$PermissionCallback;)V

    return-void

    :cond_1
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public clearLastNotificationId(Landroid/content/Context;)V
    .locals 1

    const-string p0, "six_data"

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "six_last_notification_id"

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public getDownloadDir(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    new-instance p0, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getDownloadDir - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "SixDownloadManager"

    invoke-static {p1, v0, v1}, Landroidx/recyclerview/widget/P;->C(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method

.method public getLastNotificationId(Landroid/content/Context;)I
    .locals 2

    const-string p0, "six_last_notification_id"

    const v0, 0x186a0

    const-string v1, "six_data"

    invoke-static {p1, v1, p0, v0}, Lcom/sec/android/app/sbrowser/common/utils/PreferenceUtils;->getPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getServiceComponentName(Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 1

    new-instance p0, Landroid/content/ComponentName;

    const-class v0, Lcom/sec/android/app/sbrowser/extensions/SixDownloadService;

    invoke-direct {p0, p1, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object p0
.end method

.method public handleDefaultTurnOnBlocker(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public sendSAEventLog(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setLastNotificationId(Landroid/content/Context;I)V
    .locals 1

    const-string p0, "six_data"

    const-string v0, "six_last_notification_id"

    invoke-static {p1, p0, v0, p2}, Lcom/sec/android/app/sbrowser/common/utils/PreferenceUtils;->setPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
