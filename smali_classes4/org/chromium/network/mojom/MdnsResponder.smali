.class public interface abstract Lorg/chromium/network/mojom/MdnsResponder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/network/mojom/MdnsResponder$RemoveNameForAddress_Response;,
        Lorg/chromium/network/mojom/MdnsResponder$CreateNameForAddress_Response;,
        Lorg/chromium/network/mojom/MdnsResponder$Proxy;
    }
.end annotation


# virtual methods
.method public abstract createNameForAddress(Lorg/chromium/network/mojom/IpAddress;Lorg/chromium/network/mojom/MdnsResponder$CreateNameForAddress_Response;)V
.end method

.method public abstract removeNameForAddress(Lorg/chromium/network/mojom/IpAddress;Lorg/chromium/network/mojom/MdnsResponder$RemoveNameForAddress_Response;)V
.end method
