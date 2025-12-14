.class public Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;
.super Landroidx/preference/Preference;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/settings/PreferenceBase;
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom$SavedState;
    }
.end annotation


# instance fields
.field private mIconImageView:Landroid/widget/ImageView;

.field private final mIconRes:I

.field private mMax:F

.field private mMin:F

.field private mSALoggingDelegate:Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;

.field private mSALoggingEventId:Ljava/lang/String;

.field private mSALoggingStatusId:Ljava/lang/String;

.field private mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

.field mSeekBarParent:Lcom/sec/android/app/sbrowser/common/model/main/SeekbarContainer;

.field private mStep:F

.field private mSummary:Ljava/lang/CharSequence;

.field private mSummaryView:Landroid/widget/TextView;

.field private mSummaryVisible:Z

.field private mValue:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSelectable(Z)V

    sget-object v1, Lcom/sec/android/app/sbrowser/R$styleable;->SeekBarPreferenceCustom:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p3

    const/4 v1, 0x2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p3, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;->mMin:F

    const/4 v3, 0x1

    invoke-virtual {p3, v3, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;->mMax:F

    const/4 v3, 0x3

    invoke-virtual {p3, v3, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;->mStep:F

    const/4 v2, 0x4

    invoke-virtual {p3, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;->mSummaryVisible:Z

    invoke-virtual {p3, v0, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;->mIconRes:I

    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    sget-object p3, Lcom/sec/android/app/sbrowser/R$styleable;->PreferenceSALog:[I

    invoke-virtual {p1, p2, p3, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;->mSALoggingEventId:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;->mSALoggingStatusId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    const p1, 0x7f0e0579

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method public static synthetic access$000(Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public static bridge synthetic e(Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;)F
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;->mMax:F

    return p0
.end method

.method public static bridge synthetic f(Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;)F
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;->mMin:F

    return p0
.end method

.method public static bridge synthetic g(Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;)Landroidx/appcompat/widget/SeslSeekBar;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    return-object p0
.end method

.method public static bridge synthetic h(Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;)F
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;->mStep:F

    return p0
.end method

.method public static bridge synthetic k(Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;->mSummaryView:Landroid/widget/TextView;

    return-object p0
.end method

.method public static bridge synthetic l(Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;)F
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;->mValue:F

    return p0
.end method

.method public static bridge synthetic m(Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;->mSummaryView:Landroid/widget/TextView;

    return-void
.end method

.method public static bridge synthetic n(Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;I)F
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;->seekBarProgressToPrefValue(I)F

    move-result p0

    return p0
.end method

.method public static bridge synthetic o(Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;Landroidx/appcompat/widget/SeslSeekBar;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;->syncProgress(Landroidx/appcompat/widget/SeslSeekBar;)V

    return-void
.end method

.method private prefValueToSeekBarProgress(F)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;->mMin:F

    sub-float/2addr p1, v0

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;->mStep:F

    div-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method private seekBarProgressToPrefValue(I)F
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;->mMin:F

    int-to-float p1, p1

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;->mStep:F

    mul-float/2addr p1, p0

    add-float/2addr p1, v0

    return p1
.end method

.method private sendSAEventLog(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;->mSALoggingDelegate:Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;->mSALoggingEventId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;->mSALoggingDelegate:Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;->getScreenID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;->mSALoggingEventId:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private sendSAStatusLog(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;->mSALoggingStatusId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;->mSALoggingStatusId:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setValue(F)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;->setValue(FZ)V

    return-void
.end method

.method private syncProgress(Landroidx/appcompat/widget/SeslSeekBar;)V
    .locals 2

    invoke-virtual {p1}, Lt/J0;->getProgress()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;->seekBarProgressToPrefValue(I)F

    move-result v0

    iget v1, p0, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;->mValue:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;->setValue(FZ)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;->mValue:F

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;->prefValueToSeekBarProgress(F)I

    move-result p0

    invoke-virtual {p1, p0}, Lt/J0;->setProgress(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public callChangeListener(Ljava/lang/Object;)Z
    .locals 4

    move-object v0, p1

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;->sendSAEventLog(I)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;->sendSAStatusLog(I)V

    invoke-super {p0, p1}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;->mSummary:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public onAttachedToHierarchy(Lw2/F;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onAttachedToHierarchy(Lw2/F;)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    :cond_0
    return-void
.end method

.method public onBindViewHolder(Lw2/H;)V
    .locals 6

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Lw2/H;)V

    iget-object v0, p1, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    const v1, 0x7f0b0ad7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SeslSeekBar;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    iget-object v0, p1, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    const v1, 0x7f0b0adb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/model/main/SeekbarContainer;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;->mSeekBarParent:Lcom/sec/android/app/sbrowser/common/model/main/SeekbarContainer;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    new-instance v2, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom$1;-><init>(Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;)V

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/model/main/SeekbarContainer;->setSeekBar(Landroidx/appcompat/widget/SeslSeekBar;Lcom/sec/android/app/sbrowser/common/model/main/SeekbarAccessibilityDelegate;)V

    iget-object v0, p1, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    const v1, 0x1020010

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;->mSummaryView:Landroid/widget/TextView;

    iget-object v0, p1, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f06084c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    const v1, 0x66ffffff

    and-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;->mSummaryView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;->mSummaryView:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;->mSummaryVisible:Z

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;->mSummaryView:Landroid/widget/TextView;

    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v1

    const-wide/16 v4, 0x1

    invoke-virtual {v1, v4, v5}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;->mSummaryView:Landroid/widget/TextView;

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v0, v1, v4}, Landroid/view/View;->measure(II)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;->mSummaryView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070c74

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;->mSummaryView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMinWidth(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;->mSummaryView:Landroid/widget/TextView;

    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v1

    iget v4, p0, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;->mValue:F

    float-to-double v4, v4

    invoke-virtual {v1, v4, v5}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    new-instance v1, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom$2;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom$2;-><init>(Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;Lw2/H;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SeslSeekBar;->setOnSeekBarChangeListener(Lt/X0;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    iget v1, p0, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;->mMax:F

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;->prefValueToSeekBarProgress(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lt/J0;->setMax(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    iget v1, p0, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;->mValue:F

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;->prefValueToSeekBarProgress(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lt/J0;->setProgress(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {p0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    new-instance v0, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom$3;-><init>(Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    iget-object v0, p1, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    const v1, 0x7f0b0ad9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p1, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    const v0, 0x1020006

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;->mIconImageView:Landroid/widget/ImageView;

    if-eqz p1, :cond_3

    iget v0, p0, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;->mIconRes:I

    if-eqz v0, :cond_3

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;->mIconImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method public onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    invoke-virtual {p1, p2, p0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1    # Landroid/os/Parcelable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_0
    check-cast p1, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom$SavedState;

    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroidx/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom$SavedState;->b(Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom$SavedState;)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;->mMin:F

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom$SavedState;->a(Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom$SavedState;)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;->mMax:F

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom$SavedState;->c(Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom$SavedState;)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;->mStep:F

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom$SavedState;->d(Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom$SavedState;)F

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;->mValue:F

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    invoke-super {p0}, Landroidx/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/preference/Preference;->isPersistent()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom$SavedState;

    check-cast v0, Landroid/os/Parcelable;

    invoke-direct {v1, v0}, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget v0, p0, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;->mMin:F

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom$SavedState;->f(Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom$SavedState;F)V

    iget v0, p0, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;->mMax:F

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom$SavedState;->e(Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom$SavedState;F)V

    iget v0, p0, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;->mStep:F

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom$SavedState;->g(Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom$SavedState;F)V

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;->mValue:F

    invoke-static {v1, p0}, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom$SavedState;->h(Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom$SavedState;F)V

    move-object v0, v1

    :cond_0
    check-cast v0, Landroid/os/Parcelable;

    return-object v0
.end method

.method public onSetInitialValue(ZLjava/lang/Object;)V
    .locals 0

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;->mValue:F

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->getPersistedFloat(F)F

    move-result p1

    goto :goto_0

    :cond_0
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p1

    :goto_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;->setValue(F)V

    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;->mValue:F

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;->prefValueToSeekBarProgress(F)I

    move-result p1

    invoke-virtual {p2, p1}, Lt/J0;->setProgress(I)V

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;->mSummaryView:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object p2

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;->mValue:F

    float-to-double v0, p0

    invoke-virtual {p2, v0, v1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public setSALoggingDelegate(Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;->mSALoggingDelegate:Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;

    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;->mSummary:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;->mSummary:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;->mSummary:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;->mSummaryView:Landroid/widget/TextView;

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;->mSummaryVisible:Z

    if-eqz p1, :cond_5

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;->mSummaryVisible:Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;->mSummaryView:Landroid/widget/TextView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;->mSummaryVisible:Z

    if-nez p1, :cond_4

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;->mSummaryVisible:Z

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;->mSummaryView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;->mSummaryView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;->getSummary()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public setValue(FZ)V
    .locals 2

    iget v0, p0, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;->mMax:F

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    move p1, v0

    :cond_0
    iget v0, p0, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;->mMin:F

    cmpg-float v1, p1, v0

    if-gez v1, :cond_1

    move p1, v0

    :cond_1
    iget v0, p0, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;->mValue:F

    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_2

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;->mValue:F

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->persistFloat(F)Z

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_2
    return-void
.end method
