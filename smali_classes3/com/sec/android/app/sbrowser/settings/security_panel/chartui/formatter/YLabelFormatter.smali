.class public Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/formatter/YLabelFormatter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls4/b;


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mCount:I

.field protected mDivisor:I

.field protected mIsKoreanByLocale:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/formatter/YLabelFormatter;->mDivisor:I

    iput v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/formatter/YLabelFormatter;->mCount:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/formatter/YLabelFormatter;->mContext:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/formatter/YLabelFormatter;->mIsKoreanByLocale:Z

    return-void
.end method

.method private getLabelforLocaleLanguage(F)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/formatter/YLabelFormatter;->mIsKoreanByLocale:Z

    const-string v2, "%.0f"

    const/high16 v3, 0x447a0000    # 1000.0f

    if-eqz v1, :cond_1

    const v1, 0x461c4000    # 10000.0f

    cmpl-float v4, p1, v1

    if-ltz v4, :cond_0

    div-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/formatter/YLabelFormatter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f140e4f

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    cmpl-float v1, p1, v3

    if-ltz v1, :cond_2

    div-float/2addr p1, v3

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/formatter/YLabelFormatter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f140e4e

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    cmpl-float v1, p1, v3

    if-ltz v1, :cond_2

    div-float/2addr p1, v3

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/formatter/YLabelFormatter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f140e4d

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    float-to-int p1, p1

    iget p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/formatter/YLabelFormatter;->mDivisor:I

    div-int/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%d"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public calculateLabel(Lcom/github/mikephil/charting/charts/BarChart;I)V
    .locals 2

    const/4 v0, 0x1

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lp4/c;->getAxisRight()Lq4/r;

    move-result-object p2

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {p2, v1}, Lq4/a;->e(F)V

    invoke-virtual {p1}, Lp4/c;->getAxisLeft()Lq4/r;

    move-result-object p2

    invoke-virtual {p2, v1}, Lq4/a;->e(F)V

    invoke-virtual {p1}, Lp4/c;->getAxisRight()Lq4/r;

    move-result-object p2

    const/4 v1, 0x3

    invoke-virtual {p2, v1}, Lq4/a;->g(I)V

    invoke-virtual {p1}, Lp4/c;->getAxisLeft()Lq4/r;

    move-result-object p1

    invoke-virtual {p1, v1}, Lq4/a;->g(I)V

    iput v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/formatter/YLabelFormatter;->mDivisor:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/formatter/YLabelFormatter;->calculateYLabelByUnit(Lcom/github/mikephil/charting/charts/BarChart;II)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/formatter/YLabelFormatter;->mDivisor:I

    :goto_0
    return-void
.end method

.method public calculateYLabelByUnit(Lcom/github/mikephil/charting/charts/BarChart;II)I
    .locals 4

    div-int/2addr p2, p3

    const/4 p0, 0x1

    add-int/2addr p2, p0

    int-to-double v0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->log10(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    double-to-int v0, v0

    move v1, p0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_0

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    add-int/2addr p2, v2

    sub-int/2addr p2, p0

    div-int/2addr p2, v2

    mul-int/2addr p2, v2

    :goto_1
    const/4 v0, 0x3

    :goto_2
    if-le v0, p0, :cond_2

    rem-int v1, p2, v0

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lp4/c;->getAxisRight()Lq4/r;

    move-result-object v1

    mul-int/2addr p2, p3

    int-to-float p2, p2

    invoke-virtual {v1, p2}, Lq4/a;->e(F)V

    invoke-virtual {p1}, Lp4/c;->getAxisLeft()Lq4/r;

    move-result-object v1

    invoke-virtual {v1, p2}, Lq4/a;->e(F)V

    invoke-virtual {p1}, Lp4/c;->getAxisRight()Lq4/r;

    move-result-object p2

    add-int/2addr v0, p0

    invoke-virtual {p2, v0}, Lq4/a;->g(I)V

    invoke-virtual {p1}, Lp4/c;->getAxisLeft()Lq4/r;

    move-result-object p0

    invoke-virtual {p0, v0}, Lq4/a;->g(I)V

    return p3

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_2
    add-int/2addr p2, v2

    goto :goto_1
.end method

.method public getFormattedValue(FLq4/a;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    const-string v1, ""

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iput v2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/formatter/YLabelFormatter;->mCount:I

    return-object v1

    :cond_0
    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/formatter/YLabelFormatter;->mCount:I

    iget p2, p2, Lq4/a;->n:I

    if-ge v0, p2, :cond_1

    add-int/2addr v0, v2

    iput v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/formatter/YLabelFormatter;->mCount:I

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/formatter/YLabelFormatter;->getLabelforLocaleLanguage(F)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v1
.end method
