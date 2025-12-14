.class public Lorg/chromium/content/browser/selection/SelectionIndicesConverter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final PATTERN_WHITESPACE:Ljava/util/regex/Pattern;


# instance fields
.field private mGlobalSelectionText:Ljava/lang/String;

.field private mGlobalStartOffset:I

.field private mInitialStartOffset:I

.field private mLastSelectionText:Ljava/lang/String;

.field private mLastStartOffset:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "[\\p{javaSpaceChar}\\s]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/chromium/content/browser/selection/SelectionIndicesConverter;->PATTERN_WHITESPACE:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private combineGlobalSelection(Ljava/lang/String;I)V
    .locals 5
    .annotation build Lorg/chromium/build/annotations/RequiresNonNull;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p2

    iget v1, p0, Lorg/chromium/content/browser/selection/SelectionIndicesConverter;->mGlobalStartOffset:I

    iget-object v2, p0, Lorg/chromium/content/browser/selection/SelectionIndicesConverter;->mGlobalSelectionText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v1

    iget v1, p0, Lorg/chromium/content/browser/selection/SelectionIndicesConverter;->mGlobalStartOffset:I

    if-ge p2, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lorg/chromium/content/browser/selection/SelectionIndicesConverter;->mGlobalStartOffset:I

    sub-int/2addr v3, p2

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/chromium/content/browser/selection/SelectionIndicesConverter;->mGlobalSelectionText:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lorg/chromium/content/browser/selection/SelectionIndicesConverter;->updateGlobalSelection(Ljava/lang/String;I)V

    :cond_0
    if-le v0, v2, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/chromium/content/browser/selection/SelectionIndicesConverter;->mGlobalSelectionText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr v2, p2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p1, v2, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget p2, p0, Lorg/chromium/content/browser/selection/SelectionIndicesConverter;->mGlobalStartOffset:I

    invoke-direct {p0, p1, p2}, Lorg/chromium/content/browser/selection/SelectionIndicesConverter;->updateGlobalSelection(Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method public static contains(IIII)Z
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    if-gt p0, p2, :cond_0

    if-gt p3, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static overlap(IIII)Z
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-gt p0, p2, :cond_1

    if-ge p2, p1, :cond_0

    move v0, v1

    :cond_0
    return v0

    :cond_1
    if-le p3, p0, :cond_2

    move v0, v1

    :cond_2
    return v0
.end method

.method private updateGlobalSelection(Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/content/browser/selection/SelectionIndicesConverter;->mGlobalSelectionText:Ljava/lang/String;

    iput p2, p0, Lorg/chromium/content/browser/selection/SelectionIndicesConverter;->mGlobalStartOffset:I

    return-void
.end method

.method private updateLastSelection(Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/content/browser/selection/SelectionIndicesConverter;->mLastSelectionText:Ljava/lang/String;

    iput p2, p0, Lorg/chromium/content/browser/selection/SelectionIndicesConverter;->mLastStartOffset:I

    return-void
.end method


# virtual methods
.method public countWordsBackward(IILjava/text/BreakIterator;)I
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    :goto_0
    if-le p1, p2, :cond_1

    invoke-virtual {p3, p1}, Ljava/text/BreakIterator;->preceding(I)I

    move-result v1

    invoke-virtual {p0, v1, p1}, Lorg/chromium/content/browser/selection/SelectionIndicesConverter;->isWhitespace(II)Z

    move-result p1

    if-nez p1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    move p1, v1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public countWordsForward(IILjava/text/BreakIterator;)I
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    :goto_0
    if-ge p1, p2, :cond_1

    invoke-virtual {p3, p1}, Ljava/text/BreakIterator;->following(I)I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lorg/chromium/content/browser/selection/SelectionIndicesConverter;->isWhitespace(II)Z

    move-result p1

    if-nez p1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    move p1, v1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public getGlobalSelectionText()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lorg/chromium/content/browser/selection/SelectionIndicesConverter;->mGlobalSelectionText:Ljava/lang/String;

    return-object p0
.end method

.method public getGlobalStartOffset()I
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget p0, p0, Lorg/chromium/content/browser/selection/SelectionIndicesConverter;->mGlobalStartOffset:I

    return p0
.end method

.method public getWordDelta(II[I)Z
    .locals 5

    iget-object v0, p0, Lorg/chromium/content/browser/selection/SelectionIndicesConverter;->mGlobalSelectionText:Ljava/lang/String;

    invoke-static {v0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    const/4 v1, 0x0

    aput v1, p3, v0

    aput v1, p3, v1

    iget v2, p0, Lorg/chromium/content/browser/selection/SelectionIndicesConverter;->mGlobalStartOffset:I

    sub-int/2addr p1, v2

    sub-int/2addr p2, v2

    if-lt p1, p2, :cond_0

    return v1

    :cond_0
    if-ltz p1, :cond_6

    iget-object v2, p0, Lorg/chromium/content/browser/selection/SelectionIndicesConverter;->mGlobalSelectionText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt p1, v2, :cond_1

    goto :goto_2

    :cond_1
    if-lez p2, :cond_6

    iget-object v2, p0, Lorg/chromium/content/browser/selection/SelectionIndicesConverter;->mGlobalSelectionText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le p2, v2, :cond_2

    goto :goto_2

    :cond_2
    iget v2, p0, Lorg/chromium/content/browser/selection/SelectionIndicesConverter;->mInitialStartOffset:I

    iget v3, p0, Lorg/chromium/content/browser/selection/SelectionIndicesConverter;->mGlobalStartOffset:I

    sub-int/2addr v2, v3

    invoke-static {}, Ljava/text/BreakIterator;->getWordInstance()Ljava/text/BreakIterator;

    move-result-object v3

    iget-object v4, p0, Lorg/chromium/content/browser/selection/SelectionIndicesConverter;->mGlobalSelectionText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/text/BreakIterator;->setText(Ljava/lang/String;)V

    if-gt p1, v2, :cond_3

    invoke-virtual {p0, p1, v2, v3}, Lorg/chromium/content/browser/selection/SelectionIndicesConverter;->countWordsForward(IILjava/text/BreakIterator;)I

    move-result p1

    neg-int p1, p1

    aput p1, p3, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1, v2, v3}, Lorg/chromium/content/browser/selection/SelectionIndicesConverter;->countWordsBackward(IILjava/text/BreakIterator;)I

    move-result v4

    aput v4, p3, v1

    invoke-virtual {v3, p1}, Ljava/text/BreakIterator;->isBoundary(I)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v3, p1}, Ljava/text/BreakIterator;->preceding(I)I

    move-result v4

    invoke-virtual {v3, p1}, Ljava/text/BreakIterator;->following(I)I

    move-result p1

    invoke-virtual {p0, v4, p1}, Lorg/chromium/content/browser/selection/SelectionIndicesConverter;->isWhitespace(II)Z

    move-result p1

    if-nez p1, :cond_4

    aget p1, p3, v1

    sub-int/2addr p1, v0

    aput p1, p3, v1

    :cond_4
    :goto_0
    if-gt p2, v2, :cond_5

    invoke-virtual {p0, p2, v2, v3}, Lorg/chromium/content/browser/selection/SelectionIndicesConverter;->countWordsForward(IILjava/text/BreakIterator;)I

    move-result p0

    neg-int p0, p0

    aput p0, p3, v0

    goto :goto_1

    :cond_5
    invoke-virtual {p0, p2, v2, v3}, Lorg/chromium/content/browser/selection/SelectionIndicesConverter;->countWordsBackward(IILjava/text/BreakIterator;)I

    move-result p0

    aput p0, p3, v0

    :goto_1
    return v0

    :cond_6
    :goto_2
    return v1
.end method

.method public isWhitespace(II)Z
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lorg/chromium/content/browser/selection/SelectionIndicesConverter;->mGlobalSelectionText:Ljava/lang/String;

    invoke-static {v0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/chromium/content/browser/selection/SelectionIndicesConverter;->PATTERN_WHITESPACE:Ljava/util/regex/Pattern;

    iget-object p0, p0, Lorg/chromium/content/browser/selection/SelectionIndicesConverter;->mGlobalSelectionText:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method

.method public setInitialStartOffset(I)V
    .locals 0

    iput p1, p0, Lorg/chromium/content/browser/selection/SelectionIndicesConverter;->mInitialStartOffset:I

    return-void
.end method

.method public updateSelectionState(Ljava/lang/String;I)Z
    .locals 9

    iget-object v0, p0, Lorg/chromium/content/browser/selection/SelectionIndicesConverter;->mGlobalSelectionText:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2}, Lorg/chromium/content/browser/selection/SelectionIndicesConverter;->updateLastSelection(Ljava/lang/String;I)V

    invoke-direct {p0, p1, p2}, Lorg/chromium/content/browser/selection/SelectionIndicesConverter;->updateGlobalSelection(Ljava/lang/String;I)V

    return v1

    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/selection/SelectionIndicesConverter;->mLastSelectionText:Ljava/lang/String;

    invoke-static {v0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p2

    iget v2, p0, Lorg/chromium/content/browser/selection/SelectionIndicesConverter;->mLastStartOffset:I

    iget-object v3, p0, Lorg/chromium/content/browser/selection/SelectionIndicesConverter;->mLastSelectionText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    iget v2, p0, Lorg/chromium/content/browser/selection/SelectionIndicesConverter;->mLastStartOffset:I

    invoke-static {v2, v3, p2, v0}, Lorg/chromium/content/browser/selection/SelectionIndicesConverter;->overlap(IIII)Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    iget v2, p0, Lorg/chromium/content/browser/selection/SelectionIndicesConverter;->mLastStartOffset:I

    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    iget-object v6, p0, Lorg/chromium/content/browser/selection/SelectionIndicesConverter;->mLastSelectionText:Ljava/lang/String;

    iget v7, p0, Lorg/chromium/content/browser/selection/SelectionIndicesConverter;->mLastStartOffset:I

    sub-int v7, v2, v7

    sub-int v8, v2, p2

    sub-int/2addr v5, v2

    invoke-virtual {v6, v7, p1, v8, v5}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v2

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_0
    iget v5, p0, Lorg/chromium/content/browser/selection/SelectionIndicesConverter;->mLastStartOffset:I

    if-eq v5, v0, :cond_2

    if-ne v3, p2, :cond_3

    :cond_2
    move v2, v1

    :cond_3
    if-nez v2, :cond_4

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/chromium/content/browser/selection/SelectionIndicesConverter;->mGlobalSelectionText:Ljava/lang/String;

    iput-object p1, p0, Lorg/chromium/content/browser/selection/SelectionIndicesConverter;->mLastSelectionText:Ljava/lang/String;

    return v4

    :cond_4
    invoke-direct {p0, p1, p2}, Lorg/chromium/content/browser/selection/SelectionIndicesConverter;->updateLastSelection(Ljava/lang/String;I)V

    invoke-direct {p0, p1, p2}, Lorg/chromium/content/browser/selection/SelectionIndicesConverter;->combineGlobalSelection(Ljava/lang/String;I)V

    return v1
.end method
