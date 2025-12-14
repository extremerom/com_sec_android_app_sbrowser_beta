.class Lorg/chromium/blink/mojom/ManifestManager_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/ManifestManager_Internal$ManifestManagerParseManifestFromStringResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/ManifestManager_Internal$ManifestManagerParseManifestFromStringResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/ManifestManager_Internal$ManifestManagerParseManifestFromStringResponseParams;,
        Lorg/chromium/blink/mojom/ManifestManager_Internal$ManifestManagerParseManifestFromStringParams;,
        Lorg/chromium/blink/mojom/ManifestManager_Internal$ManifestManagerRequestManifestDebugInfoResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/ManifestManager_Internal$ManifestManagerRequestManifestDebugInfoResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/ManifestManager_Internal$ManifestManagerRequestManifestDebugInfoResponseParams;,
        Lorg/chromium/blink/mojom/ManifestManager_Internal$ManifestManagerRequestManifestDebugInfoParams;,
        Lorg/chromium/blink/mojom/ManifestManager_Internal$ManifestManagerRequestManifestResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/ManifestManager_Internal$ManifestManagerRequestManifestResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/ManifestManager_Internal$ManifestManagerRequestManifestResponseParams;,
        Lorg/chromium/blink/mojom/ManifestManager_Internal$ManifestManagerRequestManifestParams;,
        Lorg/chromium/blink/mojom/ManifestManager_Internal$Stub;,
        Lorg/chromium/blink/mojom/ManifestManager_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/blink/mojom/ManifestManager;",
            "Lorg/chromium/blink/mojom/ManifestManager$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/ManifestManager_Internal$1;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/ManifestManager_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/blink/mojom/ManifestManager_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
