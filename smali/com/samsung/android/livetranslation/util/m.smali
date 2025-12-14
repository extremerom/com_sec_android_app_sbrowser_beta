.class public final synthetic Lcom/samsung/android/livetranslation/util/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/samsung/android/livetranslation/util/OcrDataToSceneTextConverter;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/livetranslation/util/OcrDataToSceneTextConverter;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/livetranslation/util/m;->a:Lcom/samsung/android/livetranslation/util/OcrDataToSceneTextConverter;

    iput p2, p0, Lcom/samsung/android/livetranslation/util/m;->b:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/samsung/android/imagetranslation/data/LttOcrResult$BlockInfo;

    iget-object v0, p0, Lcom/samsung/android/livetranslation/util/m;->a:Lcom/samsung/android/livetranslation/util/OcrDataToSceneTextConverter;

    iget p0, p0, Lcom/samsung/android/livetranslation/util/m;->b:I

    invoke-static {v0, p0, p1}, Lcom/samsung/android/livetranslation/util/OcrDataToSceneTextConverter;->a(Lcom/samsung/android/livetranslation/util/OcrDataToSceneTextConverter;ILcom/samsung/android/imagetranslation/data/LttOcrResult$BlockInfo;)V

    return-void
.end method
