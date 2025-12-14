.class public interface abstract Lorg/chromium/blink/mojom/FencedFrameOwnerHost;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/FencedFrameOwnerHost$Proxy;
    }
.end annotation


# virtual methods
.method public abstract didChangeFramePolicy(Lorg/chromium/blink/mojom/FramePolicy;)V
.end method

.method public abstract navigate(Lorg/chromium/url/mojom/Url;Lorg/chromium/mojo_base/mojom/TimeTicks;Lorg/chromium/mojo_base/mojom/String16;)V
.end method
