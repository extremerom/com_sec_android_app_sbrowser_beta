.class public interface abstract Lorg/chromium/blink/mojom/ServiceWorker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/ServiceWorker$ExecuteScriptForTest_Response;,
        Lorg/chromium/blink/mojom/ServiceWorker$Ping_Response;,
        Lorg/chromium/blink/mojom/ServiceWorker$DispatchContentDeleteEvent_Response;,
        Lorg/chromium/blink/mojom/ServiceWorker$DispatchExtendableMessageEvent_Response;,
        Lorg/chromium/blink/mojom/ServiceWorker$DispatchPaymentRequestEvent_Response;,
        Lorg/chromium/blink/mojom/ServiceWorker$DispatchCanMakePaymentEvent_Response;,
        Lorg/chromium/blink/mojom/ServiceWorker$DispatchAbortPaymentEvent_Response;,
        Lorg/chromium/blink/mojom/ServiceWorker$DispatchPeriodicSyncEvent_Response;,
        Lorg/chromium/blink/mojom/ServiceWorker$DispatchSyncEvent_Response;,
        Lorg/chromium/blink/mojom/ServiceWorker$DispatchPushSubscriptionChangeEvent_Response;,
        Lorg/chromium/blink/mojom/ServiceWorker$DispatchPushEvent_Response;,
        Lorg/chromium/blink/mojom/ServiceWorker$DispatchNotificationCloseEvent_Response;,
        Lorg/chromium/blink/mojom/ServiceWorker$DispatchNotificationClickEvent_Response;,
        Lorg/chromium/blink/mojom/ServiceWorker$DispatchFetchEventForMainResource_Response;,
        Lorg/chromium/blink/mojom/ServiceWorker$DispatchCookieChangeEvent_Response;,
        Lorg/chromium/blink/mojom/ServiceWorker$DispatchBackgroundFetchSuccessEvent_Response;,
        Lorg/chromium/blink/mojom/ServiceWorker$DispatchBackgroundFetchFailEvent_Response;,
        Lorg/chromium/blink/mojom/ServiceWorker$DispatchBackgroundFetchClickEvent_Response;,
        Lorg/chromium/blink/mojom/ServiceWorker$DispatchBackgroundFetchAbortEvent_Response;,
        Lorg/chromium/blink/mojom/ServiceWorker$DispatchActivateEvent_Response;,
        Lorg/chromium/blink/mojom/ServiceWorker$DispatchInstallEvent_Response;,
        Lorg/chromium/blink/mojom/ServiceWorker$Proxy;
    }
.end annotation


# virtual methods
.method public abstract addKeepAlive()V
.end method

.method public abstract addMessageToConsole(ILjava/lang/String;)V
.end method

.method public abstract clearKeepAlive()V
.end method

.method public abstract dispatchAbortPaymentEvent(Lorg/chromium/payments/mojom/PaymentHandlerResponseCallback;Lorg/chromium/blink/mojom/ServiceWorker$DispatchAbortPaymentEvent_Response;)V
.end method

.method public abstract dispatchActivateEvent(Lorg/chromium/blink/mojom/ServiceWorker$DispatchActivateEvent_Response;)V
.end method

.method public abstract dispatchBackgroundFetchAbortEvent(Lorg/chromium/blink/mojom/BackgroundFetchRegistration;Lorg/chromium/blink/mojom/ServiceWorker$DispatchBackgroundFetchAbortEvent_Response;)V
.end method

.method public abstract dispatchBackgroundFetchClickEvent(Lorg/chromium/blink/mojom/BackgroundFetchRegistration;Lorg/chromium/blink/mojom/ServiceWorker$DispatchBackgroundFetchClickEvent_Response;)V
.end method

.method public abstract dispatchBackgroundFetchFailEvent(Lorg/chromium/blink/mojom/BackgroundFetchRegistration;Lorg/chromium/blink/mojom/ServiceWorker$DispatchBackgroundFetchFailEvent_Response;)V
.end method

.method public abstract dispatchBackgroundFetchSuccessEvent(Lorg/chromium/blink/mojom/BackgroundFetchRegistration;Lorg/chromium/blink/mojom/ServiceWorker$DispatchBackgroundFetchSuccessEvent_Response;)V
.end method

