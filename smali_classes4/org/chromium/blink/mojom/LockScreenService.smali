.class public interface abstract Lorg/chromium/blink/mojom/LockScreenService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/LockScreenService$SetData_Response;,
        Lorg/chromium/blink/mojom/LockScreenService$GetKeys_Response;,
        Lorg/chromium/blink/mojom/LockScreenService$Proxy;
    }
.end annotation


# virtual methods
.method public abstract getKeys(Lorg/chromium/blink/mojom/LockScreenService$GetKeys_Response;)V
.end method

.method public abstract setData(Ljava/lang/String;Ljava/lang/String;Lorg/chromium/blink/mojom/LockScreenService$SetData_Response;)V
.end method
