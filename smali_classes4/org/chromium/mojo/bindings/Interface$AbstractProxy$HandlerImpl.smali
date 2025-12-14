.class public Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface$Proxy$Handler;
.implements Lorg/chromium/mojo/bindings/ConnectionErrorHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HandlerImpl"
.end annotation


# instance fields
.field private final mCore:Lorg/chromium/mojo/system/Core;

.field private mErrorHandler:Lorg/chromium/mojo/bindings/ConnectionErrorHandler;

.field private final mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

.field private mVersion:I


# direct methods
.method public constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->mCore:Lorg/chromium/mojo/system/Core;

    iput-object p2, p0, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    return-void
.end method

.method public static bridge synthetic a(Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;)I
    .locals 0

    iget p0, p0, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->mVersion:I

    return p0
.end method

.method public static bridge synthetic b(Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;I)V
    .locals 0

    iput p1, p0, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->mVersion:I

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    iget-object p0, p0, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    invoke-interface {p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->close()V

    return-void
.end method

.method public getCore()Lorg/chromium/mojo/system/Core;
    .locals 0

    iget-object p0, p0, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->mCore:Lorg/chromium/mojo/system/Core;

    return-object p0
.end method

.method public getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;
    .locals 0

    iget-object p0, p0, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    return-object p0
.end method

.method public getVersion()I
    .locals 0

    iget p0, p0, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->mVersion:I

    return p0
.end method

.method public onConnectionError(Lorg/chromium/mojo/system/MojoException;)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->mErrorHandler:Lorg/chromium/mojo/bindings/ConnectionErrorHandler;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lorg/chromium/mojo/bindings/ConnectionErrorHandler;->onConnectionError(Lorg/chromium/mojo/system/MojoException;)V

    :cond_0
    return-void
.end method

.method public passHandle()Lorg/chromium/mojo/system/MessagePipeHandle;
    .locals 0

    iget-object p0, p0, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    check-cast p0, Lorg/chromium/mojo/bindings/HandleOwner;

    invoke-interface {p0}, Lorg/chromium/mojo/bindings/HandleOwner;->passHandle()Lorg/chromium/mojo/system/Handle;

    move-result-object p0

    check-cast p0, Lorg/chromium/mojo/system/MessagePipeHandle;

    return-object p0
.end method

.method public setVersion(I)V
    .locals 0

    iput p1, p0, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->mVersion:I

    return-void
.end method
