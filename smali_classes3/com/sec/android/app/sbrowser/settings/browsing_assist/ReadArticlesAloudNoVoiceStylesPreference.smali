.class public Lcom/sec/android/app/sbrowser/settings/browsing_assist/ReadArticlesAloudNoVoiceStylesPreference;
.super Landroidx/preference/Preference;
.source "SourceFile"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/browsing_assist/ReadArticlesAloudNoVoiceStylesPreference;->mContext:Landroid/content/Context;

    const p1, 0x7f0e0613

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method public static synthetic e(Lcom/sec/android/app/sbrowser/settings/browsing_assist/ReadArticlesAloudNoVoiceStylesPreference;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/browsing_assist/ReadArticlesAloudNoVoiceStylesPreference;->lambda$onBindViewHolder$0(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/browsing_assist/ReadArticlesAloudNoVoiceStylesPreference;->onLanguagePackClick()V

    return-void
.end method

.method private onLanguagePackClick()V
    .locals 8

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f140ba4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager;->getInstance()Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/browsing_assist/ReadArticlesAloudNoVoiceStylesPreference;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager;->openLangpackSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Lw2/H;)V
    .locals 2
    .param p1    # Lw2/H;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Lw2/H;)V

    iget-object p1, p1, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    const v0, 0x7f0b0810

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    new-instance v0, Lcom/sec/android/app/sbrowser/save_image/d;

    const/4 v1, 0x7

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/sbrowser/save_image/d;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
