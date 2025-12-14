.class public interface abstract Lorg/chromium/blink/mojom/ContentBlockerService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/ContentBlockerService$ProcessRequest_Response;,
        Lorg/chromium/blink/mojom/ContentBlockerService$Proxy;
    }
.end annotation


# virtual methods
.method public abstract processRequest(Lorg/chromium/blink/mojom/LocalFrameToken;Lorg/chromium/url/mojom/Url;Lorg/chromium/url/mojom/Url;ILorg/chromium/blink/mojom/ContentBlockerService$ProcessRequest_Response;)V
.end method
