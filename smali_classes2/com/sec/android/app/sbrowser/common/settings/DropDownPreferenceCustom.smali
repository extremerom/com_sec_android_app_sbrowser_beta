.class public Lcom/sec/android/app/sbrowser/common/settings/DropDownPreferenceCustom;
.super Landroidx/preference/Preference;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/settings/PreferenceBase;


# instance fields
.field private mDefaultValue:I

.field private mFuncIndexToValue:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mFuncValueToIndex:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mSALoggingDelegate:Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;

.field private mSALoggingDetails:[Ljava/lang/CharSequence;

.field private mSALoggingEventId:Ljava/lang/String;

.field private mSALoggingEventWidgetId:Ljava/lang/String;

.field private mSALoggingStatusId:Ljava/lang/String;

.field protected mSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

.field private mTextArrayResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/common/settings/DropDownPreferenceCustom;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/common/settings/DropDownPreferenceCustom;->mTextArrayResId:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/common/settings/DropDownPreferenceCustom;->mDefaultValue:I

    new-instance v1, Lcom/sec/android/app/sbrowser/common/settings/DropDownPreferenceCustom$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/common/settings/DropDownPreferenceCustom$1;-><init>(Lcom/sec/android/app/sbrowser/common/settings/DropDownPreferenceCustom;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/common/settings/DropDownPreferenceCustom;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    sget-object v1, Lcom/sec/android/app/sbrowser/R$styleable;->PreferenceSALog:[I

    invoke-virtual {p1, p2, v1, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/settings/DropDownPreferenceCustom;->mSALoggingEventId:Ljava/lang/String;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/settings/DropDownPreferenceCustom;->mSALoggingEventWidgetId:Ljava/lang/String;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/settings/DropDownPreferenceCustom;->mSALoggingStatusId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/settings/DropDownPreferenceCustom;->mSALoggingDetails:[Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/settings/DropDownPreferenceCustom;->mTextArrayResId:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/settings/DropDownPreferenceCustom;->mDefaultValue:I

    new-instance p1, Lcom/sec/android/app/sbrowser/common/settings/DropDownPreferenceCustom$1;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/common/settings/DropDownPreferenceCustom$1;-><init>(Lcom/sec/android/app/sbrowser/common/settings/DropDownPreferenceCustom;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/settings/DropDownPreferenceCustom;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-void
.end method

.method private createAdapter()Landroid/widget/ArrayAdapter;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/sec/android/app/sbrowser/common/settings/DropDownPreferenceCustom$2;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/sbrowser/common/settings/DropDownPreferenceCustom;->mTextArrayResId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0e0888

    invoke-direct {v0, p0, v1, v3, v2}, Lcom/sec/android/app/sbrowser/common/settings/DropDownPreferenceCustom$2;-><init>(Lcom/sec/android/app/sbrowser/common/settings/DropDownPreferenceCustom;Landroid/content/Context;I[Ljava/lang/String;)V

    return-object v0
.end method

.method public static bridge synthetic e(Lcom/sec/android/app/sbrowser/common/settings/DropDownPreferenceCustom;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/settings/DropDownPreferenceCustom;->mSALoggingEventWidgetId:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/sec/android/app/sbrowser/common/settings/DropDownPreferenceCustom;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/app/sbrowser/common/settings/DropDownPreferenceCustom;->sendSAEventLog(Ljava/lang/String;IZ)V

    return-void
.end method

.method private getSALoggingDetail(I)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/settings/DropDownPreferenceCustom;->mSALoggingDetails:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    aget-object p0, v0, p1

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/settings/DropDownPreferenceCustom;->convertValueToIndex(I)I

    move-result p1

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1, v0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    new-instance v0, Ljava/util/Locale;

    const-string v2, ""

    invoke-direct {v0, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/settings/DropDownPreferenceCustom;->mTextArrayResId:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, p1

    return-object p0
.end method

.method private sendSAEventLog(Ljava/lang/String;IZ)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/settings/DropDownPreferenceCustom;->mSALoggingDelegate:Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;

    if-eqz v0, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/settings/DropDownPreferenceCustom;->mSALoggingDelegate:Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;->getScreenID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    if-eqz p3, :cond_2

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/common/settings/DropDownPreferenceCustom;->getSALoggingDetail(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p1, p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private sendSAStatusLog()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/settings/DropDownPreferenceCustom;->mSALoggingStatusId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/settings/DropDownPreferenceCustom;->mSALoggingStatusId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/settings/DropDownPreferenceCustom;->getValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/common/settings/DropDownPreferenceCustom;->getSALoggingDetail(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public convertIndexToValue(I)I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/settings/DropDownPreferenceCustom;->mFuncIndexToValue:Ljava/util/function/Function;

    if-eqz p0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    return p1
.end method

.method public convertValueToIndex(I)I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/settings/DropDownPreferenceCustom;->mFuncValueToIndex:Ljava/util/function/Function;

    if-eqz p0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    return p1
.end method

.method public getScreenID()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/settings/DropDownPreferenceCustom;->mSALoggingDelegate:Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;->getScreenID()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget v0, p0, Lcom/sec/android/app/sbrowser/common/settings/DropDownPreferenceCustom;->mTextArrayResId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/settings/DropDownPreferenceCustom;->getValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/settings/DropDownPreferenceCustom;->convertValueToIndex(I)I

    move-result v0

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/sbrowser/common/settings/DropDownPreferenceCustom;->mTextArrayResId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    aget-object v0, v1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f060206

    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result p0

    if-nez p0, :cond_0

    const p0, 0xffffff

    and-int/2addr p0, v0

    const/high16 v0, 0x66000000

    or-int/2addr v0, p0

    :cond_0
    new-instance p0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {p0, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2, v0, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/common/settings/DropDownPreferenceCustom;->mDefaultValue:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->getPersistedInt(I)I

    move-result p0

    return p0
.end method

.method public onBindViewHolder(Lw2/H;)V
    .locals 4
    .param p1    # Lw2/H;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget v0, p0, Lcom/sec/android/app/sbrowser/common/settings/DropDownPreferenceCustom;->mTextArrayResId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroidx/appcompat/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/settings/DropDownPreferenceCustom;->mSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/settings/DropDownPreferenceCustom;->createAdapter()Landroid/widget/ArrayAdapter;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/AppCompatSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/settings/DropDownPreferenceCustom;->mSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/settings/DropDownPreferenceCustom;->getValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/common/settings/DropDownPreferenceCustom;->convertValueToIndex(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/AdapterView;->setSelection(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/settings/DropDownPreferenceCustom;->mSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/settings/DropDownPreferenceCustom;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v2}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/settings/DropDownPreferenceCustom;->mSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/settings/DropDownPreferenceCustom;->mSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/settings/DropDownPreferenceCustom;->mSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    const v1, 0x7f080707

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatSpinner;->setPopupBackgroundResource(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/settings/DropDownPreferenceCustom;->mSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    iget-object v1, p1, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingStart()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatSpinner;->setDropDownHorizontalOffset(I)V

    iget-object v0, p1, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/settings/DropDownPreferenceCustom;->mSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :cond_0
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Lw2/H;)V

    return-void
.end method

.method public onClick()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/settings/DropDownPreferenceCustom;->mSALoggingEventId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/settings/DropDownPreferenceCustom;->getValue()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/settings/DropDownPreferenceCustom;->sendSAEventLog(Ljava/lang/String;IZ)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/settings/DropDownPreferenceCustom;->mSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v0, v2}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/settings/DropDownPreferenceCustom;->mSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatSpinner;->performClick()Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/settings/DropDownPreferenceCustom;->mSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    return-void
.end method

.method public onSetInitialValue(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onSetInitialValue(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lcom/sec/android/app/sbrowser/common/settings/DropDownPreferenceCustom;->mDefaultValue:I

    return-void
.end method

.method public setEntries(I)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/common/settings/DropDownPreferenceCustom;->mTextArrayResId:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/settings/DropDownPreferenceCustom;->mTextArrayResId:I

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public setFuncIndexToValue(Ljava/util/function/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/settings/DropDownPreferenceCustom;->mFuncIndexToValue:Ljava/util/function/Function;

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public setFuncValueToIndex(Ljava/util/function/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/settings/DropDownPreferenceCustom;->mFuncValueToIndex:Ljava/util/function/Function;

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public setSALoggingDelegate(Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/settings/DropDownPreferenceCustom;->mSALoggingDelegate:Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;

    return-void
.end method

.method public setValue(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/settings/DropDownPreferenceCustom;->getValue()I

    move-result v0

    if-eq p1, v0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->persistInt(I)Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/settings/DropDownPreferenceCustom;->sendSAStatusLog()V

    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method
