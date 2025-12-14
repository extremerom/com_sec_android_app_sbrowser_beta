.class abstract Lcom/sec/sbrowser/spl/wrapper/SdlIClipboardDataPasteEvent;
.super Landroid/sec/clipboard/IClipboardDataPasteEvent$Stub;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/sec/clipboard/IClipboardDataPasteEvent$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onClipboardDataPaste(Landroid/sec/clipboard/data/ClipboardData;)V
    .locals 3

    :try_start_0
    new-instance v0, Lcom/sec/sbrowser/spl/wrapper/SdlClipboardData;

    invoke-direct {v0, p1}, Lcom/sec/sbrowser/spl/wrapper/SdlClipboardData;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/sec/sbrowser/spl/wrapper/SdlClipboardData;->getFomat()I

    move-result v1

    sget-object v2, Lcom/sec/sbrowser/spl/wrapper/ClipboardDefine;->FORMAT_TEXT_ID:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_0

    new-instance v0, Lcom/sec/sbrowser/spl/wrapper/ClipboardDataText;

    invoke-direct {v0, p1}, Lcom/sec/sbrowser/spl/wrapper/ClipboardDataText;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/sec/sbrowser/spl/wrapper/SdlIClipboardDataPasteEvent;->onClipboardDataPaste(Lcom/sec/sbrowser/spl/wrapper/SdlClipboardData;)V

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/sec/sbrowser/spl/wrapper/ClipboardDefine;->FORMAT_BITMAP_ID:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_1

    new-instance v0, Lcom/sec/sbrowser/spl/wrapper/ClipboardDataBitmap;

    invoke-direct {v0, p1}, Lcom/sec/sbrowser/spl/wrapper/ClipboardDataBitmap;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/sec/sbrowser/spl/wrapper/SdlIClipboardDataPasteEvent;->onClipboardDataPaste(Lcom/sec/sbrowser/spl/wrapper/SdlClipboardData;)V

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/sec/sbrowser/spl/wrapper/ClipboardDefine;->FORMAT_HTML_FLAGMENT_ID:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_2

    new-instance v0, Lcom/sec/sbrowser/spl/wrapper/ClipboardDataHTMLFragment;

    invoke-direct {v0, p1}, Lcom/sec/sbrowser/spl/wrapper/ClipboardDataHTMLFragment;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/sec/sbrowser/spl/wrapper/SdlIClipboardDataPasteEvent;->onClipboardDataPaste(Lcom/sec/sbrowser/spl/wrapper/SdlClipboardData;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0}, Lcom/sec/sbrowser/spl/wrapper/SdlIClipboardDataPasteEvent;->onClipboardDataPaste(Lcom/sec/sbrowser/spl/wrapper/SdlClipboardData;)V
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "SdlIClipboardDataPasteEvent"

    const-string p1, "onClipboardDataPaste: FallbackException"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public abstract onClipboardDataPaste(Lcom/sec/sbrowser/spl/wrapper/SdlClipboardData;)V
.end method
