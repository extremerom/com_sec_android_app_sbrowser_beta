.class public interface abstract Lorg/chromium/blink/mojom/PresentationController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/PresentationController$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/blink/mojom/PresentationController;",
            "Lorg/chromium/blink/mojom/PresentationController$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/chromium/blink/mojom/PresentationController_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    sput-object v0, Lorg/chromium/blink/mojom/PresentationController;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method


# virtual methods
.method public abstract onConnectionClosed(Lorg/chromium/blink/mojom/PresentationInfo;ILjava/lang/String;)V
.end method

.method public abstract onConnectionStateChanged(Lorg/chromium/blink/mojom/PresentationInfo;I)V
.end method

.method public abstract onDefaultPresentationStarted(Lorg/chromium/blink/mojom/PresentationConnectionResult;)V
.end method

.method public abstract onScreenAvailabilityUpdated(Lorg/chromium/url/mojom/Url;I)V
.end method
