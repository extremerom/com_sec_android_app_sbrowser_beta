.class public interface abstract Lorg/chromium/blink/mojom/PushMessaging;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/PushMessaging$GetSubscription_Response;,
        Lorg/chromium/blink/mojom/PushMessaging$Unsubscribe_Response;,
        Lorg/chromium/blink/mojom/PushMessaging$Subscribe_Response;,
        Lorg/chromium/blink/mojom/PushMessaging$Proxy;
    }
.end annotation


# virtual methods
.method public abstract getSubscription(JLorg/chromium/blink/mojom/PushMessaging$GetSubscription_Response;)V
.end method

.method public abstract subscribe(JLorg/chromium/blink/mojom/PushSubscriptionOptions;ZLorg/chromium/blink/mojom/PushMessaging$Subscribe_Response;)V
.end method

.method public abstract unsubscribe(JLorg/chromium/blink/mojom/PushMessaging$Unsubscribe_Response;)V
.end method
