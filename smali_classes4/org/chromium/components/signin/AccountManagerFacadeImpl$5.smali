.class Lorg/chromium/components/signin/AccountManagerFacadeImpl$5;
.super Lorg/chromium/base/task/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/components/signin/AccountManagerFacadeImpl;->getAccountCapabilities(Lorg/chromium/components/signin/base/CoreAccountInfo;)Lorg/chromium/base/Promise;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/chromium/base/task/AsyncTask<",
        "Lorg/chromium/components/signin/base/AccountCapabilities;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/components/signin/AccountManagerFacadeImpl;

.field final synthetic val$accountCapabilitiesPromise:Lorg/chromium/base/Promise;

.field final synthetic val$coreAccountInfo:Lorg/chromium/components/signin/base/CoreAccountInfo;


# direct methods
.method public constructor <init>(Lorg/chromium/components/signin/AccountManagerFacadeImpl;Lorg/chromium/components/signin/base/CoreAccountInfo;Lorg/chromium/base/Promise;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/components/signin/AccountManagerFacadeImpl$5;->this$0:Lorg/chromium/components/signin/AccountManagerFacadeImpl;

    iput-object p2, p0, Lorg/chromium/components/signin/AccountManagerFacadeImpl$5;->val$coreAccountInfo:Lorg/chromium/components/signin/base/CoreAccountInfo;

    iput-object p3, p0, Lorg/chromium/components/signin/AccountManagerFacadeImpl$5;->val$accountCapabilitiesPromise:Lorg/chromium/base/Promise;

    invoke-direct {p0}, Lorg/chromium/base/task/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lorg/chromium/components/signin/AccountManagerFacadeImpl$5;->doInBackground()Lorg/chromium/components/signin/base/AccountCapabilities;

    move-result-object p0

    return-object p0
.end method

.method public doInBackground()Lorg/chromium/components/signin/base/AccountCapabilities;
    .locals 6

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lorg/chromium/components/signin/AccountCapabilitiesConstants;->SUPPORTED_ACCOUNT_CAPABILITY_NAMES:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lorg/chromium/components/signin/AccountManagerFacadeImpl$5;->this$0:Lorg/chromium/components/signin/AccountManagerFacadeImpl;

    invoke-static {v3}, Lorg/chromium/components/signin/AccountManagerFacadeImpl;->g(Lorg/chromium/components/signin/AccountManagerFacadeImpl;)Lorg/chromium/components/signin/AccountManagerDelegate;

    move-result-object v3

    iget-object v4, p0, Lorg/chromium/components/signin/AccountManagerFacadeImpl$5;->val$coreAccountInfo:Lorg/chromium/components/signin/base/CoreAccountInfo;

    invoke-static {v4}, Lorg/chromium/components/signin/base/CoreAccountInfo;->getAndroidAccountFrom(Lorg/chromium/components/signin/base/CoreAccountInfo;)Landroid/accounts/Account;

    move-result-object v4

    invoke-static {v2}, Lorg/chromium/components/signin/AccountManagerFacadeImpl;->getAndroidCapabilityName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lorg/chromium/components/signin/AccountManagerDelegate;->hasCapability(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lorg/chromium/components/signin/base/AccountCapabilities;->parseFromCapabilitiesResponse(Ljava/util/Map;)Lorg/chromium/components/signin/base/AccountCapabilities;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lorg/chromium/components/signin/base/AccountCapabilities;

    invoke-virtual {p0, p1}, Lorg/chromium/components/signin/AccountManagerFacadeImpl$5;->onPostExecute(Lorg/chromium/components/signin/base/AccountCapabilities;)V

    return-void
.end method

.method public onPostExecute(Lorg/chromium/components/signin/base/AccountCapabilities;)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/signin/AccountManagerFacadeImpl$5;->val$accountCapabilitiesPromise:Lorg/chromium/base/Promise;

    invoke-virtual {p0, p1}, Lorg/chromium/base/Promise;->fulfill(Ljava/lang/Object;)V

    return-void
.end method
