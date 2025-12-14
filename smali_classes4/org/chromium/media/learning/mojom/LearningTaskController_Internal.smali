.class Lorg/chromium/media/learning/mojom/LearningTaskController_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/media/learning/mojom/LearningTaskController_Internal$LearningTaskControllerPredictDistributionResponseParamsProxyToResponder;,
        Lorg/chromium/media/learning/mojom/LearningTaskController_Internal$LearningTaskControllerPredictDistributionResponseParamsForwardToCallback;,
        Lorg/chromium/media/learning/mojom/LearningTaskController_Internal$LearningTaskControllerPredictDistributionResponseParams;,
        Lorg/chromium/media/learning/mojom/LearningTaskController_Internal$LearningTaskControllerPredictDistributionParams;,
        Lorg/chromium/media/learning/mojom/LearningTaskController_Internal$LearningTaskControllerUpdateDefaultTargetParams;,
        Lorg/chromium/media/learning/mojom/LearningTaskController_Internal$LearningTaskControllerCancelObservationParams;,
        Lorg/chromium/media/learning/mojom/LearningTaskController_Internal$LearningTaskControllerCompleteObservationParams;,
        Lorg/chromium/media/learning/mojom/LearningTaskController_Internal$LearningTaskControllerBeginObservationParams;,
        Lorg/chromium/media/learning/mojom/LearningTaskController_Internal$Stub;,
        Lorg/chromium/media/learning/mojom/LearningTaskController_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/media/learning/mojom/LearningTaskController;",
            "Lorg/chromium/media/learning/mojom/LearningTaskController$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/media/learning/mojom/LearningTaskController_Internal$1;

    invoke-direct {v0}, Lorg/chromium/media/learning/mojom/LearningTaskController_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/media/learning/mojom/LearningTaskController_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
