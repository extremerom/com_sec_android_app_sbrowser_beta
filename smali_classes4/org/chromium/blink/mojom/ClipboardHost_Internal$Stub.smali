.class final Lorg/chromium/blink/mojom/ClipboardHost_Internal$Stub;
.super Lorg/chromium/mojo/bindings/Interface$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/blink/mojom/ClipboardHost_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/chromium/mojo/bindings/Interface$Stub<",
        "Lorg/chromium/blink/mojom/ClipboardHost;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/blink/mojom/ClipboardHost;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/chromium/mojo/bindings/Interface$Stub;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/Interface;)V

    return-void
.end method


# virtual methods
.method public accept(Lorg/chromium/mojo/bindings/Message;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Message;->asServiceMessage()Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getHeader()Lorg/chromium/mojo/bindings/MessageHeader;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;->hasFlag(I)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    invoke-virtual {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;->validateHeader(I)Z

    move-result v2

    if-nez v2, :cond_1

    return v0

    :cond_1
    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getType()I

    move-result v1

    const/4 v2, -0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    return v0

    :pswitch_0
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/ClipboardHost_Internal$ClipboardHostCommitWriteParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/ClipboardHost_Internal$ClipboardHostCommitWriteParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/ClipboardHost;

    invoke-interface {p0}, Lorg/chromium/blink/mojom/ClipboardHost;->commitWrite()V

    return v2

    :catch_0
    move-exception p0

    goto/16 :goto_1

    :pswitch_1
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/ClipboardHost_Internal$ClipboardHostWriteUnsanitizedCustomFormatParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/ClipboardHost_Internal$ClipboardHostWriteUnsanitizedCustomFormatParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/ClipboardHost;

    iget-object v1, p1, Lorg/chromium/blink/mojom/ClipboardHost_Internal$ClipboardHostWriteUnsanitizedCustomFormatParams;->format:Lorg/chromium/mojo_base/mojom/String16;

    iget-object p1, p1, Lorg/chromium/blink/mojom/ClipboardHost_Internal$ClipboardHostWriteUnsanitizedCustomFormatParams;->data:Lorg/chromium/mojo_base/mojom/BigBuffer;

    invoke-interface {p0, v1, p1}, Lorg/chromium/blink/mojom/ClipboardHost;->writeUnsanitizedCustomFormat(Lorg/chromium/mojo_base/mojom/String16;Lorg/chromium/mojo_base/mojom/BigBuffer;)V

    return v2

    :pswitch_2
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/ClipboardHost_Internal$ClipboardHostWriteImageParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/ClipboardHost_Internal$ClipboardHostWriteImageParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/ClipboardHost;

    iget-object p1, p1, Lorg/chromium/blink/mojom/ClipboardHost_Internal$ClipboardHostWriteImageParams;->image:Lorg/chromium/skia/mojom/BitmapN32;

    invoke-interface {p0, p1}, Lorg/chromium/blink/mojom/ClipboardHost;->writeImage(Lorg/chromium/skia/mojom/BitmapN32;)V

    return v2

    :pswitch_3
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/ClipboardHost_Internal$ClipboardHostWriteBookmarkParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/ClipboardHost_Internal$ClipboardHostWriteBookmarkParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/ClipboardHost;

    iget-object v1, p1, Lorg/chromium/blink/mojom/ClipboardHost_Internal$ClipboardHostWriteBookmarkParams;->url:Ljava/lang/String;

    iget-object p1, p1, Lorg/chromium/blink/mojom/ClipboardHost_Internal$ClipboardHostWriteBookmarkParams;->title:Lorg/chromium/mojo_base/mojom/String16;

    invoke-interface {p0, v1, p1}, Lorg/chromium/blink/mojom/ClipboardHost;->writeBookmark(Ljava/lang/String;Lorg/chromium/mojo_base/mojom/String16;)V

    return v2

    :pswitch_4
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/ClipboardHost_Internal$ClipboardHostWriteDataTransferCustomDataParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/ClipboardHost_Internal$ClipboardHostWriteDataTransferCustomDataParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/ClipboardHost;

    iget-object p1, p1, Lorg/chromium/blink/mojom/ClipboardHost_Internal$ClipboardHostWriteDataTransferCustomDataParams;->data:Ljava/util/Map;

    invoke-interface {p0, p1}, Lorg/chromium/blink/mojom/ClipboardHost;->writeDataTransferCustomData(Ljava/util/Map;)V

    return v2

    :pswitch_5
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/ClipboardHost_Internal$ClipboardHostWriteSmartPasteMarkerParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/ClipboardHost_Internal$ClipboardHostWriteSmartPasteMarkerParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/ClipboardHost;

    invoke-interface {p0}, Lorg/chromium/blink/mojom/ClipboardHost;->writeSmartPasteMarker()V

    return v2

    :pswitch_6
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/ClipboardHost_Internal$ClipboardHostWriteSvgParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/ClipboardHost_Internal$ClipboardHostWriteSvgParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/ClipboardHost;

    iget-object p1, p1, Lorg/chromium/blink/mojom/ClipboardHost_Internal$ClipboardHostWriteSvgParams;->markup:Lorg/chromium/mojo_base/mojom/BigString16;

    invoke-interface {p0, p1}, Lorg/chromium/blink/mojom/ClipboardHost;->writeSvg(Lorg/chromium/mojo_base/mojom/BigString16;)V

    return v2

    :pswitch_7
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/ClipboardHost_Internal$ClipboardHostWriteHtmlParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/ClipboardHost_Internal$ClipboardHostWriteHtmlParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/ClipboardHost;

    iget-object v1, p1, Lorg/chromium/blink/mojom/ClipboardHost_Internal$ClipboardHostWriteHtmlParams;->markup:Lorg/chromium/mojo_base/mojom/BigString16;

    iget-object p1, p1, Lorg/chromium/blink/mojom/ClipboardHost_Internal$ClipboardHostWriteHtmlParams;->url:Lorg/chromium/url/mojom/Url;

    invoke-interface {p0, v1, p1}, Lorg/chromium/blink/mojom/ClipboardHost;->writeHtml(Lorg/chromium/mojo_base/mojom/BigString16;Lorg/chromium/url/mojom/Url;)V

    return v2

    :pswitch_8
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/ClipboardHost_Internal$ClipboardHostWriteTextParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/ClipboardHost_Internal$ClipboardHostWriteTextParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/ClipboardHost;

    iget-object p1, p1, Lorg/chromium/blink/mojom/ClipboardHost_Internal$ClipboardHostWriteTextParams;->text:Lorg/chromium/mojo_base/mojom/BigString16;

    invoke-interface {p0, p1}, Lorg/chromium/blink/mojom/ClipboardHost;->writeText(Lorg/chromium/mojo_base/mojom/BigString16;)V

    return v2

    :cond_2
    sget-object p0, Lorg/chromium/blink/mojom/ClipboardHost_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-static {p0, p1}, Lorg/chromium/mojo/bindings/InterfaceControlMessagesHelper;->handleRunOrClosePipe(Lorg/chromium/mojo/bindings/Interface$Manager;Lorg/chromium/mojo/bindings/ServiceMessage;)Z

    move-result p0
    :try_end_0
    .catch Lorg/chromium/mojo/bindings/DeserializationException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :goto_1
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Message;->asServiceMessage()Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getHeader()Lorg/chromium/mojo/bindings/MessageHeader;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;->hasFlag(I)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x5

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;->validateHeader(I)Z

    move-result v2

    if-nez v2, :cond_1

    return v0

    :cond_1
    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    return v0

    :pswitch_0
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/ClipboardHost_Internal$ClipboardHostReadUnsanitizedCustomFormatParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/ClipboardHost_Internal$ClipboardHostReadUnsanitizedCustomFormatParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/blink/mojom/ClipboardHost;

    iget-object p1, p1, Lorg/chromium/blink/mojom/ClipboardHost_Internal$ClipboardHostReadUnsanitizedCustomFormatParams;->format:Lorg/chromium/mojo_base/mojom/String16;

    new-instance v4, Lorg/chromium/blink/mojom/ClipboardHost_Internal$ClipboardHostReadUnsanitizedCustomFormatResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v5

    invoke-direct {v4, p0, p2, v5, v6}, Lorg/chromium/blink/mojom/ClipboardHost_Internal$ClipboardHostReadUnsanitizedCustomFormatResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, p1, v4}, Lorg/chromium/blink/mojom/ClipboardHost;->readUnsanitizedCustomFormat(Lorg/chromium/mojo_base/mojom/String16;Lorg/chromium/blink/mojom/ClipboardHost$ReadUnsanitizedCustomFormat_Response;)V

    return v3

    :catch_0
    move-exception p0

    goto/16 :goto_1

    :pswitch_1
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/ClipboardHost_Internal$ClipboardHostReadAvailableCustomAndStandardFormatsParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/ClipboardHost_Internal$ClipboardHostReadAvailableCustomAndStandardFormatsParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p1

    check-cast p1, Lorg/chromium/blink/mojom/ClipboardHost;

    new-instance v2, Lorg/chromium/blink/mojom/ClipboardHost_Internal$ClipboardHostReadAvailableCustomAndStandardFormatsResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v4

    invoke-direct {v2, p0, p2, v4, v5}, Lorg/chromium/blink/mojom/ClipboardHost_Internal$ClipboardHostReadAvailableCustomAndStandardFormatsResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {p1, v2}, Lorg/chromium/blink/mojom/ClipboardHost;->readAvailableCustomAndStandardFormats(Lorg/chromium/blink/mojom/ClipboardHost$ReadAvailableCustomAndStandardFormats_Response;)V

    return v3

    :pswitch_2
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/ClipboardHost_Internal$ClipboardHostReadDataTransferCustomDataParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/ClipboardHost_Internal$ClipboardHostReadDataTransferCustomDataParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/blink/mojom/ClipboardHost;

    iget v4, p1, Lorg/chromium/blink/mojom/ClipboardHost_Internal$ClipboardHostReadDataTransferCustomDataParams;->buffer:I

    iget-object p1, p1, Lorg/chromium/blink/mojom/ClipboardHost_Internal$ClipboardHostReadDataTransferCustomDataParams;->type:Lorg/chromium/mojo_base/mojom/String16;

    new-instance v5, Lorg/chromium/blink/mojom/ClipboardHost_Internal$ClipboardHostReadDataTransferCustomDataResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v6

    invoke-direct {v5, p0, p2, v6, v7}, Lorg/chromium/blink/mojom/ClipboardHost_Internal$ClipboardHostReadDataTransferCustomDataResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, v4, p1, v5}, Lorg/chromium/blink/mojom/ClipboardHost;->readDataTransferCustomData(ILorg/chromium/mojo_base/mojom/String16;Lorg/chromium/blink/mojom/ClipboardHost$ReadDataTransferCustomData_Response;)V

    return v3

    :pswitch_3
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/ClipboardHost_Internal$ClipboardHostReadFilesParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/ClipboardHost_Internal$ClipboardHostReadFilesParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/blink/mojom/ClipboardHost;

    iget p1, p1, Lorg/chromium/blink/mojom/ClipboardHost_Internal$ClipboardHostReadFilesParams;->buffer:I

    new-instance v4, Lorg/chromium/blink/mojom/ClipboardHost_Internal$ClipboardHostReadFilesResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v5

    invoke-direct {v4, p0, p2, v5, v6}, Lorg/chromium/blink/mojom/ClipboardHost_Internal$ClipboardHostReadFilesResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, p1, v4}, Lorg/chromium/blink/mojom/ClipboardHost;->readFiles(ILorg/chromium/blink/mojom/ClipboardHost$ReadFiles_Response;)V

    return v3

    :pswitch_4
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/ClipboardHost_Internal$ClipboardHostReadPngParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/ClipboardHost_Internal$ClipboardHostReadPngParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/blink/mojom/ClipboardHost;

    iget p1, p1, Lorg/chromium/blink/mojom/ClipboardHost_Internal$ClipboardHostReadPngParams;->buffer:I

    new-instance v4, Lorg/chromium/blink/mojom/ClipboardHost_Internal$ClipboardHostReadPngResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v5

    invoke-direct {v4, p0, p2, v5, v6}, Lorg/chromium/blink/mojom/ClipboardHost_Internal$ClipboardHostReadPngResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, p1, v4}, Lorg/chromium/blink/mojom/ClipboardHost;->readPng(ILorg/chromium/blink/mojom/ClipboardHost$ReadPng_Response;)V

    return v3

    :pswitch_5
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/ClipboardHost_Internal$ClipboardHostReadRtfParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/ClipboardHost_Internal$ClipboardHostReadRtfParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/blink/mojom/ClipboardHost;

    iget p1, p1, Lorg/chromium/blink/mojom/ClipboardHost_Internal$ClipboardHostReadRtfParams;->buffer:I

    new-instance v4, Lorg/chromium/blink/mojom/ClipboardHost_Internal$ClipboardHostReadRtfResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v5

    invoke-direct {v4, p0, p2, v5, v6}, Lorg/chromium/blink/mojom/ClipboardHost_Internal$ClipboardHostReadRtfResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, p1, v4}, Lorg/chromium/blink/mojom/ClipboardHost;->readRtf(ILorg/chromium/blink/mojom/ClipboardHost$ReadRtf_Response;)V

    return v3

    :pswitch_6
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/ClipboardHost_Internal$ClipboardHostReadSvgParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/ClipboardHost_Internal$ClipboardHostReadSvgParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/blink/mojom/ClipboardHost;

    iget p1, p1, Lorg/chromium/blink/mojom/ClipboardHost_Internal$ClipboardHostReadSvgParams;->buffer:I

    new-instance v4, Lorg/chromium/blink/mojom/ClipboardHost_Internal$ClipboardHostReadSvgResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v5

    invoke-direct {v4, p0, p2, v5, v6}, Lorg/chromium/blink/mojom/ClipboardHost_Internal$ClipboardHostReadSvgResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, p1, v4}, Lorg/chromium/blink/mojom/ClipboardHost;->readSvg(ILorg/chromium/blink/mojom/ClipboardHost$ReadSvg_Response;)V

    return v3

    :pswitch_7
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/ClipboardHost_Internal$ClipboardHostReadHtmlParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/ClipboardHost_Internal$ClipboardHostReadHtmlParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/blink/mojom/ClipboardHost;

    iget p1, p1, Lorg/chromium/blink/mojom/ClipboardHost_Internal$ClipboardHostReadHtmlParams;->buffer:I

    new-instance v4, Lorg/chromium/blink/mojom/ClipboardHost_Internal$ClipboardHostReadHtmlResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v5

    invoke-direct {v4, p0, p2, v5, v6}, Lorg/chromium/blink/mojom/ClipboardHost_Internal$ClipboardHostReadHtmlResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, p1, v4}, Lorg/chromium/blink/mojom/ClipboardHost;->readHtml(ILorg/chromium/blink/mojom/ClipboardHost$ReadHtml_Response;)V

    return v3

    :pswitch_8
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/ClipboardHost_Internal$ClipboardHostReadTextParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/ClipboardHost_Internal$ClipboardHostReadTextParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/blink/mojom/ClipboardHost;

    iget p1, p1, Lorg/chromium/blink/mojom/ClipboardHost_Internal$ClipboardHostReadTextParams;->buffer:I

    new-instance v4, Lorg/chromium/blink/mojom/ClipboardHost_Internal$ClipboardHostReadTextResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v5

    invoke-direct {v4, p0, p2, v5, v6}, Lorg/chromium/blink/mojom/ClipboardHost_Internal$ClipboardHostReadTextResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, p1, v4}, Lorg/chromium/blink/mojom/ClipboardHost;->readText(ILorg/chromium/blink/mojom/ClipboardHost$ReadText_Response;)V

    return v3

    :pswitch_9
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/ClipboardHost_Internal$ClipboardHostReadAvailableTypesParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/ClipboardHost_Internal$ClipboardHostReadAvailableTypesParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/blink/mojom/ClipboardHost;

    iget p1, p1, Lorg/chromium/blink/mojom/ClipboardHost_Internal$ClipboardHostReadAvailableTypesParams;->buffer:I

    new-instance v4, Lorg/chromium/blink/mojom/ClipboardHost_Internal$ClipboardHostReadAvailableTypesResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v5

    invoke-direct {v4, p0, p2, v5, v6}, Lorg/chromium/blink/mojom/ClipboardHost_Internal$ClipboardHostReadAvailableTypesResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, p1, v4}, Lorg/chromium/blink/mojom/ClipboardHost;->readAvailableTypes(ILorg/chromium/blink/mojom/ClipboardHost$ReadAvailableTypes_Response;)V

    return v3

    :pswitch_a
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/ClipboardHost_Internal$ClipboardHostIsFormatAvailableParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/ClipboardHost_Internal$ClipboardHostIsFormatAvailableParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/blink/mojom/ClipboardHost;

    iget v4, p1, Lorg/chromium/blink/mojom/ClipboardHost_Internal$ClipboardHostIsFormatAvailableParams;->format:I

    iget p1, p1, Lorg/chromium/blink/mojom/ClipboardHost_Internal$ClipboardHostIsFormatAvailableParams;->buffer:I

    new-instance v5, Lorg/chromium/blink/mojom/ClipboardHost_Internal$ClipboardHostIsFormatAvailableResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v6

    invoke-direct {v5, p0, p2, v6, v7}, Lorg/chromium/blink/mojom/ClipboardHost_Internal$ClipboardHostIsFormatAvailableResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, v4, p1, v5}, Lorg/chromium/blink/mojom/ClipboardHost;->isFormatAvailable(IILorg/chromium/blink/mojom/ClipboardHost$IsFormatAvailable_Response;)V

    return v3

    :pswitch_b
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/ClipboardHost_Internal$ClipboardHostGetSequenceNumberParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/ClipboardHost_Internal$ClipboardHostGetSequenceNumberParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/blink/mojom/ClipboardHost;

    iget p1, p1, Lorg/chromium/blink/mojom/ClipboardHost_Internal$ClipboardHostGetSequenceNumberParams;->buffer:I

    new-instance v4, Lorg/chromium/blink/mojom/ClipboardHost_Internal$ClipboardHostGetSequenceNumberResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v5

    invoke-direct {v4, p0, p2, v5, v6}, Lorg/chromium/blink/mojom/ClipboardHost_Internal$ClipboardHostGetSequenceNumberResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, p1, v4}, Lorg/chromium/blink/mojom/ClipboardHost;->getSequenceNumber(ILorg/chromium/blink/mojom/ClipboardHost$GetSequenceNumber_Response;)V

    return v3

    :pswitch_c
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    sget-object v1, Lorg/chromium/blink/mojom/ClipboardHost_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-static {p0, v1, p1, p2}, Lorg/chromium/mojo/bindings/InterfaceControlMessagesHelper;->handleRun(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/Interface$Manager;Lorg/chromium/mojo/bindings/ServiceMessage;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    move-result p0
    :try_end_0
    .catch Lorg/chromium/mojo/bindings/DeserializationException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :goto_1
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return v0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
