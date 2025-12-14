.class public final synthetic LA9/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Lcom/samsung/android/vexfwk/sdk/common/VexFwkSdkBase;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/samsung/android/vexfwk/sdk/common/VexFwkSdkBase;I)V
    .locals 0

    iput p4, p0, LA9/a;->a:I

    iput-object p1, p0, LA9/a;->b:Ljava/lang/Object;

    iput-object p2, p0, LA9/a;->c:Ljava/lang/Object;

    iput-object p3, p0, LA9/a;->d:Lcom/samsung/android/vexfwk/sdk/common/VexFwkSdkBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget v0, p0, LA9/a;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LA9/a;->d:Lcom/samsung/android/vexfwk/sdk/common/VexFwkSdkBase;

    check-cast v0, Lcom/samsung/android/vexfwk/sdk/imgstyletransfer/VexFwkImageStyleTransfer;

    iget-object v1, p0, LA9/a;->b:Ljava/lang/Object;

    iget-object p0, p0, LA9/a;->c:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/vexfwk/imagestyletransfer/VexFwkImageStyleTransferStyles$Companion$StyleTransferType;

    invoke-static {v1, p0, v0}, Lcom/samsung/android/vexfwk/sdk/imgstyletransfer/VexFwkImageStyleTransfer;->c(Ljava/lang/Object;Lcom/samsung/android/vexfwk/imagestyletransfer/VexFwkImageStyleTransferStyles$Companion$StyleTransferType;Lcom/samsung/android/vexfwk/sdk/imgstyletransfer/VexFwkImageStyleTransfer;)Lcom/samsung/android/vexfwk/sdk/imgstyletransfer/VexFwkImageStyleTransfer$ImageStyleTransferResult;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object v0, p0, LA9/a;->d:Lcom/samsung/android/vexfwk/sdk/common/VexFwkSdkBase;

    check-cast v0, Lcom/samsung/android/vexfwk/sdk/imageenhancer/VexFwkImageEnhancer;

    iget-object v1, p0, LA9/a;->b:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Bitmap;

    iget-object p0, p0, LA9/a;->c:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/vexfwk/imageenhancer/EnhanceType;

    invoke-static {v1, p0, v0}, Lcom/samsung/android/vexfwk/sdk/imageenhancer/VexFwkImageEnhancer;->d(Landroid/graphics/Bitmap;Lcom/samsung/android/vexfwk/imageenhancer/EnhanceType;Lcom/samsung/android/vexfwk/sdk/imageenhancer/VexFwkImageEnhancer;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :pswitch_1
    iget-object v0, p0, LA9/a;->d:Lcom/samsung/android/vexfwk/sdk/common/VexFwkSdkBase;

    iget-object v1, p0, LA9/a;->b:Ljava/lang/Object;

    iget-object p0, p0, LA9/a;->c:Ljava/lang/Object;

    check-cast p0, Lsb/k;

    invoke-static {v1, p0, v0}, Lcom/samsung/android/vexfwk/sdk/common/VexFwkSdkBase;->a(Ljava/lang/Object;Lsb/k;Lcom/samsung/android/vexfwk/sdk/common/VexFwkSdkBase;)Ldb/r;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
