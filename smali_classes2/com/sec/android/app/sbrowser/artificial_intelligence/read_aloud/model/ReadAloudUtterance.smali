.class public Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudUtterance;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mIsNeedToHighlight:Z

.field private mIsReadFinished:Z

.field private mRangeEnd:I

.field private mRangeStart:I

.field private final mSentence:Ljava/lang/String;

.field private mTranslatedLangCode:Ljava/lang/String;

.field private mTranslatedSentence:Ljava/lang/String;

.field private final mUtteranceId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudUtterance;->mUtteranceId:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudUtterance;->mSentence:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudUtterance;->mIsReadFinished:Z

    return-void
.end method


# virtual methods
.method public getCurrentSentence()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudUtterance;->mSentence:Ljava/lang/String;

    return-object p0
.end method

.method public getLength()I
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudUtterance;->isTranslated()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudUtterance;->getTranslatedSentence()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudUtterance;->getOriginalSentence()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    return p0
.end method

.method public getOriginalSentence()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudUtterance;->mSentence:Ljava/lang/String;

    return-object p0
.end method

.method public getRangeEnd(Z)I
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudUtterance;->isTranslated()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudUtterance;->mRangeEnd:I

    return p0
.end method

.method public getRangeStart(Z)I
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudUtterance;->isTranslated()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudUtterance;->mRangeStart:I

    return p0
.end method

.method public getTranslatedLangCode()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudUtterance;->mTranslatedLangCode:Ljava/lang/String;

    return-object p0
.end method

.method public getTranslatedSentence()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudUtterance;->mTranslatedSentence:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudUtterance;->getOriginalSentence()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudUtterance;->mTranslatedSentence:Ljava/lang/String;

    return-object p0
.end method

.method public getUtteranceId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudUtterance;->mUtteranceId:Ljava/lang/String;

    return-object p0
.end method

.method public isNeedToHighlight()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudUtterance;->mIsNeedToHighlight:Z

    return p0
.end method

.method public isReadFinished()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudUtterance;->mIsReadFinished:Z

    return p0
.end method

.method public isTranslated()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudUtterance;->mTranslatedSentence:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudUtterance;->mSentence:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudUtterance;->mTranslatedSentence:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public setIsNeedToHighlight(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudUtterance;->mIsNeedToHighlight:Z

    return-void
.end method

.method public setIsReadFinished(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setIsReadFinished(): "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudUtterance;->mUtteranceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " => "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "si__ReadAloudUtterance"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudUtterance;->mIsReadFinished:Z

    return-void
.end method

.method public setRange(II)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudUtterance;->isTranslated()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudUtterance;->mTranslatedSentence:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudUtterance;->mSentence:Ljava/lang/String;

    goto :goto_0

    :goto_1
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v1, 0x0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudUtterance;->mRangeStart:I

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudUtterance;->mRangeEnd:I

    return-void
.end method

.method public setTranslatedSentence(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudUtterance;->mTranslatedSentence:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudUtterance;->mTranslatedLangCode:Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudUtterance;->mTranslatedSentence:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudUtterance;->getTranslatedSentence()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " | length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudUtterance;->getLength()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
