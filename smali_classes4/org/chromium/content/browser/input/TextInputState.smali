.class public Lorg/chromium/content/browser/input/TextInputState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content/browser/input/TextInputState$SurroundingTextInternal;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field private final mComposition:Lorg/chromium/content/browser/input/Range;

.field private final mReplyToRequest:Z

.field private final mSelection:Lorg/chromium/content/browser/input/Range;

.field private final mSingleLine:Z

.field private final mText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Lorg/chromium/content/browser/input/Range;Lorg/chromium/content/browser/input/Range;ZZ)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p2, v1, v0}, Lorg/chromium/content/browser/input/Range;->clamp(II)V

    invoke-virtual {p3}, Lorg/chromium/content/browser/input/Range;->start()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    invoke-virtual {p3}, Lorg/chromium/content/browser/input/Range;->end()I

    move-result v0

    if-eq v0, v2, :cond_1

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {p3, v1, v0}, Lorg/chromium/content/browser/input/Range;->clamp(II)V

    :cond_1
    iput-object p1, p0, Lorg/chromium/content/browser/input/TextInputState;->mText:Ljava/lang/CharSequence;

    iput-object p2, p0, Lorg/chromium/content/browser/input/TextInputState;->mSelection:Lorg/chromium/content/browser/input/Range;

    iput-object p3, p0, Lorg/chromium/content/browser/input/TextInputState;->mComposition:Lorg/chromium/content/browser/input/Range;

    iput-boolean p4, p0, Lorg/chromium/content/browser/input/TextInputState;->mSingleLine:Z

    iput-boolean p5, p0, Lorg/chromium/content/browser/input/TextInputState;->mReplyToRequest:Z

    return-void
.end method


# virtual methods
.method public composition()Lorg/chromium/content/browser/input/Range;
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/input/TextInputState;->mComposition:Lorg/chromium/content/browser/input/Range;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Lorg/chromium/content/browser/input/TextInputState;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/chromium/content/browser/input/TextInputState;

    const/4 v0, 0x1

    if-ne p1, p0, :cond_1

    return v0

    :cond_1
    iget-object v2, p0, Lorg/chromium/content/browser/input/TextInputState;->mText:Ljava/lang/CharSequence;

    iget-object v3, p1, Lorg/chromium/content/browser/input/TextInputState;->mText:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/chromium/content/browser/input/TextInputState;->mSelection:Lorg/chromium/content/browser/input/Range;

    iget-object v3, p1, Lorg/chromium/content/browser/input/TextInputState;->mSelection:Lorg/chromium/content/browser/input/Range;

    invoke-virtual {v2, v3}, Lorg/chromium/content/browser/input/Range;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/chromium/content/browser/input/TextInputState;->mComposition:Lorg/chromium/content/browser/input/Range;

    iget-object v3, p1, Lorg/chromium/content/browser/input/TextInputState;->mComposition:Lorg/chromium/content/browser/input/Range;

    invoke-virtual {v2, v3}, Lorg/chromium/content/browser/input/Range;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lorg/chromium/content/browser/input/TextInputState;->mSingleLine:Z

    iget-boolean v3, p1, Lorg/chromium/content/browser/input/TextInputState;->mSingleLine:Z

    if-ne v2, v3, :cond_2

    iget-boolean p0, p0, Lorg/chromium/content/browser/input/TextInputState;->mReplyToRequest:Z

    iget-boolean p1, p1, Lorg/chromium/content/browser/input/TextInputState;->mReplyToRequest:Z

    if-ne p0, p1, :cond_2

    move v1, v0

    :cond_2
    return v1
.end method

