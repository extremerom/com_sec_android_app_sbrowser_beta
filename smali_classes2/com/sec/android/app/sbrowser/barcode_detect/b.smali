.class public final synthetic Lcom/sec/android/app/sbrowser/barcode_detect/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem$CallBack;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;I)V
    .locals 0

    iput p3, p0, Lcom/sec/android/app/sbrowser/barcode_detect/b;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/barcode_detect/b;->c:Ljava/lang/Object;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/barcode_detect/b;->b:Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemChanged(Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/barcode_detect/b;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/barcode_detect/b;->c:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreview;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/barcode_detect/b;->b:Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreview;->l(Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreview;Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/barcode_detect/b;->b:Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/barcode_detect/b;->c:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/save_image/SaveAllImageController;

    invoke-static {p0, v0, p1}, Lcom/sec/android/app/sbrowser/save_image/SaveAllImageController;->a(Lcom/sec/android/app/sbrowser/save_image/SaveAllImageController;Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/barcode_detect/b;->b:Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/barcode_detect/b;->c:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassProcessor;

    invoke-static {p0, v0, p1}, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassProcessor;->a(Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassProcessor;Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
