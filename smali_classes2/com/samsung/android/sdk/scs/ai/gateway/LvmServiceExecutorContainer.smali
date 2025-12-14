.class public abstract Lcom/samsung/android/sdk/scs/ai/gateway/LvmServiceExecutorContainer;
.super Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutorContainer;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/scs/ai/gateway/executor/TemplateContainer;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutorContainer<",
        "Lcom/samsung/android/sdk/scs/ai/visual/VisualAppInfo;",
        ">;",
        "Lcom/samsung/android/sdk/scs/ai/gateway/executor/TemplateContainer<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field protected final mCancelServiceExecutorMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutorFactory$ServiceType;",
            "Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutor<",
            "+",
            "Landroid/os/IInterface;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutorContainer;-><init>(Landroid/content/Context;)V

    new-instance p1, Ljava/util/EnumMap;

    const-class v0, Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutorFactory$ServiceType;

    invoke-direct {p1, v0}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/gateway/LvmServiceExecutorContainer;->mCancelServiceExecutorMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public abstract createCancelServiceExecutor(Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutorFactory$ServiceType;)Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutor;
    .param p1    # Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutorFactory$ServiceType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutorFactory$ServiceType;",
            ")",
            "Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutor<",
            "+",
            "Landroid/os/IInterface;",
            ">;"
        }
    .end annotation
.end method

.method public getCancelServiceExecutor(Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutorFactory$ServiceType;)Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutor;
    .locals 1
    .param p1    # Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutorFactory$ServiceType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutorFactory$ServiceType;",
            ")",
            "Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutor<",
            "+",
            "Landroid/os/IInterface;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/gateway/LvmServiceExecutorContainer;->mCancelServiceExecutorMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutor;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/scs/ai/gateway/LvmServiceExecutorContainer;->createCancelServiceExecutor(Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutorFactory$ServiceType;)Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutor;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/gateway/LvmServiceExecutorContainer;->mCancelServiceExecutorMap:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ServiceType is null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getServiceType(Lcom/samsung/android/sdk/scs/ai/visual/RequestType;)Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutorFactory$ServiceType;
    .locals 0
    .param p1    # Lcom/samsung/android/sdk/scs/ai/visual/RequestType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object p0, Lcom/samsung/android/sdk/scs/ai/visual/RequestType;->ONDEVICE:Lcom/samsung/android/sdk/scs/ai/visual/RequestType;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutorFactory$ServiceType;->AI_CORE:Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutorFactory$ServiceType;

    return-object p0

    :cond_0
    sget-object p0, Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutorFactory$ServiceType;->CLOUD_CORE:Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutorFactory$ServiceType;

    return-object p0
.end method

.method public getServiceType(Lcom/samsung/android/sdk/scs/ai/visual/VisualAppInfo;)Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutorFactory$ServiceType;
    .locals 0
    .param p1    # Lcom/samsung/android/sdk/scs/ai/visual/VisualAppInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object p0, Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutorFactory$ServiceType;->CLOUD_CORE:Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutorFactory$ServiceType;

    return-object p0
.end method

.method public bridge synthetic getServiceType(Ljava/lang/Object;)Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutorFactory$ServiceType;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    check-cast p1, Lcom/samsung/android/sdk/scs/ai/visual/VisualAppInfo;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/scs/ai/gateway/LvmServiceExecutorContainer;->getServiceType(Lcom/samsung/android/sdk/scs/ai/visual/VisualAppInfo;)Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutorFactory$ServiceType;

    move-result-object p0

    return-object p0
.end method

.method public release()Lcom/samsung/android/sdk/scs/base/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/android/sdk/scs/base/tasks/Task<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutorContainer;->mServiceExecutorMap:Ljava/util/Map;

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutorContainer;->releaseExecutors(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/gateway/LvmServiceExecutorContainer;->mCancelServiceExecutorMap:Ljava/util/Map;

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutorContainer;->releaseExecutors(Ljava/util/Map;)V

    const/4 p0, 0x0

    return-object p0
.end method
