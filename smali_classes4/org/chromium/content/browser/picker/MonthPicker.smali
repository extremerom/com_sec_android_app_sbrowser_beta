.class public Lorg/chromium/content/browser/picker/MonthPicker;
.super Lorg/chromium/content/browser/picker/TwoFieldDatePicker;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "DefaultLocale"
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field private final mShortMonths:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;DD)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/chromium/content/browser/picker/TwoFieldDatePicker;-><init>(Landroid/content/Context;DD)V

    invoke-virtual {p0}, Lorg/chromium/content/browser/picker/TwoFieldDatePicker;->getPositionInYearSpinner()Landroid/widget/NumberPicker;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lorg/chromium/content/R$string;->accessibility_date_picker_month:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-static {p1}, Ljava/text/DateFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object p1

    invoke-virtual {p1}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/content/browser/picker/MonthPicker;->mShortMonths:[Ljava/lang/String;

    invoke-virtual {p0}, Lorg/chromium/content/browser/picker/MonthPicker;->usingNumericMonths()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    :goto_0
    iget-object p2, p0, Lorg/chromium/content/browser/picker/MonthPicker;->mShortMonths:[Ljava/lang/String;

    array-length p3, p2

    if-ge p1, p3, :cond_0

    add-int/lit8 p3, p1, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    filled-new-array {p4}, [Ljava/lang/Object;

    move-result-object p4

    const-string p5, "%d"

    invoke-static {p5, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    aput-object p4, p2, p1

    move p1, p3

    goto :goto_0

    :cond_0
    const-string p1, "UTC"

    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result p2

    const/4 p3, 0x2

    invoke-virtual {p1, p3}, Ljava/util/Calendar;->get(I)I

    move-result p1

    const/4 p3, 0x0

    invoke-virtual {p0, p2, p1, p3}, Lorg/chromium/content/browser/picker/TwoFieldDatePicker;->init(IILorg/chromium/content/browser/picker/TwoFieldDatePicker$OnMonthOrWeekChangedListener;)V

    return-void
.end method

.method public static createDateFromValue(D)Ljava/util/Calendar;
    .locals 6

    const-wide/high16 v0, 0x4028000000000000L    # 12.0

    div-double v2, p0, v0

    const-wide v4, 0x409ec80000000000L    # 1970.0

    add-double/2addr v2, v4

    const-wide v4, 0x41dfffffffc00000L    # 2.147483647E9

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    double-to-int v2, v2

    rem-double/2addr p0, v0

    double-to-int p0, p0

    const-string p1, "UTC"

    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Calendar;->clear()V

    const/4 v0, 0x1

    invoke-virtual {p1, v2, p0, v0}, Ljava/util/Calendar;->set(III)V

    return-object p1
.end method


# virtual methods
.method public getDateForValue(D)Ljava/util/Calendar;
    .locals 0

    invoke-static {p1, p2}, Lorg/chromium/content/browser/picker/MonthPicker;->createDateFromValue(D)Ljava/util/Calendar;

    move-result-object p0

    return-object p0
.end method

.method public getMaxPositionInYear(I)I
    .locals 2

    invoke-virtual {p0}, Lorg/chromium/content/browser/picker/TwoFieldDatePicker;->getMaxDate()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/content/browser/picker/TwoFieldDatePicker;->getMaxDate()Ljava/util/Calendar;

    move-result-object p0

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p0

    return p0

    :cond_0
    const/16 p0, 0xb

    return p0
.end method

.method public getMaxYear()I
    .locals 1

    invoke-virtual {p0}, Lorg/chromium/content/browser/picker/TwoFieldDatePicker;->getMaxDate()Ljava/util/Calendar;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    return p0
.end method

.method public getMinPositionInYear(I)I
    .locals 2

    invoke-virtual {p0}, Lorg/chromium/content/browser/picker/TwoFieldDatePicker;->getMinDate()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/content/browser/picker/TwoFieldDatePicker;->getMinDate()Ljava/util/Calendar;

    move-result-object p0

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getMinYear()I
    .locals 1

    invoke-virtual {p0}, Lorg/chromium/content/browser/picker/TwoFieldDatePicker;->getMinDate()Ljava/util/Calendar;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    return p0
.end method

.method public getMonth()I
    .locals 1

    invoke-virtual {p0}, Lorg/chromium/content/browser/picker/TwoFieldDatePicker;->getCurrentDate()Ljava/util/Calendar;

    move-result-object p0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    return p0
.end method

.method public getPositionInYear()I
    .locals 0

    invoke-virtual {p0}, Lorg/chromium/content/browser/picker/MonthPicker;->getMonth()I

    move-result p0

    return p0
.end method

.method public setCurrentDate(II)V
    .locals 2

    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Ljava/util/Calendar;->set(III)V

    invoke-virtual {p0}, Lorg/chromium/content/browser/picker/TwoFieldDatePicker;->getMinDate()Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/chromium/content/browser/picker/TwoFieldDatePicker;->getMinDate()Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/chromium/content/browser/picker/TwoFieldDatePicker;->setCurrentDate(Ljava/util/Calendar;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/content/browser/picker/TwoFieldDatePicker;->getMaxDate()Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/chromium/content/browser/picker/TwoFieldDatePicker;->getMaxDate()Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/chromium/content/browser/picker/TwoFieldDatePicker;->setCurrentDate(Ljava/util/Calendar;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/picker/TwoFieldDatePicker;->setCurrentDate(Ljava/util/Calendar;)V

    :goto_0
    return-void
.end method

.method public updateSpinners()V
    .locals 3

    invoke-super {p0}, Lorg/chromium/content/browser/picker/TwoFieldDatePicker;->updateSpinners()V

    iget-object v0, p0, Lorg/chromium/content/browser/picker/MonthPicker;->mShortMonths:[Ljava/lang/String;

    invoke-virtual {p0}, Lorg/chromium/content/browser/picker/TwoFieldDatePicker;->getPositionInYearSpinner()Landroid/widget/NumberPicker;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getMinValue()I

    move-result v1

    invoke-virtual {p0}, Lorg/chromium/content/browser/picker/TwoFieldDatePicker;->getPositionInYearSpinner()Landroid/widget/NumberPicker;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->getMaxValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0}, Lorg/chromium/content/browser/picker/TwoFieldDatePicker;->getPositionInYearSpinner()Landroid/widget/NumberPicker;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    return-void
.end method

.method public usingNumericMonths()Z
    .locals 1

    iget-object p0, p0, Lorg/chromium/content/browser/picker/MonthPicker;->mShortMonths:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->isDigit(C)Z

    move-result p0

    return p0
.end method
