.class public final synthetic Lcom/sec/android/app/sbrowser/image_text_translation/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$3;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$3;I)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/image_text_translation/f;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/image_text_translation/f;->b:Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/image_text_translation/f;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/image_text_translation/f;->b:Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$3;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$3;->b(Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$3;)V

    return-void

    :pswitch_0
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$3;->d(Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$3;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
