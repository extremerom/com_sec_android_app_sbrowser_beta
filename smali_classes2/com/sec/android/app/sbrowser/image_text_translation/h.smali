.class public final synthetic Lcom/sec/android/app/sbrowser/image_text_translation/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/graphics/Rect;

.field public final synthetic c:Lorg/json/JSONArray;


# direct methods
.method public synthetic constructor <init>(Landroid/graphics/Rect;Lorg/json/JSONArray;I)V
    .locals 0

    iput p3, p0, Lcom/sec/android/app/sbrowser/image_text_translation/h;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/image_text_translation/h;->b:Landroid/graphics/Rect;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/image_text_translation/h;->c:Lorg/json/JSONArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/image_text_translation/h;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/image_text_translation/h;->c:Lorg/json/JSONArray;

    check-cast p1, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult$LineInfo;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/image_text_translation/h;->b:Landroid/graphics/Rect;

    invoke-static {p0, v0, p1}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslatorUtil;->a(Landroid/graphics/Rect;Lorg/json/JSONArray;Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult$LineInfo;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/image_text_translation/h;->c:Lorg/json/JSONArray;

    check-cast p1, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult$BlockInfo;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/image_text_translation/h;->b:Landroid/graphics/Rect;

    invoke-static {p0, v0, p1}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslatorUtil;->d(Landroid/graphics/Rect;Lorg/json/JSONArray;Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult$BlockInfo;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/image_text_translation/h;->c:Lorg/json/JSONArray;

    check-cast p1, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult$WordInfo;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/image_text_translation/h;->b:Landroid/graphics/Rect;

    invoke-static {p0, v0, p1}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslatorUtil;->b(Landroid/graphics/Rect;Lorg/json/JSONArray;Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult$WordInfo;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
