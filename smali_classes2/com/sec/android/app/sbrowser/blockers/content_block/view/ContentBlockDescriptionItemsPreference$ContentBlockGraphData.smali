.class Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDescriptionItemsPreference$ContentBlockGraphData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDescriptionItemsPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ContentBlockGraphData"
.end annotation


# instance fields
.field private mEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/github/mikephil/charting/data/BarEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mKeys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/common/utils/DateOnly;",
            ">;"
        }
    .end annotation
.end field

.field private mLabels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mWeekdayIds:[I

.field private mXAxisFormatter:Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/formatter/WeekChartXLabelFormatter;

.field private mYAxisFormatter:Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/formatter/YLabelFormatter;

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDescriptionItemsPreference;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDescriptionItemsPreference;Landroid/content/Context;)V
    .locals 5

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDescriptionItemsPreference$ContentBlockGraphData;->this$0:Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDescriptionItemsPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x7

    new-array v0, p1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDescriptionItemsPreference$ContentBlockGraphData;->mWeekdayIds:[I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDescriptionItemsPreference$ContentBlockGraphData;->mKeys:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDescriptionItemsPreference$ContentBlockGraphData;->mLabels:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDescriptionItemsPreference$ContentBlockGraphData;->mEntries:Ljava/util/ArrayList;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    mul-int/lit8 v3, v1, -0x1

    const/4 v4, 0x5

    invoke-virtual {v2, v4, v3}, Ljava/util/Calendar;->add(II)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDescriptionItemsPreference$ContentBlockGraphData;->mKeys:Ljava/util/ArrayList;

    new-instance v4, Lcom/sec/android/app/sbrowser/common/utils/DateOnly;

    invoke-direct {v4, v2}, Lcom/sec/android/app/sbrowser/common/utils/DateOnly;-><init>(Ljava/util/Calendar;)V

    invoke-virtual {v3, v0, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDescriptionItemsPreference$ContentBlockGraphData;->mLabels:Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDescriptionItemsPreference$ContentBlockGraphData;->getLabelForDate(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/formatter/WeekChartXLabelFormatter;

    invoke-direct {p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/formatter/WeekChartXLabelFormatter;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDescriptionItemsPreference$ContentBlockGraphData;->mXAxisFormatter:Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/formatter/WeekChartXLabelFormatter;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDescriptionItemsPreference$ContentBlockGraphData;->mLabels:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/formatter/WeekChartXLabelFormatter;->setLabels(Ljava/util/ArrayList;)V

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/common/utils/LocaleUtils;->isKoreanLanguageByLocale(Landroid/content/Context;)Z

    move-result p1

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/formatter/YLabelFormatter;

    invoke-direct {v0, p2, p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/formatter/YLabelFormatter;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDescriptionItemsPreference$ContentBlockGraphData;->mYAxisFormatter:Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/formatter/YLabelFormatter;

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

.method private getLabelForDate(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDescriptionItemsPreference$ContentBlockGraphData;->this$0:Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDescriptionItemsPreference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDescriptionItemsPreference$ContentBlockGraphData;->mWeekdayIds:[I

    aget p0, p0, p1

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getEntries()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/github/mikephil/charting/data/BarEntry;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDescriptionItemsPreference$ContentBlockGraphData;->mEntries:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getXAxisFormatter()Ls4/b;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDescriptionItemsPreference$ContentBlockGraphData;->mXAxisFormatter:Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/formatter/WeekChartXLabelFormatter;

    return-object p0
.end method

.method public getYAxisFormatter()Ls4/b;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDescriptionItemsPreference$ContentBlockGraphData;->mYAxisFormatter:Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/formatter/YLabelFormatter;

    return-object p0
.end method

.method public setGraphData(Lcom/github/mikephil/charting/charts/BarChart;[I)V
    .locals 9

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/LocalizationUtils;->isLayoutRtl()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    array-length v3, p2

    sub-int/2addr v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    const/4 v4, -0x1

    if-eqz v0, :cond_1

    move v5, v4

    goto :goto_1

    :cond_1
    array-length v5, p2

    :goto_1
    if-eqz v0, :cond_2

    move v2, v4

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDescriptionItemsPreference$ContentBlockGraphData;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    move v0, v1

    :goto_2
    if-eq v3, v5, :cond_4

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDescriptionItemsPreference$ContentBlockGraphData;->mEntries:Ljava/util/ArrayList;

    new-instance v6, Lcom/github/mikephil/charting/data/BarEntry;

    int-to-float v7, v0

    aget v8, p2, v3

    int-to-float v8, v8

    invoke-direct {v6, v7, v8}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget v4, p2, v3

    if-ge v1, v4, :cond_3

    move v1, v4

    :cond_3
    add-int/2addr v3, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDescriptionItemsPreference$ContentBlockGraphData;->mYAxisFormatter:Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/formatter/YLabelFormatter;

    invoke-virtual {p0, p1, v1}, Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/formatter/YLabelFormatter;->calculateLabel(Lcom/github/mikephil/charting/charts/BarChart;I)V

    return-void
.end method
