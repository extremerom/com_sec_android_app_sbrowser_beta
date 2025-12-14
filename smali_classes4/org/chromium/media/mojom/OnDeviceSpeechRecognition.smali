.class public interface abstract Lorg/chromium/media/mojom/OnDeviceSpeechRecognition;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/media/mojom/OnDeviceSpeechRecognition$InstallOnDeviceSpeechRecognition_Response;,
        Lorg/chromium/media/mojom/OnDeviceSpeechRecognition$OnDeviceWebSpeechAvailable_Response;,
        Lorg/chromium/media/mojom/OnDeviceSpeechRecognition$Proxy;
    }
.end annotation


# virtual methods
.method public abstract installOnDeviceSpeechRecognition(Ljava/lang/String;Lorg/chromium/media/mojom/OnDeviceSpeechRecognition$InstallOnDeviceSpeechRecognition_Response;)V
.end method

.method public abstract onDeviceWebSpeechAvailable(Ljava/lang/String;Lorg/chromium/media/mojom/OnDeviceSpeechRecognition$OnDeviceWebSpeechAvailable_Response;)V
.end method
