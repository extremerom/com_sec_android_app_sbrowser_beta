.class public interface abstract Lorg/chromium/blink/mojom/CookieStore;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/CookieStore$GetSubscriptions_Response;,
        Lorg/chromium/blink/mojom/CookieStore$RemoveSubscriptions_Response;,
        Lorg/chromium/blink/mojom/CookieStore$AddSubscriptions_Response;,
        Lorg/chromium/blink/mojom/CookieStore$Proxy;
    }
.end annotation


# virtual methods
.method public abstract addSubscriptions(J[Lorg/chromium/blink/mojom/CookieChangeSubscription;Lorg/chromium/blink/mojom/CookieStore$AddSubscriptions_Response;)V
.end method

.method public abstract getSubscriptions(JLorg/chromium/blink/mojom/CookieStore$GetSubscriptions_Response;)V
.end method

.method public abstract removeSubscriptions(J[Lorg/chromium/blink/mojom/CookieChangeSubscription;Lorg/chromium/blink/mojom/CookieStore$RemoveSubscriptions_Response;)V
.end method
