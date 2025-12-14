.class public Lorg/chromium/content/browser/picker/DateTimePickerDialog;
.super Landroid/app/AlertDialog;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/DatePicker$OnDateChangedListener;
.implements Landroid/widget/TimePicker$OnTimeChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content/browser/picker/DateTimePickerDialog$OnDateTimeSetListener;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field private final mCallBack:Lorg/chromium/content/browser/picker/DateTimePickerDialog$OnDateTimeSetListener;

.field private final mDatePicker:Landroid/widget/DatePicker;

.field private final mMaxTimeMillis:J

.field private final mMinTimeMillis:J

.field private final mTimePicker:Landroid/widget/TimePicker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/chromium/content/browser/picker/DateTimePickerDialog$OnDateTimeSetListener;IIIIIZDD)V
    .locals 11

    move-object v9, p0

    move-object v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    move-wide/from16 v2, p9

    double-to-long v5, v2

    iput-wide v5, v9, Lorg/chromium/content/browser/picker/DateTimePickerDialog;->mMinTimeMillis:J

    move-wide/from16 v2, p11

    double-to-long v7, v2

    iput-wide v7, v9, Lorg/chromium/content/browser/picker/DateTimePickerDialog;->mMaxTimeMillis:J

    move-object v2, p2

    iput-object v2, v9, Lorg/chromium/content/browser/picker/DateTimePickerDialog;->mCallBack:Lorg/chromium/content/browser/picker/DateTimePickerDialog$OnDateTimeSetListener;

    sget v2, Lorg/chromium/content/R$string;->date_picker_dialog_set:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {p0, v3, v2, p0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/high16 v2, 0x1040000

    invoke-virtual {p1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, -0x2

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v2, v4}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p0, v1}, Landroid/app/AlertDialog;->setIcon(I)V

    sget v1, Lorg/chromium/content/R$string;->date_time_picker_dialog_title:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    sget v1, Lorg/chromium/content/R$layout;->date_time_picker_dialog:I

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    invoke-virtual {p0, v10}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    sget v0, Lorg/chromium/content/R$id;->date_picker:I

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/DatePicker;

    iput-object v0, v9, Lorg/chromium/content/browser/picker/DateTimePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    move-object v1, p0

    move v2, p3

    move v3, p4

    move/from16 v4, p5

    invoke-static/range {v0 .. v8}, Lorg/chromium/content/browser/picker/DateDialogNormalizer;->normalize(Landroid/widget/DatePicker;Landroid/widget/DatePicker$OnDateChangedListener;IIIJJ)V

    sget v0, Lorg/chromium/content/R$id;->time_picker:I

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TimePicker;

    iput-object v0, v9, Lorg/chromium/content/browser/picker/DateTimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    invoke-static/range {p8 .. p8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    move/from16 v1, p6

    invoke-static {v0, v1}, Lorg/chromium/content/browser/picker/DateTimePickerDialog;->setHour(Landroid/widget/TimePicker;I)V

    move/from16 v1, p7

    invoke-static {v0, v1}, Lorg/chromium/content/browser/picker/DateTimePickerDialog;->setMinute(Landroid/widget/TimePicker;I)V

    invoke-virtual {v0, p0}, Landroid/widget/TimePicker;->setOnTimeChangedListener(Landroid/widget/TimePicker$OnTimeChangedListener;)V

    invoke-static {v0}, Lorg/chromium/content/browser/picker/DateTimePickerDialog;->getHour(Landroid/widget/TimePicker;)I

    move-result v1

    invoke-static {v0}, Lorg/chromium/content/browser/picker/DateTimePickerDialog;->getMinute(Landroid/widget/TimePicker;)I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/chromium/content/browser/picker/DateTimePickerDialog;->onTimeChanged(Landroid/widget/TimePicker;II)V

    return-void
.end method

.method private static getHour(Landroid/widget/TimePicker;)I
    .locals 0

    invoke-virtual {p0}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private static getMinute(Landroid/widget/TimePicker;)I
    .locals 0

    invoke-virtual {p0}, Landroid/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static onTimeChangedInternal(IIILandroid/widget/TimePicker;JJ)V
    .locals 8
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    new-instance v7, Ljava/util/GregorianCalendar;

    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    invoke-virtual {v7}, Ljava/util/Calendar;->clear()V

    invoke-static {p3}, Lorg/chromium/content/browser/picker/DateTimePickerDialog;->getHour(Landroid/widget/TimePicker;)I

    move-result v4

    invoke-static {p3}, Lorg/chromium/content/browser/picker/DateTimePickerDialog;->getMinute(Landroid/widget/TimePicker;)I

    move-result v5

    const/4 v6, 0x0

    move-object v0, v7

    move v1, p0

    move v2, p1

    move v3, p2

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    cmp-long p0, p0, p4

    if-gez p0, :cond_0

    invoke-virtual {v7, p4, p5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_0

    :cond_0
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    cmp-long p0, p0, p6

    if-lez p0, :cond_1

    invoke-virtual {v7, p6, p7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    :cond_1
    :goto_0
    const/16 p0, 0xb

    invoke-virtual {v7, p0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    invoke-static {p3, p0}, Lorg/chromium/content/browser/picker/DateTimePickerDialog;->setHour(Landroid/widget/TimePicker;I)V

    const/16 p0, 0xc

    invoke-virtual {v7, p0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    invoke-static {p3, p0}, Lorg/chromium/content/browser/picker/DateTimePickerDialog;->setMinute(Landroid/widget/TimePicker;I)V

    return-void
.end method

.method private static setHour(Landroid/widget/TimePicker;I)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    return-void
.end method

.method private static setMinute(Landroid/widget/TimePicker;I)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    return-void
.end method

.method private tryNotifyDateTimeSet()V
    .locals 9

    iget-object v0, p0, Lorg/chromium/content/browser/picker/DateTimePickerDialog;->mCallBack:Lorg/chromium/content/browser/picker/DateTimePickerDialog$OnDateTimeSetListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/picker/DateTimePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    iget-object v0, p0, Lorg/chromium/content/browser/picker/DateTimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    iget-object v1, p0, Lorg/chromium/content/browser/picker/DateTimePickerDialog;->mCallBack:Lorg/chromium/content/browser/picker/DateTimePickerDialog$OnDateTimeSetListener;

    iget-object v2, p0, Lorg/chromium/content/browser/picker/DateTimePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    iget-object v3, p0, Lorg/chromium/content/browser/picker/DateTimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    invoke-virtual {v2}, Landroid/widget/DatePicker;->getYear()I

    move-result v4

    iget-object v0, p0, Lorg/chromium/content/browser/picker/DateTimePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v0}, Landroid/widget/DatePicker;->getMonth()I

    move-result v5

    iget-object v0, p0, Lorg/chromium/content/browser/picker/DateTimePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v0}, Landroid/widget/DatePicker;->getDayOfMonth()I

    move-result v6

    iget-object v0, p0, Lorg/chromium/content/browser/picker/DateTimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    invoke-static {v0}, Lorg/chromium/content/browser/picker/DateTimePickerDialog;->getHour(Landroid/widget/TimePicker;)I

    move-result v7

    iget-object p0, p0, Lorg/chromium/content/browser/picker/DateTimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    invoke-static {p0}, Lorg/chromium/content/browser/picker/DateTimePickerDialog;->getMinute(Landroid/widget/TimePicker;)I

    move-result v8

    invoke-interface/range {v1 .. v8}, Lorg/chromium/content/browser/picker/DateTimePickerDialog$OnDateTimeSetListener;->onDateTimeSet(Landroid/widget/DatePicker;Landroid/widget/TimePicker;IIIII)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/content/browser/picker/DateTimePickerDialog;->tryNotifyDateTimeSet()V

    return-void
.end method

.method public onDateChanged(Landroid/widget/DatePicker;III)V
    .locals 0

    iget-object p1, p0, Lorg/chromium/content/browser/picker/DateTimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lorg/chromium/content/browser/picker/DateTimePickerDialog;->getHour(Landroid/widget/TimePicker;)I

    move-result p2

    iget-object p3, p0, Lorg/chromium/content/browser/picker/DateTimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    invoke-static {p3}, Lorg/chromium/content/browser/picker/DateTimePickerDialog;->getMinute(Landroid/widget/TimePicker;)I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lorg/chromium/content/browser/picker/DateTimePickerDialog;->onTimeChanged(Landroid/widget/TimePicker;II)V

    :cond_0
    return-void
.end method

.method public onTimeChanged(Landroid/widget/TimePicker;II)V
    .locals 8

    iget-object p1, p0, Lorg/chromium/content/browser/picker/DateTimePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {p1}, Landroid/widget/DatePicker;->getYear()I

    move-result v0

    iget-object p1, p0, Lorg/chromium/content/browser/picker/DateTimePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {p1}, Landroid/widget/DatePicker;->getMonth()I

    move-result v1

    iget-object p1, p0, Lorg/chromium/content/browser/picker/DateTimePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {p1}, Landroid/widget/DatePicker;->getDayOfMonth()I

    move-result v2

    iget-object v3, p0, Lorg/chromium/content/browser/picker/DateTimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    iget-wide v4, p0, Lorg/chromium/content/browser/picker/DateTimePickerDialog;->mMinTimeMillis:J

    iget-wide v6, p0, Lorg/chromium/content/browser/picker/DateTimePickerDialog;->mMaxTimeMillis:J

    invoke-static/range {v0 .. v7}, Lorg/chromium/content/browser/picker/DateTimePickerDialog;->onTimeChangedInternal(IIILandroid/widget/TimePicker;JJ)V

    return-void
.end method
