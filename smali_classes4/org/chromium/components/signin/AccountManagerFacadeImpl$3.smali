.class Lorg/chromium/components/signin/AccountManagerFacadeImpl$3;
.super Lorg/chromium/base/task/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/components/signin/AccountManagerFacadeImpl;->checkChildAccountStatus(Lorg/chromium/components/signin/base/CoreAccountInfo;Lorg/chromium/components/signin/AccountManagerFacade$ChildAccountStatusListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

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


# direct methods
.method public constructor <init>(Lorg/chromium/components/signin/AccountManagerFacadeImpl;Lorg/chromium/components/signin/base/CoreAccountInfo;Lorg/chromium/components/signin/AccountManagerFacade$ChildAccountStatusListener;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/components/signin/AccountManagerFacadeImpl$3;->this$0:Lorg/chromium/components/signin/AccountManagerFacadeImpl;

    iput-object p2, p0, Lorg/chromium/components/signin/AccountManagerFacadeImpl$3;->val$coreAccountInfo:Lorg/chromium/components/signin/base/CoreAccountInfo;

    iput-object p3, p0, Lorg/chromium/components/signin/AccountManagerFacadeImpl$3;->val$listener:Lorg/chromium/components/signin/AccountManagerFacade$ChildAccountStatusListener;

    invoke-direct {p0}, Lorg/chromium/base/task/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Boolean;
    .locals 2

    iget-object v0, p0, Lorg/chromium/components/signin/AccountManagerFacadeImpl$3;->val$coreAccountInfo:Lorg/chromium/components/signin/base/CoreAccountInfo;

    invoke-virtual {v0}, Lorg/chromium/components/signin/base/CoreAccountInfo;->getEmail()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/components/signin/AccountUtils;->createAccountFromName(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v0

    iget-object p0, p0, Lorg/chromium/components/signin/AccountManagerFacadeImpl$3;->this$0:Lorg/chromium/components/signin/AccountManagerFacadeImpl;

    invoke-static {p0}, Lorg/chromium/components/signin/AccountManagerFacadeImpl;->g(Lorg/chromium/components/signin/AccountManagerFacadeImpl;)Lorg/chromium/components/signin/AccountManagerDelegate;

    move-result-object p0

    const-string v1, "service_usm"

    invoke-interface {p0, v0, v1}, Lorg/chromium/components/signin/AccountManagerDelegate;->hasFeature(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic doInBackground()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lorg/chromium/components/signin/AccountManagerFacadeImpl$3;->doInBackground()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public onPostExecute(Ljava/lang/Boolean;)V
    .locals 2

    iget-object v0, p0, Lorg/chromium/components/signin/AccountManagerFacadeImpl$3;->val$listener:Lorg/chromium/components/signin/AccountManagerFacade$ChildAccountStatusListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lorg/chromium/components/signin/AccountManagerFacadeImpl$3;->val$coreAccountInfo:Lorg/chromium/components/signin/base/CoreAccountInfo;

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

    invoke-virtual {p0, p1}, Lorg/chromium/components/signin/AccountManagerFacadeImpl$3;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
