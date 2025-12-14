.class public interface abstract Lorg/chromium/media/mojom/OutputProtection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/media/mojom/OutputProtection$EnableProtection_Response;,
        Lorg/chromium/media/mojom/OutputProtection$QueryStatus_Response;,
        Lorg/chromium/media/mojom/OutputProtection$Proxy;,
        Lorg/chromium/media/mojom/OutputProtection$LinkType;,
        Lorg/chromium/media/mojom/OutputProtection$ProtectionType;
    }
.end annotation


# virtual methods
.method public abstract enableProtection(ILorg/chromium/media/mojom/OutputProtection$EnableProtection_Response;)V
.end method

.method public abstract queryStatus(Lorg/chromium/media/mojom/OutputProtection$QueryStatus_Response;)V
.end method
