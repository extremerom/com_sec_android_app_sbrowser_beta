.class Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager$ClipboardEventListener$1;
.super Lcom/sec/sbrowser/spl/wrapper/SdlIClipboardDataPasteEvent;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager$ClipboardEventListener;->getIClipboardDataPasteEventAdapter()Lcom/sec/sbrowser/spl/wrapper/SdlIClipboardDataPasteEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager$ClipboardEventListener;


# direct methods
.method public constructor <init>(Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager$ClipboardEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager$ClipboardEventListener$1;->this$1:Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager$ClipboardEventListener;

    invoke-direct {p0}, Lcom/sec/sbrowser/spl/wrapper/SdlIClipboardDataPasteEvent;-><init>()V

    return-void
.end method


# virtual methods
.method public onClipboardDataPaste(Lcom/sec/sbrowser/spl/wrapper/SdlClipboardData;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager$ClipboardEventListener$1;->this$1:Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager$ClipboardEventListener;

    invoke-virtual {p0, p1}, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager$ClipboardEventListener;->onPaste(Lcom/sec/sbrowser/spl/wrapper/SdlClipboardData;)V

    return-void
.end method
