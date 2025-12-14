.class final Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordAutofillHook_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordAutofillHook$Proxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordAutofillHook_Internal;
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
.method public onFillPasswordForm(ILjava/lang/String;Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordAutofillHook$OnFillPasswordForm_Response;)V
    .locals 5

    new-instance v0, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordAutofillHook_Internal$TerracePasswordAutofillHookOnFillPasswordFormParams;

    invoke-direct {v0}, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordAutofillHook_Internal$TerracePasswordAutofillHookOnFillPasswordFormParams;-><init>()V

    iput p1, v0, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordAutofillHook_Internal$TerracePasswordAutofillHookOnFillPasswordFormParams;->passwordAutofillType:I

    iput-object p2, v0, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordAutofillHook_Internal$TerracePasswordAutofillHookOnFillPasswordFormParams;->password:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-direct {p2, v4, v1, v2, v3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordAutofillHook_Internal$TerracePasswordAutofillHookOnFillPasswordFormResponseParamsForwardToCallback;

    invoke-direct {p2, p3}, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordAutofillHook_Internal$TerracePasswordAutofillHookOnFillPasswordFormResponseParamsForwardToCallback;-><init>(Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordAutofillHook$OnFillPasswordForm_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public showMigrationPopup()V
    .locals 4

    new-instance v0, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordAutofillHook_Internal$TerracePasswordAutofillHookShowMigrationPopupParams;

    invoke-direct {v0}, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordAutofillHook_Internal$TerracePasswordAutofillHookShowMigrationPopupParams;-><init>()V

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {v1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method
