.class Lorg/chromium/blink/mojom/PushMessaging_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/PushMessaging_Internal$PushMessagingGetSubscriptionResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/PushMessaging_Internal$PushMessagingGetSubscriptionResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/PushMessaging_Internal$PushMessagingGetSubscriptionResponseParams;,
        Lorg/chromium/blink/mojom/PushMessaging_Internal$PushMessagingGetSubscriptionParams;,
        Lorg/chromium/blink/mojom/PushMessaging_Internal$PushMessagingUnsubscribeResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/PushMessaging_Internal$PushMessagingUnsubscribeResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/PushMessaging_Internal$PushMessagingUnsubscribeResponseParams;,
        Lorg/chromium/blink/mojom/PushMessaging_Internal$PushMessagingUnsubscribeParams;,
        Lorg/chromium/blink/mojom/PushMessaging_Internal$PushMessagingSubscribeResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/PushMessaging_Internal$PushMessagingSubscribeResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/PushMessaging_Internal$PushMessagingSubscribeResponseParams;,
        Lorg/chromium/blink/mojom/PushMessaging_Internal$PushMessagingSubscribeParams;,
        Lorg/chromium/blink/mojom/PushMessaging_Internal$Stub;,
        Lorg/chromium/blink/mojom/PushMessaging_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/blink/mojom/PushMessaging;",
            "Lorg/chromium/blink/mojom/PushMessaging$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/PushMessaging_Internal$1;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/PushMessaging_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/blink/mojom/PushMessaging_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
