.class public final synthetic LL9/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lcom/samsung/android/vexfwk/sdk/ocr/VexFwkImageOcr;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Lcom/samsung/android/vexfwk/sdk/ocr/VexFwkImageOcr;I)V
    .locals 0

    iput p3, p0, LL9/a;->a:I

    iput-object p1, p0, LL9/a;->b:Ljava/lang/Object;

    iput-object p2, p0, LL9/a;->c:Lcom/samsung/android/vexfwk/sdk/ocr/VexFwkImageOcr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget v0, p0, LL9/a;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LL9/a;->b:Ljava/lang/Object;

    iget-object p0, p0, LL9/a;->c:Lcom/samsung/android/vexfwk/sdk/ocr/VexFwkImageOcr;

    invoke-static {v0, p0}, Lcom/samsung/android/vexfwk/sdk/ocr/VexFwkImageOcr;->h(Ljava/lang/Object;Lcom/samsung/android/vexfwk/sdk/ocr/VexFwkImageOcr;)Lcom/samsung/android/vexfwk/sdk/ocr/VexFwkImageOcr$Result;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object v0, p0, LL9/a;->b:Ljava/lang/Object;

    iget-object p0, p0, LL9/a;->c:Lcom/samsung/android/vexfwk/sdk/ocr/VexFwkImageOcr;

    invoke-static {v0, p0}, Lcom/samsung/android/vexfwk/sdk/ocr/VexFwkImageOcr;->d(Ljava/lang/Object;Lcom/samsung/android/vexfwk/sdk/ocr/VexFwkImageOcr;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
