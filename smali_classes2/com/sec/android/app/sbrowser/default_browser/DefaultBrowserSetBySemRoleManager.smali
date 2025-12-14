.class public Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserSetBySemRoleManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserSetting;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserSetting$UpdateCallBack;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserSetBySemRoleManager;->lambda$setSamsungInternetAsDefaultBrowser$0(Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserSetting$UpdateCallBack;Ljava/lang/Boolean;)V

    return-void
.end method

.method private static synthetic lambda$setSamsungInternetAsDefaultBrowser$0(Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserSetting$UpdateCallBack;Ljava/lang/Boolean;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "set default browser: result: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DefaultBrowserSetBySemRoleManager"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserSetting$UpdateCallBack;->onUpdated()V

    :cond_0
    return-void
.end method


# virtual methods
.method public isSamsungInternetSetAsDefaultBrowser(Landroid/content/Context;)Z
    .locals 2

    :try_start_0
    new-instance p0, Lcom/sec/sbrowser/spl/wrapper/SemRoleManager;

    invoke-direct {p0, p1}, Lcom/sec/sbrowser/spl/wrapper/SemRoleManager;-><init>(Ljava/lang/Object;)V

    const-string v0, "android.app.role.BROWSER"

    invoke-virtual {p0, v0}, Lcom/sec/sbrowser/spl/wrapper/SemRoleManager;->getRoleHolders(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public onResult(Landroid/content/Context;I)V
    .locals 0

    return-void
.end method

.method public setSamsungInternetAsDefaultBrowser(Landroid/content/Context;Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserSetting$UpdateCallBack;)V
    .locals 7

    :try_start_0
    new-instance v0, Lcom/sec/sbrowser/spl/wrapper/SemRoleManager;

    invoke-direct {v0, p1}, Lcom/sec/sbrowser/spl/wrapper/SemRoleManager;-><init>(Ljava/lang/Object;)V

    new-instance v6, Lcom/sec/android/app/sbrowser/default_browser/a;

    const/4 p0, 0x1

    invoke-direct {v6, p2, p0}, Lcom/sec/android/app/sbrowser/default_browser/a;-><init>(Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserSetting$UpdateCallBack;I)V

    const-string v1, "android.app.role.BROWSER"

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object v2, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    sget-object v5, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/sec/sbrowser/spl/wrapper/SemRoleManager;->addRoleHolderAsUser(Ljava/lang/String;Ljava/lang/String;ILandroid/os/UserHandle;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
