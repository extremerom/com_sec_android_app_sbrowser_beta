.class public final synthetic Lcom/sec/android/app/sbrowser/image_text_translation/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/image_text_translation/e;->a:I

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/image_text_translation/e;->c:Ljava/lang/Object;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/image_text_translation/e;->d:Ljava/lang/Object;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/image_text_translation/e;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$2;Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/image_text_translation/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/image_text_translation/e;->c:Ljava/lang/Object;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/image_text_translation/e;->b:Ljava/lang/Object;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/image_text_translation/e;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/sec/android/app/sbrowser/image_text_translation/e;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/image_text_translation/e;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sec/terrace/browser/image_text_translation/TerraceImageTextTranslationCallback;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/image_text_translation/e;->c:Ljava/lang/Object;

    check-cast v1, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$3;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/image_text_translation/e;->d:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {v1, p0, v0}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$3;->c(Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$3;Ljava/lang/String;Lcom/sec/terrace/browser/image_text_translation/TerraceImageTextTranslationCallback;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/image_text_translation/e;->d:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/image_text_translation/e;->c:Ljava/lang/Object;

    check-cast v1, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$2;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/image_text_translation/e;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;

    invoke-static {v1, p0, v0}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$2;->b(Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$2;Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;Landroid/graphics/Bitmap;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/image_text_translation/e;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/image_text_translation/e;->c:Ljava/lang/Object;

    check-cast v1, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/image_text_translation/e;->d:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {v1, p0, v0}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->c(Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;Ljava/lang/String;Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
