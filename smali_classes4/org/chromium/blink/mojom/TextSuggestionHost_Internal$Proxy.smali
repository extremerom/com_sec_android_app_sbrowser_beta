.class final Lorg/chromium/blink/mojom/TextSuggestionHost_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/blink/mojom/TextSuggestionHost$Proxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/blink/mojom/TextSuggestionHost_Internal;
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
.method public showSpellCheckSuggestionMenu(DDLjava/lang/String;[Lorg/chromium/blink/mojom/SpellCheckSuggestion;)V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/TextSuggestionHost_Internal$TextSuggestionHostShowSpellCheckSuggestionMenuParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/TextSuggestionHost_Internal$TextSuggestionHostShowSpellCheckSuggestionMenuParams;-><init>()V

    iput-wide p1, v0, Lorg/chromium/blink/mojom/TextSuggestionHost_Internal$TextSuggestionHostShowSpellCheckSuggestionMenuParams;->caretX:D

    iput-wide p3, v0, Lorg/chromium/blink/mojom/TextSuggestionHost_Internal$TextSuggestionHostShowSpellCheckSuggestionMenuParams;->caretY:D

    iput-object p5, v0, Lorg/chromium/blink/mojom/TextSuggestionHost_Internal$TextSuggestionHostShowSpellCheckSuggestionMenuParams;->markedText:Ljava/lang/String;

    iput-object p6, v0, Lorg/chromium/blink/mojom/TextSuggestionHost_Internal$TextSuggestionHostShowSpellCheckSuggestionMenuParams;->suggestions:[Lorg/chromium/blink/mojom/SpellCheckSuggestion;

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

    invoke-direct {p2, p3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public showTextSuggestionMenu(DDLjava/lang/String;[Lorg/chromium/blink/mojom/TextSuggestion;)V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/TextSuggestionHost_Internal$TextSuggestionHostShowTextSuggestionMenuParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/TextSuggestionHost_Internal$TextSuggestionHostShowTextSuggestionMenuParams;-><init>()V

    iput-wide p1, v0, Lorg/chromium/blink/mojom/TextSuggestionHost_Internal$TextSuggestionHostShowTextSuggestionMenuParams;->caretX:D

    iput-wide p3, v0, Lorg/chromium/blink/mojom/TextSuggestionHost_Internal$TextSuggestionHostShowTextSuggestionMenuParams;->caretY:D

    iput-object p5, v0, Lorg/chromium/blink/mojom/TextSuggestionHost_Internal$TextSuggestionHostShowTextSuggestionMenuParams;->markedText:Ljava/lang/String;

    iput-object p6, v0, Lorg/chromium/blink/mojom/TextSuggestionHost_Internal$TextSuggestionHostShowTextSuggestionMenuParams;->suggestions:[Lorg/chromium/blink/mojom/TextSuggestion;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 p3, 0x2

    invoke-direct {p2, p3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public startSuggestionMenuTimer()V
    .locals 4

    new-instance v0, Lorg/chromium/blink/mojom/TextSuggestionHost_Internal$TextSuggestionHostStartSuggestionMenuTimerParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/TextSuggestionHost_Internal$TextSuggestionHostStartSuggestionMenuTimerParams;-><init>()V

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {v1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method
