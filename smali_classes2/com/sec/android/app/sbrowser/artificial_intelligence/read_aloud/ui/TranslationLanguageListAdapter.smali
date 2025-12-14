.class Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/TranslationLanguageListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/TranslationLanguageListAdapter$Delegate;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/TranslationLanguageListAdapter$Delegate;

.field private mTheme:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;ILcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/TranslationLanguageListAdapter$Delegate;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/TranslationLanguageListAdapter$Delegate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/TranslationLanguageListAdapter$Delegate;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/TranslationLanguageListAdapter;->mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/TranslationLanguageListAdapter$Delegate;

    iput p4, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/TranslationLanguageListAdapter;->mTheme:I

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/TranslationLanguageListAdapter;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/TranslationLanguageListAdapter;->lambda$getCustomView$0(ILandroid/view/View;)V

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
    .locals 4

    invoke-interface {p0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e0485

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/p;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/p;-><init>(IILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0b0678

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/TranslationLanguageListAdapter;->getUncheckedTextColor()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const v3, 0x7f0e0611

    invoke-static {v0, v3, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SeslCheckedTextView;

    invoke-interface {p0, p1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/TranslationLanguageListAdapter;->getDisplayLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getReadAloudLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/ArrayAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v2

    if-ne p1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/TranslationLanguageListAdapter;->getTextColor(Z)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/TranslationLanguageListAdapter;->getTextAppearance(Z)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextAppearance(I)V

    return-object v0
.end method

.method private getDisplayLanguage(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/LangPackUtils;->getInstance()Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/LangPackUtils;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/LangPackUtils;->getDisplayName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getLanguageTextColor()I
    .locals 2
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    iget v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/TranslationLanguageListAdapter;->mTheme:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const v0, 0x7f06091a

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    const v0, 0x7f060919

    goto :goto_0

    :cond_1
    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    const v0, 0x7f06091b

    goto :goto_0

    :cond_2
    const v0, 0x7f060918

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

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/TranslationLanguageListAdapter;->getCheckedTextColor()I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/TranslationLanguageListAdapter;->getUncheckedTextColor()I

    move-result p0

    :goto_0
    return p0
.end method

.method private getUncheckedTextColor()I
    .locals 2
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    iget v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/TranslationLanguageListAdapter;->mTheme:I

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

.method private synthetic lambda$getCustomView$0(ILandroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/TranslationLanguageListAdapter;->mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/TranslationLanguageListAdapter$Delegate;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/TranslationLanguageListAdapter$Delegate;->setSelection(I)V

    return-void
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

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/TranslationLanguageListAdapter;->getCustomView(I)Landroid/view/View;

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

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/TranslationLanguageListAdapter;->getDisplayLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/TranslationLanguageListAdapter;->getLanguageTextColor()I

    move-result p0

    invoke-virtual {p3, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-object p2
.end method

.method public notifyDataSetChanged()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/TranslationLanguageListAdapter;->mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/TranslationLanguageListAdapter$Delegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/TranslationLanguageListAdapter$Delegate;->dismissDropDown()V

    invoke-super {p0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public updateTheme(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/TranslationLanguageListAdapter;->mTheme:I

    return-void
.end method
