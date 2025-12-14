.class Lorg/chromium/components/signin/AccountManagerFacadeImpl$4;
.super Lorg/chromium/base/task/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/chromium/base/task/AsyncTask<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/components/signin/AccountManagerFacadeImpl;

.field final synthetic val$coreAccountInfo:Lorg/chromium/components/signin/base/CoreAccountInfo;

.field final synthetic val$listener:Lorg/chromium/components/signin/AccountManagerFacade$ChildAccountStatusListener;


# virtual methods
.method public doInBackground()Ljava/lang/Boolean;
    .locals 2

    iget-object v0, p0, Lorg/chromium/components/signin/AccountManagerFacadeImpl$4;->val$coreAccountInfo:Lorg/chromium/components/signin/base/CoreAccountInfo;

    invoke-virtual {v0}, Lorg/chromium/components/signin/base/CoreAccountInfo;->getEmail()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/components/signin/AccountUtils;->createAccountFromName(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v0

    iget-object p0, p0, Lorg/chromium/components/signin/AccountManagerFacadeImpl$4;->this$0:Lorg/chromium/components/signin/AccountManagerFacadeImpl;

    invoke-static {p0}, Lorg/chromium/components/signin/AccountManagerFacadeImpl;->g(Lorg/chromium/components/signin/AccountManagerFacadeImpl;)Lorg/chromium/components/signin/AccountManagerDelegate;

    move-result-object p0

    const-string v1, "accountcapabilities/guydolldmfya"

    invoke-static {v1}, Lorg/chromium/components/signin/AccountManagerFacadeImpl;->getAndroidCapabilityName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lorg/chromium/components/signin/AccountManagerDelegate;->hasCapability(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic doInBackground()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lorg/chromium/components/signin/AccountManagerFacadeImpl$4;->doInBackground()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public onPostExecute(Ljava/lang/Boolean;)V
    .locals 2

    iget-object v0, p0, Lorg/chromium/components/signin/AccountManagerFacadeImpl$4;->val$listener:Lorg/chromium/components/signin/AccountManagerFacade$ChildAccountStatusListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lorg/chromium/components/signin/AccountManagerFacadeImpl$4;->val$coreAccountInfo:Lorg/chromium/components/signin/base/CoreAccountInfo;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-interface {v0, v1, p0}, Lorg/chromium/components/signin/AccountManagerFacade$ChildAccountStatusListener;->onStatusReady(ZLorg/chromium/components/signin/base/CoreAccountInfo;)V

    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lorg/chromium/components/signin/AccountManagerFacadeImpl$4;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
