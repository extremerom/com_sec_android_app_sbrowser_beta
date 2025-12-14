.class public interface abstract Lorg/chromium/blink/mojom/WebDatabase;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/WebDatabase$Proxy;
    }
.end annotation


# virtual methods
.method public abstract closeImmediately(Lorg/chromium/url/internal/mojom/Origin;Lorg/chromium/mojo_base/mojom/String16;)V
.end method

.method public abstract updateSize(Lorg/chromium/url/internal/mojom/Origin;Lorg/chromium/mojo_base/mojom/String16;J)V
.end method
