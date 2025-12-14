.class public final synthetic Lcom/sec/android/app/sbrowser/image_text_translation/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$3;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Landroid/graphics/Bitmap;

.field public final synthetic d:Lcom/sec/terrace/browser/image_text_translation/TerraceImageTextTranslationCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$3;Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/sec/terrace/browser/image_text_translation/TerraceImageTextTranslationCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/image_text_translation/g;->a:Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$3;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/image_text_translation/g;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/image_text_translation/g;->c:Landroid/graphics/Bitmap;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/image_text_translation/g;->d:Lcom/sec/terrace/browser/image_text_translation/TerraceImageTextTranslationCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/image_text_translation/g;->a:Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$3;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/image_text_translation/g;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/image_text_translation/g;->c:Landroid/graphics/Bitmap;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/image_text_translation/g;->d:Lcom/sec/terrace/browser/image_text_translation/TerraceImageTextTranslationCallback;

    invoke-static {v0, v1, v2, p0}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$3;->a(Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$3;Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/sec/terrace/browser/image_text_translation/TerraceImageTextTranslationCallback;)V

    return-void
.end method
