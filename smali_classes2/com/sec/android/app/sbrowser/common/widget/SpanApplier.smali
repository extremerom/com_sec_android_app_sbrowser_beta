.class public Lcom/sec/android/app/sbrowser/common/widget/SpanApplier;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/common/widget/SpanApplier$SpanInfo;
    }
.end annotation


# direct methods
.method public static varargs applySpans(Ljava/lang/String;[Lcom/sec/android/app/sbrowser/common/widget/SpanApplier$SpanInfo;)Landroid/text/SpannableString;
    .locals 9

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p1, v2

    iget-object v4, v3, Lcom/sec/android/app/sbrowser/common/widget/SpanApplier$SpanInfo;->mStartTag:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/sec/android/app/sbrowser/common/widget/SpanApplier$SpanInfo;->mStartTagIndex:I

    iget-object v5, v3, Lcom/sec/android/app/sbrowser/common/widget/SpanApplier$SpanInfo;->mEndTag:Ljava/lang/String;

    iget-object v6, v3, Lcom/sec/android/app/sbrowser/common/widget/SpanApplier$SpanInfo;->mStartTag:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v4

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lcom/sec/android/app/sbrowser/common/widget/SpanApplier$SpanInfo;->mEndTagIndex:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    array-length v2, p1

    move v3, v1

    move v4, v3

    :goto_1
    const/4 v5, -0x1

    if-ge v3, v2, :cond_2

    aget-object v6, p1, v3

    iget v7, v6, Lcom/sec/android/app/sbrowser/common/widget/SpanApplier$SpanInfo;->mStartTagIndex:I

    if-eq v7, v5, :cond_1

    iget v8, v6, Lcom/sec/android/app/sbrowser/common/widget/SpanApplier$SpanInfo;->mEndTagIndex:I

    if-eq v8, v5, :cond_1

    if-lt v7, v4, :cond_1

    invoke-virtual {v0, p0, v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    iget v4, v6, Lcom/sec/android/app/sbrowser/common/widget/SpanApplier$SpanInfo;->mStartTagIndex:I

    iget-object v5, v6, Lcom/sec/android/app/sbrowser/common/widget/SpanApplier$SpanInfo;->mStartTag:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    iput v4, v6, Lcom/sec/android/app/sbrowser/common/widget/SpanApplier$SpanInfo;->mStartTagIndex:I

    iget v4, v6, Lcom/sec/android/app/sbrowser/common/widget/SpanApplier$SpanInfo;->mEndTagIndex:I

    invoke-virtual {v0, p0, v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    iget v4, v6, Lcom/sec/android/app/sbrowser/common/widget/SpanApplier$SpanInfo;->mEndTagIndex:I

    iget-object v5, v6, Lcom/sec/android/app/sbrowser/common/widget/SpanApplier$SpanInfo;->mEndTag:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    iput v5, v6, Lcom/sec/android/app/sbrowser/common/widget/SpanApplier$SpanInfo;->mEndTagIndex:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    iput v5, v6, Lcom/sec/android/app/sbrowser/common/widget/SpanApplier$SpanInfo;->mStartTagIndex:I

    iget-object p1, v6, Lcom/sec/android/app/sbrowser/common/widget/SpanApplier$SpanInfo;->mStartTag:Ljava/lang/String;

    iget-object v0, v6, Lcom/sec/android/app/sbrowser/common/widget/SpanApplier$SpanInfo;->mEndTag:Ljava/lang/String;

    const-string v1, "Input string is missing tags "

    const-string v2, ": "

    invoke-static {v1, p1, v0, v2, p0}, Lw2/j;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, p0, v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    new-instance p0, Landroid/text/SpannableString;

    invoke-direct {p0, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    array-length v0, p1

    move v2, v1

    :goto_2
    if-ge v2, v0, :cond_4

    aget-object v3, p1, v2

    iget v4, v3, Lcom/sec/android/app/sbrowser/common/widget/SpanApplier$SpanInfo;->mStartTagIndex:I

    if-eq v4, v5, :cond_3

    iget-object v6, v3, Lcom/sec/android/app/sbrowser/common/widget/SpanApplier$SpanInfo;->mSpan:Ljava/lang/Object;

    iget v3, v3, Lcom/sec/android/app/sbrowser/common/widget/SpanApplier$SpanInfo;->mEndTagIndex:I

    invoke-virtual {p0, v6, v4, v3, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    return-object p0
.end method
