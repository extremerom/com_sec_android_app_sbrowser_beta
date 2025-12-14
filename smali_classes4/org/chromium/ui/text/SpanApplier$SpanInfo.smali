.class public final Lorg/chromium/ui/text/SpanApplier$SpanInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/ui/text/SpanApplier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SpanInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lorg/chromium/ui/text/SpanApplier$SpanInfo;",
        ">;"
    }
.end annotation


# instance fields
.field mStartTagIndex:I


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lorg/chromium/ui/text/SpanApplier$SpanInfo;

    invoke-virtual {p0, p1}, Lorg/chromium/ui/text/SpanApplier$SpanInfo;->compareTo(Lorg/chromium/ui/text/SpanApplier$SpanInfo;)I

    move-result p0

    return p0
.end method

.method public compareTo(Lorg/chromium/ui/text/SpanApplier$SpanInfo;)I
    .locals 0

    iget p0, p0, Lorg/chromium/ui/text/SpanApplier$SpanInfo;->mStartTagIndex:I

    iget p1, p1, Lorg/chromium/ui/text/SpanApplier$SpanInfo;->mStartTagIndex:I

    if-ge p0, p1, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lorg/chromium/ui/text/SpanApplier$SpanInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/chromium/ui/text/SpanApplier$SpanInfo;

    invoke-virtual {p0, p1}, Lorg/chromium/ui/text/SpanApplier$SpanInfo;->compareTo(Lorg/chromium/ui/text/SpanApplier$SpanInfo;)I

    move-result p0

    if-nez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
