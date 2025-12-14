.class Lorg/chromium/content/browser/picker/DateDialogNormalizer$DateAndMillis;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/content/browser/picker/DateDialogNormalizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DateAndMillis"
.end annotation


# instance fields
.field public final day:I

.field public final millisForPicker:J

.field public final month:I

.field public final year:I


# direct methods
.method public constructor <init>(JIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/chromium/content/browser/picker/DateDialogNormalizer$DateAndMillis;->millisForPicker:J

    iput p3, p0, Lorg/chromium/content/browser/picker/DateDialogNormalizer$DateAndMillis;->year:I

    iput p4, p0, Lorg/chromium/content/browser/picker/DateDialogNormalizer$DateAndMillis;->month:I

    iput p5, p0, Lorg/chromium/content/browser/picker/DateDialogNormalizer$DateAndMillis;->day:I

    return-void
.end method

.method public static create(III)Lorg/chromium/content/browser/picker/DateDialogNormalizer$DateAndMillis;
    .locals 7

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    invoke-virtual {v0, p0, p1, p2}, Ljava/util/Calendar;->set(III)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    new-instance v0, Lorg/chromium/content/browser/picker/DateDialogNormalizer$DateAndMillis;

    move-object v1, v0

    move v4, p0

    move v5, p1

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lorg/chromium/content/browser/picker/DateDialogNormalizer$DateAndMillis;-><init>(JIII)V

    return-object v0
.end method

.method public static create(J)Lorg/chromium/content/browser/picker/DateDialogNormalizer$DateAndMillis;
    .locals 4

    new-instance v0, Ljava/util/GregorianCalendar;

    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    new-instance v1, Ljava/util/Date;

    const-wide/high16 v2, -0x8000000000000000L

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->setGregorianChange(Ljava/util/Date;)V

    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    const/4 p1, 0x2

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {p0, p1, v0}, Lorg/chromium/content/browser/picker/DateDialogNormalizer$DateAndMillis;->create(III)Lorg/chromium/content/browser/picker/DateDialogNormalizer$DateAndMillis;

    move-result-object p0

    return-object p0
.end method
