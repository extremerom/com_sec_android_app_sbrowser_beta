.class public Lcom/sec/android/app/sbrowser/common/utils/IndentingStringWriter;
.super Ljava/io/StringWriter;
.source "SourceFile"


# instance fields
.field private mCurrentIndent:[C

.field private mCurrentLength:I

.field private mEmptyLine:Z

.field private mIndentBuilder:Ljava/lang/StringBuilder;

.field private mSingleChar:[C

.field private final mSingleIndent:Ljava/lang/String;

.field private final mWrapLength:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/io/StringWriter;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/utils/IndentingStringWriter;->mIndentBuilder:Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/utils/IndentingStringWriter;->mEmptyLine:Z

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/utils/IndentingStringWriter;->mSingleChar:[C

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/utils/IndentingStringWriter;->mSingleIndent:Ljava/lang/String;

    iput p2, p0, Lcom/sec/android/app/sbrowser/common/utils/IndentingStringWriter;->mWrapLength:I

    return-void
.end method

.method private maybeWriteIndent()V
    .locals 3

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/utils/IndentingStringWriter;->mEmptyLine:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/utils/IndentingStringWriter;->mEmptyLine:Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/utils/IndentingStringWriter;->mIndentBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/utils/IndentingStringWriter;->mCurrentIndent:[C

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/utils/IndentingStringWriter;->mIndentBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/common/utils/IndentingStringWriter;->mCurrentIndent:[C

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/utils/IndentingStringWriter;->mCurrentIndent:[C

    array-length v2, v1

    invoke-super {p0, v1, v0, v2}, Ljava/io/StringWriter;->write([CII)V

    :cond_1
    return-void
.end method


# virtual methods
.method public decreaseIndent()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/utils/IndentingStringWriter;->mIndentBuilder:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/utils/IndentingStringWriter;->mSingleIndent:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/utils/IndentingStringWriter;->mCurrentIndent:[C

    return-void
.end method

.method public increaseIndent()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/utils/IndentingStringWriter;->mIndentBuilder:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/utils/IndentingStringWriter;->mSingleIndent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/utils/IndentingStringWriter;->mCurrentIndent:[C

    return-void
.end method

.method public print(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/IndentingStringWriter;->write(Ljava/lang/String;)V

    return-void
.end method

.method public println(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/IndentingStringWriter;->write(Ljava/lang/String;)V

    return-void
.end method

.method public write(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/utils/IndentingStringWriter;->mSingleChar:[C

    int-to-char p1, p1

    const/4 v1, 0x0

    aput-char p1, v0, v1

    const/4 p1, 0x1

    invoke-virtual {p0, v0, v1, p1}, Lcom/sec/android/app/sbrowser/common/utils/IndentingStringWriter;->write([CII)V

    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/sec/android/app/sbrowser/common/utils/IndentingStringWriter;->write(Ljava/lang/String;II)V

    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .locals 3

    new-array v0, p3, [C

    sub-int v1, p3, p2

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, v0, v2}, Ljava/lang/String;->getChars(II[CI)V

    invoke-virtual {p0, v0, v2, p3}, Lcom/sec/android/app/sbrowser/common/utils/IndentingStringWriter;->write([CII)V

    return-void
.end method

.method public write([CII)V
    .locals 7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/utils/IndentingStringWriter;->mIndentBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/2addr p3, p2

    move v1, p2

    :goto_0
    if-ge p2, p3, :cond_3

    add-int/lit8 v2, p2, 0x1

    aget-char p2, p1, p2

    iget v3, p0, Lcom/sec/android/app/sbrowser/common/utils/IndentingStringWriter;->mCurrentLength:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    iput v3, p0, Lcom/sec/android/app/sbrowser/common/utils/IndentingStringWriter;->mCurrentLength:I

    const/4 v3, 0x0

    const/16 v5, 0xa

    if-ne p2, v5, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/utils/IndentingStringWriter;->maybeWriteIndent()V

    sub-int p2, v2, v1

    invoke-super {p0, p1, v1, p2}, Ljava/io/StringWriter;->write([CII)V

    iput-boolean v4, p0, Lcom/sec/android/app/sbrowser/common/utils/IndentingStringWriter;->mEmptyLine:Z

    iput v3, p0, Lcom/sec/android/app/sbrowser/common/utils/IndentingStringWriter;->mCurrentLength:I

    move v1, v2

    :cond_0
    iget p2, p0, Lcom/sec/android/app/sbrowser/common/utils/IndentingStringWriter;->mWrapLength:I

    if-lez p2, :cond_2

    iget v6, p0, Lcom/sec/android/app/sbrowser/common/utils/IndentingStringWriter;->mCurrentLength:I

    sub-int/2addr p2, v0

    if-lt v6, p2, :cond_2

    iget-boolean p2, p0, Lcom/sec/android/app/sbrowser/common/utils/IndentingStringWriter;->mEmptyLine:Z

    if-nez p2, :cond_1

    invoke-super {p0, v5}, Ljava/io/StringWriter;->write(I)V

    iput-boolean v4, p0, Lcom/sec/android/app/sbrowser/common/utils/IndentingStringWriter;->mEmptyLine:Z

    sub-int p2, v2, v1

    iput p2, p0, Lcom/sec/android/app/sbrowser/common/utils/IndentingStringWriter;->mCurrentLength:I

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/utils/IndentingStringWriter;->maybeWriteIndent()V

    sub-int p2, v2, v1

    invoke-super {p0, p1, v1, p2}, Ljava/io/StringWriter;->write([CII)V

    invoke-super {p0, v5}, Ljava/io/StringWriter;->write(I)V

    iput-boolean v4, p0, Lcom/sec/android/app/sbrowser/common/utils/IndentingStringWriter;->mEmptyLine:Z

    iput v3, p0, Lcom/sec/android/app/sbrowser/common/utils/IndentingStringWriter;->mCurrentLength:I

    move v1, v2

    :cond_2
    :goto_1
    move p2, v2

    goto :goto_0

    :cond_3
    if-eq v1, p2, :cond_4

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/utils/IndentingStringWriter;->maybeWriteIndent()V

    sub-int/2addr p2, v1

    invoke-super {p0, p1, v1, p2}, Ljava/io/StringWriter;->write([CII)V

    :cond_4
    return-void
.end method
