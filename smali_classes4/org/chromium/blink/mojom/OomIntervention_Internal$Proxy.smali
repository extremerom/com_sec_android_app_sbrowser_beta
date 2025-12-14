.class final Lorg/chromium/blink/mojom/OomIntervention_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/blink/mojom/OomIntervention$Proxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/blink/mojom/OomIntervention_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Proxy"
.end annotation


# direct methods
.method public constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;)V

    return-void
.end method


# virtual methods
.method public startDetection(Lorg/chromium/blink/mojom/OomInterventionHost;Lorg/chromium/blink/mojom/DetectionArgs;ZZZ)V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/OomIntervention_Internal$OomInterventionStartDetectionParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/OomIntervention_Internal$OomInterventionStartDetectionParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/OomIntervention_Internal$OomInterventionStartDetectionParams;->host:Lorg/chromium/blink/mojom/OomInterventionHost;

    iput-object p2, v0, Lorg/chromium/blink/mojom/OomIntervention_Internal$OomInterventionStartDetectionParams;->detectionArgs:Lorg/chromium/blink/mojom/DetectionArgs;

    iput-boolean p3, v0, Lorg/chromium/blink/mojom/OomIntervention_Internal$OomInterventionStartDetectionParams;->rendererPauseEnabled:Z

    iput-boolean p4, v0, Lorg/chromium/blink/mojom/OomIntervention_Internal$OomInterventionStartDetectionParams;->navigateAdsEnabled:Z

    iput-boolean p5, v0, Lorg/chromium/blink/mojom/OomIntervention_Internal$OomInterventionStartDetectionParams;->purgeV8MemoryEnabled:Z

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method
