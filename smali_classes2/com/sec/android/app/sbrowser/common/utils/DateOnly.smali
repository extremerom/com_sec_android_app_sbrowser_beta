.class public Lcom/sec/android/app/sbrowser/common/utils/DateOnly;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mDayOfMonth:I

.field private mMonth:I

.field private mYear:I


# direct methods
.method public constructor <init>(J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/common/utils/DateOnly;->setValueFromCalendar(Ljava/util/Calendar;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Calendar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/DateOnly;->setValueFromCalendar(Ljava/util/Calendar;)V

    return-void
.end method

.method private setValueFromCalendar(Ljava/util/Calendar;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/common/utils/DateOnly;->mYear:I

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/common/utils/DateOnly;->mMonth:I

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/utils/DateOnly;->mDayOfMonth:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lcom/sec/android/app/sbrowser/common/utils/DateOnly;

    iget v2, p0, Lcom/sec/android/app/sbrowser/common/utils/DateOnly;->mYear:I

    iget v3, p1, Lcom/sec/android/app/sbrowser/common/utils/DateOnly;->mYear:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/sec/android/app/sbrowser/common/utils/DateOnly;->mMonth:I

    iget v3, p1, Lcom/sec/android/app/sbrowser/common/utils/DateOnly;->mMonth:I

    if-ne v2, v3, :cond_2

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/utils/DateOnly;->mDayOfMonth:I

    iget p1, p1, Lcom/sec/android/app/sbrowser/common/utils/DateOnly;->mDayOfMonth:I

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getDisplayString()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-static {v0}, Landroid/text/format/DateFormat;->getMediumDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/utils/DateOnly;->getTimeInMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTimeInMillis()J
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/utils/DateOnly;->toCalendar()Ljava/util/Calendar;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/sec/android/app/sbrowser/common/utils/DateOnly;->mYear:I

    mul-int/lit16 v0, v0, 0x3e8

    iget v1, p0, Lcom/sec/android/app/sbrowser/common/utils/DateOnly;->mMonth:I

    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v1, v0

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/utils/DateOnly;->mDayOfMonth:I

    add-int/2addr v1, p0

    return v1
.end method

.method public nDaysLater(I)Lcom/sec/android/app/sbrowser/common/utils/DateOnly;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/utils/DateOnly;->toCalendar()Ljava/util/Calendar;

    move-result-object p0

    const/4 v0, 0x5

    invoke-virtual {p0, v0, p1}, Ljava/util/Calendar;->add(II)V

    new-instance p1, Lcom/sec/android/app/sbrowser/common/utils/DateOnly;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/common/utils/DateOnly;-><init>(Ljava/util/Calendar;)V

    return-object p1
.end method

.method public toCalendar()Ljava/util/Calendar;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    iget v1, p0, Lcom/sec/android/app/sbrowser/common/utils/DateOnly;->mYear:I

    iget v2, p0, Lcom/sec/android/app/sbrowser/common/utils/DateOnly;->mMonth:I

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/utils/DateOnly;->mDayOfMonth:I

    invoke-virtual {v0, v1, v2, p0}, Ljava/util/Calendar;->set(III)V

    return-object v0
.end method
