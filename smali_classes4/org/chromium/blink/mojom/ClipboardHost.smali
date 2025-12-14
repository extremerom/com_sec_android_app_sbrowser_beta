.class public interface abstract Lorg/chromium/blink/mojom/ClipboardHost;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/ClipboardHost$ReadUnsanitizedCustomFormat_Response;,
        Lorg/chromium/blink/mojom/ClipboardHost$ReadAvailableCustomAndStandardFormats_Response;,
        Lorg/chromium/blink/mojom/ClipboardHost$ReadDataTransferCustomData_Response;,
        Lorg/chromium/blink/mojom/ClipboardHost$ReadFiles_Response;,
        Lorg/chromium/blink/mojom/ClipboardHost$ReadPng_Response;,
        Lorg/chromium/blink/mojom/ClipboardHost$ReadRtf_Response;,
        Lorg/chromium/blink/mojom/ClipboardHost$ReadSvg_Response;,
        Lorg/chromium/blink/mojom/ClipboardHost$ReadHtml_Response;,
        Lorg/chromium/blink/mojom/ClipboardHost$ReadText_Response;,
        Lorg/chromium/blink/mojom/ClipboardHost$ReadAvailableTypes_Response;,
        Lorg/chromium/blink/mojom/ClipboardHost$IsFormatAvailable_Response;,
        Lorg/chromium/blink/mojom/ClipboardHost$GetSequenceNumber_Response;,
        Lorg/chromium/blink/mojom/ClipboardHost$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/blink/mojom/ClipboardHost;",
            "Lorg/chromium/blink/mojom/ClipboardHost$Proxy;",
            ">;"
        }
    .end annotation
.end field

.field public static final MAX_DATA_SIZE:I = 0x40000000

.field public static final MAX_FORMAT_SIZE:I = 0x400


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/chromium/blink/mojom/ClipboardHost_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    sput-object v0, Lorg/chromium/blink/mojom/ClipboardHost;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method


# virtual methods
.method public abstract commitWrite()V
.end method

.method public abstract getSequenceNumber(ILorg/chromium/blink/mojom/ClipboardHost$GetSequenceNumber_Response;)V
.end method

.method public abstract isFormatAvailable(IILorg/chromium/blink/mojom/ClipboardHost$IsFormatAvailable_Response;)V
.end method

.method public abstract readAvailableCustomAndStandardFormats(Lorg/chromium/blink/mojom/ClipboardHost$ReadAvailableCustomAndStandardFormats_Response;)V
.end method

.method public abstract readAvailableTypes(ILorg/chromium/blink/mojom/ClipboardHost$ReadAvailableTypes_Response;)V
.end method

.method public abstract readDataTransferCustomData(ILorg/chromium/mojo_base/mojom/String16;Lorg/chromium/blink/mojom/ClipboardHost$ReadDataTransferCustomData_Response;)V
.end method

.method public abstract readFiles(ILorg/chromium/blink/mojom/ClipboardHost$ReadFiles_Response;)V
.end method

.method public abstract readHtml(ILorg/chromium/blink/mojom/ClipboardHost$ReadHtml_Response;)V
.end method

.method public abstract readPng(ILorg/chromium/blink/mojom/ClipboardHost$ReadPng_Response;)V
.end method

.method public abstract readRtf(ILorg/chromium/blink/mojom/ClipboardHost$ReadRtf_Response;)V
.end method

.method public abstract readSvg(ILorg/chromium/blink/mojom/ClipboardHost$ReadSvg_Response;)V
.end method

.method public abstract readText(ILorg/chromium/blink/mojom/ClipboardHost$ReadText_Response;)V
.end method

.method public abstract readUnsanitizedCustomFormat(Lorg/chromium/mojo_base/mojom/String16;Lorg/chromium/blink/mojom/ClipboardHost$ReadUnsanitizedCustomFormat_Response;)V
.end method

.method public abstract writeBookmark(Ljava/lang/String;Lorg/chromium/mojo_base/mojom/String16;)V
.end method

.method public abstract writeDataTransferCustomData(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lorg/chromium/mojo_base/mojom/String16;",
            "Lorg/chromium/mojo_base/mojom/BigString16;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract writeHtml(Lorg/chromium/mojo_base/mojom/BigString16;Lorg/chromium/url/mojom/Url;)V
.end method

.method public abstract writeImage(Lorg/chromium/skia/mojom/BitmapN32;)V
.end method

.method public abstract writeSmartPasteMarker()V
.end method

.method public abstract writeSvg(Lorg/chromium/mojo_base/mojom/BigString16;)V
.end method

.method public abstract writeText(Lorg/chromium/mojo_base/mojom/BigString16;)V
.end method

.method public abstract writeUnsanitizedCustomFormat(Lorg/chromium/mojo_base/mojom/String16;Lorg/chromium/mojo_base/mojom/BigBuffer;)V
.end method
