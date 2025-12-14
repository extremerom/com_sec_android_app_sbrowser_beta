.class Lorg/chromium/components/stylus_handwriting/DirectWritingServiceConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field private mDefaultHideDwToolbarDelayMs:J

.field private mDefaultKeepWritingDelayMs:J

.field private mHorizontalSlopPx:I

.field private mVerticalSlopPx:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceConfiguration;->mDefaultHideDwToolbarDelayMs:J

    iput-wide v0, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceConfiguration;->mDefaultKeepWritingDelayMs:J

    const/16 v0, 0x38

    iput v0, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceConfiguration;->mVerticalSlopPx:I

    iput v0, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceConfiguration;->mHorizontalSlopPx:I

    return-void
.end method


# virtual methods
.method public getHideDwToolbarDelayMs()J
    .locals 2

    iget-wide v0, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceConfiguration;->mDefaultHideDwToolbarDelayMs:J

    return-wide v0
.end method

.method public getKeepWritingDelayMs()J
    .locals 2

    iget-wide v0, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceConfiguration;->mDefaultKeepWritingDelayMs:J

    return-wide v0
.end method

.method public update(Landroid/os/Bundle;)V
    .locals 5

    const-string v0, "hideDelay"

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceConfiguration;->mDefaultHideDwToolbarDelayMs:J

    const-string v0, "keepWritingDelay"

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceConfiguration;->mDefaultKeepWritingDelayMs:J

    const-string v0, "triggerVerticalSpace"

    const/16 v1, 0x38

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceConfiguration;->mVerticalSlopPx:I

    const-string v0, "triggerHorizontalSpace"

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceConfiguration;->mHorizontalSlopPx:I

    return-void
.end method
