.class final Lorg/chromium/base/process_launcher/BindService;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static sBindServiceAsUserMethod:Ljava/lang/reflect/Method;


# direct methods
.method private static bindServiceByCall(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p0

    return p0
.end method

.method private static bindServiceByReflection(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/Handler;)Z
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DiscouragedPrivateApi"
        }
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    sget-object v0, Lorg/chromium/base/process_launcher/BindService;->sBindServiceAsUserMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v1, Landroid/os/Handler;

    const-class v2, Landroid/os/UserHandle;

    const-class v3, Landroid/content/Intent;

    const-class v4, Landroid/content/ServiceConnection;

    filled-new-array {v3, v4, v0, v1, v2}, [Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/content/Context;

    const-string v2, "bindServiceAsUser"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lorg/chromium/base/process_launcher/BindService;->sBindServiceAsUserMethod:Ljava/lang/reflect/Method;

    :cond_0
    :goto_0
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_1

    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/chromium/base/process_launcher/BindService;->sBindServiceAsUserMethod:Ljava/lang/reflect/Method;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    filled-new-array {p1, p2, p3, p4, v1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static doBindService(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/Handler;Ljava/util/concurrent/Executor;Ljava/lang/String;)Z
    .locals 6

    invoke-static {}, Lorg/chromium/base/process_launcher/BindService;->supportVariableConnections()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p6, :cond_0

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move-object v3, p6

    move-object v4, p5

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->bindIsolatedService(Landroid/content/Intent;ILjava/lang/String;Ljava/util/concurrent/Executor;Landroid/content/ServiceConnection;)Z

    move-result p0

    return p0

    :cond_0
    :try_start_0
    invoke-static {p0, p1, p2, p3, p4}, Lorg/chromium/base/process_launcher/BindService;->bindServiceByReflection(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/Handler;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p4

    :try_start_1
    invoke-static {p0, p1, p2, p3}, Lorg/chromium/base/process_launcher/BindService;->bindServiceByCall(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    return p0

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0, p4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static supportVariableConnections()Z
    .locals 1

    sget-boolean v0, Lorg/chromium/build/BuildConfig;->IS_INCREMENTAL_INSTALL:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
