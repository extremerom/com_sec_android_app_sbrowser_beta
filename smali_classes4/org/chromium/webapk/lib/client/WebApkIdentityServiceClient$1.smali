.class Lorg/chromium/webapk/lib/client/WebApkIdentityServiceClient$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/webapk/lib/client/WebApkServiceConnectionManager$ConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/webapk/lib/client/WebApkIdentityServiceClient;->checkBrowserBacksWebApkAsync(Landroid/content/Context;Ljava/lang/String;Lorg/chromium/webapk/lib/client/WebApkIdentityServiceClient$CheckBrowserBacksWebApkCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/webapk/lib/client/WebApkIdentityServiceClient;

.field final synthetic val$browserContext:Landroid/content/Context;

.field final synthetic val$callback:Lorg/chromium/webapk/lib/client/WebApkIdentityServiceClient$CheckBrowserBacksWebApkCallback;

.field final synthetic val$webApkPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/chromium/webapk/lib/client/WebApkIdentityServiceClient;Landroid/content/Context;Ljava/lang/String;Lorg/chromium/webapk/lib/client/WebApkIdentityServiceClient$CheckBrowserBacksWebApkCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lorg/chromium/webapk/lib/client/WebApkIdentityServiceClient$1;->this$0:Lorg/chromium/webapk/lib/client/WebApkIdentityServiceClient;

    iput-object p2, p0, Lorg/chromium/webapk/lib/client/WebApkIdentityServiceClient$1;->val$browserContext:Landroid/content/Context;

    iput-object p3, p0, Lorg/chromium/webapk/lib/client/WebApkIdentityServiceClient$1;->val$webApkPackageName:Ljava/lang/String;

    iput-object p4, p0, Lorg/chromium/webapk/lib/client/WebApkIdentityServiceClient$1;->val$callback:Lorg/chromium/webapk/lib/client/WebApkIdentityServiceClient$CheckBrowserBacksWebApkCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected(Landroid/os/IBinder;)V
    .locals 3

    iget-object v0, p0, Lorg/chromium/webapk/lib/client/WebApkIdentityServiceClient$1;->val$browserContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/chromium/webapk/lib/client/WebApkIdentityServiceClient$1;->val$browserContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/chromium/webapk/lib/client/WebApkIdentityServiceClient$1;->val$webApkPackageName:Ljava/lang/String;

    invoke-static {p1, v1}, Lorg/chromium/webapk/lib/client/WebApkIdentityServiceClient;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lorg/chromium/webapk/lib/client/WebApkIdentityServiceClient$1;->val$callback:Lorg/chromium/webapk/lib/client/WebApkIdentityServiceClient$CheckBrowserBacksWebApkCallback;

    invoke-static {v0, p1, p0}, Lorg/chromium/webapk/lib/client/WebApkIdentityServiceClient;->b(Ljava/lang/String;Ljava/lang/String;Lorg/chromium/webapk/lib/client/WebApkIdentityServiceClient$CheckBrowserBacksWebApkCallback;)V

    return-void

    :cond_0
    invoke-static {p1}, Lorg/chromium/webapk/lib/common/identity_service/IIdentityService$Stub;->asInterface(Landroid/os/IBinder;)Lorg/chromium/webapk/lib/common/identity_service/IIdentityService;

    move-result-object p1

    :try_start_0
    invoke-interface {p1}, Lorg/chromium/webapk/lib/common/identity_service/IIdentityService;->getRuntimeHostBrowserPackageName()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to get runtime host from the Identity service. "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "WebApkIdentityServiceClient"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    :goto_0
    iget-object p0, p0, Lorg/chromium/webapk/lib/client/WebApkIdentityServiceClient$1;->val$callback:Lorg/chromium/webapk/lib/client/WebApkIdentityServiceClient$CheckBrowserBacksWebApkCallback;

    invoke-static {v0, p1, p0}, Lorg/chromium/webapk/lib/client/WebApkIdentityServiceClient;->b(Ljava/lang/String;Ljava/lang/String;Lorg/chromium/webapk/lib/client/WebApkIdentityServiceClient$CheckBrowserBacksWebApkCallback;)V

    return-void
.end method
