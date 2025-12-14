.class public Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLegalUSView;
.super Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroSingleDescriptionView;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroButtonListener;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroSingleDescriptionView;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroButtonListener;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLegalUSView;->init()V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLegalUSView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLegalUSView;->lambda$updateButtonView$0(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$updateButtonView$0(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLegalUSView;->onCloseAppButtonClicked()V

    return-void
.end method

.method private onCloseAppButtonClicked()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView;->mHelpIntroButtonListener:Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroButtonListener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroButtonListener;->onCloseAppButtonClicked()V

    return-void
.end method

.method private updateButtonView()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView;->mPageView:Landroid/view/View;

    const v1, 0x7f0b0587

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView;->mContext:Landroid/content/Context;

    const v2, 0x7f0e044d

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView;->mPageView:Landroid/view/View;

    const v1, 0x7f0b0594

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/sec/android/app/sbrowser/help_intro/page/a;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/help_intro/page/a;-><init>(Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLegalUSView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public init()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView;->mContext:Landroid/content/Context;

    const v1, 0x7f0e044e

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView;->mPageView:Landroid/view/View;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLegalUSView;->updateButtonView()V

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroSingleDescriptionView;->init()V

    return-void
.end method
