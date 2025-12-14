.class public Lcom/samsung/android/sdk/scs/ai/language/ExtractionInputParams;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private category:Lcom/samsung/android/sdk/scs/ai/language/ExtractionCategory;

.field private data:[B

.field private final inputText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/samsung/android/sdk/scs/ai/language/ExtractionCategory;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/language/ExtractionInputParams;->inputText:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/sdk/scs/ai/language/ExtractionInputParams;->category:Lcom/samsung/android/sdk/scs/ai/language/ExtractionCategory;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[BLcom/samsung/android/sdk/scs/ai/language/ExtractionCategory;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/language/ExtractionInputParams;->inputText:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/sdk/scs/ai/language/ExtractionInputParams;->data:[B

    iput-object p3, p0, Lcom/samsung/android/sdk/scs/ai/language/ExtractionInputParams;->category:Lcom/samsung/android/sdk/scs/ai/language/ExtractionCategory;

    return-void
.end method


# virtual methods
.method public getCategory()Lcom/samsung/android/sdk/scs/ai/language/ExtractionCategory;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/language/ExtractionInputParams;->category:Lcom/samsung/android/sdk/scs/ai/language/ExtractionCategory;

    return-object p0
.end method

.method public getData()[B
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/language/ExtractionInputParams;->data:[B

    return-object p0
.end method

.method public getInputText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/language/ExtractionInputParams;->inputText:Ljava/lang/String;

    return-object p0
.end method

.method public setData([B)V
    .locals 2

    if-eqz p1, :cond_0

    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/language/ExtractionInputParams;->data:[B

    array-length p0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-void
.end method
