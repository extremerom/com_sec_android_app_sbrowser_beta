.class public Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;
.super Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OptionSection"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$FocusChangedObserver;,
        Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;
    }
.end annotation


# instance fields
.field private mCanAddItems:Z

.field private mCheckingProgress:Landroid/view/View;

.field private mFocusChangedObserver:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$FocusChangedObserver;

.field private final mIconMaxWidth:I

.field private mOptionLayout:Landroid/widget/LinearLayout;

.field private final mOptionRows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;",
            ">;"
        }
    .end annotation
.end field

.field private mSectionInformation:Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

.field private mSummaryInDescriptiveText:Z

.field private mSummaryInSingleLine:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$SectionDelegate;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$SectionDelegate;Ljava/lang/String;Ljava/lang/String;I)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;->mCanAddItems:Z

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;->mOptionRows:Ljava/util/ArrayList;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;->mSummaryInSingleLine:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070c23

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;->mIconMaxWidth:I

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->setSummaryText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;->mIconMaxWidth:I

    return p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;->updateSelectedItem(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;)V

    return-void
.end method

.method private createLoadingSpinner()Landroid/view/View;
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e0560

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v1, 0x7f0b075f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const v2, 0x7f1408d2

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method private setSpinnerVisibility(Z)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;->mCheckingProgress:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;->mOptionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;->mOptionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;->mCheckingProgress:Landroid/view/View;

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;->mCheckingProgress:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v0, -0x1

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/4 v0, -0x2

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070c1d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;->mCheckingProgress:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;->mCheckingProgress:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;->mCheckingProgress:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;->mCheckingProgress:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method private updateOptionList(Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;)V
    .locals 13

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;->mOptionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;->mOptionRows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mDelegate:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$SectionDelegate;

    invoke-interface {v0, p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$SectionDelegate;->getAdditionalText(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;->mOptionLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;->mOptionRows:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mDelegate:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$SectionDelegate;

    invoke-interface {v2, p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$SectionDelegate;->isAdditionalTextDisplayingWarning(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    :goto_0
    move v6, v2

    goto :goto_1

    :cond_0
    const/4 v2, 0x2

    goto :goto_0

    :goto_1
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v2, v1

    move-object v3, p0

    invoke-direct/range {v2 .. v9}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;-><init>(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;Landroid/widget/LinearLayout;IILcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;ZZ)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;->mOptionRows:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;->setLeftLabel(Ljava/lang/CharSequence;)V

    :cond_1
    const/4 v0, 0x0

    const/4 v1, -0x1

    move v2, v0

    move v3, v1

    :goto_2
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->getSize()I

    move-result v4

    if-ge v2, v4, :cond_6

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;->mOptionRows:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ne v3, v1, :cond_2

    move v3, v8

    :cond_2
    invoke-virtual {p1, v2}, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->getItem(I)Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;

    move-result-object v10

    new-instance v4, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;->mOptionLayout:Landroid/widget/LinearLayout;

    const/4 v5, 0x1

    if-ne v10, p2, :cond_3

    move v11, v5

    goto :goto_3

    :cond_3
    move v11, v0

    :goto_3
    iget-boolean v6, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;->mCanAddItems:Z

    if-eqz v6, :cond_4

    :goto_4
    move v12, v5

    goto :goto_5

    :cond_4
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->getSize()I

    move-result v6

    sub-int/2addr v6, v5

    if-eq v2, v6, :cond_5

    goto :goto_4

    :cond_5
    move v12, v0

    :goto_5
    const/4 v9, 0x0

    move-object v5, v4

    move-object v6, p0

    invoke-direct/range {v5 .. v12}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;-><init>(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;Landroid/widget/LinearLayout;IILcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;ZZ)V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;->mOptionRows:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    if-eq v3, v1, :cond_7

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;->mOptionRows:Ljava/util/ArrayList;

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;

    const v0, 0x7f0b089b

    invoke-virtual {p2, v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;->setButtonId(I)V

    :cond_7
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->getAddStringId()I

    move-result p2

    if-eqz p2, :cond_8

    iget-boolean p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;->mCanAddItems:Z

    if-eqz p2, :cond_8

    new-instance p2, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;->mOptionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p2

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;-><init>(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;Landroid/widget/LinearLayout;IILcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;ZZ)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->getAddStringId()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;->setLeftLabel(I)V

    const p1, 0x7f0b0897

    invoke-virtual {p2, p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;->setButtonId(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;->mOptionRows:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    return-void
.end method

.method private updateSelectedItem(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    iget v3, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mDisplayMode:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v3, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;->mSummaryInSingleLine:Z

    if-eqz v3, :cond_2

    invoke-virtual {p0, v1, v2, v1, v2}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->setSummaryProperties(Landroid/text/TextUtils$TruncateAt;ZLandroid/text/TextUtils$TruncateAt;Z)V

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;->mSummaryInSingleLine:Z

    goto :goto_1

    :cond_1
    :goto_0
    iget-boolean v3, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;->mSummaryInSingleLine:Z

    if-nez v3, :cond_2

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->setSummaryProperties(Landroid/text/TextUtils$TruncateAt;ZLandroid/text/TextUtils$TruncateAt;Z)V

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;->mSummaryInSingleLine:Z

    :cond_2
    :goto_1
    if-nez p1, :cond_5

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->setLogoDrawable(Landroid/graphics/drawable/Drawable;Z)V

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;->mSummaryInDescriptiveText:Z

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->getSummaryLeftTextView()Landroid/widget/TextView;

    move-result-object p1

    const v1, 0x7f150298

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextAppearance(I)V

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;->mSummaryInDescriptiveText:Z

    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mSummaryRightTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_4

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;->mSectionInformation:Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->getSummaryLeftTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionUiUtils;->showSectionSummaryInTextViewInSingeLine(Landroid/content/Context;Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;Landroid/widget/TextView;)V

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;->getDrawableIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, p1, Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->setLogoDrawable(Landroid/graphics/drawable/Drawable;Z)V

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;->mSummaryInDescriptiveText:Z

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->getSummaryLeftTextView()Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f150295

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAppearance(I)V

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;->mSummaryInDescriptiveText:Z

    :cond_6
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;->getImageForLabel()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->setSummaryText(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_7
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;->mSummaryInSingleLine:Z

    invoke-virtual {p0, p1, v2, v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;->convertOptionToString(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;ZZ)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;->convertOptionToRightString(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->setSummaryText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    :goto_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;->updateControlLayout()V

    return-void
.end method


# virtual methods
.method public convertOptionToRightString(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;)Ljava/lang/CharSequence;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public convertOptionToString(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;ZZ)Ljava/lang/CharSequence;
    .locals 7

    if-nez p1, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    if-eqz p3, :cond_1

    const-string p3, ","

    goto :goto_0

    :cond_1
    const-string p3, "\n"

    :goto_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_2

    new-instance p2, Landroid/text/style/StyleSpan;

    invoke-direct {p2, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    invoke-virtual {v0, p2, v2, v3, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_2
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;->getSublabel()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const v3, 0x7f060834

    const/16 v4, 0xd

    if-nez p2, :cond_4

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p2

    if-lez p2, :cond_3

    invoke-virtual {v0, p3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_3
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;->getSublabel()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    sub-int/2addr v5, p2

    new-instance p2, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/Context;->getColor(I)I

    move-result v6

    invoke-direct {p2, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    invoke-virtual {v0, p2, v5, v6, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    new-instance p2, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {p2, v4, v1}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    invoke-virtual {v0, p2, v5, v6, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_4
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;->getTertiaryLabel()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_6

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p2

    if-lez p2, :cond_5

    invoke-virtual {v0, p3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_5
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;->getTertiaryLabel()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    sub-int/2addr v5, p2

    new-instance p2, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-direct {p2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    invoke-virtual {v0, p2, v5, v3, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    new-instance p2, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {p2, v4, v1}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    invoke-virtual {v0, p2, v5, v3, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_6
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;->getEditMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_8

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p2

    if-lez p2, :cond_7

    invoke-virtual {v0, p3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_7
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;->getEditMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr p2, p1

    new-instance p1, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const p3, 0x7f060831

    invoke-virtual {p0, p3}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-direct {p1, p0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p0

    invoke-virtual {v0, p1, p2, p0, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    new-instance p0, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {p0, v4, v1}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p1

    invoke-virtual {v0, p0, p2, p1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_8
    return-object v0
.end method

.method public createMainSectionContent(Landroid/widget/LinearLayout;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;->createLoadingSpinner()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;->mCheckingProgress:Landroid/view/View;

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;->mOptionLayout:Landroid/widget/LinearLayout;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;->mOptionLayout:Landroid/widget/LinearLayout;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public focusSection(Z)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;->mSectionInformation:Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->getSize()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->setDisplayMode(I)V

    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;->mFocusChangedObserver:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$FocusChangedObserver;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;->mSectionInformation:Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->getDataType()I

    move-result v2

    invoke-interface {v0, v2, p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$FocusChangedObserver;->onFocusChanged(IZ)V

    :cond_2
    iget v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mDisplayMode:I

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->focusSection(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;->mSectionInformation:Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    if-eqz p1, :cond_3

    if-ne v0, v1, :cond_3

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->getSelectedItem()Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;->updateSelectedItem(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;)V

    :cond_3
    return-void
.end method

.method public getEditButtonState()I
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;->mSectionInformation:Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->getSize()I

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;->mCanAddItems:Z

    if-eqz v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;->mSectionInformation:Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->getSelectedItem()Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;

    move-result-object p0

    if-nez p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method public getOptionRowAtIndex(I)Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;->mOptionRows:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;

    return-object p0
.end method

.method public handleClick(Landroid/view/View;)V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;->mOptionRows:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;->mOptionRows:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;->a(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;)Landroid/view/View;

    move-result-object v4

    if-eq v4, p1, :cond_1

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;->d(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;)Landroid/view/View;

    move-result-object v4

    if-eq v4, p1, :cond_1

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;->f(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;)Landroid/view/View;

    move-result-object v4

    if-eq v4, p1, :cond_1

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;->c(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;)Landroid/widget/LinearLayout;

    move-result-object v4

    if-ne v4, p1, :cond_0

    goto :goto_1

    :cond_0
    move v4, v0

    goto :goto_2

    :cond_1
    :goto_1
    move v4, v3

    :goto_2
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;->e(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;)Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;

    move-result-object v5

    if-nez v5, :cond_2

    if-eqz v4, :cond_2

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;->g(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;)I

    move-result v4

    if-ne v4, v3, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mDelegate:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$SectionDelegate;

    invoke-interface {p1, p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$SectionDelegate;->onAddPaymentOption(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;)V

    return-void

    :cond_2
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;->e(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;)Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;->b(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;)Landroid/view/View;

    move-result-object v3

    if-ne v3, p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mDelegate:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$SectionDelegate;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;->e(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;)Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$SectionDelegate;->onEditPaymentOption(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;)V

    return-void

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    move v1, v0

    :goto_3
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;->mOptionRows:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_8

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;->mOptionRows:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;->a(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;)Landroid/view/View;

    move-result-object v4

    if-eq v4, p1, :cond_6

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;->d(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;)Landroid/view/View;

    move-result-object v4

    if-eq v4, p1, :cond_6

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;->f(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;)Landroid/view/View;

    move-result-object v4

    if-eq v4, p1, :cond_6

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;->c(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;)Landroid/widget/LinearLayout;

    move-result-object v4

    if-ne v4, p1, :cond_5

    goto :goto_4

    :cond_5
    move v4, v0

    goto :goto_5

    :cond_6
    :goto_4
    move v4, v3

    :goto_5
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;->e(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;)Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;

    move-result-object v5

    if-eqz v5, :cond_7

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v2, v4}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;->setChecked(Z)V

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_8
    return-void
.end method

.method public handleKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;->mOptionRows:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    const/16 v4, 0x42

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;->mOptionRows:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;->c(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;)Landroid/widget/LinearLayout;

    move-result-object v5

    if-ne v5, p1, :cond_0

    move v5, v3

    goto :goto_1

    :cond_0
    move v5, v0

    :goto_1
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;->e(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;)Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;

    move-result-object v6

    if-nez v6, :cond_1

    if-eqz v5, :cond_1

    if-ne p2, v4, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;->g(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;)I

    move-result v5

    if-ne v5, v3, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mDelegate:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$SectionDelegate;

    invoke-interface {p1, p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$SectionDelegate;->onAddPaymentOption(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;)V

    return v3

    :cond_1
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;->e(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;)Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;->b(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;)Landroid/view/View;

    move-result-object v5

    if-ne v5, p1, :cond_2

    if-ne p2, v4, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mDelegate:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$SectionDelegate;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;->e(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;)Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;

    move-result-object p2

    invoke-interface {p1, p0, p2}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$SectionDelegate;->onEditPaymentOption(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;)V

    return v3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    move v1, v0

    :goto_2
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;->mOptionRows:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;->mOptionRows:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;->c(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;)Landroid/widget/LinearLayout;

    move-result-object v5

    if-ne v5, p1, :cond_4

    move v5, v3

    goto :goto_3

    :cond_4
    move v5, v0

    :goto_3
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;->e(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;)Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_5

    if-eqz v5, :cond_5

    if-ne p2, v4, :cond_5

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {v2, v5}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;->setChecked(Z)V

    return v3

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    return v0
.end method

.method public isLogoNecessary()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public setCanAddItems(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;->mCanAddItems:Z

    return-void
.end method

.method public setOptionSectionFocusChangedObserver(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$FocusChangedObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;->mFocusChangedObserver:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$FocusChangedObserver;

    return-void
.end method

.method public update(Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;->mSectionInformation:Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->getSelectedItem()Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;->updateSelectedItem(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;)V

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;->updateOptionList(Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;->updateControlLayout()V

    return-void
.end method

.method public updateControlLayout()V
    .locals 5

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mIsLayoutInitialized:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mDisplayMode:I

    const/4 v1, 0x5

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->setIsSummaryAllowed(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;->mOptionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;->setSpinnerVisibility(Z)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x6

    const/4 v3, 0x1

    const/16 v4, 0x8

    if-ne v0, v1, :cond_2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->setIsSummaryAllowed(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;->mOptionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0, v3}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;->setSpinnerVisibility(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v3}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->setIsSummaryAllowed(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;->mOptionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;->setSpinnerVisibility(Z)V

    :goto_0
    invoke-super {p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->updateControlLayout()V

    return-void
.end method
