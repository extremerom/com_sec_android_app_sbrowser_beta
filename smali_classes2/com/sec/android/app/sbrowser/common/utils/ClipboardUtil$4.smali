.class Lcom/sec/android/app/sbrowser/common/utils/ClipboardUtil$4;
.super Lcom/sec/sbrowser/spl/wrapper/SemClipboardEventListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/common/utils/ClipboardUtil;->getSemClipboardEventListener()Lcom/sec/sbrowser/spl/wrapper/SemClipboardEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/sbrowser/spl/wrapper/SemClipboardEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onClipboardUpdated(ILcom/sec/sbrowser/spl/wrapper/SdlClipboardData;)V
    .locals 0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "clipboardUpdated event : "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ClipboardUtil"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/terrace/TerraceClipboardUtils;->clipboardUpdated()V

    return-void
.end method
