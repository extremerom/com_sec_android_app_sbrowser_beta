.class public Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$LineItemBreakdownSection;
.super Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LineItemBreakdownSection"
.end annotation


# instance fields
.field private mBreakdownLayout:Landroid/widget/LinearLayout;

.field private mFadeOutRunnable:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field private mUpdatedView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$SectionDelegate;Ljava/lang/String;)V
    .locals 7

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$SectionDelegate;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance p1, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$LineItemBreakdownSection$1;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$LineItemBreakdownSection$1;-><init>(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$LineItemBreakdownSection;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$LineItemBreakdownSection;->mFadeOutRunnable:Ljava/lang/Runnable;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$LineItemBreakdownSection;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$LineItemBreakdownSection;->mUpdatedView:Landroid/widget/TextView;

    invoke-virtual {p0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$LineItemBreakdownSection;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$LineItemBreakdownSection;->mUpdatedView:Landroid/widget/TextView;

    return-object p0
.end method

.method private addDivider()V
    .locals 4

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f06083d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070c77

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mVerticalSpacing:I

    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$LineItemBreakdownSection;->mBreakdownLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private addUpdateText(Landroid/widget/LinearLayout;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$LineItemBreakdownSection;->mUpdatedView:Landroid/widget/TextView;

    const p1, 0x7f15029e

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextAppearance(I)V

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x10

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$LineItemBreakdownSection;->mUpdatedView:Landroid/widget/TextView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/View;->setTextAlignment(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$LineItemBreakdownSection;->mUpdatedView:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->getSummaryLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$LineItemBreakdownSection;->mUpdatedView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->getSummaryLayout()Landroid/widget/LinearLayout;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    add-int/lit8 p0, p0, -0x2

    invoke-virtual {v0, v1, p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private createValueString(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/CharSequence;
    .locals 1

    new-instance p0, Landroid/text/SpannableStringBuilder;

    invoke-direct {p0}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const-string p1, " "

    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p1

    invoke-virtual {p0, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    if-eqz p3, :cond_0

    new-instance p3, Landroid/text/style/StyleSpan;

    const/4 v0, 0x1

    invoke-direct {p3, v0}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr p2, p1

    const/4 v0, 0x0

    invoke-virtual {p0, p3, p1, p2, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    return-object p0
.end method

.method private showUpdateIfTextChanged(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->getSummaryRightTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->getSummaryRightTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->getSummaryRightTextView()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$LineItemBreakdownSection;->startUpdateViewAnimation()V

    :cond_1
    :goto_0
    return-void
.end method

.method private startUpdateViewAnimation()V
    .locals 3

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$LineItemBreakdownSection;->mUpdatedView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v1, Lh2/c;

    invoke-direct {v1}, Lh2/c;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$LineItemBreakdownSection;->mUpdatedView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$LineItemBreakdownSection;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$LineItemBreakdownSection;->mFadeOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$LineItemBreakdownSection;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$LineItemBreakdownSection;->mFadeOutRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public createMainSectionContent(Landroid/widget/LinearLayout;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$LineItemBreakdownSection;->addUpdateText(Landroid/widget/LinearLayout;)V

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$LineItemBreakdownSection;->mBreakdownLayout:Landroid/widget/LinearLayout;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mVerticalSpacing:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mStartEndMargin:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iget v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mStartEndMargin:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mSummaryLeftTextView:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentSecureUI$SecureTextView;

    const v2, 0x7f150295

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextAppearance(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mSummaryRightTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextAppearance(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$LineItemBreakdownSection;->mBreakdownLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public update(Lcom/sec/android/app/sbrowser/payments/standard/ui/ShoppingCart;)V
    .locals 14

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$LineItemBreakdownSection;->mBreakdownLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/ShoppingCart;->getTotal()Lcom/sec/android/app/sbrowser/payments/standard/ui/LineItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/LineItem;->getCurrency()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/ShoppingCart;->getTotal()Lcom/sec/android/app/sbrowser/payments/standard/ui/LineItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/payments/standard/ui/LineItem;->getPrice()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$LineItemBreakdownSection;->createValueString(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$LineItemBreakdownSection;->showUpdateIfTextChanged(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/ShoppingCart;->getTotal()Lcom/sec/android/app/sbrowser/payments/standard/ui/LineItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/payments/standard/ui/LineItem;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->setSummaryText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->getSummaryRightTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$LineItemBreakdownSection;->mBreakdownLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/ShoppingCart;->getContents()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/ShoppingCart;->getContents()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_3

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/ShoppingCart;->getContents()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/sbrowser/payments/standard/ui/LineItem;

    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/payments/standard/ui/LineItem;->getIsPending()Z

    move-result v8

    if-eqz v8, :cond_1

    const v8, 0x7f15029c

    goto :goto_1

    :cond_1
    const v8, 0x7f150297

    :goto_1
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextAppearance(I)V

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/payments/standard/ui/LineItem;->getLabel()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/4 v8, 0x5

    invoke-virtual {v7, v8}, Landroid/view/View;->setTextAlignment(I)V

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Landroid/view/View;->setImportantForAccessibility(I)V

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x1

    const/4 v11, -0x2

    invoke-direct {v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v12, 0x3f800000    # 1.0f

    iput v12, v9, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    new-instance v12, Landroid/widget/TextView;

    invoke-direct {v12, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/payments/standard/ui/LineItem;->getIsPending()Z

    move-result v13

    if-eqz v13, :cond_2

    const v13, 0x7f15029b

    goto :goto_2

    :cond_2
    const v13, 0x7f150296

    :goto_2
    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setTextAppearance(I)V

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/payments/standard/ui/LineItem;->getCurrency()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/payments/standard/ui/LineItem;->getPrice()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v13, v5, v3}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$LineItemBreakdownSection;->createValueString(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v12, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v12, v1}, Landroid/widget/TextView;->setMinWidth(I)V

    const/4 v5, 0x6

    invoke-virtual {v12, v5}, Landroid/view/View;->setTextAlignment(I)V

    invoke-virtual {v12, v8}, Landroid/view/View;->setImportantForAccessibility(I)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const v8, 0x800015

    iput v8, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/4 v8, 0x0

    iput v8, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v13, 0x7f070c1a

    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v6, v7, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v6, v12, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v5, 0x1

    invoke-virtual {v6, v5}, Landroid/view/View;->setImportantForAccessibility(I)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$LineItemBreakdownSection;->mBreakdownLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v6, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$LineItemBreakdownSection;->addDivider()V

    return-void
.end method

.method public updateControlLayout()V
    .locals 3

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mIsLayoutInitialized:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$LineItemBreakdownSection;->mBreakdownLayout:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mDisplayMode:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->updateControlLayout()V

    return-void
.end method
