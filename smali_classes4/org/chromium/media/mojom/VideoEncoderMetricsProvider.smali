.class public interface abstract Lorg/chromium/media/mojom/VideoEncoderMetricsProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/media/mojom/VideoEncoderMetricsProvider$Proxy;
    }
.end annotation


# virtual methods
.method public abstract complete(J)V
.end method

.method public abstract initialize(JIILorg/chromium/gfx/mojom/Size;ZI)V
.end method

.method public abstract setEncodedFrameCount(JJ)V
.end method

.method public abstract setError(JLorg/chromium/media/mojom/EncoderStatus;)V
.end method
