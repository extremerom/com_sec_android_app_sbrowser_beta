.class final Lcom/osp/app/signin/sasdk/core/CommonAPITask$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/osp/app/signin/sasdk/http/HttpRequestClient$EntryPointResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/osp/app/signin/sasdk/core/CommonAPITask;->getEntryPointOfIdm(Landroid/content/Context;ILcom/osp/app/signin/sasdk/response/ISaAPIResponse;)V
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

    iput-object p1, p0, Lcom/osp/app/signin/sasdk/core/CommonAPITask$2;->val$responseBundle:Landroid/os/Bundle;

    iput-object p2, p0, Lcom/osp/app/signin/sasdk/core/CommonAPITask$2;->val$listener:Lcom/osp/app/signin/sasdk/response/ISaAPIResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestFail()V
    .locals 3

    iget-object v0, p0, Lcom/osp/app/signin/sasdk/core/CommonAPITask$2;->val$responseBundle:Landroid/os/Bundle;

    const-string v1, "result"

    const-string v2, "failed"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/osp/app/signin/sasdk/core/CommonAPITask$2;->val$responseBundle:Landroid/os/Bundle;

    const-string v1, "code"

    const/16 v2, 0x3f3

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/osp/app/signin/sasdk/core/CommonAPITask$2;->val$listener:Lcom/osp/app/signin/sasdk/response/ISaAPIResponse;

    iget-object p0, p0, Lcom/osp/app/signin/sasdk/core/CommonAPITask$2;->val$responseBundle:Landroid/os/Bundle;

    invoke-interface {v0, p0}, Lcom/osp/app/signin/sasdk/response/ISaAPIResponse;->handleResponse(Landroid/os/Bundle;)V

    return-void
.end method

.method public onRequestSuccess(Lcom/osp/app/signin/sasdk/response/EntryPointResponseData;)V
    .locals 3

    iget-object v0, p0, Lcom/osp/app/signin/sasdk/core/CommonAPITask$2;->val$responseBundle:Landroid/os/Bundle;

    invoke-virtual {p1}, Lcom/osp/app/signin/sasdk/response/EntryPointResponseData;->getSignInURI()Ljava/lang/String;

    move-result-object v1

    const-string v2, "signInURI"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/osp/app/signin/sasdk/core/CommonAPITask$2;->val$responseBundle:Landroid/os/Bundle;

    const-string v1, "signUpURI"

    invoke-virtual {p1}, Lcom/osp/app/signin/sasdk/response/EntryPointResponseData;->getSignUpURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/osp/app/signin/sasdk/core/CommonAPITask$2;->val$responseBundle:Landroid/os/Bundle;

    const-string v1, "confirmPasswordURI"

    invoke-virtual {p1}, Lcom/osp/app/signin/sasdk/response/EntryPointResponseData;->getConfirmPasswordURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/osp/app/signin/sasdk/core/CommonAPITask$2;->val$responseBundle:Landroid/os/Bundle;

    const-string v1, "signOutURI"

    invoke-virtual {p1}, Lcom/osp/app/signin/sasdk/response/EntryPointResponseData;->getSignOutURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/osp/app/signin/sasdk/core/CommonAPITask$2;->val$responseBundle:Landroid/os/Bundle;

    const-string v1, "chkDoNum"

    invoke-virtual {p1}, Lcom/osp/app/signin/sasdk/response/EntryPointResponseData;->getChkDoNum()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/osp/app/signin/sasdk/core/CommonAPITask$2;->val$responseBundle:Landroid/os/Bundle;

    const-string v1, "pkiPublicKey"

    invoke-virtual {p1}, Lcom/osp/app/signin/sasdk/response/EntryPointResponseData;->getPkiPublicKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/osp/app/signin/sasdk/core/CommonAPITask$2;->val$responseBundle:Landroid/os/Bundle;

    const-string v1, "pbeKySpcIters"

    invoke-virtual {p1}, Lcom/osp/app/signin/sasdk/response/EntryPointResponseData;->getPbeKySpcIters()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/osp/app/signin/sasdk/core/CommonAPITask$2;->val$listener:Lcom/osp/app/signin/sasdk/response/ISaAPIResponse;

    iget-object p0, p0, Lcom/osp/app/signin/sasdk/core/CommonAPITask$2;->val$responseBundle:Landroid/os/Bundle;

    invoke-interface {p1, p0}, Lcom/osp/app/signin/sasdk/response/ISaAPIResponse;->handleGetEntryPointOfIdmResponse(Landroid/os/Bundle;)V

    return-void
.end method
