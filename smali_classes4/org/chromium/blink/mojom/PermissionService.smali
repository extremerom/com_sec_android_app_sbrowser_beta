.class public interface abstract Lorg/chromium/blink/mojom/PermissionService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/PermissionService$RevokePermission_Response;,
        Lorg/chromium/blink/mojom/PermissionService$RequestPermissions_Response;,
        Lorg/chromium/blink/mojom/PermissionService$RequestPermission_Response;,
        Lorg/chromium/blink/mojom/PermissionService$RequestPageEmbeddedPermission_Response;,
        Lorg/chromium/blink/mojom/PermissionService$HasPermission_Response;,
        Lorg/chromium/blink/mojom/PermissionService$Proxy;
    }
.end annotation


# virtual methods
.method public abstract addPageEmbeddedPermissionObserver(Lorg/chromium/blink/mojom/PermissionDescriptor;ILorg/chromium/blink/mojom/PermissionObserver;)V
.end method

.method public abstract addPermissionObserver(Lorg/chromium/blink/mojom/PermissionDescriptor;ILorg/chromium/blink/mojom/PermissionObserver;)V
.end method

.method public abstract hasPermission(Lorg/chromium/blink/mojom/PermissionDescriptor;Lorg/chromium/blink/mojom/PermissionService$HasPermission_Response;)V
.end method

.method public abstract notifyEventListener(Lorg/chromium/blink/mojom/PermissionDescriptor;Ljava/lang/String;Z)V
.end method

.method public abstract registerPageEmbeddedPermissionControl([Lorg/chromium/blink/mojom/PermissionDescriptor;Lorg/chromium/blink/mojom/EmbeddedPermissionControlClient;)V
.end method

.method public abstract requestPageEmbeddedPermission(Lorg/chromium/blink/mojom/EmbeddedPermissionRequestDescriptor;Lorg/chromium/blink/mojom/PermissionService$RequestPageEmbeddedPermission_Response;)V
.end method

.method public abstract requestPermission(Lorg/chromium/blink/mojom/PermissionDescriptor;ZLorg/chromium/blink/mojom/PermissionService$RequestPermission_Response;)V
.end method

.method public abstract requestPermissions([Lorg/chromium/blink/mojom/PermissionDescriptor;ZLorg/chromium/blink/mojom/PermissionService$RequestPermissions_Response;)V
.end method

.method public abstract revokePermission(Lorg/chromium/blink/mojom/PermissionDescriptor;Lorg/chromium/blink/mojom/PermissionService$RevokePermission_Response;)V
.end method
