.class public Lcom/osp/app/signin/sasdk/core/CommonAPIThread;
.super Lcom/osp/app/signin/sasdk/core/BaseApiThread;
.source "SourceFile"

# interfaces
.implements Lcom/osp/app/signin/sasdk/response/ISaAPIResponse;


# static fields
.field private static final TAG:Ljava/lang/String; = "CommonAPIThread"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Activity;ILandroid/os/Bundle;Lcom/osp/app/signin/sasdk/response/ISaSDKResponse;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/osp/app/signin/sasdk/core/BaseApiThread;-><init>(Landroid/content/Context;Landroid/app/Activity;ILandroid/os/Bundle;Lcom/osp/app/signin/sasdk/response/ISaSDKResponse;)V

    return-void
.end method


# virtual methods
.method public handleCheckDomainResponse(Landroid/os/Bundle;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "checkDomain Response - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CommonAPIThread"

    invoke-static {v0, p1}, Lcom/osp/app/signin/sasdk/common/SDKLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/osp/app/signin/sasdk/core/BaseApiThread;->isApiNotAvailable()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p0, "handleCheckDomainResponse() is not available"

    invoke-static {v0, p0}, Lcom/osp/app/signin/sasdk/common/SDKLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/osp/app/signin/sasdk/core/BaseApiThread;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {}, Lcom/osp/app/signin/sasdk/common/MetaManager;->getInstance()Lcom/osp/app/signin/sasdk/common/MetaManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/osp/app/signin/sasdk/common/MetaManager;->getActualRequest()I

    move-result v0

    invoke-static {p1, v0, p0}, Lcom/osp/app/signin/sasdk/core/CommonAPITask;->getEntryPointOfIdm(Landroid/content/Context;ILcom/osp/app/signin/sasdk/response/ISaAPIResponse;)V

    return-void
.end method

.method public handleGetEntryPointOfIdmResponse(Landroid/os/Bundle;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getEntryPointOfIdm Response - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CommonAPIThread"

    invoke-static {v0, p1}, Lcom/osp/app/signin/sasdk/common/SDKLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/osp/app/signin/sasdk/core/BaseApiThread;->isApiNotAvailable()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p0, "handleGetEntryPointOfIdmResponse() is not available"

    invoke-static {v0, p0}, Lcom/osp/app/signin/sasdk/common/SDKLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/osp/app/signin/sasdk/core/BaseApiThread;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iget-object v0, p0, Lcom/osp/app/signin/sasdk/core/BaseApiThread;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {}, Lcom/osp/app/signin/sasdk/common/MetaManager;->getInstance()Lcom/osp/app/signin/sasdk/common/MetaManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/osp/app/signin/sasdk/common/MetaManager;->getActualRequest()I

    move-result v1

    iget-object p0, p0, Lcom/osp/app/signin/sasdk/core/BaseApiThread;->mBundle:Landroid/os/Bundle;

    invoke-static {p1, v0, v1, p0}, Lcom/osp/app/signin/sasdk/core/CommonAPITask;->startActualTask(Landroid/content/Context;Landroid/app/Activity;ILandroid/os/Bundle;)V

    return-void
.end method

.method public handleResponse(Landroid/os/Bundle;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleResponse - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CommonAPIThread"

    invoke-static {v1, v0}, Lcom/osp/app/signin/sasdk/common/SDKLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/osp/app/signin/sasdk/core/BaseApiThread;->mSdkCallback:Lcom/osp/app/signin/sasdk/response/ISaSDKResponse;

    invoke-interface {p0, p1}, Lcom/osp/app/signin/sasdk/response/ISaSDKResponse;->onResponseReceived(Landroid/os/Bundle;)V

    return-void
.end method

.method public run()V
    .locals 3

    invoke-virtual {p0}, Lcom/osp/app/signin/sasdk/core/BaseApiThread;->isApiNotAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "CommonAPIThread"

    const-string v0, "run() is not available"

    invoke-static {p0, v0}, Lcom/osp/app/signin/sasdk/common/SDKLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/osp/app/signin/sasdk/common/MetaManager;->getInstance()Lcom/osp/app/signin/sasdk/common/MetaManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/osp/app/signin/sasdk/common/MetaManager;->getDomainResponseData()Lcom/osp/app/signin/sasdk/response/DomainResponseData;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/osp/app/signin/sasdk/core/BaseApiThread;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget v1, p0, Lcom/osp/app/signin/sasdk/core/BaseApiThread;->mServiceType:I

    invoke-static {v0, v1, p0}, Lcom/osp/app/signin/sasdk/core/CommonAPITask;->checkDomain(Landroid/content/Context;ILcom/osp/app/signin/sasdk/response/ISaAPIResponse;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/osp/app/signin/sasdk/common/MetaManager;->getInstance()Lcom/osp/app/signin/sasdk/common/MetaManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/osp/app/signin/sasdk/common/MetaManager;->getEntryPointResponseData()Lcom/osp/app/signin/sasdk/response/EntryPointResponseData;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/osp/app/signin/sasdk/core/BaseApiThread;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget v1, p0, Lcom/osp/app/signin/sasdk/core/BaseApiThread;->mServiceType:I

    invoke-static {v0, v1, p0}, Lcom/osp/app/signin/sasdk/core/CommonAPITask;->getEntryPointOfIdm(Landroid/content/Context;ILcom/osp/app/signin/sasdk/response/ISaAPIResponse;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/osp/app/signin/sasdk/core/BaseApiThread;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/osp/app/signin/sasdk/core/BaseApiThread;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    iget v2, p0, Lcom/osp/app/signin/sasdk/core/BaseApiThread;->mServiceType:I

    iget-object p0, p0, Lcom/osp/app/signin/sasdk/core/BaseApiThread;->mBundle:Landroid/os/Bundle;

    invoke-static {v0, v1, v2, p0}, Lcom/osp/app/signin/sasdk/core/CommonAPITask;->startActualTask(Landroid/content/Context;Landroid/app/Activity;ILandroid/os/Bundle;)V

    :goto_0
    return-void
.end method
