.class public final synthetic LK9/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/samsung/android/vexfwk/param/VexFwkObjectRemoverMode;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/vexfwk/param/VexFwkObjectRemoverMode;I)V
    .locals 0

    iput p2, p0, LK9/a;->a:I

    iput-object p1, p0, LK9/a;->b:Lcom/samsung/android/vexfwk/param/VexFwkObjectRemoverMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, LK9/a;->a:I

    iget-object p0, p0, LK9/a;->b:Lcom/samsung/android/vexfwk/param/VexFwkObjectRemoverMode;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionConfigRequest$Builder;

    invoke-static {p0, p1}, Lcom/samsung/android/vexfwk/sdk/objeraser/VexFwkObjRemover;->j(Lcom/samsung/android/vexfwk/param/VexFwkObjectRemoverMode;Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionConfigRequest$Builder;)Ldb/r;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Lcom/samsung/android/vexfwk/sdk/objeraser/VexFwkObjRemover;

    invoke-static {p0, p1}, Lcom/samsung/android/vexfwk/sdk/objeraser/VexFwkObjRemover;->e(Lcom/samsung/android/vexfwk/param/VexFwkObjectRemoverMode;Lcom/samsung/android/vexfwk/sdk/objeraser/VexFwkObjRemover;)Ldb/r;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p1, Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataNative;

    invoke-static {p0, p1}, Lcom/samsung/android/vexfwk/sdk/objeraser/VexFwkObjRemover;->f(Lcom/samsung/android/vexfwk/param/VexFwkObjectRemoverMode;Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataNative;)Ldb/r;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p1, Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataNative;

    invoke-static {p0, p1}, Lcom/samsung/android/vexfwk/sdk/objeraser/VexFwkImageObjectRemover;->c(Lcom/samsung/android/vexfwk/param/VexFwkObjectRemoverMode;Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataNative;)Ldb/r;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p1, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionConfigRequest$Builder;

    invoke-static {p0, p1}, Lcom/samsung/android/vexfwk/sdk/objeraser/VexFwkImageObjectRemover;->f(Lcom/samsung/android/vexfwk/param/VexFwkObjectRemoverMode;Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionConfigRequest$Builder;)Ldb/r;

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast p1, Lcom/samsung/android/vexfwk/sdk/objeraser/VexFwkImageObjectRemover;

    invoke-static {p0, p1}, Lcom/samsung/android/vexfwk/sdk/objeraser/VexFwkImageObjectRemover;->b(Lcom/samsung/android/vexfwk/param/VexFwkObjectRemoverMode;Lcom/samsung/android/vexfwk/sdk/objeraser/VexFwkImageObjectRemover;)Ldb/r;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
