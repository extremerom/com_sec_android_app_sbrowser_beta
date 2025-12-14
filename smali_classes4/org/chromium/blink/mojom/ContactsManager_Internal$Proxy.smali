.class final Lorg/chromium/blink/mojom/ContactsManager_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/blink/mojom/ContactsManager$Proxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/blink/mojom/ContactsManager_Internal;
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
.method public select(ZZZZZZLorg/chromium/blink/mojom/ContactsManager$Select_Response;)V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/ContactsManager_Internal$ContactsManagerSelectParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/ContactsManager_Internal$ContactsManagerSelectParams;-><init>()V

    iput-boolean p1, v0, Lorg/chromium/blink/mojom/ContactsManager_Internal$ContactsManagerSelectParams;->multiple:Z

    iput-boolean p2, v0, Lorg/chromium/blink/mojom/ContactsManager_Internal$ContactsManagerSelectParams;->includeNames:Z

    iput-boolean p3, v0, Lorg/chromium/blink/mojom/ContactsManager_Internal$ContactsManagerSelectParams;->includeEmails:Z

    iput-boolean p4, v0, Lorg/chromium/blink/mojom/ContactsManager_Internal$ContactsManagerSelectParams;->includeTel:Z

    iput-boolean p5, v0, Lorg/chromium/blink/mojom/ContactsManager_Internal$ContactsManagerSelectParams;->includeAddresses:Z

    iput-boolean p6, v0, Lorg/chromium/blink/mojom/ContactsManager_Internal$ContactsManagerSelectParams;->includeIcons:Z

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 p3, 0x1

    const-wide/16 p4, 0x0

    const/4 p6, 0x0

    invoke-direct {p2, p6, p3, p4, p5}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/blink/mojom/ContactsManager_Internal$ContactsManagerSelectResponseParamsForwardToCallback;

    invoke-direct {p2, p7}, Lorg/chromium/blink/mojom/ContactsManager_Internal$ContactsManagerSelectResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/ContactsManager$Select_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method
