.class public Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserSetByRoleManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserSetting;


# instance fields
.field private mCallBack:Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserSetting$UpdateCallBack;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserSetting$UpdateCallBack;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserSetByRoleManager;->lambda$setSamsungInternetAsDefaultBrowser$0(Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserSetting$UpdateCallBack;Ljava/lang/Boolean;)V

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

    const-string v0, "DefaultBrowserSetByRoleManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserSetting$UpdateCallBack;->onUpdated()V

    :cond_0
    return-void
.end method


# virtual methods
.method public isSamsungInternetSetAsDefaultBrowser(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserPreferenceUtils;->isRoleManagerCanceled(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const-class p0, Landroid/app/role/RoleManager;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/role/RoleManager;

    const-string p1, "android.app.role.BROWSER"

    invoke-virtual {p0, p1}, Landroid/app/role/RoleManager;->isRoleHeld(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public onResult(Landroid/content/Context;I)V
    .locals 0

    if-nez p2, :cond_0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserPreferenceUtils;->setRoleManagerCanceled(Landroid/content/Context;)V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserSetByRoleManager;->mCallBack:Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserSetting$UpdateCallBack;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserSetting$UpdateCallBack;->onUpdated()V

    :cond_1
    return-void
.end method

.method public setSamsungInternetAsDefaultBrowser(Landroid/content/Context;Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserSetting$UpdateCallBack;)V
    .locals 9

    const-class v0, Landroid/app/role/RoleManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/role/RoleManager;

    :try_start_0
    const-string v2, "addRoleHolderAsUser"

    const-class v3, Ljava/lang/String;

    const-class v4, Ljava/lang/String;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v6, Landroid/os/UserHandle;

    const-class v7, Ljava/util/concurrent/Executor;

    const-class v8, Ljava/util/function/Consumer;

    filled-new-array/range {v3 .. v8}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-instance v7, Lcom/sec/android/app/sbrowser/default_browser/a;

    const/4 v2, 0x0

    invoke-direct {v7, p2, v2}, Lcom/sec/android/app/sbrowser/default_browser/a;-><init>(Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserSetting$UpdateCallBack;I)V

    const-string v2, "android.app.role.BROWSER"

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    sget-object v6, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    filled-new-array/range {v2 .. v7}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception while set default browser, SDK version - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DefaultBrowserSetByRoleManager"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserSetByRoleManager;->mCallBack:Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserSetting$UpdateCallBack;

    const-string p0, "android.app.role.BROWSER"

    invoke-virtual {v1, p0}, Landroid/app/role/RoleManager;->createRequestRoleIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    check-cast p1, Landroid/app/Activity;

    const/16 p2, 0xa3

    invoke-virtual {p1, p0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void
.end method
