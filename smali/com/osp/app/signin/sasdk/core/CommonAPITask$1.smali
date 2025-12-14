.class final Lcom/osp/app/signin/sasdk/core/CommonAPITask$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/osp/app/signin/sasdk/http/HttpRequestClient$CheckDomainResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/osp/app/signin/sasdk/core/CommonAPITask;->checkDomain(Landroid/content/Context;ILcom/osp/app/signin/sasdk/response/ISaAPIResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/osp/app/signin/sasdk/response/ISaAPIResponse;

.field final synthetic val$responseBundle:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;Lcom/osp/app/signin/sasdk/response/ISaAPIResponse;)V
    .locals 0

    iput-object p1, p0, Lcom/osp/app/signin/sasdk/core/CommonAPITask$1;->val$responseBundle:Landroid/os/Bundle;

    iput-object p2, p0, Lcom/osp/app/signin/sasdk/core/CommonAPITask$1;->val$listener:Lcom/osp/app/signin/sasdk/response/ISaAPIResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestFail()V
    .locals 3

    iget-object v0, p0, Lcom/osp/app/signin/sasdk/core/CommonAPITask$1;->val$responseBundle:Landroid/os/Bundle;

    const-string v1, "result"

    const-string v2, "failed"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/osp/app/signin/sasdk/core/CommonAPITask$1;->val$responseBundle:Landroid/os/Bundle;

    const-string v1, "code"

    const/16 v2, 0x3f3

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/osp/app/signin/sasdk/core/CommonAPITask$1;->val$listener:Lcom/osp/app/signin/sasdk/response/ISaAPIResponse;

    iget-object p0, p0, Lcom/osp/app/signin/sasdk/core/CommonAPITask$1;->val$responseBundle:Landroid/os/Bundle;

    invoke-interface {v0, p0}, Lcom/osp/app/signin/sasdk/response/ISaAPIResponse;->handleResponse(Landroid/os/Bundle;)V

    return-void
.end method

.method public onRequestSuccess(Lcom/osp/app/signin/sasdk/response/DomainResponseData;)V
    .locals 3

    iget-object v0, p0, Lcom/osp/app/signin/sasdk/core/CommonAPITask$1;->val$responseBundle:Landroid/os/Bundle;

    invoke-virtual {p1}, Lcom/osp/app/signin/sasdk/response/BaseDomainResponseData;->getApiServerUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "api_server_url"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/osp/app/signin/sasdk/core/CommonAPITask$1;->val$responseBundle:Landroid/os/Bundle;

    const-string v1, "auth_server_url"

    invoke-virtual {p1}, Lcom/osp/app/signin/sasdk/response/BaseDomainResponseData;->getAuthServerUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/osp/app/signin/sasdk/core/CommonAPITask$1;->val$responseBundle:Landroid/os/Bundle;

    const-string v1, "idm_server_url"

    invoke-virtual {p1}, Lcom/osp/app/signin/sasdk/response/BaseDomainResponseData;->getIdmServerUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/osp/app/signin/sasdk/core/CommonAPITask$1;->val$listener:Lcom/osp/app/signin/sasdk/response/ISaAPIResponse;

    iget-object p0, p0, Lcom/osp/app/signin/sasdk/core/CommonAPITask$1;->val$responseBundle:Landroid/os/Bundle;

    invoke-interface {p1, p0}, Lcom/osp/app/signin/sasdk/response/ISaAPIResponse;->handleCheckDomainResponse(Landroid/os/Bundle;)V

    return-void
.end method
