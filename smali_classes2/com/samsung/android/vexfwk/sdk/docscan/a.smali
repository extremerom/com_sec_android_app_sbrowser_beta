.class public final synthetic Lcom/samsung/android/vexfwk/sdk/docscan/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/samsung/android/vexfwk/param/VexFwkDocumentDetectionType;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/vexfwk/param/VexFwkDocumentDetectionType;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/vexfwk/sdk/docscan/a;->a:I

    iput-object p1, p0, Lcom/samsung/android/vexfwk/sdk/docscan/a;->b:Lcom/samsung/android/vexfwk/param/VexFwkDocumentDetectionType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/samsung/android/vexfwk/sdk/docscan/a;->a:I

    iget-object p0, p0, Lcom/samsung/android/vexfwk/sdk/docscan/a;->b:Lcom/samsung/android/vexfwk/param/VexFwkDocumentDetectionType;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lcom/samsung/android/vexfwk/sdk/docscan/VexFwkDocDetector;

    invoke-static {p0, p1}, Lcom/samsung/android/vexfwk/sdk/docscan/VexFwkDocDetector;->e(Lcom/samsung/android/vexfwk/param/VexFwkDocumentDetectionType;Lcom/samsung/android/vexfwk/sdk/docscan/VexFwkDocDetector;)Ldb/r;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionConfigRequest$Builder;

    invoke-static {p0, p1}, Lcom/samsung/android/vexfwk/sdk/docscan/VexFwkDocDetector;->c(Lcom/samsung/android/vexfwk/param/VexFwkDocumentDetectionType;Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionConfigRequest$Builder;)Ldb/r;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p1, Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataNative;

    invoke-static {p0, p1}, Lcom/samsung/android/vexfwk/sdk/docscan/VexFwkDocDetector;->f(Lcom/samsung/android/vexfwk/param/VexFwkDocumentDetectionType;Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataNative;)Ldb/r;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
