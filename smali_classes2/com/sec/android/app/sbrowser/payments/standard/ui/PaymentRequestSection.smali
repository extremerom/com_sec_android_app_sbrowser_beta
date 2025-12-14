.class public abstract Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$SectionDelegate;,
        Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$ShippingOptionSection;,
        Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;,
        Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$LineItemBreakdownSection;
    }
.end annotation


# instance fields
.field private mAddButtonText:Ljava/lang/String;

.field private mAddButtonTextView:Landroid/widget/TextView;

.field private mAddImageButton:Landroid/widget/ImageButton;

.field private final mBackgroundColor:I

.field private mChevronDown:Lcom/sec/android/app/sbrowser/payments/standard/widget/TintedDrawable;

.field private mChevronUp:Lcom/sec/android/app/sbrowser/payments/standard/widget/TintedDrawable;

.field private mChevronView:Landroid/widget/ImageButton;

.field private final mContentSection:Landroid/widget/LinearLayout;

.field protected final mDelegate:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$SectionDelegate;

.field protected mDisplayMode:I

.field protected mEditView:Landroid/view/View;

.field protected final mIsLayoutInitialized:Z

.field private mIsSummaryAllowed:Z

.field private mLogo:Landroid/graphics/drawable/Drawable;

.field private mLogoView:Landroid/widget/ImageView;

.field private mSelectButton:Landroid/widget/Button;

.field private mSelectButtonText:Ljava/lang/String;

.field protected final mStartEndMargin:I

.field private mSummaryLayout:Landroid/widget/LinearLayout;

.field protected mSummaryLeftTextView:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentSecureUI$SecureTextView;

.field protected mSummaryRightTextView:Landroid/widget/TextView;

.field private mTitleSectionLayout:Landroid/widget/LinearLayout;

