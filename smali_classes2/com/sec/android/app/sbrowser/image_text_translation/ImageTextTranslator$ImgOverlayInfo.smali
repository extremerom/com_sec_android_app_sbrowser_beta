.class Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$ImgOverlayInfo;
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
    name = "ImgOverlayInfo"
.end annotation


# instance fields
.field mBitmapInfo:Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;

.field mIsAvailable:Z

.field mOcrResult:Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult;

.field mOverlayStatus:Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$ImgOverlayStatus;

.field mScaledBitmap:Landroid/graphics/Bitmap;

.field mTargetLang:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult;ZLjava/lang/String;Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$ImgOverlayInfo;->mScaledBitmap:Landroid/graphics/Bitmap;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$ImgOverlayInfo;->mOcrResult:Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult;

    iput-boolean p3, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$ImgOverlayInfo;->mIsAvailable:Z

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$ImgOverlayInfo;->mTargetLang:Ljava/lang/String;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$ImgOverlayInfo;->mBitmapInfo:Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;

    sget-object p1, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$ImgOverlayStatus;->NONE:Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$ImgOverlayStatus;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$ImgOverlayInfo;->mOverlayStatus:Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$ImgOverlayStatus;

    return-void
.end method


# virtual methods
.method public getBitmapInfo()Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$ImgOverlayInfo;->mBitmapInfo:Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;

    return-object p0
.end method

.method public getIsAvailable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$ImgOverlayInfo;->mIsAvailable:Z

    return p0
.end method

.method public getOcrResult()Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$ImgOverlayInfo;->mOcrResult:Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult;

    return-object p0
.end method

.method public getProcessingStatus()Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$ImgOverlayStatus;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$ImgOverlayInfo;->mOverlayStatus:Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$ImgOverlayStatus;

    return-object p0
.end method

.method public getScaledBitmap()Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$ImgOverlayInfo;->mScaledBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getTargetLang()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$ImgOverlayInfo;->mTargetLang:Ljava/lang/String;

    return-object p0
.end method

.method public updateImgOverlayStatus(Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$ImgOverlayStatus;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$ImgOverlayInfo;->mOverlayStatus:Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$ImgOverlayStatus;

    return-void
.end method
