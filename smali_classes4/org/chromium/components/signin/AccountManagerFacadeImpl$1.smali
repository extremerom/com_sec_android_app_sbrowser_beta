.class Lorg/chromium/components/signin/AccountManagerFacadeImpl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/components/signin/ConnectionRetry$AuthTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/components/signin/AccountManagerFacadeImpl;->getAccessToken(Lorg/chromium/components/signin/base/CoreAccountInfo;Ljava/lang/String;Lorg/chromium/components/signin/AccountManagerFacade$GetAccessTokenCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/chromium/components/signin/ConnectionRetry$AuthTask<",
        "Lorg/chromium/components/signin/AccessTokenData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/components/signin/AccountManagerFacadeImpl;

.field final synthetic val$callback:Lorg/chromium/components/signin/AccountManagerFacade$GetAccessTokenCallback;

.field final synthetic val$coreAccountInfo:Lorg/chromium/components/signin/base/CoreAccountInfo;

.field final synthetic val$scope:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/chromium/components/signin/AccountManagerFacadeImpl;Lorg/chromium/components/signin/base/CoreAccountInfo;Ljava/lang/String;Lorg/chromium/components/signin/AccountManagerFacade$GetAccessTokenCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lorg/chromium/components/signin/AccountManagerFacadeImpl$1;->this$0:Lorg/chromium/components/signin/AccountManagerFacadeImpl;

    iput-object p2, p0, Lorg/chromium/components/signin/AccountManagerFacadeImpl$1;->val$coreAccountInfo:Lorg/chromium/components/signin/base/CoreAccountInfo;

    iput-object p3, p0, Lorg/chromium/components/signin/AccountManagerFacadeImpl$1;->val$scope:Ljava/lang/String;

    iput-object p4, p0, Lorg/chromium/components/signin/AccountManagerFacadeImpl$1;->val$callback:Lorg/chromium/components/signin/AccountManagerFacade$GetAccessTokenCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Z)V
    .locals 1

    iget-object v0, p0, Lorg/chromium/components/signin/AccountManagerFacadeImpl$1;->val$callback:Lorg/chromium/components/signin/AccountManagerFacade$GetAccessTokenCallback;

    invoke-interface {v0, p1}, Lorg/chromium/components/signin/AccountManagerFacade$GetAccessTokenCallback;->onGetTokenFailure(Z)V

    iget-object p0, p0, Lorg/chromium/components/signin/AccountManagerFacadeImpl$1;->this$0:Lorg/chromium/components/signin/AccountManagerFacadeImpl;

    invoke-static {p0}, Lorg/chromium/components/signin/AccountManagerFacadeImpl;->r(Lorg/chromium/components/signin/AccountManagerFacadeImpl;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lorg/chromium/components/signin/AccessTokenData;

    invoke-virtual {p0, p1}, Lorg/chromium/components/signin/AccountManagerFacadeImpl$1;->onSuccess(Lorg/chromium/components/signin/AccessTokenData;)V

    return-void
.end method

.method public onSuccess(Lorg/chromium/components/signin/AccessTokenData;)V
    .locals 1

    iget-object v0, p0, Lorg/chromium/components/signin/AccountManagerFacadeImpl$1;->val$callback:Lorg/chromium/components/signin/AccountManagerFacade$GetAccessTokenCallback;

    invoke-interface {v0, p1}, Lorg/chromium/components/signin/AccountManagerFacade$GetAccessTokenCallback;->onGetTokenSuccess(Lorg/chromium/components/signin/AccessTokenData;)V

    iget-object p0, p0, Lorg/chromium/components/signin/AccountManagerFacadeImpl$1;->this$0:Lorg/chromium/components/signin/AccountManagerFacadeImpl;

    invoke-static {p0}, Lorg/chromium/components/signin/AccountManagerFacadeImpl;->r(Lorg/chromium/components/signin/AccountManagerFacadeImpl;)V

    return-void
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lorg/chromium/components/signin/AccountManagerFacadeImpl$1;->run()Lorg/chromium/components/signin/AccessTokenData;

    move-result-object p0

    return-object p0
.end method

.method public run()Lorg/chromium/components/signin/AccessTokenData;
    .locals 2

    iget-object v0, p0, Lorg/chromium/components/signin/AccountManagerFacadeImpl$1;->this$0:Lorg/chromium/components/signin/AccountManagerFacadeImpl;

    invoke-static {v0}, Lorg/chromium/components/signin/AccountManagerFacadeImpl;->g(Lorg/chromium/components/signin/AccountManagerFacadeImpl;)Lorg/chromium/components/signin/AccountManagerDelegate;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/components/signin/AccountManagerFacadeImpl$1;->val$coreAccountInfo:Lorg/chromium/components/signin/base/CoreAccountInfo;

    invoke-virtual {v1}, Lorg/chromium/components/signin/base/CoreAccountInfo;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/chromium/components/signin/AccountUtils;->createAccountFromName(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v1

    iget-object p0, p0, Lorg/chromium/components/signin/AccountManagerFacadeImpl$1;->val$scope:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Lorg/chromium/components/signin/AccountManagerDelegate;->getAccessToken(Landroid/accounts/Account;Ljava/lang/String;)Lorg/chromium/components/signin/AccessTokenData;

    move-result-object p0

    return-object p0
.end method
