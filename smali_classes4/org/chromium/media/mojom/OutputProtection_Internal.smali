.class Lorg/chromium/media/mojom/OutputProtection_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/media/mojom/OutputProtection_Internal$OutputProtectionEnableProtectionResponseParamsProxyToResponder;,
        Lorg/chromium/media/mojom/OutputProtection_Internal$OutputProtectionEnableProtectionResponseParamsForwardToCallback;,
        Lorg/chromium/media/mojom/OutputProtection_Internal$OutputProtectionEnableProtectionResponseParams;,
        Lorg/chromium/media/mojom/OutputProtection_Internal$OutputProtectionEnableProtectionParams;,
        Lorg/chromium/media/mojom/OutputProtection_Internal$OutputProtectionQueryStatusResponseParamsProxyToResponder;,
        Lorg/chromium/media/mojom/OutputProtection_Internal$OutputProtectionQueryStatusResponseParamsForwardToCallback;,
        Lorg/chromium/media/mojom/OutputProtection_Internal$OutputProtectionQueryStatusResponseParams;,
        Lorg/chromium/media/mojom/OutputProtection_Internal$OutputProtectionQueryStatusParams;,
        Lorg/chromium/media/mojom/OutputProtection_Internal$Stub;,
        Lorg/chromium/media/mojom/OutputProtection_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/media/mojom/OutputProtection;",
            "Lorg/chromium/media/mojom/OutputProtection$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/media/mojom/OutputProtection_Internal$1;

    invoke-direct {v0}, Lorg/chromium/media/mojom/OutputProtection_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/media/mojom/OutputProtection_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
