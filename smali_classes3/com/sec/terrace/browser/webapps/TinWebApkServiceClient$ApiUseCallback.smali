.class interface abstract Lcom/sec/terrace/browser/webapps/TinWebApkServiceClient$ApiUseCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/webapk/lib/client/WebApkServiceConnectionManager$ConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/browser/webapps/TinWebApkServiceClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ApiUseCallback"
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# virtual methods
.method public onConnected(Landroid/os/IBinder;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {p1}, Lorg/chromium/webapk/lib/runtime_library/IWebApkApi$Stub;->asInterface(Landroid/os/IBinder;)Lorg/chromium/webapk/lib/runtime_library/IWebApkApi;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/sec/terrace/browser/webapps/TinWebApkServiceClient$ApiUseCallback;->useApi(Lorg/chromium/webapk/lib/runtime_library/IWebApkApi;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "TinWebApkServiceClient"

    const-string v0, "WebApkAPI use failed."

    invoke-static {p1, v0, p0}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public abstract useApi(Lorg/chromium/webapk/lib/runtime_library/IWebApkApi;)V
.end method