.method public getSelectedText(I)Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Lorg/chromium/content/browser/input/TextInputState;->mSelection:Lorg/chromium/content/browser/input/Range;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/Range;->start()I

    move-result v0

    iget-object v1, p0, Lorg/chromium/content/browser/input/TextInputState;->mSelection:Lorg/chromium/content/browser/input/Range;

    invoke-virtual {v1}, Lorg/chromium/content/browser/input/Range;->end()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/chromium/content/browser/input/TextInputState;->mText:Ljava/lang/CharSequence;

    iget-object v0, p0, Lorg/chromium/content/browser/input/TextInputState;->mSelection:Lorg/chromium/content/browser/input/Range;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/Range;->start()I

    move-result v0

    iget-object p0, p0, Lorg/chromium/content/browser/input/TextInputState;->mSelection:Lorg/chromium/content/browser/input/Range;

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/Range;->end()I

    move-result p0

    invoke-interface {p1, v0, p0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object p1, p0, Lorg/chromium/content/browser/input/TextInputState;->mText:Ljava/lang/CharSequence;

    iget-object v0, p0, Lorg/chromium/content/browser/input/TextInputState;->mSelection:Lorg/chromium/content/browser/input/Range;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/Range;->start()I

    move-result v0

    iget-object p0, p0, Lorg/chromium/content/browser/input/TextInputState;->mSelection:Lorg/chromium/content/browser/input/Range;

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/Range;->end()I

    move-result p0

    invoke-static {p1, v0, p0}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSurroundingText(II)Landroid/view/inputmethod/SurroundingText;
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/chromium/content/browser/input/TextInputState;->getSurroundingTextInternal(II)Lorg/chromium/content/browser/input/TextInputState$SurroundingTextInternal;

    move-result-object p0

    invoke-static {}, Lj9/a;->r()V

    iget-object p1, p0, Lorg/chromium/content/browser/input/TextInputState$SurroundingTextInternal;->mText:Ljava/lang/CharSequence;

    iget p2, p0, Lorg/chromium/content/browser/input/TextInputState$SurroundingTextInternal;->mSelectionStart:I

    iget v0, p0, Lorg/chromium/content/browser/input/TextInputState$SurroundingTextInternal;->mSelectionEnd:I

    iget p0, p0, Lorg/chromium/content/browser/input/TextInputState$SurroundingTextInternal;->mOffset:I

    invoke-static {p2, v0, p0, p1}, Lj9/a;->l(IIILjava/lang/CharSequence;)Landroid/view/inputmethod/SurroundingText;

    move-result-object p0

    return-object p0
.end method

.method public getSurroundingTextInternal(II)Lorg/chromium/content/browser/input/TextInputState$SurroundingTextInternal;
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lorg/chromium/content/browser/input/TextInputState;->mSelection:Lorg/chromium/content/browser/input/Range;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/Range;->start()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-object v1, p0, Lorg/chromium/content/browser/input/TextInputState;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iget-object v2, p0, Lorg/chromium/content/browser/input/TextInputState;->mSelection:Lorg/chromium/content/browser/input/Range;

    invoke-virtual {v2}, Lorg/chromium/content/browser/input/Range;->end()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iget-object v0, p0, Lorg/chromium/content/browser/input/TextInputState;->mText:Ljava/lang/CharSequence;

    iget-object v1, p0, Lorg/chromium/content/browser/input/TextInputState;->mSelection:Lorg/chromium/content/browser/input/Range;

    invoke-virtual {v1}, Lorg/chromium/content/browser/input/Range;->start()I

    move-result v1

    sub-int/2addr v1, p1

    iget-object v2, p0, Lorg/chromium/content/browser/input/TextInputState;->mSelection:Lorg/chromium/content/browser/input/Range;

    invoke-virtual {v2}, Lorg/chromium/content/browser/input/Range;->end()I

    move-result v2

    add-int/2addr v2, p2

    invoke-static {v0, v1, v2}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lorg/chromium/content/browser/input/TextInputState$SurroundingTextInternal;

    iget-object v1, p0, Lorg/chromium/content/browser/input/TextInputState;->mSelection:Lorg/chromium/content/browser/input/Range;

    invoke-virtual {v1}, Lorg/chromium/content/browser/input/Range;->end()I

    move-result v1

    iget-object p0, p0, Lorg/chromium/content/browser/input/TextInputState;->mSelection:Lorg/chromium/content/browser/input/Range;

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/Range;->start()I

    move-result p0

    sub-int/2addr p0, p1

    sub-int/2addr v1, p0

    const/4 p0, -0x1

    invoke-direct {v0, p2, p1, v1, p0}, Lorg/chromium/content/browser/input/TextInputState$SurroundingTextInternal;-><init>(Ljava/lang/CharSequence;III)V

    return-object v0
.end method

.method public getTextAfterSelection(II)Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Lorg/chromium/content/browser/input/TextInputState;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iget-object v1, p0, Lorg/chromium/content/browser/input/TextInputState;->mSelection:Lorg/chromium/content/browser/input/Range;

    invoke-virtual {v1}, Lorg/chromium/content/browser/input/Range;->end()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/chromium/content/browser/input/TextInputState;->mText:Ljava/lang/CharSequence;

    iget-object v0, p0, Lorg/chromium/content/browser/input/TextInputState;->mSelection:Lorg/chromium/content/browser/input/Range;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/Range;->end()I

    move-result v0

    iget-object p0, p0, Lorg/chromium/content/browser/input/TextInputState;->mSelection:Lorg/chromium/content/browser/input/Range;

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/Range;->end()I

    move-result p0

    add-int/2addr p0, p1

    invoke-interface {p2, v0, p0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p2, p0, Lorg/chromium/content/browser/input/TextInputState;->mText:Ljava/lang/CharSequence;

    iget-object v0, p0, Lorg/chromium/content/browser/input/TextInputState;->mSelection:Lorg/chromium/content/browser/input/Range;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/Range;->end()I

    move-result v0

    iget-object v1, p0, Lorg/chromium/content/browser/input/TextInputState;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iget-object p0, p0, Lorg/chromium/content/browser/input/TextInputState;->mSelection:Lorg/chromium/content/browser/input/Range;

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/Range;->end()I

    move-result p0

    add-int/2addr p0, p1

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {p2, v0, p0}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTextBeforeSelection(II)Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Lorg/chromium/content/browser/input/TextInputState;->mSelection:Lorg/chromium/content/browser/input/Range;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/Range;->start()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/chromium/content/browser/input/TextInputState;->mText:Ljava/lang/CharSequence;

    iget-object v0, p0, Lorg/chromium/content/browser/input/TextInputState;->mSelection:Lorg/chromium/content/browser/input/Range;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/Range;->start()I

    move-result v0

    sub-int/2addr v0, p1

    iget-object p0, p0, Lorg/chromium/content/browser/input/TextInputState;->mSelection:Lorg/chromium/content/browser/input/Range;

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/Range;->start()I

    move-result p0

    invoke-interface {p2, v0, p0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p2, p0, Lorg/chromium/content/browser/input/TextInputState;->mText:Ljava/lang/CharSequence;

    iget-object v1, p0, Lorg/chromium/content/browser/input/TextInputState;->mSelection:Lorg/chromium/content/browser/input/Range;

    invoke-virtual {v1}, Lorg/chromium/content/browser/input/Range;->start()I

    move-result v1

    sub-int/2addr v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-object p0, p0, Lorg/chromium/content/browser/input/TextInputState;->mSelection:Lorg/chromium/content/browser/input/Range;

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/Range;->start()I

    move-result p0

    invoke-static {p2, p1, p0}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lorg/chromium/content/browser/input/TextInputState;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x7

    iget-object v1, p0, Lorg/chromium/content/browser/input/TextInputState;->mSelection:Lorg/chromium/content/browser/input/Range;

    invoke-virtual {v1}, Lorg/chromium/content/browser/input/Range;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0xb

    add-int/2addr v1, v0

    iget-object v0, p0, Lorg/chromium/content/browser/input/TextInputState;->mComposition:Lorg/chromium/content/browser/input/Range;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/Range;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0xd

    add-int/2addr v0, v1

    iget-boolean v1, p0, Lorg/chromium/content/browser/input/TextInputState;->mSingleLine:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/16 v1, 0x13

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    iget-boolean p0, p0, Lorg/chromium/content/browser/input/TextInputState;->mReplyToRequest:Z

    if-eqz p0, :cond_1

    const/16 v2, 0x17

    :cond_1
    add-int/2addr v0, v2

    return v0
.end method

.method public replyToRequest()Z
    .locals 0

    iget-boolean p0, p0, Lorg/chromium/content/browser/input/TextInputState;->mReplyToRequest:Z

    return p0
.end method

.method public selection()Lorg/chromium/content/browser/input/Range;
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/input/TextInputState;->mSelection:Lorg/chromium/content/browser/input/Range;

    return-object p0
.end method

.method public shouldUnblock()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public singleLine()Z
    .locals 0

    iget-boolean p0, p0, Lorg/chromium/content/browser/input/TextInputState;->mSingleLine:Z

    return p0
.end method

.method public text()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/input/TextInputState;->mText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v1, p0, Lorg/chromium/content/browser/input/TextInputState;->mText:Ljava/lang/CharSequence;

    iget-object v2, p0, Lorg/chromium/content/browser/input/TextInputState;->mSelection:Lorg/chromium/content/browser/input/Range;

    iget-object v3, p0, Lorg/chromium/content/browser/input/TextInputState;->mComposition:Lorg/chromium/content/browser/input/Range;

    iget-boolean v4, p0, Lorg/chromium/content/browser/input/TextInputState;->mSingleLine:Z

    if-eqz v4, :cond_0

    const-string v4, "SIN"

    goto :goto_0

    :cond_0
    const-string v4, "MUL"

    :goto_0
    iget-boolean p0, p0, Lorg/chromium/content/browser/input/TextInputState;->mReplyToRequest:Z

    if-eqz p0, :cond_1

    const-string p0, " ReplyToRequest"

    goto :goto_1

    :cond_1
    const-string p0, ""

    :goto_1
    filled-new-array {v1, v2, v3, v4, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "TextInputState {[%s] SEL%s COM%s %s%s}"

    invoke-static {v0, v1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
