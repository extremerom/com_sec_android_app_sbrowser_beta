.class Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mAutocompleteText:Ljava/lang/String;

.field private mSelEnd:I

.field private mSelStart:I

.field private mUserText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;->copyFrom(Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;->set(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public static isPrefix(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-le p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public clearAutocompleteText()V
    .locals 1

    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;->mAutocompleteText:Ljava/lang/String;

    return-void
.end method

.method public commitAutocompleteText()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;->mUserText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;->mAutocompleteText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;->mUserText:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;->mAutocompleteText:Ljava/lang/String;

    return-void
.end method

.method public copyFrom(Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;)V
    .locals 3

    iget-object v0, p1, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;->mUserText:Ljava/lang/String;

    iget-object v1, p1, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;->mAutocompleteText:Ljava/lang/String;

    iget v2, p1, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;->mSelStart:I

    iget p1, p1, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;->mSelEnd:I

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;->set(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, p0, :cond_1

    return v0

    :cond_1
    check-cast p1, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;->mUserText:Ljava/lang/String;

    iget-object v3, p1, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;->mUserText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;->mAutocompleteText:Ljava/lang/String;

    iget-object v3, p1, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;->mAutocompleteText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;->mSelStart:I

    iget v3, p1, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;->mSelStart:I

    if-ne v2, v3, :cond_2

    iget p0, p0, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;->mSelEnd:I

    iget p1, p1, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;->mSelEnd:I

    if-ne p0, p1, :cond_2

    move v1, v0

    :cond_2
    return v1
.end method

.method public getAutocompleteText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;->mAutocompleteText:Ljava/lang/String;

    return-object p0
.end method

.method public getBackwardDeletedTextFrom(Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;->isBackwardDeletedFrom(Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p1, p1, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;->mUserText:Ljava/lang/String;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;->mUserText:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSelEnd()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;->mSelEnd:I

    return p0
.end method

.method public getSelStart()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;->mSelStart:I

    return p0
.end method

.method public getText()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;->mUserText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;->mAutocompleteText:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUserText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;->mUserText:Ljava/lang/String;

    return-object p0
.end method

.method public hasAutocompleteText()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;->mAutocompleteText:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;->mUserText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;->mAutocompleteText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    add-int/2addr v1, v0

    iget v0, p0, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;->mSelStart:I

    mul-int/lit8 v0, v0, 0x5

    add-int/2addr v0, v1

    iget p0, p0, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;->mSelEnd:I

    mul-int/lit8 p0, p0, 0x7

    add-int/2addr p0, v0

    return p0
.end method

.method public isBackwardDeletedFrom(Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;->isCursorAtEndOfUserText()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;->isCursorAtEndOfUserText()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;->mUserText:Ljava/lang/String;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;->mUserText:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;->isPrefix(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isCursorAtEndOfUserText()Z
    .locals 2

    iget v0, p0, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;->mSelStart:I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;->mUserText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;->mSelEnd:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;->mUserText:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isForwardTypedFrom(Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;->isCursorAtEndOfUserText()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;->isCursorAtEndOfUserText()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;->mUserText:Ljava/lang/String;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;->mUserText:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;->isPrefix(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isWholeUserTextSelected()Z
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;->mSelStart:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;->mSelEnd:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;->mUserText:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public reuseAutocompleteTextIfPrefixExtension(Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;)Z
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;->mUserText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p1, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;->mUserText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;->mUserText:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;->isPrefix(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    iget-object p1, p1, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;->mAutocompleteText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;->mAutocompleteText:Ljava/lang/String;

    const/4 p0, 0x1

    return p0
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;->mUserText:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;->mAutocompleteText:Ljava/lang/String;

    iput p3, p0, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;->mSelStart:I

    iput p4, p0, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;->mSelEnd:I

    return-void
.end method

.method public setSelection(II)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;->mSelStart:I

    iput p2, p0, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;->mSelEnd:I

    return-void
.end method

.method public setUserText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;->mUserText:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;->mUserText:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;->mAutocompleteText:Ljava/lang/String;

    iget v2, p0, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;->mSelStart:I

    iget p0, p0, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;->mSelEnd:I

    const-string v3, "AutocompleteState {["

    const-string v4, "]["

    const-string v5, "] ["

    invoke-static {v3, v0, v4, v1, v5}, Lcom/sec/android/app/sbrowser/autofill/password/k;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
