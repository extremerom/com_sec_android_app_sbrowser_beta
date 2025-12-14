.class Lorg/chromium/blink/mojom/OneShotBackgroundSyncService_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/OneShotBackgroundSyncService_Internal$OneShotBackgroundSyncServiceGetRegistrationsResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/OneShotBackgroundSyncService_Internal$OneShotBackgroundSyncServiceGetRegistrationsResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/OneShotBackgroundSyncService_Internal$OneShotBackgroundSyncServiceGetRegistrationsResponseParams;,
        Lorg/chromium/blink/mojom/OneShotBackgroundSyncService_Internal$OneShotBackgroundSyncServiceGetRegistrationsParams;,
        Lorg/chromium/blink/mojom/OneShotBackgroundSyncService_Internal$OneShotBackgroundSyncServiceDidResolveRegistrationParams;,
        Lorg/chromium/blink/mojom/OneShotBackgroundSyncService_Internal$OneShotBackgroundSyncServiceRegisterResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/OneShotBackgroundSyncService_Internal$OneShotBackgroundSyncServiceRegisterResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/OneShotBackgroundSyncService_Internal$OneShotBackgroundSyncServiceRegisterResponseParams;,
        Lorg/chromium/blink/mojom/OneShotBackgroundSyncService_Internal$OneShotBackgroundSyncServiceRegisterParams;,
        Lorg/chromium/blink/mojom/OneShotBackgroundSyncService_Internal$Stub;,
        Lorg/chromium/blink/mojom/OneShotBackgroundSyncService_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/blink/mojom/OneShotBackgroundSyncService;",
            "Lorg/chromium/blink/mojom/OneShotBackgroundSyncService$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/OneShotBackgroundSyncService_Internal$1;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/OneShotBackgroundSyncService_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/blink/mojom/OneShotBackgroundSyncService_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
