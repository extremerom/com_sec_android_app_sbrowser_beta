.class Lorg/chromium/blink/mojom/NotificationService_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/NotificationService_Internal$NotificationServiceGetNotificationsResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/NotificationService_Internal$NotificationServiceGetNotificationsResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/NotificationService_Internal$NotificationServiceGetNotificationsResponseParams;,
        Lorg/chromium/blink/mojom/NotificationService_Internal$NotificationServiceGetNotificationsParams;,
        Lorg/chromium/blink/mojom/NotificationService_Internal$NotificationServiceClosePersistentNotificationParams;,
        Lorg/chromium/blink/mojom/NotificationService_Internal$NotificationServiceDisplayPersistentNotificationResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/NotificationService_Internal$NotificationServiceDisplayPersistentNotificationResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/NotificationService_Internal$NotificationServiceDisplayPersistentNotificationResponseParams;,
        Lorg/chromium/blink/mojom/NotificationService_Internal$NotificationServiceDisplayPersistentNotificationParams;,
        Lorg/chromium/blink/mojom/NotificationService_Internal$NotificationServiceCloseNonPersistentNotificationParams;,
        Lorg/chromium/blink/mojom/NotificationService_Internal$NotificationServiceDisplayNonPersistentNotificationParams;,
        Lorg/chromium/blink/mojom/NotificationService_Internal$NotificationServiceGetPermissionStatusResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/NotificationService_Internal$NotificationServiceGetPermissionStatusResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/NotificationService_Internal$NotificationServiceGetPermissionStatusResponseParams;,
        Lorg/chromium/blink/mojom/NotificationService_Internal$NotificationServiceGetPermissionStatusParams;,
        Lorg/chromium/blink/mojom/NotificationService_Internal$Stub;,
        Lorg/chromium/blink/mojom/NotificationService_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/blink/mojom/NotificationService;",
            "Lorg/chromium/blink/mojom/NotificationService$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/NotificationService_Internal$1;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/NotificationService_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/blink/mojom/NotificationService_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
