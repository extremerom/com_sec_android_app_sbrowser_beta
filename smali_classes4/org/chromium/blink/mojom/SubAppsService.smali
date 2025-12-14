.class public interface abstract Lorg/chromium/blink/mojom/SubAppsService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/SubAppsService$Remove_Response;,
        Lorg/chromium/blink/mojom/SubAppsService$List_Response;,
        Lorg/chromium/blink/mojom/SubAppsService$Add_Response;,
        Lorg/chromium/blink/mojom/SubAppsService$Proxy;
    }
.end annotation


# virtual methods
.method public abstract add([Lorg/chromium/blink/mojom/SubAppsServiceAddParameters;Lorg/chromium/blink/mojom/SubAppsService$Add_Response;)V
.end method

.method public abstract list(Lorg/chromium/blink/mojom/SubAppsService$List_Response;)V
.end method

.method public abstract remove([Ljava/lang/String;Lorg/chromium/blink/mojom/SubAppsService$Remove_Response;)V
.end method
