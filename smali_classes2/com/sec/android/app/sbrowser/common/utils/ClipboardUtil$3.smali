.class Lcom/sec/android/app/sbrowser/common/utils/ClipboardUtil$3;
.super Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager$ClipboardEventListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/common/utils/ClipboardUtil;->getClipboardEventListener(Lcom/sec/android/app/sbrowser/common/utils/ClipboardUtil$ClipboardCallback;Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;)Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager$ClipboardEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/sec/android/app/sbrowser/common/utils/ClipboardUtil$ClipboardCallback;


# direct methods
.method public constructor <init>(Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;Lcom/sec/android/app/sbrowser/common/utils/ClipboardUtil$ClipboardCallback;)V
    .locals 0

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/utils/ClipboardUtil$3;->val$callback:Lcom/sec/android/app/sbrowser/common/utils/ClipboardUtil$ClipboardCallback;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager$ClipboardEventListener;-><init>(Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;)V

    return-void
.end method


# virtual methods
.method public onPaste(Lcom/sec/sbrowser/spl/wrapper/SdlClipboardData;)V
    .locals 4

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/ClipboardUtil;->c(Lcom/sec/sbrowser/spl/wrapper/SdlClipboardData;)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    instance-of v2, p1, Lcom/sec/sbrowser/spl/wrapper/ClipboardDataHTMLFragment;

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/sec/sbrowser/spl/wrapper/SdlClipboardData;->getFomat()I

    move-result v2

    sget-object v3, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager$Format;->HTML:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {v3}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v2, v3, :cond_0

    check-cast p1, Lcom/sec/sbrowser/spl/wrapper/ClipboardDataHTMLFragment;

    invoke-virtual {p1}, Lcom/sec/sbrowser/spl/wrapper/ClipboardDataHTMLFragment;->getHtml()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ClipboardExManager.Format.HTML.get() failed due to exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "ClipboardUtil"

    invoke-static {p1, v2, v3}, Landroidx/recyclerview/widget/P;->q(Lcom/sec/sbrowser/spl/util/FallbackException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/utils/ClipboardUtil$3;->val$callback:Lcom/sec/android/app/sbrowser/common/utils/ClipboardUtil$ClipboardCallback;

    invoke-interface {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/ClipboardUtil$ClipboardCallback;->onPaste(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void
.end method
