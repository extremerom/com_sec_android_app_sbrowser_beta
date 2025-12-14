.class public final Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoUtils$requestAccessToken$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService$SAAccessTokenCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoUtils;->requestAccessToken(Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoUtils$AppInfoCreateCallback;Lcom/samsung/android/sdk/scs/ai/language/AppInfo$RequestType;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\'\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J7\u0010\u0008\u001a\u00020\u00072\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0002H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\n\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000f\u0010\u000c\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\u000bJ5\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\r2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0002H\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0019\u0010\u0015\u001a\u00020\u00072\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0002H\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u0017"
    }
    d2 = {
        "com/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoUtils$requestAccessToken$1",
        "Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService$SAAccessTokenCallback;",
        "",
        "countryCoded",
        "accessToken",
        "apiServerUrl",
        "userId",
        "Ldb/r;",
        "onAccessTokenAcquired",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "onAuthTokenExpiredError",
        "()V",
        "onNoAccountError",
        "",
        "isSuccess",
        "Landroid/os/Bundle;",
        "response",
        "countryCode",
        "onConsentListReceived",
        "(ZLandroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V",
        "errorCode",
        "onError",
        "(Ljava/lang/String;)V",
        "SBrowser_highendBetaGlobal64Release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $callback:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoUtils$AppInfoCreateCallback;

.field final synthetic $requestType:Lcom/samsung/android/sdk/scs/ai/language/AppInfo$RequestType;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/scs/ai/language/AppInfo$RequestType;Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoUtils$AppInfoCreateCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoUtils$requestAccessToken$1;->$requestType:Lcom/samsung/android/sdk/scs/ai/language/AppInfo$RequestType;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoUtils$requestAccessToken$1;->$callback:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoUtils$AppInfoCreateCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccessTokenAcquired(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string p4, "AppInfoUtils"

    if-nez p1, :cond_5

    const-string p1, "FAIL"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;

    invoke-direct {p1}, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;-><init>()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoUtils$requestAccessToken$1;->$requestType:Lcom/samsung/android/sdk/scs/ai/language/AppInfo$RequestType;

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;->setRequestType(Lcom/samsung/android/sdk/scs/ai/language/AppInfo$RequestType;)Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;

    move-result-object p1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountUtil;->getAccountType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;->setAccountType(Ljava/lang/String;)Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;

    move-result-object p1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountUtil;->getSamsungAccountClientId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;->setAppId(Ljava/lang/String;)Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;->setAccessToken(Ljava/lang/String;)Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;->setServerUrl(Ljava/lang/String;)Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;

    move-result-object p1

    sget-object p2, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoUtils;->INSTANCE:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoUtils;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoUtils;->access$getHashedApiKey(Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoUtils;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;->setApiKey(Ljava/lang/String;)Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;

    move-result-object p1

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoUtils;->access$getHashesSigningKey(Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoUtils;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;->setSigningKey(Ljava/lang/String;)Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;->build()Lcom/samsung/android/sdk/scs/ai/language/AppInfo;

    move-result-object p1

    const-string p2, "Success to create AppInfo"

    invoke-static {p4, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoWrapper;

    invoke-static {p1}, Ltb/k;->c(Ljava/lang/Object;)V

    const/4 p3, 0x0

    const/4 p4, 0x2

    const/4 v0, 0x0

    invoke-direct {p2, p1, p3, p4, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoWrapper;-><init>(Lcom/samsung/android/sdk/scs/ai/language/AppInfo;ZILtb/f;)V

    invoke-static {p2, p3, p4, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoUtils;->updateCache$default(Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoWrapper;ZILjava/lang/Object;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoUtils$requestAccessToken$1;->$callback:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoUtils$AppInfoCreateCallback;

    if-eqz p0, :cond_2

    invoke-interface {p0, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoUtils$AppInfoCreateCallback;->onCreated(Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoWrapper;)V

    :cond_2
    return-void

    :cond_3
    :goto_0
    const-string p1, "failed to get apiServerUrl"

    invoke-static {p4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoUtils;->INSTANCE:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoUtils;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoUtils$requestAccessToken$1;->$requestType:Lcom/samsung/android/sdk/scs/ai/language/AppInfo$RequestType;

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoUtils;->access$clearCache(Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoUtils;Lcom/samsung/android/sdk/scs/ai/language/AppInfo$RequestType;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoUtils$requestAccessToken$1;->$callback:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoUtils$AppInfoCreateCallback;

    if-eqz p0, :cond_4

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoUtils$AppInfoCreateCallback;->onFailed()V

    :cond_4
    return-void

    :cond_5
    :goto_1
    const-string p1, "failed to get access token"

    invoke-static {p4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoUtils;->INSTANCE:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoUtils;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoUtils$requestAccessToken$1;->$requestType:Lcom/samsung/android/sdk/scs/ai/language/AppInfo$RequestType;

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoUtils;->access$clearCache(Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoUtils;Lcom/samsung/android/sdk/scs/ai/language/AppInfo$RequestType;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoUtils$requestAccessToken$1;->$callback:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoUtils$AppInfoCreateCallback;

    if-eqz p0, :cond_6

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoUtils$AppInfoCreateCallback;->onFailed()V

    :cond_6
    return-void
.end method

.method public onAuthTokenExpiredError()V
    .locals 2

    const-string v0, "AppInfoUtils"

    const-string v1, "onAuthTokenExpiredError"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoUtils;->INSTANCE:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoUtils;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoUtils$requestAccessToken$1;->$requestType:Lcom/samsung/android/sdk/scs/ai/language/AppInfo$RequestType;

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoUtils;->access$clearCache(Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoUtils;Lcom/samsung/android/sdk/scs/ai/language/AppInfo$RequestType;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoUtils$requestAccessToken$1;->$callback:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoUtils$AppInfoCreateCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoUtils$AppInfoCreateCallback;->onFailedAuthTokenExpired()V

    :cond_0
    return-void
.end method

.method public onConsentListReceived(ZLandroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    const-string p0, "AppInfoUtils"

    const-string p1, "onConsentListReceived"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 1

    const-string p1, "AppInfoUtils"

    const-string v0, "onError"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoUtils;->INSTANCE:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoUtils;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoUtils$requestAccessToken$1;->$requestType:Lcom/samsung/android/sdk/scs/ai/language/AppInfo$RequestType;

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoUtils;->access$clearCache(Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoUtils;Lcom/samsung/android/sdk/scs/ai/language/AppInfo$RequestType;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoUtils$requestAccessToken$1;->$callback:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoUtils$AppInfoCreateCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoUtils$AppInfoCreateCallback;->onFailed()V

    :cond_0
    return-void
.end method

.method public onNoAccountError()V
    .locals 2

    const-string v0, "AppInfoUtils"

    const-string v1, "onNoAccountError"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoUtils;->INSTANCE:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoUtils;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoUtils$requestAccessToken$1;->$requestType:Lcom/samsung/android/sdk/scs/ai/language/AppInfo$RequestType;

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoUtils;->access$clearCache(Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoUtils;Lcom/samsung/android/sdk/scs/ai/language/AppInfo$RequestType;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoUtils$requestAccessToken$1;->$callback:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoUtils$AppInfoCreateCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoUtils$AppInfoCreateCallback;->onFailed()V

    :cond_0
    return-void
.end method