.field protected final mVerticalSpacing:I


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$SectionDelegate;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mDisplayMode:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mIsSummaryAllowed:Z

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mDelegate:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$SectionDelegate;

    invoke-virtual {p0, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p3, 0x0

    invoke-virtual {p0, p3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0x10

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {p0, p3}, Landroid/view/View;->setFocusable(Z)V

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Landroid/view/View;->setImportantForAccessibility(I)V

    const v2, 0x7f0601f5

    invoke-virtual {p1, v2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mBackgroundColor:I

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f070c32

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mStartEndMargin:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f070c2b

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mVerticalSpacing:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f070c2c

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0, p3, p1, p3, p3}, Landroid/view/View;->setPadding(IIII)V

    if-eqz p4, :cond_0

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mAddButtonText:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f1408cc

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mAddButtonText:Ljava/lang/String;

    :goto_0
    if-eqz p5, :cond_1

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mSelectButtonText:Ljava/lang/String;

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f140e68

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mSelectButtonText:Ljava/lang/String;

    :goto_1
    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->prepareMainSection(Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mContentSection:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->createSummaryLayout(Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mSummaryLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->createAndAddEditView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mEditView:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->createMainSectionContent(Landroid/widget/LinearLayout;)V

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mIsLayoutInitialized:Z

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->setDisplayMode(I)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$SectionDelegate;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$SectionDelegate;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private createAddButtonViewForSummary(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0804b7

    invoke-static {v2, v3}, Lcom/sec/terrace/base/TerraceApiCompatibilityUtils;->getDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    new-instance v3, Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mAddImageButton:Landroid/widget/ImageButton;

    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const v5, 0x101045c

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v3, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mAddImageButton:Landroid/widget/ImageButton;

    iget v3, v3, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v4, v3}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mAddImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070c0e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mAddImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mAddImageButton:Landroid/widget/ImageButton;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/view/View;->setImportantForAccessibility(I)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070c0f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-direct {v2, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0x11

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070c27

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mAddImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mAddImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mAddButtonTextView:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mAddButtonText:Ljava/lang/String;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mAddButtonTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/view/View;->setTextAlignment(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mAddButtonTextView:Landroid/widget/TextView;

    const v2, 0x7f150294

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextAppearance(I)V

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {p1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x10

    iput v2, p1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mAddButtonTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setFocusable(Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mAddButtonTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setImportantForAccessibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mAddButtonTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v6}, Landroid/view/View;->setImportantForAccessibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mAddButtonText:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f1402b1

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method private createAndAddChevron(Landroid/view/ViewGroup;)Landroid/widget/ImageButton;
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0802a9

    const v2, 0x7f06083b

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/sbrowser/payments/standard/widget/TintedDrawable;->constructTintedDrawable(Landroid/content/Context;II)Lcom/sec/android/app/sbrowser/payments/standard/widget/TintedDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mChevronDown:Lcom/sec/android/app/sbrowser/payments/standard/widget/TintedDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0802a8

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/sbrowser/payments/standard/widget/TintedDrawable;->constructTintedDrawable(Landroid/content/Context;II)Lcom/sec/android/app/sbrowser/payments/standard/widget/TintedDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mChevronUp:Lcom/sec/android/app/sbrowser/payments/standard/widget/TintedDrawable;

    new-instance v0, Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mChevronDown:Lcom/sec/android/app/sbrowser/payments/standard/widget/TintedDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v1, 0x7f0804b6

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f070bf0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, p0, p0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const p0, 0x800015

    iput p0, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private createAndAddEditView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->createAddButtonViewForSummary(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v0, v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mSelectButton:Landroid/widget/Button;

    const v4, 0x7f15029d

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextAppearance(I)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mSelectButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mSelectButtonText:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mSelectButton:Landroid/widget/Button;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f070c30

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mSelectButton:Landroid/widget/Button;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mSelectButton:Landroid/widget/Button;

    invoke-virtual {v6}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    invoke-virtual {v4, v2, v5, v2, v6}, Landroid/view/View;->setPadding(IIII)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mSelectButton:Landroid/widget/Button;

    new-instance v4, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentSecureUI$SecureClickListener;

    invoke-direct {v4, p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentSecureUI$SecureClickListener;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mSelectButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Landroid/view/View;->setImportantForAccessibility(I)V

    new-instance p0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private createAndAddLogoView(Landroid/view/ViewGroup;I)Landroid/widget/ImageView;
    .locals 4

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    if-eqz p2, :cond_0

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070c23

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070c22

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {p2, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070c28

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f070c1f

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-virtual {p2, p0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    const/16 p0, 0x11

    iput p0, p2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {p1, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private prepareMainSection(Ljava/lang/String;)Landroid/widget/LinearLayout;
    .locals 8

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {p0, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v2, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mTitleSectionLayout:Landroid/widget/LinearLayout;

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mTitleSectionLayout:Landroid/widget/LinearLayout;

    const/16 v6, 0x10

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070c29

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-direct {v2, v3, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget v6, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mStartEndMargin:I

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iget v6, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mStartEndMargin:I

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mTitleSectionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v2, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v6, 0x5

    invoke-virtual {v2, v6}, Landroid/view/View;->setTextAlignment(I)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f14058d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const p1, 0x7f150299

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setTextAppearance(I)V

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v5, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mTitleSectionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mTitleSectionLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->createAndAddChevron(Landroid/view/ViewGroup;)Landroid/widget/ImageButton;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mChevronView:Landroid/widget/ImageButton;

    new-instance p1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f0804b9

    invoke-static {p0, p1, v0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setBackgroundDrawableResource(Landroid/content/Context;Landroid/view/View;I)V

    return-object p1
.end method

.method private updateChevronView(Z)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mChevronView:Landroid/widget/ImageButton;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_4

    iget p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mDisplayMode:I

    const/4 v0, 0x3

    const v1, 0x7f1404ff

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mChevronView:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mChevronDown:Lcom/sec/android/app/sbrowser/payments/standard/widget/TintedDrawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mChevronView:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mChevronView:Landroid/widget/ImageButton;

    const/4 v2, 0x4

    if-ne p1, v2, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mChevronDown:Lcom/sec/android/app/sbrowser/payments/standard/widget/TintedDrawable;

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mChevronUp:Lcom/sec/android/app/sbrowser/payments/standard/widget/TintedDrawable;

    :goto_1
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mChevronView:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mDisplayMode:I

    if-ne p0, v2, :cond_3

    goto :goto_2

    :cond_3
    const v1, 0x7f14032a

    :goto_2
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_3
    return-void
.end method

.method private updateEditButton()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mEditView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->getEditButtonState()I

    move-result v0

    const/4 v1, 0x2

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mAddImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mAddButtonTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mSelectButton:Landroid/widget/Button;

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mAddImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mAddButtonTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mSelectButton:Landroid/widget/Button;

    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public abstract createMainSectionContent(Landroid/widget/LinearLayout;)V
.end method

.method public createSummaryLayout(Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .locals 8

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->isLogoNecessary()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->createAndAddLogoView(Landroid/view/ViewGroup;I)Landroid/widget/ImageView;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    iput-object v2, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mLogoView:Landroid/widget/ImageView;

    new-instance v2, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentSecureUI$SecureTextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentSecureUI$SecureTextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mSummaryLeftTextView:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentSecureUI$SecureTextView;

    const/4 v4, 0x5

    invoke-virtual {v2, v4}, Landroid/view/View;->setTextAlignment(I)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mSummaryLeftTextView:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentSecureUI$SecureTextView;

    const v4, 0x7f0b089c

    invoke-virtual {v2, v4}, Landroid/view/View;->setId(I)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mSummaryLeftTextView:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentSecureUI$SecureTextView;

    const v4, 0x7f150295

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextAppearance(I)V

    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mSummaryRightTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextAppearance(I)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mSummaryRightTextView:Landroid/widget/TextView;

    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Landroid/view/View;->setTextAlignment(I)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070c28

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/16 v5, 0x10

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v7, 0x0

    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iput v5, v6, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f070c1c

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v6, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mSummaryLeftTextView:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentSecureUI$SecureTextView;

    invoke-virtual {v0, v5, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mSummaryRightTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->setImportantForAccessibility(I)V

    iget v2, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mVerticalSpacing:I

    invoke-virtual {v0, v1, v2, v1, v2}, Landroid/view/View;->setPaddingRelative(IIII)V

    invoke-virtual {p0, v3, v3}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->setSummaryText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070c26

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iget p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mStartEndMargin:I

    invoke-virtual {v1, p0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public focusSection(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x5

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->setDisplayMode(I)V

    return-void
.end method

.method public getEditButtonState()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getSummaryLayout()Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mSummaryLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public getSummaryLeftTextView()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mSummaryLeftTextView:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentSecureUI$SecureTextView;

    return-object p0
.end method

.method public getSummaryRightTextView()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mSummaryRightTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method public handleClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public handleKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isLogoNecessary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mDelegate:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$SectionDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$SectionDelegate;->isAcceptingUserInput()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mChevronView:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mSummaryLayout:Landroid/widget/LinearLayout;

    if-ne p1, v0, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->getEditButtonState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mAddImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mDelegate:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$SectionDelegate;

    invoke-interface {v0, p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$SectionDelegate;->onAddPaymentOption(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mAddImageButton:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mDelegate:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$SectionDelegate;

    invoke-interface {v0, p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$SectionDelegate;->onAddPaymentOption(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mSelectButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mDelegate:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$SectionDelegate;

    invoke-interface {v0, p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$SectionDelegate;->onSectionClicked(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;)V

    :cond_5
    :goto_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->handleClick(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->updateControlLayout()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mDelegate:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$SectionDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$SectionDelegate;->isAcceptingUserInput()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mAddButtonTextView:Landroid/widget/TextView;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mAddImageButton:Landroid/widget/ImageButton;

    const/16 v1, 0x42

    if-ne p1, v0, :cond_0

    if-ne p2, v1, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mSelectButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    if-ne p2, v1, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mDelegate:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$SectionDelegate;

    invoke-interface {v0, p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$SectionDelegate;->onSectionClicked(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mDelegate:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$SectionDelegate;

    invoke-interface {v0, p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$SectionDelegate;->onAddPaymentOption(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;)V

    :cond_2
    :goto_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->handleKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public setDisplayMode(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mDisplayMode:I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->updateControlLayout()V

    return-void
.end method

.method public setIsEditButtonEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mEditView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mAddImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mSelectButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mSummaryLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public setIsSummaryAllowed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mIsSummaryAllowed:Z

    return-void
.end method

.method public setLogoDrawable(Landroid/graphics/drawable/Drawable;Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mLogoView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mLogo:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_1

    const p1, 0x7f0804ba

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mLogoView:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mLogo:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setPongdangEnabled(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mSummaryLeftTextView:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentSecureUI$SecureTextView;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentSecureUI$SecureTextView;->setPongdangEnabled(Z)V

    return-void
.end method

.method public setSummaryProperties(Landroid/text/TextUtils$TruncateAt;ZLandroid/text/TextUtils$TruncateAt;Z)V
    .locals 1
    .param p1    # Landroid/text/TextUtils$TruncateAt;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/text/TextUtils$TruncateAt;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mSummaryLeftTextView:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentSecureUI$SecureTextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mSummaryLeftTextView:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentSecureUI$SecureTextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mSummaryRightTextView:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mSummaryRightTextView:Landroid/widget/TextView;

    invoke-virtual {p0, p4}, Landroid/widget/TextView;->setSingleLine(Z)V

    return-void
.end method

.method public setSummaryText(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mSummaryLeftTextView:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentSecureUI$SecureTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mSummaryLeftTextView:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentSecureUI$SecureTextView;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mSummaryRightTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mSummaryRightTextView:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->updateControlLayout()V

    return-void
.end method

.method public setSummaryText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 2
    .param p1    # Ljava/lang/CharSequence;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/CharSequence;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mSummaryLeftTextView:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentSecureUI$SecureTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mSummaryLeftTextView:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentSecureUI$SecureTextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mSummaryRightTextView:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mSummaryRightTextView:Landroid/widget/TextView;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/16 p2, 0x8

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->updateControlLayout()V

    return-void
.end method

.method public updateControlLayout()V
    .locals 7

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mIsLayoutInitialized:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mDisplayMode:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v2, 0x6

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mLogoView:Landroid/widget/ImageView;

    const/4 v3, 0x1

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-eqz v2, :cond_4

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mLogo:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_2

    if-eq v0, v1, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    move v0, v5

    :goto_0
    if-eqz v0, :cond_3

    move v0, v5

    goto :goto_1

    :cond_3
    move v0, v4

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->getEditButtonState()I

    move-result v0

    if-nez v0, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mEditView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0, v3}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->updateChevronView(Z)V

    goto :goto_4

    :cond_5
    iget v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mDisplayMode:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_7

    const/4 v2, 0x3

    if-ne v1, v2, :cond_6

    goto :goto_2

    :cond_6
    move v3, v5

    :cond_7
    :goto_2
    invoke-direct {p0, v5}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->updateChevronView(Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mEditView:Landroid/view/View;

    if-eqz v3, :cond_8

    move v2, v5

    goto :goto_3

    :cond_8
    move v2, v4

    :goto_3
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->updateEditButton()V

    :goto_4
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mSummaryLayout:Landroid/widget/LinearLayout;

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mIsSummaryAllowed:Z

    if-eqz v2, :cond_9

    move v2, v5

    goto :goto_5

    :cond_9
    move v2, v4

    :goto_5
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mSummaryLeftTextView:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentSecureUI$SecureTextView;

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    goto :goto_6

    :cond_a
    move v4, v5

    :goto_6
    invoke-virtual {p0, v4}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
