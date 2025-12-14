.class public interface abstract Lorg/chromium/blink/mojom/BackgroundFetchRegistrationObserver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/BackgroundFetchRegistrationObserver$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/blink/mojom/BackgroundFetchRegistrationObserver;",
            "Lorg/chromium/blink/mojom/BackgroundFetchRegistrationObserver$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/chromium/blink/mojom/BackgroundFetchRegistrationObserver_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    sput-object v0, Lorg/chromium/blink/mojom/BackgroundFetchRegistrationObserver;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method


# virtual methods
.method public abstract onProgress(JJJJII)V
.end method

.method public abstract onRecordsUnavailable()V
.end method

.method public abstract onRequestCompleted(Lorg/chromium/blink/mojom/FetchApiRequest;Lorg/chromium/blink/mojom/FetchApiResponse;)V
.end method
