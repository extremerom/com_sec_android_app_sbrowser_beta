.class public final Lcom/samsung/android/app/sdk/deepsky/textextraction/result/TextData$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/sdk/deepsky/textextraction/result/TextData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/samsung/android/app/sdk/deepsky/textextraction/result/TextData$Companion;",
        "",
        "<init>",
        "()V",
        "fromOcrResult",
        "Lcom/samsung/android/app/sdk/deepsky/textextraction/result/TextData;",
        "ocrResult",
        "Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult;",
        "deepsky-sdk-textextraction-8.5.6_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ltb/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/TextData$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromOcrResult(Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult;)Lcom/samsung/android/app/sdk/deepsky/textextraction/result/TextData;
    .locals 2
    .param p1    # Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "ocrResult"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/TextData;

    sget-object v0, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData;->Companion:Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData$Companion;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData$Companion;->fromOcrResult$deepsky_sdk_textextraction_8_5_6_release(Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult;)Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/EntityData;->Companion:Lcom/samsung/android/app/sdk/deepsky/textextraction/result/EntityData$Companion;

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/EntityData$Companion;->fromOcrResult$deepsky_sdk_textextraction_8_5_6_release(Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult;)Lcom/samsung/android/app/sdk/deepsky/textextraction/result/EntityData;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/TextData;-><init>(Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData;Lcom/samsung/android/app/sdk/deepsky/textextraction/result/EntityData;)V

    return-object p0
.end method
