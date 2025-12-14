.class Lorg/chromium/blink/mojom/ManifestManager_Internal$ManifestManagerRequestManifestDebugInfoResponseParamsProxyToResponder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/blink/mojom/ManifestManager$RequestManifestDebugInfo_Response;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/blink/mojom/ManifestManager_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ManifestManagerRequestManifestDebugInfoResponseParamsProxyToResponder"
.end annotation


# instance fields
.field private final mCore:Lorg/chromium/mojo/system/Core;

.field private final mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

.field private final mRequestId:J


# direct methods
.method public constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/blink/mojom/ManifestManager_Internal$ManifestManagerRequestManifestDebugInfoResponseParamsProxyToResponder;->mCore:Lorg/chromium/mojo/system/Core;

    iput-object p2, p0, Lorg/chromium/blink/mojom/ManifestManager_Internal$ManifestManagerRequestManifestDebugInfoResponseParamsProxyToResponder;->mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

    iput-wide p3, p0, Lorg/chromium/blink/mojom/ManifestManager_Internal$ManifestManagerRequestManifestDebugInfoResponseParamsProxyToResponder;->mRequestId:J

    return-void
.end method


# virtual methods
.method public call(Lorg/chromium/url/mojom/Url;Lorg/chromium/blink/mojom/Manifest_;Lorg/chromium/blink/mojom/ManifestDebugInfo;)V
    .locals 4

    new-instance v0, Lorg/chromium/blink/mojom/ManifestManager_Internal$ManifestManagerRequestManifestDebugInfoResponseParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/ManifestManager_Internal$ManifestManagerRequestManifestDebugInfoResponseParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/ManifestManager_Internal$ManifestManagerRequestManifestDebugInfoResponseParams;->url:Lorg/chromium/url/mojom/Url;

    iput-object p2, v0, Lorg/chromium/blink/mojom/ManifestManager_Internal$ManifestManagerRequestManifestDebugInfoResponseParams;->parsedManifest:Lorg/chromium/blink/mojom/Manifest_;

    iput-object p3, v0, Lorg/chromium/blink/mojom/ManifestManager_Internal$ManifestManagerRequestManifestDebugInfoResponseParams;->debugInfo:Lorg/chromium/blink/mojom/ManifestDebugInfo;

    iget-object p1, p0, Lorg/chromium/blink/mojom/ManifestManager_Internal$ManifestManagerRequestManifestDebugInfoResponseParamsProxyToResponder;->mCore:Lorg/chromium/mojo/system/Core;

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 p3, 0x2

    iget-wide v1, p0, Lorg/chromium/blink/mojom/ManifestManager_Internal$ManifestManagerRequestManifestDebugInfoResponseParamsProxyToResponder;->mRequestId:J

    const/4 v3, 0x1

    invoke-direct {p2, v3, p3, v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p1, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p1

    iget-object p0, p0, Lorg/chromium/blink/mojom/ManifestManager_Internal$ManifestManagerRequestManifestDebugInfoResponseParamsProxyToResponder;->mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

    invoke-interface {p0, p1}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method
