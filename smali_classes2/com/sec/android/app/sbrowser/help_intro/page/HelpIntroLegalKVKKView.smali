.class public Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLegalKVKKView;
.super Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroSingleDescriptionView;
.source "SourceFile"


# static fields
.field private static sIsTosCheckBoxChecked:Z = false


# instance fields
.field private mAllCheckBox:Landroid/widget/CheckBox;

.field private mCheckBoxLayout:Landroid/widget/LinearLayout;

.field private mTosCheckBox:Landroid/widget/CheckBox;

.field private mTransferCheckBox:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroButtonListener;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroSingleDescriptionView;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroButtonListener;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLegalKVKKView;->init()V

    return-void
.end method

.method private addDetailsLink(Landroid/widget/CheckBox;Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLinkMovementMethod;Ljava/lang/String;Landroid/view/View;Landroid/view/View;)V
    .locals 6

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLegalKVKKView;->combineDetailsText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView;->mActivity:Landroid/app/Activity;

    invoke-static {v1, v0, p3}, Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroUtil;->getLinkedText(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView;->setHighlightColor(Landroid/widget/TextView;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    new-instance p3, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLegalKVKKView$1;

    move-object v0, p3

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLegalKVKKView$1;-><init>(Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLegalKVKKView;Landroid/widget/CheckBox;Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLinkMovementMethod;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLegalKVKKView;Landroid/widget/CheckBox;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLegalKVKKView;->lambda$onLinkActionUp$0(Landroid/widget/CheckBox;)V

    return-void
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLegalKVKKView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLegalKVKKView;->onEssentialCheckBoxChanged()V

    return-void
.end method

.method private combineDetailsText(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "    "

    invoke-static {p1, v0}, Lt/b;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLegalKVKKView;->getDetailsTextForLink()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private createCustomTabLinkMovementMethod(Landroid/widget/CheckBox;)Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLinkMovementMethod;
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLinkMovementMethod;

    new-instance v1, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLegalKVKKView$3;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLegalKVKKView$3;-><init>(Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLegalKVKKView;Landroid/widget/CheckBox;)V

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLinkMovementMethod;-><init>(Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLinkMovementMethod$Listener;)V

    return-object v0
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLegalKVKKView;Landroid/widget/CheckBox;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLegalKVKKView;->onLinkActionUp(Landroid/widget/CheckBox;)V

    return-void
.end method

.method private getDetailsTextForLink()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "%1$s"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f1405ad

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "%2$s"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$onLinkActionUp$0(Landroid/widget/CheckBox;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLegalKVKKView;->setCheckBoxBackground(Landroid/widget/CheckBox;)V

    return-void
.end method

.method private onEssentialCheckBoxChanged()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLegalKVKKView;->mTosCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView;->mAgreeButton:Landroid/widget/Button;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLegalKVKKView;->sIsTosCheckBoxChecked:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Tos Check box value is changed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v1, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLegalKVKKView;->sIsTosCheckBoxChecked:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HelpIntroLegalKVKKView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLegalKVKKView;->updateButtonText()V

    :cond_0
    return-void
.end method

.method private onLinkActionUp(Landroid/widget/CheckBox;)V
    .locals 3

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, LGa/d;

    const/16 v2, 0x1b

    invoke-direct {v1, v2, p0, p1}, LGa/d;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 p0, 0x64

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private setAgreeButtonEnabled()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView;->mAgreeButton:Landroid/widget/Button;

    sget-boolean v0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLegalKVKKView;->sIsTosCheckBoxChecked:Z

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setEnabledWithAlpha(Landroid/view/View;Z)V

    return-void
.end method

.method private setCheckBoxBackground(Landroid/widget/CheckBox;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView;->mContext:Landroid/content/Context;

    const v0, 0x7f080229

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method private updateDescriptionView()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1405aa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroUtil;->getPrivacyPolicyUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroUtil;->getLinkedText(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroSingleDescriptionView;->mDescriptionView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroSingleDescriptionView;->mDescriptionView:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroSingleDescriptionView;->mDescriptionView:Landroid/widget/TextView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLegalKVKKView;->mTosCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView;->setUpDownKeyListener(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method private updateEssentialCheckBox()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLegalKVKKView;->mTosCheckBox:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView;->mContext:Landroid/content/Context;

    const v2, 0x7f1405ab

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLegalKVKKView;->mTosCheckBox:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView;->mContext:Landroid/content/Context;

    const v2, 0x7f080229

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLegalKVKKView;->mTosCheckBox:Landroid/widget/CheckBox;

    sget-boolean v1, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLegalKVKKView;->sIsTosCheckBoxChecked:Z

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLegalKVKKView;->mTosCheckBox:Landroid/widget/CheckBox;

    new-instance v1, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLegalKVKKView$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLegalKVKKView$2;-><init>(Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLegalKVKKView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private updateTosView()V
    .locals 6

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLegalKVKKView;->mTosCheckBox:Landroid/widget/CheckBox;

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLegalKVKKView;->createCustomTabLinkMovementMethod(Landroid/widget/CheckBox;)Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLinkMovementMethod;

    move-result-object v2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroUtil;->getTermsOfServiceUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroSingleDescriptionView;->mDescriptionView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView;->mAgreeButton:Landroid/widget/Button;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLegalKVKKView;->addDetailsLink(Landroid/widget/CheckBox;Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLinkMovementMethod;Ljava/lang/String;Landroid/view/View;Landroid/view/View;)V

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

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroSingleDescriptionView;->init()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView;->mPageView:Landroid/view/View;

    const v1, 0x7f0b0593

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLegalKVKKView;->mCheckBoxLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView;->mPageView:Landroid/view/View;

    const v1, 0x7f0b0591

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLegalKVKKView;->mTosCheckBox:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView;->mPageView:Landroid/view/View;

    const v1, 0x7f0b0592

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLegalKVKKView;->mTransferCheckBox:Landroid/widget/CheckBox;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView;->mPageView:Landroid/view/View;

    const v2, 0x7f0b0589

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLegalKVKKView;->mAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLegalKVKKView;->updateEssentialCheckBox()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLegalKVKKView;->updateDescriptionView()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLegalKVKKView;->updateTosView()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLegalKVKKView;->setAgreeButtonEnabled()V

    return-void
.end method

.method public onAgreeButtonClicked()V
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView;->onAgreeButtonClicked()V

    const/4 p0, 0x0

    sput-boolean p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLegalKVKKView;->sIsTosCheckBoxChecked:Z

    return-void
.end method

.method public updateButtonText()V
    .locals 3

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView;->updateButtonText()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView;->mAgreeButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView;->mContext:Landroid/content/Context;

    const v2, 0x7f1405ac

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView;->mAgreeButton:Landroid/widget/Button;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setEnabledWithAlpha(Landroid/view/View;Z)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLegalKVKKView;->setAgreeButtonEnabled()V

    :goto_0
    return-void
.end method
