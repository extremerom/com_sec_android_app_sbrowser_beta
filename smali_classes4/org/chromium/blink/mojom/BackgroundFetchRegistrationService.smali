.class public interface abstract Lorg/chromium/blink/mojom/BackgroundFetchRegistrationService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/BackgroundFetchRegistrationService$MatchRequests_Response;,
        Lorg/chromium/blink/mojom/BackgroundFetchRegistrationService$Abort_Response;,
        Lorg/chromium/blink/mojom/BackgroundFetchRegistrationService$UpdateUi_Response;,
        Lorg/chromium/blink/mojom/BackgroundFetchRegistrationService$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/blink/mojom/BackgroundFetchRegistrationService;",
            "Lorg/chromium/blink/mojom/BackgroundFetchRegistrationService$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/chromium/blink/mojom/BackgroundFetchRegistrationService_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    sput-object v0, Lorg/chromium/blink/mojom/BackgroundFetchRegistrationService;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method


# virtual methods
.method public abstract abort(Lorg/chromium/blink/mojom/BackgroundFetchRegistrationService$Abort_Response;)V
.end method

.method public abstract addRegistrationObserver(Lorg/chromium/blink/mojom/BackgroundFetchRegistrationObserver;)V
.end method

.method public abstract matchRequests(Lorg/chromium/blink/mojom/FetchApiRequest;Lorg/chromium/blink/mojom/CacheQueryOptions;ZLorg/chromium/blink/mojom/BackgroundFetchRegistrationService$MatchRequests_Response;)V
.end method

.method public abstract updateUi(Ljava/lang/String;Lorg/chromium/skia/mojom/BitmapN32;Lorg/chromium/blink/mojom/BackgroundFetchRegistrationService$UpdateUi_Response;)V
.end method
