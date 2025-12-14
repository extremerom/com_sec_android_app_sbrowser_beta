.class public Lorg/chromium/content/browser/input/Range;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field private mEnd:I

.field private mStart:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1, p2}, Lorg/chromium/content/browser/input/Range;->set(II)V

    return-void
.end method


# virtual methods
.method public clamp(II)V
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/input/Range;->mStart:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lorg/chromium/content/browser/input/Range;->mStart:I

    iget v0, p0, Lorg/chromium/content/browser/input/Range;->mEnd:I

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lorg/chromium/content/browser/input/Range;->mEnd:I

    return-void
.end method

.method public end()I
    .locals 0

    iget p0, p0, Lorg/chromium/content/browser/input/Range;->mEnd:I

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Lorg/chromium/content/browser/input/Range;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, p0, :cond_1

    return v0

    :cond_1
    check-cast p1, Lorg/chromium/content/browser/input/Range;

    iget v2, p0, Lorg/chromium/content/browser/input/Range;->mStart:I

    iget v3, p1, Lorg/chromium/content/browser/input/Range;->mStart:I

    if-ne v2, v3, :cond_2

    iget p0, p0, Lorg/chromium/content/browser/input/Range;->mEnd:I

    iget p1, p1, Lorg/chromium/content/browser/input/Range;->mEnd:I

    if-ne p0, p1, :cond_2

    move v1, v0

    :cond_2
    return v1
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/input/Range;->mStart:I

    mul-int/lit8 v0, v0, 0xb

    iget p0, p0, Lorg/chromium/content/browser/input/Range;->mEnd:I

    mul-int/lit8 p0, p0, 0x1f

    add-int/2addr p0, v0

    return p0
.end method

.method public set(II)V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lorg/chromium/content/browser/input/Range;->mStart:I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lorg/chromium/content/browser/input/Range;->mEnd:I

    return-void
.end method

.method public start()I
    .locals 0

    iget p0, p0, Lorg/chromium/content/browser/input/Range;->mStart:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[ "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/chromium/content/browser/input/Range;->mStart:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lorg/chromium/content/browser/input/Range;->mEnd:I

    const-string v1, " ]"

    invoke-static {v0, p0, v1}, LB/e;->p(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
