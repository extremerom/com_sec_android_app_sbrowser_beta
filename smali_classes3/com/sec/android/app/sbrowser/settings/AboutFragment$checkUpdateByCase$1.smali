.class public final Lcom/sec/android/app/sbrowser/settings/AboutFragment$checkUpdateByCase$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService$SAAccessTokenCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/settings/AboutFragment;->checkUpdateByCase()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\'\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J1\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00022\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0002H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\n\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000f\u0010\u000c\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\u000bJ5\u0010\u0011\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\r2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0017\u0010\u0014\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u0016"
    }
    d2 = {
        "com/sec/android/app/sbrowser/settings/AboutFragment$checkUpdateByCase$1",
        "Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService$SAAccessTokenCallback;",
        "",
        "countryCode",
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
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/settings/AboutFragment;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/settings/AboutFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/AboutFragment$checkUpdateByCase$1;->this$0:Lcom/sec/android/app/sbrowser/settings/AboutFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/settings/AboutFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/AboutFragment$checkUpdateByCase$1;->onAuthTokenExpiredError$lambda$1(Lcom/sec/android/app/sbrowser/settings/AboutFragment;)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/settings/AboutFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/AboutFragment$checkUpdateByCase$1;->onAccessTokenAcquired$lambda$0(Lcom/sec/android/app/sbrowser/settings/AboutFragment;)V

    return-void
.end method

.method private static final onAccessTokenAcquired$lambda$0(Lcom/sec/android/app/sbrowser/settings/AboutFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->access$checkUpdate(Lcom/sec/android/app/sbrowser/settings/AboutFragment;)V

    return-void
.end method

.method private static final onAuthTokenExpiredError$lambda$1(Lcom/sec/android/app/sbrowser/settings/AboutFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->access$checkUpdate(Lcom/sec/android/app/sbrowser/settings/AboutFragment;)V

    return-void
.end method


# virtual methods
.method public onAccessTokenAcquired(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    const-string p4, "countryCode"

    invoke-static {p1, p4}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "accessToken"

    invoke-static {p2, p4}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "apiServerUrl"

    invoke-static {p3, p2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "[AIDL] onAccessTokenAcquired : "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "AboutFragment"

    invoke-static {p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/stub/StubUtil;->setCountryCode(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/AboutFragment$checkUpdateByCase$1;->this$0:Lcom/sec/android/app/sbrowser/settings/AboutFragment;

    new-instance p1, Lcom/sec/android/app/sbrowser/settings/b;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/sec/android/app/sbrowser/settings/b;-><init>(Lcom/sec/android/app/sbrowser/settings/AboutFragment;I)V

    const-wide/16 p2, 0x64

    invoke-static {p1, p2, p3}, Lcom/sec/terrace/base/TerraceThreadUtils;->postOnUiThreadDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public onAuthTokenExpiredError()V
    .locals 2

    const-string v0, "FAIL"

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/stub/StubUtil;->setCountryCode(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/AboutFragment$checkUpdateByCase$1;->this$0:Lcom/sec/android/app/sbrowser/settings/AboutFragment;

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/b;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/settings/b;-><init>(Lcom/sec/android/app/sbrowser/settings/AboutFragment;I)V

    invoke-static {v0}, Lcom/sec/terrace/base/TerraceThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onConsentListReceived(ZLandroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    new-instance p0, Ldb/i;

    const-string p1, "An operation is not implemented: Not yet implemented"

    invoke-direct {p0, p1}, Ldb/i;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onError(Ljava/lang/String;)V
    .locals 0

    const-string p0, "errorCode"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "[AIDL] onError : "

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "AboutFragment"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onNoAccountError()V
    .locals 1

    const-string v0, "NONE"

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/stub/StubUtil;->setCountryCode(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/AboutFragment$checkUpdateByCase$1;->this$0:Lcom/sec/android/app/sbrowser/settings/AboutFragment;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->access$checkUpdate(Lcom/sec/android/app/sbrowser/settings/AboutFragment;)V

    return-void
.end method
