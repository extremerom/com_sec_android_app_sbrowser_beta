.class public Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLegalGDPRView;
.super Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView;
.source "SourceFile"


# instance fields
.field private mPpView:Landroid/widget/TextView;

.field private mTosView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroButtonListener;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroButtonListener;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLegalGDPRView;->init()V

    return-void
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLegalGDPRView;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLegalGDPRView;->mTosView:Landroid/widget/TextView;

    return-object p0
.end method

.method private updatePpView()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1405a4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView;->mActivity:Landroid/app/Activity;

    invoke-static {}, Lcom/sec/android/app/sbrowser/public_things/PublicPages;->privacyPolicyForAgreement()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroUtil;->getLinkedText(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLegalGDPRView;->mPpView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLegalGDPRView;->mPpView:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLegalGDPRView;->mPpView:Landroid/widget/TextView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLegalGDPRView;->mTosView:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView;->setUpDownKeyListener(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLegalGDPRView;->mPpView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView;->setHighlightColor(Landroid/widget/TextView;)V

    return-void
.end method

.method private updateTosView()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLegalGDPRView;->mTosView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1405a5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView;->mActivity:Landroid/app/Activity;

    invoke-static {}, Lcom/sec/android/app/sbrowser/public_things/PublicPages;->termsOfServiceForAgreement()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroUtil;->getLinkedText(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLegalGDPRView;->mTosView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLegalGDPRView;->mTosView:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLegalGDPRView;->mTosView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLegalGDPRView$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLegalGDPRView$1;-><init>(Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLegalGDPRView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLegalGDPRView;->mTosView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLegalGDPRView;->mPpView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView;->mAgreeButton:Landroid/widget/Button;

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView;->setUpDownKeyListener(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLegalGDPRView;->mTosView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView;->setHighlightColor(Landroid/widget/TextView;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getPageView()Landroid/view/View;
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView;->getPageView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public init()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView;->mContext:Landroid/content/Context;

    const v1, 0x7f0e044e

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView;->mPageView:Landroid/view/View;

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView;->init()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView;->mPageView:Landroid/view/View;

    const v1, 0x7f0b0595

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLegalGDPRView;->mPpView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView;->mPageView:Landroid/view/View;

    const v1, 0x7f0b0596

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLegalGDPRView;->mTosView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLegalGDPRView;->updatePpView()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLegalGDPRView;->updateTosView()V

    return-void
.end method

.method public bridge synthetic onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView;->onDestroy()V

    return-void
.end method
