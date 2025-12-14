.class Lcom/sec/terrace/browser/payments/TerraceIsReadyToPayServiceHelper$ResultHandlerWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/components/payments/intent/IsReadyToPayServiceHelper$ResultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/browser/payments/TerraceIsReadyToPayServiceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResultHandlerWrapper"
.end annotation


# instance fields
.field private mResultHandler:Lcom/sec/terrace/browser/payments/TerraceIsReadyToPayServiceHelper$TerraceResultHandler;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/browser/payments/TerraceIsReadyToPayServiceHelper$TerraceResultHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/terrace/browser/payments/TerraceIsReadyToPayServiceHelper$ResultHandlerWrapper;->mResultHandler:Lcom/sec/terrace/browser/payments/TerraceIsReadyToPayServiceHelper$TerraceResultHandler;

    return-void
.end method

.method public static synthetic a(Lcom/sec/terrace/browser/payments/TerraceIsReadyToPayServiceHelper$ResultHandlerWrapper;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/terrace/browser/payments/TerraceIsReadyToPayServiceHelper$ResultHandlerWrapper;->lambda$onIsReadyToPayServiceError$0()V

    return-void
.end method

.method public static synthetic b(Lcom/sec/terrace/browser/payments/TerraceIsReadyToPayServiceHelper$ResultHandlerWrapper;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/terrace/browser/payments/TerraceIsReadyToPayServiceHelper$ResultHandlerWrapper;->lambda$onIsReadyToPayServiceResponse$1(Z)V

    return-void
.end method

.method private synthetic lambda$onIsReadyToPayServiceError$0()V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/payments/TerraceIsReadyToPayServiceHelper$ResultHandlerWrapper;->mResultHandler:Lcom/sec/terrace/browser/payments/TerraceIsReadyToPayServiceHelper$TerraceResultHandler;

    invoke-interface {p0}, Lcom/sec/terrace/browser/payments/TerraceIsReadyToPayServiceHelper$TerraceResultHandler;->onIsReadyToPayServiceError()V

    return-void
.end method

.method private synthetic lambda$onIsReadyToPayServiceResponse$1(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/payments/TerraceIsReadyToPayServiceHelper$ResultHandlerWrapper;->mResultHandler:Lcom/sec/terrace/browser/payments/TerraceIsReadyToPayServiceHelper$TerraceResultHandler;

    invoke-interface {p0, p1}, Lcom/sec/terrace/browser/payments/TerraceIsReadyToPayServiceHelper$TerraceResultHandler;->onIsReadyToPayServiceResponse(Z)V

    return-void
.end method


# virtual methods
.method public onIsReadyToPayServiceError()V
    .locals 2

    iget-object v0, p0, Lcom/sec/terrace/browser/payments/TerraceIsReadyToPayServiceHelper$ResultHandlerWrapper;->mResultHandler:Lcom/sec/terrace/browser/payments/TerraceIsReadyToPayServiceHelper$TerraceResultHandler;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sec/terrace/browser/payments/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/sec/terrace/browser/payments/a;-><init>(ILjava/lang/Object;)V

    const/4 p0, 0x7

    invoke-static {p0, v0}, Lorg/chromium/base/task/PostTask;->runOrPostTask(ILjava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onIsReadyToPayServiceResponse(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/browser/payments/TerraceIsReadyToPayServiceHelper$ResultHandlerWrapper;->mResultHandler:Lcom/sec/terrace/browser/payments/TerraceIsReadyToPayServiceHelper$TerraceResultHandler;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sec/terrace/browser/payments/b;

    invoke-direct {v0, p0, p1}, Lcom/sec/terrace/browser/payments/b;-><init>(Lcom/sec/terrace/browser/payments/TerraceIsReadyToPayServiceHelper$ResultHandlerWrapper;Z)V

    const/4 p0, 0x7

    invoke-static {p0, v0}, Lorg/chromium/base/task/PostTask;->runOrPostTask(ILjava/lang/Runnable;)V

    :cond_0
    return-void
.end method
