.class public interface abstract Lorg/chromium/media/mojom/AudioProcessorControls;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/media/mojom/AudioProcessorControls$GetStats_Response;,
        Lorg/chromium/media/mojom/AudioProcessorControls$Proxy;
    }
.end annotation


# virtual methods
.method public abstract getStats(Lorg/chromium/media/mojom/AudioProcessorControls$GetStats_Response;)V
.end method

.method public abstract setPreferredNumCaptureChannels(I)V
.end method
