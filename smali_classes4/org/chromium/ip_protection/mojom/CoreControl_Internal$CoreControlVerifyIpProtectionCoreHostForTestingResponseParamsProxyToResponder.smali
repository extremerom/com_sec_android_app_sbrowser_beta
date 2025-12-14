.class Lorg/chromium/ip_protection/mojom/CoreControl_Internal$CoreControlVerifyIpProtectionCoreHostForTestingResponseParamsProxyToResponder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/ip_protection/mojom/CoreControl$VerifyIpProtectionCoreHostForTesting_Response;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/ip_protection/mojom/CoreControl_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CoreControlVerifyIpProtectionCoreHostForTestingResponseParamsProxyToResponder"
.end annotation


# instance fields
.field private final mCore:Lorg/chromium/mojo/system/Core;

.field private final mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

.field private final mRequestId:J


# direct methods
.method public constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/ip_protection/mojom/CoreControl_Internal$CoreControlVerifyIpProtectionCoreHostForTestingResponseParamsProxyToResponder;->mCore:Lorg/chromium/mojo/system/Core;

    iput-object p2, p0, Lorg/chromium/ip_protection/mojom/CoreControl_Internal$CoreControlVerifyIpProtectionCoreHostForTestingResponseParamsProxyToResponder;->mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

    iput-wide p3, p0, Lorg/chromium/ip_protection/mojom/CoreControl_Internal$CoreControlVerifyIpProtectionCoreHostForTestingResponseParamsProxyToResponder;->mRequestId:J

    return-void
.end method


# virtual methods
.method public call(Lorg/chromium/ip_protection/mojom/BlindSignedAuthToken;Lorg/chromium/mojo_base/mojom/Time;)V
    .locals 4

    new-instance v0, Lorg/chromium/ip_protection/mojom/CoreControl_Internal$CoreControlVerifyIpProtectionCoreHostForTestingResponseParams;

    invoke-direct {v0}, Lorg/chromium/ip_protection/mojom/CoreControl_Internal$CoreControlVerifyIpProtectionCoreHostForTestingResponseParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/ip_protection/mojom/CoreControl_Internal$CoreControlVerifyIpProtectionCoreHostForTestingResponseParams;->bsaToken:Lorg/chromium/ip_protection/mojom/BlindSignedAuthToken;

    iput-object p2, v0, Lorg/chromium/ip_protection/mojom/CoreControl_Internal$CoreControlVerifyIpProtectionCoreHostForTestingResponseParams;->tryAgainAfter:Lorg/chromium/mojo_base/mojom/Time;

    iget-object p1, p0, Lorg/chromium/ip_protection/mojom/CoreControl_Internal$CoreControlVerifyIpProtectionCoreHostForTestingResponseParamsProxyToResponder;->mCore:Lorg/chromium/mojo/system/Core;

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v1, 0x2

    iget-wide v2, p0, Lorg/chromium/ip_protection/mojom/CoreControl_Internal$CoreControlVerifyIpProtectionCoreHostForTestingResponseParamsProxyToResponder;->mRequestId:J

    invoke-direct {p2, v1, v1, v2, v3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p1, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p1

    iget-object p0, p0, Lorg/chromium/ip_protection/mojom/CoreControl_Internal$CoreControlVerifyIpProtectionCoreHostForTestingResponseParamsProxyToResponder;->mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

    invoke-interface {p0, p1}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method
