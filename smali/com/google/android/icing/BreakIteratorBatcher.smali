.class public Lcom/google/android/icing/BreakIteratorBatcher;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final iterator:Ljava/text/BreakIterator;


# direct methods
.method public constructor <init>(Ljava/util/Locale;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/text/BreakIterator;->getWordInstance(Ljava/util/Locale;)Ljava/text/BreakIterator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/icing/BreakIteratorBatcher;->iterator:Ljava/text/BreakIterator;

    return-void
.end method


# virtual methods
.method public first()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/icing/BreakIteratorBatcher;->iterator:Ljava/text/BreakIterator;

    invoke-virtual {p0}, Ljava/text/BreakIterator;->first()I

    move-result p0

    return p0
.end method

.method public following(I)I
    .locals 0

    iget-object p0, p0, Lcom/google/android/icing/BreakIteratorBatcher;->iterator:Ljava/text/BreakIterator;

    invoke-virtual {p0, p1}, Ljava/text/BreakIterator;->following(I)I

    move-result p0

    return p0
.end method

.method public next(I)[I
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p1, :cond_1

    iget-object v3, p0, Lcom/google/android/icing/BreakIteratorBatcher;->iterator:Ljava/text/BreakIterator;

    invoke-virtual {v3}, Ljava/text/BreakIterator;->next()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [I

    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aput p1, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    return-object p0
.end method

.method public preceding(I)I
    .locals 0

    iget-object p0, p0, Lcom/google/android/icing/BreakIteratorBatcher;->iterator:Ljava/text/BreakIterator;

    invoke-virtual {p0, p1}, Ljava/text/BreakIterator;->preceding(I)I

    move-result p0

    return p0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/icing/BreakIteratorBatcher;->iterator:Ljava/text/BreakIterator;

    invoke-virtual {p0, p1}, Ljava/text/BreakIterator;->setText(Ljava/lang/String;)V

    return-void
.end method
