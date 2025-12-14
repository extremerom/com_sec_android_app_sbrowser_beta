.class Lcom/sec/terrace/browser/webapps/TinSBrowserWebApkHost$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/base/ApplicationStatus$ApplicationStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/terrace/browser/webapps/TinSBrowserWebApkHost;->checkSBrowserBacksWebApkAsync(Ljava/lang/String;Lorg/chromium/webapk/lib/client/WebApkIdentityServiceClient$CheckBrowserBacksWebApkCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplicationStateChange(I)V
    .locals 0

    const/4 p0, 0x3

    if-eq p1, p0, :cond_0

    const/4 p0, 0x4

    if-ne p1, p0, :cond_1

    :cond_0
    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lorg/chromium/webapk/lib/client/WebApkIdentityServiceClient;->disconnectAll(Landroid/content/Context;)V

    invoke-static {}, Lcom/sec/terrace/browser/webapps/TinWebApkServiceClient;->disconnectAll()V

    invoke-static {}, Lcom/sec/terrace/browser/webapps/TinSBrowserWebApkHost;->a()Lorg/chromium/base/ApplicationStatus$ApplicationStateListener;

    move-result-object p0

    invoke-static {p0}, Lorg/chromium/base/ApplicationStatus;->unregisterApplicationStateListener(Lorg/chromium/base/ApplicationStatus$ApplicationStateListener;)V

    invoke-static {}, Lcom/sec/terrace/browser/webapps/TinSBrowserWebApkHost;->b()V

    :cond_1
    return-void
.end method
