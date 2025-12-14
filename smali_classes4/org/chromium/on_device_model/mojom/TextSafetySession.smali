.class public interface abstract Lorg/chromium/on_device_model/mojom/TextSafetySession;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/on_device_model/mojom/TextSafetySession$DetectLanguage_Response;,
        Lorg/chromium/on_device_model/mojom/TextSafetySession$ClassifyTextSafety_Response;,
        Lorg/chromium/on_device_model/mojom/TextSafetySession$Proxy;
    }
.end annotation


# virtual methods
.method public abstract classifyTextSafety(Ljava/lang/String;Lorg/chromium/on_device_model/mojom/TextSafetySession$ClassifyTextSafety_Response;)V
.end method

.method public abstract detectLanguage(Ljava/lang/String;Lorg/chromium/on_device_model/mojom/TextSafetySession$DetectLanguage_Response;)V
.end method
