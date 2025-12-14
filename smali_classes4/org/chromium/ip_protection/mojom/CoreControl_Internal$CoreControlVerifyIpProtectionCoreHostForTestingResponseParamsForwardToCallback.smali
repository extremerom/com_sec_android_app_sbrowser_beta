.class Lorg/chromium/ip_protection/mojom/CoreControl_Internal$CoreControlVerifyIpProtectionCoreHostForTestingResponseParamsForwardToCallback;
.super Lorg/chromium/mojo/bindings/SideEffectFreeCloseable;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/MessageReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/ip_protection/mojom/CoreControl_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CoreControlVerifyIpProtectionCoreHostForTestingResponseParamsForwardToCallback"
.end annotation


# instance fields
.field private final mCallback:Lorg/chromium/ip_protection/mojom/CoreControl$VerifyIpProtectionCoreHostForTesting_Response;


# direct methods
.method public constructor <init>(Lorg/chromium/ip_protection/mojom/CoreControl$VerifyIpProtectionCoreHostForTesting_Response;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/mojo/bindings/SideEffectFreeCloseable;-><init>()V

    iput-object p1, p0, Lorg/chromium/ip_protection/mojom/CoreControl_Internal$CoreControlVerifyIpProtectionCoreHostForTestingResponseParamsForwardToCallback;->mCallback:Lorg/chromium/ip_protection/mojom/CoreControl$VerifyIpProtectionCoreHostForTesting_Response;

    return-void
.end method


# virtual methods
.method public accept(Lorg/chromium/mojo/bindings/Message;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Message;->asServiceMessage()Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getHeader()Lorg/chromium/mojo/bindings/MessageHeader;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v2}, Lorg/chromium/mojo/bindings/MessageHeader;->validateHeader(II)Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/ip_protection/mojom/CoreControl_Internal$CoreControlVerifyIpProtectionCoreHostForTestingResponseParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/ip_protection/mojom/CoreControl_Internal$CoreControlVerifyIpProtectionCoreHostForTestingResponseParams;

    move-result-object p1

    iget-object p0, p0, Lorg/chromium/ip_protection/mojom/CoreControl_Internal$CoreControlVerifyIpProtectionCoreHostForTestingResponseParamsForwardToCallback;->mCallback:Lorg/chromium/ip_protection/mojom/CoreControl$VerifyIpProtectionCoreHostForTesting_Response;

    iget-object v1, p1, Lorg/chromium/ip_protection/mojom/CoreControl_Internal$CoreControlVerifyIpProtectionCoreHostForTestingResponseParams;->bsaToken:Lorg/chromium/ip_protection/mojom/BlindSignedAuthToken;

    iget-object p1, p1, Lorg/chromium/ip_protection/mojom/CoreControl_Internal$CoreControlVerifyIpProtectionCoreHostForTestingResponseParams;->tryAgainAfter:Lorg/chromium/mojo_base/mojom/Time;

    invoke-interface {p0, v1, p1}, Lorg/chromium/ip_protection/mojom/CoreControl$VerifyIpProtectionCoreHostForTesting_Response;->call(Lorg/chromium/ip_protection/mojom/BlindSignedAuthToken;Lorg/chromium/mojo_base/mojom/Time;)V
    :try_end_0
    .catch Lorg/chromium/mojo/bindings/DeserializationException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    return v0
.end method
