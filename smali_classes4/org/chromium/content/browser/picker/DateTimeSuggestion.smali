.class public Lorg/chromium/content/browser/picker/DateTimeSuggestion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field private final mLabel:Ljava/lang/String;

.field private final mLocalizedValue:Ljava/lang/String;

.field private final mValue:D


# direct methods
.method public constructor <init>(DLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/chromium/content/browser/picker/DateTimeSuggestion;->mValue:D

    iput-object p3, p0, Lorg/chromium/content/browser/picker/DateTimeSuggestion;->mLocalizedValue:Ljava/lang/String;

    iput-object p4, p0, Lorg/chromium/content/browser/picker/DateTimeSuggestion;->mLabel:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    instance-of v0, p1, Lorg/chromium/content/browser/picker/DateTimeSuggestion;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/chromium/content/browser/picker/DateTimeSuggestion;

    iget-wide v2, p0, Lorg/chromium/content/browser/picker/DateTimeSuggestion;->mValue:D

    iget-wide v4, p1, Lorg/chromium/content/browser/picker/DateTimeSuggestion;->mValue:D

    cmpl-double v0, v2, v4

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/chromium/content/browser/picker/DateTimeSuggestion;->mLocalizedValue:Ljava/lang/String;

    iget-object v2, p1, Lorg/chromium/content/browser/picker/DateTimeSuggestion;->mLocalizedValue:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lorg/chromium/content/browser/picker/DateTimeSuggestion;->mLabel:Ljava/lang/String;

    iget-object p1, p1, Lorg/chromium/content/browser/picker/DateTimeSuggestion;->mLabel:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    iget-wide v0, p0, Lorg/chromium/content/browser/picker/DateTimeSuggestion;->mValue:D

    double-to-int v0, v0

    const/16 v1, 0x47b

    add-int/2addr v1, v0

    const/16 v0, 0x25

    mul-int/2addr v1, v0

    iget-object v2, p0, Lorg/chromium/content/browser/picker/DateTimeSuggestion;->mLocalizedValue:Ljava/lang/String;

    invoke-static {v1, v0, v2}, LB/e;->d(IILjava/lang/String;)I

    move-result v0

    iget-object p0, p0, Lorg/chromium/content/browser/picker/DateTimeSuggestion;->mLabel:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public label()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/picker/DateTimeSuggestion;->mLabel:Ljava/lang/String;

    return-object p0
.end method

.method public localizedValue()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/picker/DateTimeSuggestion;->mLocalizedValue:Ljava/lang/String;

    return-object p0
.end method

.method public value()D
    .locals 2

    iget-wide v0, p0, Lorg/chromium/content/browser/picker/DateTimeSuggestion;->mValue:D

    return-wide v0
.end method
