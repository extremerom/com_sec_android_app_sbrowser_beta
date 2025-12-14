.class final Lorg/chromium/media/learning/mojom/LearningTaskController_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/media/learning/mojom/LearningTaskController$Proxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/media/learning/mojom/LearningTaskController_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Proxy"
.end annotation


# direct methods
.method public constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;)V

    return-void
.end method


# virtual methods
.method public beginObservation(Lorg/chromium/mojo_base/mojom/UnguessableToken;[Lorg/chromium/media/learning/mojom/FeatureValue;Lorg/chromium/media/learning/mojom/TargetValue;)V
    .locals 1

    new-instance v0, Lorg/chromium/media/learning/mojom/LearningTaskController_Internal$LearningTaskControllerBeginObservationParams;

    invoke-direct {v0}, Lorg/chromium/media/learning/mojom/LearningTaskController_Internal$LearningTaskControllerBeginObservationParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/media/learning/mojom/LearningTaskController_Internal$LearningTaskControllerBeginObservationParams;->id:Lorg/chromium/mojo_base/mojom/UnguessableToken;

    iput-object p2, v0, Lorg/chromium/media/learning/mojom/LearningTaskController_Internal$LearningTaskControllerBeginObservationParams;->features:[Lorg/chromium/media/learning/mojom/FeatureValue;

    iput-object p3, v0, Lorg/chromium/media/learning/mojom/LearningTaskController_Internal$LearningTaskControllerBeginObservationParams;->defaultTarget:Lorg/chromium/media/learning/mojom/TargetValue;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public cancelObservation(Lorg/chromium/mojo_base/mojom/UnguessableToken;)V
    .locals 3

    new-instance v0, Lorg/chromium/media/learning/mojom/LearningTaskController_Internal$LearningTaskControllerCancelObservationParams;

    invoke-direct {v0}, Lorg/chromium/media/learning/mojom/LearningTaskController_Internal$LearningTaskControllerCancelObservationParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/media/learning/mojom/LearningTaskController_Internal$LearningTaskControllerCancelObservationParams;->id:Lorg/chromium/mojo_base/mojom/UnguessableToken;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public completeObservation(Lorg/chromium/mojo_base/mojom/UnguessableToken;Lorg/chromium/media/learning/mojom/ObservationCompletion;)V
    .locals 2

    new-instance v0, Lorg/chromium/media/learning/mojom/LearningTaskController_Internal$LearningTaskControllerCompleteObservationParams;

    invoke-direct {v0}, Lorg/chromium/media/learning/mojom/LearningTaskController_Internal$LearningTaskControllerCompleteObservationParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/media/learning/mojom/LearningTaskController_Internal$LearningTaskControllerCompleteObservationParams;->id:Lorg/chromium/mojo_base/mojom/UnguessableToken;

    iput-object p2, v0, Lorg/chromium/media/learning/mojom/LearningTaskController_Internal$LearningTaskControllerCompleteObservationParams;->completion:Lorg/chromium/media/learning/mojom/ObservationCompletion;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v1, 0x1

    invoke-direct {p2, v1}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public predictDistribution([Lorg/chromium/media/learning/mojom/FeatureValue;Lorg/chromium/media/learning/mojom/LearningTaskController$PredictDistribution_Response;)V
    .locals 6

    new-instance v0, Lorg/chromium/media/learning/mojom/LearningTaskController_Internal$LearningTaskControllerPredictDistributionParams;

    invoke-direct {v0}, Lorg/chromium/media/learning/mojom/LearningTaskController_Internal$LearningTaskControllerPredictDistributionParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/media/learning/mojom/LearningTaskController_Internal$LearningTaskControllerPredictDistributionParams;->features:[Lorg/chromium/media/learning/mojom/FeatureValue;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    const/4 v5, 0x4

    invoke-direct {v1, v5, v2, v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/media/learning/mojom/LearningTaskController_Internal$LearningTaskControllerPredictDistributionResponseParamsForwardToCallback;

    invoke-direct {v0, p2}, Lorg/chromium/media/learning/mojom/LearningTaskController_Internal$LearningTaskControllerPredictDistributionResponseParamsForwardToCallback;-><init>(Lorg/chromium/media/learning/mojom/LearningTaskController$PredictDistribution_Response;)V

    invoke-interface {p1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public updateDefaultTarget(Lorg/chromium/mojo_base/mojom/UnguessableToken;Lorg/chromium/media/learning/mojom/TargetValue;)V
    .locals 2

    new-instance v0, Lorg/chromium/media/learning/mojom/LearningTaskController_Internal$LearningTaskControllerUpdateDefaultTargetParams;

    invoke-direct {v0}, Lorg/chromium/media/learning/mojom/LearningTaskController_Internal$LearningTaskControllerUpdateDefaultTargetParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/media/learning/mojom/LearningTaskController_Internal$LearningTaskControllerUpdateDefaultTargetParams;->id:Lorg/chromium/mojo_base/mojom/UnguessableToken;

    iput-object p2, v0, Lorg/chromium/media/learning/mojom/LearningTaskController_Internal$LearningTaskControllerUpdateDefaultTargetParams;->defaultTarget:Lorg/chromium/media/learning/mojom/TargetValue;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v1, 0x3

    invoke-direct {p2, v1}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method
