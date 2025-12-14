.class public final synthetic LE9/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lcom/samsung/android/vexfwk/sdk/common/VexFwkSdkBase;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Lcom/samsung/android/vexfwk/sdk/common/VexFwkSdkBase;I)V
    .locals 0

    iput p3, p0, LE9/a;->a:I

    iput-object p1, p0, LE9/a;->b:Ljava/lang/Object;

    iput-object p2, p0, LE9/a;->c:Lcom/samsung/android/vexfwk/sdk/common/VexFwkSdkBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget v0, p0, LE9/a;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LE9/a;->b:Ljava/lang/Object;

    iget-object p0, p0, LE9/a;->c:Lcom/samsung/android/vexfwk/sdk/common/VexFwkSdkBase;

    check-cast p0, Lcom/samsung/android/vexfwk/sdk/docscan/VexFwkDocDetector;

    invoke-static {v0, p0}, Lcom/samsung/android/vexfwk/sdk/docscan/VexFwkDocDetector;->d(Ljava/lang/Object;Lcom/samsung/android/vexfwk/sdk/docscan/VexFwkDocDetector;)Lcom/samsung/android/vexfwk/sdk/docscan/VexFwkDocDetector$DetectResult;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object v0, p0, LE9/a;->b:Ljava/lang/Object;

    iget-object p0, p0, LE9/a;->c:Lcom/samsung/android/vexfwk/sdk/common/VexFwkSdkBase;

    check-cast p0, Lcom/samsung/android/vexfwk/sdk/winedetector/VexFwkWineDetector;

    invoke-static {v0, p0}, Lcom/samsung/android/vexfwk/sdk/winedetector/VexFwkWineDetector;->c(Ljava/lang/Object;Lcom/samsung/android/vexfwk/sdk/winedetector/VexFwkWineDetector;)Lcom/samsung/android/vexfwk/param/VexFwkWineInfo;

    move-result-object p0

    return-object p0

    :pswitch_1
    iget-object v0, p0, LE9/a;->b:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    iget-object p0, p0, LE9/a;->c:Lcom/samsung/android/vexfwk/sdk/common/VexFwkSdkBase;

    check-cast p0, Lcom/samsung/android/vexfwk/sdk/objeraser/VexFwkObjSegmentor;

    invoke-static {v0, p0}, Lcom/samsung/android/vexfwk/sdk/objeraser/VexFwkObjSegmentor;->b(Landroid/graphics/Bitmap;Lcom/samsung/android/vexfwk/sdk/objeraser/VexFwkObjSegmentor;)Lcom/samsung/android/vexfwk/sdk/objeraser/VexFwkObjSegmentor$InstanceSegmentResult;

    move-result-object p0

    return-object p0

    :pswitch_2
    iget-object v0, p0, LE9/a;->b:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    iget-object p0, p0, LE9/a;->c:Lcom/samsung/android/vexfwk/sdk/common/VexFwkSdkBase;

    check-cast p0, Lcom/samsung/android/vexfwk/sdk/imgclipper/VexFwkImageClipper;

    invoke-static {v0, p0}, Lcom/samsung/android/vexfwk/sdk/imgclipper/VexFwkImageClipper;->c(Landroid/graphics/Bitmap;Lcom/samsung/android/vexfwk/sdk/imgclipper/VexFwkImageClipper;)Lcom/samsung/android/vexfwk/sdk/imgclipper/VexFwkImageClipper$ClipResult;

    move-result-object p0

    return-object p0

    :pswitch_3
    iget-object v0, p0, LE9/a;->b:Ljava/lang/Object;

    iget-object p0, p0, LE9/a;->c:Lcom/samsung/android/vexfwk/sdk/common/VexFwkSdkBase;

    check-cast p0, Lcom/samsung/android/vexfwk/sdk/imagesegmentation/VexFwkHumanSegmentor;

    invoke-static {v0, p0}, Lcom/samsung/android/vexfwk/sdk/imagesegmentation/VexFwkHumanSegmentor;->d(Ljava/lang/Object;Lcom/samsung/android/vexfwk/sdk/imagesegmentation/VexFwkHumanSegmentor;)Lcom/samsung/android/vexfwk/sdk/imagesegmentation/VexFwkHumanSegmentor$Result;

    move-result-object p0

    return-object p0

    :pswitch_4
    iget-object v0, p0, LE9/a;->b:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    iget-object p0, p0, LE9/a;->c:Lcom/samsung/android/vexfwk/sdk/common/VexFwkSdkBase;

    check-cast p0, Lcom/samsung/android/vexfwk/sdk/imageremovalsuggestion/VexFwkImageRemovalSuggestion;

    invoke-static {v0, p0}, Lcom/samsung/android/vexfwk/sdk/imageremovalsuggestion/VexFwkImageRemovalSuggestion;->c(Landroid/graphics/Bitmap;Lcom/samsung/android/vexfwk/sdk/imageremovalsuggestion/VexFwkImageRemovalSuggestion;)Lcom/samsung/android/vexfwk/sdk/imageremovalsuggestion/VexFwkImageRemovalSuggestion$Result;

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
