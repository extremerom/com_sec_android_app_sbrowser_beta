.class public Lorg/chromium/content/browser/picker/DateDialogNormalizer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content/browser/picker/DateDialogNormalizer$DateAndMillis;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# direct methods
.method public static normalize(Landroid/widget/DatePicker;Landroid/widget/DatePicker$OnDateChangedListener;IIIJJ)V
    .locals 2

    invoke-static {p2, p3, p4}, Lorg/chromium/content/browser/picker/DateDialogNormalizer$DateAndMillis;->create(III)Lorg/chromium/content/browser/picker/DateDialogNormalizer$DateAndMillis;

    move-result-object p2

    invoke-static {p5, p6}, Lorg/chromium/content/browser/picker/DateDialogNormalizer$DateAndMillis;->create(J)Lorg/chromium/content/browser/picker/DateDialogNormalizer$DateAndMillis;

    move-result-object p3

    invoke-static {p7, p8}, Lorg/chromium/content/browser/picker/DateDialogNormalizer$DateAndMillis;->create(J)Lorg/chromium/content/browser/picker/DateDialogNormalizer$DateAndMillis;

    move-result-object p4

    iget-wide p5, p4, Lorg/chromium/content/browser/picker/DateDialogNormalizer$DateAndMillis;->millisForPicker:J

    iget-wide p7, p3, Lorg/chromium/content/browser/picker/DateDialogNormalizer$DateAndMillis;->millisForPicker:J

    cmp-long p5, p5, p7

    if-gez p5, :cond_0

    move-object p4, p3

    :cond_0
    iget-wide p5, p2, Lorg/chromium/content/browser/picker/DateDialogNormalizer$DateAndMillis;->millisForPicker:J

    cmp-long v0, p5, p7

    if-gez v0, :cond_1

    move-object p2, p3

    goto :goto_0

    :cond_1
    iget-wide v0, p4, Lorg/chromium/content/browser/picker/DateDialogNormalizer$DateAndMillis;->millisForPicker:J

    cmp-long p3, p5, v0

    if-lez p3, :cond_2

    move-object p2, p4

    :cond_2
    :goto_0
    iget-wide p3, p4, Lorg/chromium/content/browser/picker/DateDialogNormalizer$DateAndMillis;->millisForPicker:J

    invoke-static {p0, p7, p8, p3, p4}, Lorg/chromium/content/browser/picker/DateDialogNormalizer;->setLimits(Landroid/widget/DatePicker;JJ)V

    iget p3, p2, Lorg/chromium/content/browser/picker/DateDialogNormalizer$DateAndMillis;->year:I

    iget p4, p2, Lorg/chromium/content/browser/picker/DateDialogNormalizer$DateAndMillis;->month:I

    iget p2, p2, Lorg/chromium/content/browser/picker/DateDialogNormalizer$DateAndMillis;->day:I

    invoke-virtual {p0, p3, p4, p2, p1}, Landroid/widget/DatePicker;->init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V

    return-void
.end method

.method private static setLimits(Landroid/widget/DatePicker;JJ)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/DatePicker;->getMaxDate()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    invoke-virtual {p0, p3, p4}, Landroid/widget/DatePicker;->setMaxDate(J)V

    invoke-virtual {p0, p1, p2}, Landroid/widget/DatePicker;->setMinDate(J)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/widget/DatePicker;->setMinDate(J)V

    invoke-virtual {p0, p3, p4}, Landroid/widget/DatePicker;->setMaxDate(J)V

    :goto_0
    return-void
.end method
