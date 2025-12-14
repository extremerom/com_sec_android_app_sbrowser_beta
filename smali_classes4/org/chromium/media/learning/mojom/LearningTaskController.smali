.class public interface abstract Lorg/chromium/media/learning/mojom/LearningTaskController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/media/learning/mojom/LearningTaskController$PredictDistribution_Response;,
        Lorg/chromium/media/learning/mojom/LearningTaskController$Proxy;
    }
.end annotation


# virtual methods
.method public abstract beginObservation(Lorg/chromium/mojo_base/mojom/UnguessableToken;[Lorg/chromium/media/learning/mojom/FeatureValue;Lorg/chromium/media/learning/mojom/TargetValue;)V
.end method

.method public abstract cancelObservation(Lorg/chromium/mojo_base/mojom/UnguessableToken;)V
.end method

.method public abstract completeObservation(Lorg/chromium/mojo_base/mojom/UnguessableToken;Lorg/chromium/media/learning/mojom/ObservationCompletion;)V
.end method

.method public abstract predictDistribution([Lorg/chromium/media/learning/mojom/FeatureValue;Lorg/chromium/media/learning/mojom/LearningTaskController$PredictDistribution_Response;)V
.end method

.method public abstract updateDefaultTarget(Lorg/chromium/mojo_base/mojom/UnguessableToken;Lorg/chromium/media/learning/mojom/TargetValue;)V
.end method
