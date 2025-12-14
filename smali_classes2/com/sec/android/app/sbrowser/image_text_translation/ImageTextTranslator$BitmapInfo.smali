.class Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BitmapInfo"
.end annotation


# instance fields
.field private final mBitmap:Landroid/graphics/Bitmap;

.field private final mBitmapRect:Landroid/graphics/Rect;

.field private final mCallback:Lcom/sec/terrace/browser/image_text_translation/TerraceImageTextTranslationCallback;

.field private final mElementClassName:Ljava/lang/String;

.field private final mRequestType:Lcom/sec/terrace/content/common/TerraceImageTranslationRequestType;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Ljava/lang/String;Lcom/sec/terrace/content/common/TerraceImageTranslationRequestType;Lcom/sec/terrace/browser/image_text_translation/TerraceImageTextTranslationCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;->mBitmap:Landroid/graphics/Bitmap;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;->mBitmapRect:Landroid/graphics/Rect;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;->mElementClassName:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;->mRequestType:Lcom/sec/terrace/content/common/TerraceImageTranslationRequestType;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;->mCallback:Lcom/sec/terrace/browser/image_text_translation/TerraceImageTextTranslationCallback;

    return-void
.end method


# virtual methods
.method public getAssociatedCallback()Lcom/sec/terrace/browser/image_text_translation/TerraceImageTextTranslationCallback;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;->mCallback:Lcom/sec/terrace/browser/image_text_translation/TerraceImageTextTranslationCallback;

    return-object p0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;->mBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getBitmapRect()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;->mBitmapRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getElementClassName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;->mElementClassName:Ljava/lang/String;

    return-object p0
.end method

.method public getRequestType()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;->mRequestType:Lcom/sec/terrace/content/common/TerraceImageTranslationRequestType;

    invoke-virtual {p0}, Lcom/sec/terrace/content/common/TerraceImageTranslationRequestType;->getRequestTypeValue()I

    move-result p0

    return p0
.end method
