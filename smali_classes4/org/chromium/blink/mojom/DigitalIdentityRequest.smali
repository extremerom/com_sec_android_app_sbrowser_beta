.class public interface abstract Lorg/chromium/blink/mojom/DigitalIdentityRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/DigitalIdentityRequest$Create_Response;,
        Lorg/chromium/blink/mojom/DigitalIdentityRequest$Get_Response;,
        Lorg/chromium/blink/mojom/DigitalIdentityRequest$Proxy;
    }
.end annotation


# virtual methods
.method public abstract abort()V
.end method

.method public abstract create(Lorg/chromium/blink/mojom/DigitalCredentialRequest;Lorg/chromium/blink/mojom/DigitalIdentityRequest$Create_Response;)V
.end method

.method public abstract get([Lorg/chromium/blink/mojom/DigitalCredentialRequest;ILorg/chromium/blink/mojom/DigitalIdentityRequest$Get_Response;)V
.end method
