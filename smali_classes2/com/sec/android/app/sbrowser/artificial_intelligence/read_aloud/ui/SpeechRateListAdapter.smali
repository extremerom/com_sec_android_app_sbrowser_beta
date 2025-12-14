.class Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/SpeechRateListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/SpeechRateListAdapter$Delegate;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# instance fields
.field private final mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/SpeechRateListAdapter$Delegate;

.field private mTheme:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;ILcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/SpeechRateListAdapter$Delegate;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;I",
            "Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/SpeechRateListAdapter$Delegate;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/SpeechRateListAdapter;->mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/SpeechRateListAdapter$Delegate;

    iput p4, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/SpeechRateListAdapter;->mTheme:I

    return-void
.end method

.method private getCheckedTextColor()I
    .locals 1
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f060206

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    return p0
.end method

.method private getCustomView(I)Landroid/view/View;
    .locals 3

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e060f

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SeslCheckedTextView;

    invoke-interface {p0, p1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudSpeechRate;->getText(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getReadAloudSpeechRate()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/ArrayAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v1

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/SpeechRateListAdapter;->getTextColor(Z)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/SpeechRateListAdapter;->getTextAppearance(Z)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextAppearance(I)V

    return-object v0
.end method

.method private getSpeechRateTextColor()I
    .locals 2
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    iget v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/SpeechRateListAdapter;->mTheme:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const v0, 0x7f060906

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    const v0, 0x7f060905

    goto :goto_0

    :cond_1
    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    const v0, 0x7f060907

    goto :goto_0

    :cond_2
    const v0, 0x7f060904

    :goto_0
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    return p0
.end method

.method private getTextAppearance(Z)I
    .locals 0

    if-eqz p1, :cond_0

    const p0, 0x7f1502eb

    goto :goto_0

    :cond_0
    const p0, 0x7f1502ec

    :goto_0
    return p0
.end method

.method private getTextColor(Z)I
    .locals 0
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/SpeechRateListAdapter;->getCheckedTextColor()I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/SpeechRateListAdapter;->getUncheckedTextColor()I

    move-result p0

    :goto_0
    return p0
.end method

.method private getUncheckedTextColor()I
    .locals 2
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    iget v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/SpeechRateListAdapter;->mTheme:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const v0, 0x7f060911

    goto :goto_0

    :cond_0
    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    const v0, 0x7f060913

    goto :goto_0

    :cond_1
    const v0, 0x7f060106

    :goto_0
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    return p0
.end method


# virtual methods
.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/SpeechRateListAdapter;->getCustomView(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    instance-of p3, p2, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz p3, :cond_0

    move-object p3, p2

    check-cast p3, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-interface {p0, p1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudSpeechRate;->getText(F)I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/SpeechRateListAdapter;->getSpeechRateTextColor()I

    move-result p0

    invoke-virtual {p3, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-object p2
.end method

.method public notifyDataSetChanged()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/SpeechRateListAdapter;->mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/SpeechRateListAdapter$Delegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/SpeechRateListAdapter$Delegate;->dismissDropDown()V

    invoke-super {p0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public updateTheme(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/SpeechRateListAdapter;->mTheme:I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/SpeechRateListAdapter;->notifyDataSetChanged()V

    return-void
.end method