.method public abstract dispatchCanMakePaymentEvent(Lorg/chromium/payments/mojom/CanMakePaymentEventData;Lorg/chromium/payments/mojom/PaymentHandlerResponseCallback;Lorg/chromium/blink/mojom/ServiceWorker$DispatchCanMakePaymentEvent_Response;)V
.end method

.method public abstract dispatchContentDeleteEvent(Ljava/lang/String;Lorg/chromium/blink/mojom/ServiceWorker$DispatchContentDeleteEvent_Response;)V
.end method

.method public abstract dispatchCookieChangeEvent(Lorg/chromium/network/mojom/CookieChangeInfo;Lorg/chromium/blink/mojom/ServiceWorker$DispatchCookieChangeEvent_Response;)V
.end method

.method public abstract dispatchExtendableMessageEvent(Lorg/chromium/blink/mojom/ExtendableMessageEvent;Lorg/chromium/blink/mojom/ServiceWorker$DispatchExtendableMessageEvent_Response;)V
.end method

.method public abstract dispatchFetchEventForMainResource(Lorg/chromium/blink/mojom/DispatchFetchEventParams;Lorg/chromium/blink/mojom/ServiceWorkerFetchResponseCallback;Lorg/chromium/blink/mojom/ServiceWorker$DispatchFetchEventForMainResource_Response;)V
.end method

.method public abstract dispatchInstallEvent(Lorg/chromium/blink/mojom/ServiceWorker$DispatchInstallEvent_Response;)V
.end method

.method public abstract dispatchNotificationClickEvent(Ljava/lang/String;Lorg/chromium/blink/mojom/NotificationData;ILorg/chromium/mojo_base/mojom/String16;Lorg/chromium/blink/mojom/ServiceWorker$DispatchNotificationClickEvent_Response;)V
.end method

.method public abstract dispatchNotificationCloseEvent(Ljava/lang/String;Lorg/chromium/blink/mojom/NotificationData;Lorg/chromium/blink/mojom/ServiceWorker$DispatchNotificationCloseEvent_Response;)V
.end method

.method public abstract dispatchPaymentRequestEvent(Lorg/chromium/payments/mojom/PaymentRequestEventData;Lorg/chromium/payments/mojom/PaymentHandlerResponseCallback;Lorg/chromium/blink/mojom/ServiceWorker$DispatchPaymentRequestEvent_Response;)V
.end method

.method public abstract dispatchPeriodicSyncEvent(Ljava/lang/String;Lorg/chromium/mojo_base/mojom/TimeDelta;Lorg/chromium/blink/mojom/ServiceWorker$DispatchPeriodicSyncEvent_Response;)V
.end method

.method public abstract dispatchPushEvent(Ljava/lang/String;Lorg/chromium/blink/mojom/ServiceWorker$DispatchPushEvent_Response;)V
.end method

.method public abstract dispatchPushSubscriptionChangeEvent(Lorg/chromium/blink/mojom/PushSubscription;Lorg/chromium/blink/mojom/PushSubscription;Lorg/chromium/blink/mojom/ServiceWorker$DispatchPushSubscriptionChangeEvent_Response;)V
.end method

.method public abstract dispatchSyncEvent(Ljava/lang/String;ZLorg/chromium/mojo_base/mojom/TimeDelta;Lorg/chromium/blink/mojom/ServiceWorker$DispatchSyncEvent_Response;)V
.end method

.method public abstract executeScriptForTest(Lorg/chromium/mojo_base/mojom/BigString16;ZLorg/chromium/blink/mojom/ServiceWorker$ExecuteScriptForTest_Response;)V
.end method

.method public abstract initializeGlobalScope(Lorg/chromium/mojo/bindings/AssociatedInterfaceNotSupported;Lorg/chromium/mojo/bindings/AssociatedInterfaceNotSupported;Lorg/chromium/mojo/bindings/AssociatedInterfaceRequestNotSupported;Lorg/chromium/blink/mojom/ServiceWorkerRegistrationObjectInfo;Lorg/chromium/blink/mojom/ServiceWorkerObjectInfo;IILorg/chromium/blink/mojom/StorageKey;)V
.end method

.method public abstract ping(Lorg/chromium/blink/mojom/ServiceWorker$Ping_Response;)V
.end method

.method public abstract setIdleDelay(Lorg/chromium/mojo_base/mojom/TimeDelta;)V
.end method
