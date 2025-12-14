.class public final synthetic Lcom/sec/android/app/sbrowser/image_text_translation/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;

.field public final synthetic b:Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;

.field public final synthetic c:Z

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/image_text_translation/b;->a:Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/image_text_translation/b;->b:Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;

    iput-boolean p3, p0, Lcom/sec/android/app/sbrowser/image_text_translation/b;->c:Z

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/image_text_translation/b;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/image_text_translation/b;->a:Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/image_text_translation/b;->b:Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/image_text_translation/b;->c:Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/image_text_translation/b;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2, p0}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->b(Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;ZLjava/lang/String;)V

    return-void
.end method
