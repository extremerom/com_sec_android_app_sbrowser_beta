.class public Lorg/chromium/webapk/lib/client/WebApkIdentityServiceClient;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/webapk/lib/client/WebApkIdentityServiceClient$CheckBrowserBacksWebApkCallback;
    }
.end annotation


# static fields
.field public static final SHELL_APK_VERSION_SUPPORTING_SWITCH_RUNTIME_HOST:I = 0x6

.field private static sInstance:Lorg/chromium/webapk/lib/client/WebApkIdentityServiceClient;


# instance fields
.field private mConnectionManager:Lorg/chromium/webapk/lib/client/WebApkServiceConnectionManager;


# direct methods
.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/chromium/webapk/lib/client/WebApkServiceConnectionManager;

    const/4 v1, 0x0

    const-string v2, "org.webapk.IDENTITY_SERVICE_API"

    invoke-direct {v0, v1, v2}, Lorg/chromium/webapk/lib/client/WebApkServiceConnectionManager;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/chromium/webapk/lib/client/WebApkIdentityServiceClient;->mConnectionManager:Lorg/chromium/webapk/lib/client/WebApkServiceConnectionManager;

    return-void
.end method

.method public static bridge synthetic a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lorg/chromium/webapk/lib/client/WebApkIdentityServiceClient;->maybeExtractRuntimeHostFromMetaData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic b(Ljava/lang/String;Ljava/lang/String;Lorg/chromium/webapk/lib/client/WebApkIdentityServiceClient$CheckBrowserBacksWebApkCallback;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/chromium/webapk/lib/client/WebApkIdentityServiceClient;->onGotWebApkRuntimeHost(Ljava/lang/String;Ljava/lang/String;Lorg/chromium/webapk/lib/client/WebApkIdentityServiceClient$CheckBrowserBacksWebApkCallback;)V

    return-void
.end method

.method public static disconnectAll(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lorg/chromium/webapk/lib/client/WebApkIdentityServiceClient;->sInstance:Lorg/chromium/webapk/lib/client/WebApkIdentityServiceClient;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lorg/chromium/webapk/lib/client/WebApkIdentityServiceClient;->mConnectionManager:Lorg/chromium/webapk/lib/client/WebApkServiceConnectionManager;

    invoke-virtual {v0, p0}, Lorg/chromium/webapk/lib/client/WebApkServiceConnectionManager;->disconnectAll(Landroid/content/Context;)V

    return-void
.end method

.method public static getInstance()Lorg/chromium/webapk/lib/client/WebApkIdentityServiceClient;
    .locals 1

    sget-object v0, Lorg/chromium/webapk/lib/client/WebApkIdentityServiceClient;->sInstance:Lorg/chromium/webapk/lib/client/WebApkIdentityServiceClient;

    if-nez v0, :cond_0

    new-instance v0, Lorg/chromium/webapk/lib/client/WebApkIdentityServiceClient;

    invoke-direct {v0}, Lorg/chromium/webapk/lib/client/WebApkIdentityServiceClient;-><init>()V

    sput-object v0, Lorg/chromium/webapk/lib/client/WebApkIdentityServiceClient;->sInstance:Lorg/chromium/webapk/lib/client/WebApkIdentityServiceClient;

    :cond_0
    sget-object v0, Lorg/chromium/webapk/lib/client/WebApkIdentityServiceClient;->sInstance:Lorg/chromium/webapk/lib/client/WebApkIdentityServiceClient;

    return-object v0
.end method

.method private static maybeExtractRuntimeHostFromMetaData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1}, Lorg/chromium/webapk/lib/client/WebApkIdentityServiceClient;->readMetaData(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string p1, "com.sec.terrace.browser.webapk.shell_apk.shellApkVersion"

    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x6

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "com.sec.terrace.browser.webapk.shell_apk.runtimeHost"

    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static onGotWebApkRuntimeHost(Ljava/lang/String;Ljava/lang/String;Lorg/chromium/webapk/lib/client/WebApkIdentityServiceClient$CheckBrowserBacksWebApkCallback;)V
    .locals 0

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    invoke-interface {p2, p0}, Lorg/chromium/webapk/lib/client/WebApkIdentityServiceClient$CheckBrowserBacksWebApkCallback;->onChecked(Z)V

    return-void
.end method

.method private static readMetaData(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v0, 0x80

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Web Apk package not found. "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WebApkIdentityServiceClient"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public checkBrowserBacksWebApkAsync(Landroid/content/Context;Ljava/lang/String;Lorg/chromium/webapk/lib/client/WebApkIdentityServiceClient$CheckBrowserBacksWebApkCallback;)V
    .locals 1

    new-instance v0, Lorg/chromium/webapk/lib/client/WebApkIdentityServiceClient$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/chromium/webapk/lib/client/WebApkIdentityServiceClient$1;-><init>(Lorg/chromium/webapk/lib/client/WebApkIdentityServiceClient;Landroid/content/Context;Ljava/lang/String;Lorg/chromium/webapk/lib/client/WebApkIdentityServiceClient$CheckBrowserBacksWebApkCallback;)V

    iget-object p0, p0, Lorg/chromium/webapk/lib/client/WebApkIdentityServiceClient;->mConnectionManager:Lorg/chromium/webapk/lib/client/WebApkServiceConnectionManager;

    invoke-virtual {p0, p1, p2, v0}, Lorg/chromium/webapk/lib/client/WebApkServiceConnectionManager;->connect(Landroid/content/Context;Ljava/lang/String;Lorg/chromium/webapk/lib/client/WebApkServiceConnectionManager$ConnectionCallback;)V

    return-void
.end method
