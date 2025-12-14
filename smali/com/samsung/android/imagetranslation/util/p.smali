.class public final synthetic Lcom/samsung/android/imagetranslation/util/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/samsung/android/imagetranslation/util/OcrDataToSceneTextConverter;

.field public final synthetic b:I

.field public final synthetic c:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/imagetranslation/util/OcrDataToSceneTextConverter;ILandroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/imagetranslation/util/p;->a:Lcom/samsung/android/imagetranslation/util/OcrDataToSceneTextConverter;

    iput p2, p0, Lcom/samsung/android/imagetranslation/util/p;->b:I

    iput-object p3, p0, Lcom/samsung/android/imagetranslation/util/p;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/samsung/android/imagetranslation/data/LttOcrResult$BlockInfo;

    iget-object v0, p0, Lcom/samsung/android/imagetranslation/util/p;->a:Lcom/samsung/android/imagetranslation/util/OcrDataToSceneTextConverter;

    iget v1, p0, Lcom/samsung/android/imagetranslation/util/p;->b:I

    iget-object p0, p0, Lcom/samsung/android/imagetranslation/util/p;->c:Landroid/content/Context;

    invoke-static {v0, v1, p0, p1}, Lcom/samsung/android/imagetranslation/util/OcrDataToSceneTextConverter;->b(Lcom/samsung/android/imagetranslation/util/OcrDataToSceneTextConverter;ILandroid/content/Context;Lcom/samsung/android/imagetranslation/data/LttOcrResult$BlockInfo;)V

    return-void
.end method
