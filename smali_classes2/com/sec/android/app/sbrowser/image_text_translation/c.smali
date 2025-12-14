.class public final synthetic Lcom/sec/android/app/sbrowser/image_text_translation/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;I)V
    .locals 0

    iput p3, p0, Lcom/sec/android/app/sbrowser/image_text_translation/c;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/image_text_translation/c;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/image_text_translation/c;->c:Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/image_text_translation/c;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/image_text_translation/c;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$2;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/image_text_translation/c;->c:Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$2;->a(Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$2;Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/image_text_translation/c;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/image_text_translation/c;->c:Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->g(Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/image_text_translation/c;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/image_text_translation/c;->c:Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->d(Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/image_text_translation/c;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/image_text_translation/c;->c:Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->f(Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;)V

    return-void

    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/image_text_translation/c;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/image_text_translation/c;->c:Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->a(Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
