.class public abstract Lcom/osp/app/signin/sasdk/response/BaseDomainResponseData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected mApiServerUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "api_server_url"
    .end annotation
.end field

.field protected mAuthServerUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "auth_server_url"
    .end annotation
.end field

.field protected mIdmServerUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "idm_server_url"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getApiServerUrl()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/osp/app/signin/sasdk/test/TestProperty;->getTestApiServer()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/osp/app/signin/sasdk/test/TestProperty;->getTestApiServer()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/osp/app/signin/sasdk/response/BaseDomainResponseData;->mApiServerUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getAuthServerUrl()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/osp/app/signin/sasdk/test/TestProperty;->getTestAuthServer()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/osp/app/signin/sasdk/test/TestProperty;->getTestAuthServer()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/osp/app/signin/sasdk/response/BaseDomainResponseData;->mAuthServerUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getIdmServerUrl()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/osp/app/signin/sasdk/test/TestProperty;->getTestIdmServer()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/osp/app/signin/sasdk/test/TestProperty;->getTestIdmServer()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/osp/app/signin/sasdk/response/BaseDomainResponseData;->mIdmServerUrl:Ljava/lang/String;

    return-object p0
.end method

.method public abstract setupSpecificDomainUrlIfNeeded(Landroid/content/Context;)V
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "api_server_url : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/osp/app/signin/sasdk/response/BaseDomainResponseData;->mApiServerUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", auth_server_url : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/osp/app/signin/sasdk/response/BaseDomainResponseData;->mAuthServerUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", idm_server_url : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/osp/app/signin/sasdk/response/BaseDomainResponseData;->mIdmServerUrl:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
