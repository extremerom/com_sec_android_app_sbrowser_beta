.class public Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;
.super Landroidx/preference/Preference;
.source "SourceFile"


# static fields
.field private static sEND:I = 0x1

.field private static sSTART:I


# instance fields
.field private mBarChartColor:[I

.field private mChart:Lcom/github/mikephil/charting/charts/BarChart;

.field private mChartBarDataSet:Lr4/b;

.field private mCleanBarChartColors:[I

.field private mDateKey:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/common/utils/DateOnly;",
            ">;"
        }
    .end annotation
.end field

.field private mGraphData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/Map<",
            "Lcom/sec/android/app/sbrowser/common/utils/DateOnly;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mIsGraphOff:Z

.field private mIsKoreanByLocale:Z

.field private mIsRtl:Z

.field private mIsSecretModeOn:Z

.field private mKey:Ljava/lang/String;

.field private mLabel:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNeedAnimation:Z

.field private mPeriod:[Lcom/sec/android/app/sbrowser/common/utils/DateOnly;

.field private mPrivacyBarChartColors:[I

.field private mStackSize:I

.field private mSubSummary:Ljava/lang/String;

.field private mSubSummaryView:Landroid/widget/TextView;

.field private mSummary:Ljava/lang/String;

.field private mSummaryContainer:Landroid/widget/LinearLayout;

.field private mSummaryView:Landroid/widget/TextView;

.field private mWeekdays:[I

.field private mYLabelFormatter:Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/formatter/YLabelFormatter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;->mNeedAnimation:Z

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;->mDateKey:Ljava/util/ArrayList;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;->mLabel:Ljava/util/ArrayList;

    const/4 p2, 0x2

    new-array p2, p2, [Lcom/sec/android/app/sbrowser/common/utils/DateOnly;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;->mPeriod:[Lcom/sec/android/app/sbrowser/common/utils/DateOnly;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;->mGraphData:Ljava/util/ArrayList;

    const p2, 0x7f06085c

    const v0, 0x7f06085b

    const v1, 0x7f06085d

    filled-new-array {v1, p2, v0}, [I

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;->mCleanBarChartColors:[I

    const p2, 0x7f06085e

    filled-new-array {p2}, [I

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;->mPrivacyBarChartColors:[I

    const/4 p2, 0x7

    new-array p2, p2, [I

    fill-array-data p2, :array_0

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;->mWeekdays:[I

    const p2, 0x7f0e0577

    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setLayoutResource(I)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;->mGraphData:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/LocalizationUtils;->isLayoutRtl()Z

    move-result p2

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;->mIsRtl:Z

    invoke-virtual {p0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;->mKey:Ljava/lang/String;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/LocaleUtils;->isKoreanLanguageByLocale(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;->mIsKoreanByLocale:Z

    return-void

    :array_0
    .array-data 4
        0x7f140e60
        0x7f140e61
        0x7f140e62
        0x7f140e63
        0x7f140e64
        0x7f140e65
        0x7f140e66
    .end array-data
.end method

.method private configAxis(Lcom/github/mikephil/charting/charts/BarChart;)V
    .locals 5

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;->mIsRtl:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lp4/c;->getAxisRight()Lq4/r;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lp4/c;->getAxisLeft()Lq4/r;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, v0, Lq4/b;->a:Z

    invoke-virtual {v0}, Lq4/a;->f()V

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;->mIsRtl:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lp4/c;->getAxisLeft()Lq4/r;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lp4/c;->getAxisRight()Lq4/r;

    move-result-object v0

    :goto_1
    const/4 v2, 0x1

    iput-boolean v2, v0, Lq4/b;->a:Z

    invoke-virtual {v0}, Lq4/a;->f()V

    iput-boolean v2, v0, Lq4/a;->p:Z

    iput-boolean v1, v0, Lq4/a;->q:Z

    const v2, 0x7f060861

    iput v2, v0, Lq4/a;->i:I

    const v2, 0x7f060864

    iput v2, v0, Lq4/b;->e:I

    new-instance v2, Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/formatter/YLabelFormatter;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-boolean v4, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;->mIsKoreanByLocale:Z

    invoke-direct {v2, v3, v4}, Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/formatter/YLabelFormatter;-><init>(Landroid/content/Context;Z)V

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;->mYLabelFormatter:Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/formatter/YLabelFormatter;

    iput-object v2, v0, Lq4/a;->f:Ls4/b;

    invoke-virtual {p1}, Lp4/d;->getXAxis()Lq4/o;

    move-result-object v0

    sget-object v2, Lq4/n;->BOTTOM:Lq4/n;

    iput-object v2, v0, Lq4/o;->B:Lq4/n;

    invoke-virtual {p1}, Lp4/d;->getXAxis()Lq4/o;

    move-result-object v0

    iput-boolean v1, v0, Lq4/a;->p:Z

    invoke-virtual {p1}, Lp4/d;->getXAxis()Lq4/o;

    move-result-object v0

    iput-boolean v1, v0, Lq4/a;->q:Z

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/formatter/WeekChartXLabelFormatter;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/formatter/WeekChartXLabelFormatter;-><init>()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;->mLabel:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/formatter/WeekChartXLabelFormatter;->setLabels(Ljava/util/ArrayList;)V

    invoke-virtual {p1}, Lp4/d;->getXAxis()Lq4/o;

    move-result-object p0

    iput-object v0, p0, Lq4/a;->f:Ls4/b;

    return-void
.end method

.method private configChartRenderer(Lcom/github/mikephil/charting/charts/BarChart;)V
    .locals 7

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lp4/d;->setDescription(Lq4/c;)V

    invoke-virtual {p1}, Lp4/d;->getLegend()Lq4/l;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lq4/b;->a:Z

    invoke-virtual {p1, v1}, Lp4/c;->setDrawGridBackground(Z)V

    invoke-virtual {p1, v1}, Lp4/c;->setScaleEnabled(Z)V

    invoke-virtual {p1, v1}, Lp4/c;->setDoubleTapToZoomEnabled(Z)V

    invoke-virtual {p1, v1}, Lp4/c;->setDragEnabled(Z)V

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/axisrenderer/WeeklyYAxisRenderer;

    invoke-virtual {p1}, Lp4/d;->getViewPortHandler()Ly4/h;

    move-result-object v2

    invoke-virtual {p1}, Lp4/c;->getAxisRight()Lq4/r;

    move-result-object v3

    sget-object v4, Lq4/p;->RIGHT:Lq4/p;

    invoke-virtual {p1, v4}, Lp4/c;->f(Lq4/p;)Ly4/f;

    move-result-object v5

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v0, v2, v3, v5, v6}, Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/axisrenderer/WeeklyYAxisRenderer;-><init>(Ly4/h;Lq4/r;Ly4/f;Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Lp4/c;->setRendererRightYAxis(Lx4/j;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/axisrenderer/WeeklyXAxisRenderer;

    invoke-virtual {p1}, Lp4/d;->getViewPortHandler()Ly4/h;

    move-result-object v2

    invoke-virtual {p1}, Lp4/d;->getXAxis()Lq4/o;

    move-result-object v3

    invoke-virtual {p1, v4}, Lp4/c;->f(Lq4/p;)Ly4/f;

    move-result-object v4

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/axisrenderer/WeeklyXAxisRenderer;-><init>(Ly4/h;Lq4/o;Ly4/f;Landroid/content/Context;)V

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;->mIsRtl:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x6

    :goto_0
    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/axisrenderer/WeeklyXAxisRenderer;->setSelectedLabel(I)V

    invoke-virtual {p1, v0}, Lp4/c;->setXAxisRenderer(Lx4/i;)V

    return-void
.end method

.method private configChartRendererPost(Lcom/github/mikephil/charting/charts/BarChart;)V
    .locals 7

    new-instance v6, Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/renderer/StackedBarRenderer;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lp4/d;->getAnimator()Lcom/github/mikephil/charting/animation/ChartAnimator;

    move-result-object v3

    invoke-virtual {p1}, Lp4/d;->getViewPortHandler()Ly4/h;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;->mStackSize:I

    move-object v0, v6

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/renderer/StackedBarRenderer;-><init>(Landroid/content/Context;Lu4/a;Lcom/github/mikephil/charting/animation/ChartAnimator;Ly4/h;I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;->mGraphData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/renderer/StackedBarRenderer;->setStackedDataSize(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;->mBarChartColor:[I

    invoke-virtual {v6, v0}, Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/renderer/StackedBarRenderer;->setStackedBarColors([I)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070c89

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {v6, v0}, Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/renderer/StackedBarRenderer;->setBarRadius(F)V

    invoke-virtual {p1, v6}, Lp4/d;->setRenderer(Lx4/e;)V

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;->mNeedAnimation:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/SineInOut90;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/SineInOut90;-><init>()V

    const/16 v1, 0x1f4

    iget-object p1, p1, Lp4/d;->s:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {p1, v1, v0}, Lcom/github/mikephil/charting/animation/ChartAnimator;->animateY(ILcom/github/mikephil/charting/animation/e;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;->mNeedAnimation:Z

    :cond_0
    return-void
.end method

.method private getBarEntryFromData(Ljava/util/concurrent/CopyOnWriteArrayList;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/github/mikephil/charting/data/BarEntry;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/github/mikephil/charting/data/BarEntry;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;->mergeChartData()Ljava/util/ArrayList;

    move-result-object p1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;->mIsRtl:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;->getReverseXEntries(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private getFormattedDateKey(Ljava/util/Calendar;)Lcom/sec/android/app/sbrowser/common/utils/DateOnly;
    .locals 0

    new-instance p0, Lcom/sec/android/app/sbrowser/common/utils/DateOnly;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/DateOnly;-><init>(Ljava/util/Calendar;)V

    return-object p0
.end method

.method private getFormattedLabel(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;->mWeekdays:[I

    aget p0, p0, p1

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getMaxY(Ljava/util/ArrayList;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/github/mikephil/charting/data/BarEntry;",
            ">;)I"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p1, 0x0

    move v0, p1

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/BarEntry;

    iget-object v1, v1, Lcom/github/mikephil/charting/data/BarEntry;->d:[F

    const/4 v2, 0x0

    move v3, p1

    :goto_1
    array-length v4, v1

    if-ge v3, v4, :cond_1

    aget v4, v1, v3

    add-float/2addr v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    float-to-int v1, v2

    if-le v1, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private getReverseXEntries(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/github/mikephil/charting/data/BarEntry;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/github/mikephil/charting/data/BarEntry;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/BarEntry;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/BarEntry;

    int-to-float v2, v0

    iput v2, v1, Lcom/github/mikephil/charting/data/Entry;->c:F

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method private initDateKeyAndLabel()V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;->mDateKey:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;->mLabel:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x7

    if-ge v1, v2, :cond_0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    mul-int/lit8 v3, v1, -0x1

    const/4 v4, 0x5

    invoke-virtual {v2, v4, v3}, Ljava/util/Calendar;->add(II)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;->mDateKey:Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;->getFormattedDateKey(Ljava/util/Calendar;)Lcom/sec/android/app/sbrowser/common/utils/DateOnly;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;->mLabel:Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;->getFormattedLabel(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;->setDataRange()V

    return-void
.end method

.method private mergeChartData()Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/github/mikephil/charting/data/BarEntry;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x7

    if-ge v2, v3, :cond_6

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;->mGraphData:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v4, v3, [F

    new-instance v5, Lcom/github/mikephil/charting/data/BarEntry;

    int-to-float v6, v2

    const/4 v7, 0x0

    move v8, v1

    move v9, v7

    :goto_1
    if-ge v8, v3, :cond_0

    aget v10, v4, v8

    add-float/2addr v9, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_0
    invoke-direct {v5, v6, v9}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    iput-object v4, v5, Lcom/github/mikephil/charting/data/BarEntry;->d:[F

    move v6, v1

    move v8, v7

    move v9, v8

    :goto_2
    if-ge v6, v3, :cond_2

    aget v10, v4, v6

    cmpg-float v11, v10, v7

    if-gtz v11, :cond_1

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    add-float/2addr v8, v10

    goto :goto_3

    :cond_1
    add-float/2addr v9, v10

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_2
    iput v8, v5, Lcom/github/mikephil/charting/data/BarEntry;->f:F

    iput v9, v5, Lcom/github/mikephil/charting/data/BarEntry;->g:F

    iget-object v3, v5, Lcom/github/mikephil/charting/data/BarEntry;->d:[F

    if-eqz v3, :cond_5

    array-length v4, v3

    if-nez v4, :cond_3

    goto :goto_6

    :cond_3
    array-length v4, v3

    new-array v4, v4, [LP/d;

    iput-object v4, v5, Lcom/github/mikephil/charting/data/BarEntry;->e:[LP/d;

    neg-float v4, v8

    move v6, v1

    move v8, v7

    :goto_4
    iget-object v9, v5, Lcom/github/mikephil/charting/data/BarEntry;->e:[LP/d;

    array-length v10, v9

    if-ge v6, v10, :cond_5

    aget v10, v3, v6

    cmpg-float v11, v10, v7

    if-gez v11, :cond_4

    new-instance v11, LP/d;

    sub-float v10, v4, v10

    invoke-direct {v11, v4, v10}, LP/d;-><init>(FF)V

    aput-object v11, v9, v6

    move v4, v10

    goto :goto_5

    :cond_4
    new-instance v11, LP/d;

    add-float/2addr v10, v8

    invoke-direct {v11, v8, v10}, LP/d;-><init>(FF)V

    aput-object v11, v9, v6

    move v8, v10

    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_5
    :goto_6
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;->mKey:Ljava/lang/String;

    const-string v3, "pref_privacy_graph_privacy"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "GraphPreference"

    if-eqz v2, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "mergeChartData / graph size(num of function) : "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;->mGraphData:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;->mGraphData:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "function # "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " : order in a barchart"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_8
    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;->mDateKey:Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;->mDateKey:Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Entry : K : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/app/sbrowser/common/utils/DateOnly;

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/common/utils/DateOnly;->getDisplayString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", V : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/github/mikephil/charting/data/BarEntry;

    iget-object v6, v6, Lcom/github/mikephil/charting/data/BarEntry;->d:[F

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-float v5, v5

    aput v5, v6, v1

    goto :goto_8

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_7

    :cond_a
    return-object v0
.end method

.method private setChartData(Lcom/github/mikephil/charting/charts/BarChart;Ljava/util/concurrent/CopyOnWriteArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/mikephil/charting/charts/BarChart;",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/github/mikephil/charting/data/BarEntry;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;->getBarEntryFromData(Ljava/util/concurrent/CopyOnWriteArrayList;)Ljava/util/ArrayList;

    move-result-object p2

    new-instance v2, Lr4/b;

    const-string v3, "test"

    invoke-direct {v2, v3, p2}, Lr4/b;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;->mChartBarDataSet:Lr4/b;

    iput v1, v2, Lr4/b;->x:I

    iget v3, v2, Lr4/b;->y:I

    iput v3, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;->mStackSize:I

    new-instance v3, Lr4/a;

    new-array v4, v0, [Lv4/a;

    aput-object v2, v4, v1

    invoke-direct {v3, v4}, Lr4/a;-><init>([Lv4/a;)V

    const v2, 0x3ecccccd    # 0.4f

    iput v2, v3, Lr4/a;->j:F

    iget-object v2, v3, Lr4/d;->i:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lv4/c;

    check-cast v4, Lr4/b;

    iput-boolean v1, v4, Lr4/b;->j:Z

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Lcom/github/mikephil/charting/charts/BarChart;->setDrawValueAboveBar(Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;->mYLabelFormatter:Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/formatter/YLabelFormatter;

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;->getMaxY(Ljava/util/ArrayList;)I

    move-result p2

    invoke-virtual {v1, p1, p2}, Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/formatter/YLabelFormatter;->calculateLabel(Lcom/github/mikephil/charting/charts/BarChart;I)V

    invoke-virtual {p1, v3}, Lp4/d;->setData(Lr4/d;)V

    invoke-virtual {p1}, Lp4/c;->d()V

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f070c9a

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070c9c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070c9b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070c99

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;->mIsRtl:Z

    if-eqz p0, :cond_1

    int-to-float v6, v2

    int-to-float v7, v1

    int-to-float v8, p2

    int-to-float v9, v3

    iput-boolean v0, p1, Lp4/c;->v0:Z

    new-instance p0, Lp4/a;

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v4 .. v9}, Lp4/a;-><init>(Lp4/c;FFFF)V

    invoke-virtual {p1, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_1
    int-to-float p0, p2

    int-to-float p2, v1

    int-to-float v4, v2

    int-to-float v5, v3

    iput-boolean v0, p1, Lp4/c;->v0:Z

    new-instance v6, Lp4/a;

    move-object v0, v6

    move-object v1, p1

    move v2, p0

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lp4/a;-><init>(Lp4/c;FFFF)V

    invoke-virtual {p1, v6}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method private setDataRange()V
    .locals 5

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    const/4 v2, 0x5

    const/4 v3, -0x6

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->clear()V

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;->mPeriod:[Lcom/sec/android/app/sbrowser/common/utils/DateOnly;

    sget v3, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;->sSTART:I

    new-instance v4, Lcom/sec/android/app/sbrowser/common/utils/DateOnly;

    invoke-direct {v4, v2}, Lcom/sec/android/app/sbrowser/common/utils/DateOnly;-><init>(Ljava/util/Calendar;)V

    aput-object v4, v1, v3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;->mPeriod:[Lcom/sec/android/app/sbrowser/common/utils/DateOnly;

    sget v1, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;->sEND:I

    new-instance v2, Lcom/sec/android/app/sbrowser/common/utils/DateOnly;

    invoke-direct {v2, v0}, Lcom/sec/android/app/sbrowser/common/utils/DateOnly;-><init>(Ljava/util/Calendar;)V

    aput-object v2, p0, v1

    return-void
.end method

.method private setGraphColor()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;->mKey:Ljava/lang/String;

    const-string v1, "pref_privacy_graph_clean"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;->mCleanBarChartColors:[I

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;->mBarChartColor:[I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;->mPrivacyBarChartColors:[I

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;->mBarChartColor:[I

    :goto_0
    return-void
.end method


# virtual methods
.method public drawGraph()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;->mChart:Lcom/github/mikephil/charting/charts/BarChart;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;->mIsGraphOff:Z

    if-eqz v1, :cond_1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;->mNeedAnimation:Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;->initDateKeyAndLabel()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;->mChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;->configAxis(Lcom/github/mikephil/charting/charts/BarChart;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;->mChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;->configChartRenderer(Lcom/github/mikephil/charting/charts/BarChart;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;->mChart:Lcom/github/mikephil/charting/charts/BarChart;

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;->setChartData(Lcom/github/mikephil/charting/charts/BarChart;Ljava/util/concurrent/CopyOnWriteArrayList;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;->drawSummary()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;->setGraphColor()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;->mChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;->configChartRendererPost(Lcom/github/mikephil/charting/charts/BarChart;)V

    return-void
.end method

.method public drawSummary()V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;->mSummaryView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;->mSubSummaryView:Landroid/widget/TextView;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;->mSummary:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;->mIsSecretModeOn:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070cbf

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;->mSummaryView:Landroid/widget/TextView;

    int-to-float v0, v0

    invoke-virtual {v2, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;->mSummaryView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0600f8

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;->mSummaryContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070c97

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070c96

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v5

    invoke-virtual {v0, v4, v2, v5, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;->mSummaryContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;->mSummaryView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;->mSummary:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;->mSummaryView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;->mSubSummary:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;->mSubSummaryView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;->mSubSummary:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;->mSubSummaryView:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_4
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;->mSubSummaryView:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public onBindViewHolder(Lw2/H;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Lw2/H;)V

    const v0, 0x7f0b0557

    invoke-virtual {p1, v0}, Lw2/H;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;->mSummaryContainer:Landroid/widget/LinearLayout;

    const v0, 0x7f0b0556

    invoke-virtual {p1, v0}, Lw2/H;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;->mSummaryView:Landroid/widget/TextView;

    const v0, 0x7f0b0555

    invoke-virtual {p1, v0}, Lw2/H;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;->mSubSummaryView:Landroid/widget/TextView;

    const v0, 0x7f0b0157

    invoke-virtual {p1, v0}, Lw2/H;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/github/mikephil/charting/charts/BarChart;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;->mChart:Lcom/github/mikephil/charting/charts/BarChart;

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;->mIsSecretModeOn:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;->drawSummary()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;->drawGraph()V

    :goto_0
    return-void
.end method

.method public setGraphDataDump(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/util/Map<",
            "Lcom/sec/android/app/sbrowser/common/utils/DateOnly;",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;->mGraphData:Ljava/util/ArrayList;

    return-void
.end method

.method public setGraphOff(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;->mIsGraphOff:Z

    return-void
.end method

.method public setGraphSubSummary(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;->mSubSummary:Ljava/lang/String;

    return-void
.end method

.method public setGraphSummary(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;->mSummary:Ljava/lang/String;

    return-void
.end method

.method public setSecretModeStatus(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphPreference;->mIsSecretModeOn:Z

    return-void
.end method
