.class public Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OptionRow"
.end annotation


# instance fields
.field private final mButton:Landroid/view/View;

.field private final mEditIcon:Landroid/view/View;

.field private final mIsEnabled:Z

.field private final mItemLayout:Landroid/widget/LinearLayout;

.field private final mLabelView:Landroid/view/View;

.field private mLeftLabel:Landroid/widget/TextView;

.field private final mOption:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;

.field private final mOptionIcon:Landroid/view/View;

.field private mRightLabel:Landroid/widget/TextView;

.field private final mRowType:I

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;Landroid/widget/LinearLayout;IILcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;ZZ)V
    .locals 15

    move-object v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p4

    move-object/from16 v0, p5

    iput-object v7, v6, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v10, 0x1

    if-eqz v0, :cond_0

    invoke-virtual/range {p5 .. p5}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;->getDrawableIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    move v3, v10

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual/range {p5 .. p5}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;->isEditable()Z

    move-result v2

    if-eqz v2, :cond_1

    move v11, v10

    goto :goto_1

    :cond_1
    move v11, v1

    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual/range {p5 .. p5}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;->isValid()Z

    move-result v2

    if-eqz v2, :cond_2

    move v12, v10

    goto :goto_2

    :cond_2
    move v12, v1

    :goto_2
    iput-boolean v12, v6, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;->mIsEnabled:Z

    new-instance v13, Landroid/widget/LinearLayout;

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v13, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v13, v6, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;->mItemLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v13, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v13, v7}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    invoke-virtual {v13, v10}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {v13, v10}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    invoke-virtual {v13, v10}, Landroid/view/View;->setImportantForAccessibility(I)V

    iput v9, v6, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;->mRowType:I

    iput-object v0, v6, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;->mOption:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;

    move/from16 v2, p3

    move/from16 v0, p6

    invoke-direct {p0, v13, v2, v0, v12}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;->createButton(Landroid/widget/LinearLayout;IZZ)Landroid/view/View;

    move-result-object v0

    iput-object v0, v6, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;->mButton:Landroid/view/View;

    const/4 v14, 0x0

    if-eqz v3, :cond_3

    invoke-direct {p0, v13, v11}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;->createOptionIcon(Landroid/widget/LinearLayout;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_3

    :cond_3
    move-object v0, v14

    :goto_3
    iput-object v0, v6, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;->mOptionIcon:Landroid/view/View;

    move-object v0, p0

    move-object v1, v13

    move/from16 v2, p3

    move v4, v11

    move v5, v12

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;->createLabel(Landroid/widget/LinearLayout;IZZZ)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, v6, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;->mLabelView:Landroid/view/View;

    if-eqz v11, :cond_4

    invoke-direct {p0, v13, v12}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;->createEditIcon(Landroid/widget/LinearLayout;Z)Landroid/view/View;

    move-result-object v14

    :cond_4
    iput-object v14, v6, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;->mEditIcon:Landroid/view/View;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    if-eqz v9, :cond_5

    if-eq v9, v10, :cond_5

    iget v1, v7, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mStartEndMargin:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    goto :goto_4

    :cond_5
    if-nez v9, :cond_6

    if-nez v12, :cond_6

    iget v1, v7, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mStartEndMargin:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    goto :goto_4

    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070c26

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    :goto_4
    iget v1, v7, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mStartEndMargin:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {v8, v13, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p7, :cond_7

    invoke-direct {p0, v8}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;->addDivider(Landroid/widget/LinearLayout;)V

    :cond_7
    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;->mButton:Landroid/view/View;

    return-object p0
.end method

.method private addDivider(Landroid/widget/LinearLayout;)V
    .locals 4

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f06083d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070c77

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;->mOptionIcon:Landroid/view/View;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f070c24

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f070c25

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;

    iget p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mStartEndMargin:I

    invoke-virtual {v2, p0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {p1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;->mEditIcon:Landroid/view/View;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;->mItemLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method private createButton(Landroid/widget/LinearLayout;IZZ)Landroid/view/View;
    .locals 5

    iget p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;->mRowType:I

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070c0f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget v3, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;->mRowType:I

    const/4 v4, 0x1

    if-nez v3, :cond_3

    new-instance v0, Landroid/widget/RadioButton;

    invoke-direct {v0, p2}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x0

    if-eqz p3, :cond_1

    if-eqz p4, :cond_1

    goto :goto_0

    :cond_1
    move v4, p2

    :goto_0
    invoke-virtual {v0, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    invoke-virtual {v0, p4}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {v0, p2}, Landroid/view/View;->setFocusable(Z)V

    if-nez p4, :cond_2

    const/16 p2, 0x8

    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    goto :goto_1

    :cond_3
    if-ne v3, v4, :cond_4

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;

    invoke-virtual {p3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f0804b7

    invoke-static {p3, p4}, Lcom/sec/terrace/base/TerraceApiCompatibilityUtils;->getDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    new-instance v0, Landroid/widget/ImageButton;

    invoke-direct {v0, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    new-instance p4, Landroid/util/TypedValue;

    invoke-direct {p4}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p2

    const v3, 0x101045c

    invoke-virtual {p2, v3, p4, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget p2, p4, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, p2}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;

    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070c0e

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    invoke-virtual {v0, p2, p2, p2, p2}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    goto :goto_1

    :cond_4
    iget-object p3, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;

    invoke-virtual {p3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f080302

    invoke-static {p3, p4}, Lcom/sec/terrace/base/TerraceApiCompatibilityUtils;->getDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    new-instance p4, Landroid/widget/ImageButton;

    invoke-direct {p4, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    invoke-virtual {p4, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p4, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p4, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;

    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070c14

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    move-object v0, p4

    :goto_1
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p2, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 p3, 0x11

    iput p3, p2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;

    invoke-virtual {p3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f070c27

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {p1, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private createEditIcon(Landroid/widget/LinearLayout;Z)Landroid/view/View;
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f08029e

    const v4, 0x7f060836

    invoke-static {v2, v3, v4}, Lcom/sec/android/app/sbrowser/payments/standard/widget/TintedDrawable;->constructTintedDrawable(Landroid/content/Context;II)Lcom/sec/android/app/sbrowser/payments/standard/widget/TintedDrawable;

    move-result-object v2

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v2, 0x7f14014a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, p2}, Landroid/view/View;->setEnabled(Z)V

    const p0, 0x7f0804b5

    invoke-virtual {v1, p0}, Landroid/view/View;->setBackgroundResource(I)V

    const/4 p0, 0x0

    invoke-virtual {v1, p0, p0, p0, p0}, Landroid/view/View;->setPadding(IIII)V

    const p0, 0x7f070c12

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p2, p0, p0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 p0, 0x10

    iput p0, p2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {p1, v1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v1
.end method

.method private createLabel(Landroid/widget/LinearLayout;IZZZ)Landroid/widget/LinearLayout;
    .locals 7

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    new-instance p4, Landroid/widget/LinearLayout;

    invoke-direct {p4, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;

    iget v0, v0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mVerticalSpacing:I

    const/4 v1, 0x0

    invoke-virtual {p4, v1, v0, v1, v0}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {p4, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;->mLeftLabel:Landroid/widget/TextView;

    iget v2, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;->mRowType:I

    const v3, 0x7f150292

    const/4 v4, 0x2

    if-nez v2, :cond_3

    if-eqz p5, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    const v2, 0x7f150293

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextAppearance(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;->mOption:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;->getImageForLabel()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;->mLeftLabel:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v2, v0, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;->mLeftLabel:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;->mOption:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;

    invoke-virtual {v0, v2, v1, v1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;->convertOptionToString(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;ZZ)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;->mLeftLabel:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;->mOption:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;

    invoke-virtual {v2, v5, v1, v1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;->convertOptionToString(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;ZZ)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;->mLeftLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;->mButton:Landroid/view/View;

    check-cast v2, Landroid/widget/RadioButton;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    const v2, 0x7f140e6f

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_2
    const v2, 0x7f14081f

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_2
    const v5, 0x7f140b96

    invoke-virtual {p3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    filled-new-array {v2, v0, p3}, [Ljava/lang/Object;

    move-result-object p3

    const-string v0, "%s, %s, %s"

    invoke-static {v0, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;->mLeftLabel:Landroid/widget/TextView;

    invoke-virtual {p3, p5}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_3

    :cond_3
    const/4 p3, 0x1

    if-ne v2, p3, :cond_4

    const p3, 0x7f150294

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextAppearance(I)V

    goto :goto_3

    :cond_4
    if-ne v2, v4, :cond_5

    const p3, 0x7f150298

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextAppearance(I)V

    goto :goto_3

    :cond_5
    const/4 p3, 0x3

    if-ne v2, p3, :cond_6

    const p3, 0x7f15029f

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextAppearance(I)V

    :cond_6
    :goto_3
    new-instance p3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p5, -0x2

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p3, p5, p5, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v2, 0x10

    iput v2, p3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;->mLeftLabel:Landroid/widget/TextView;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Landroid/view/View;->setTextAlignment(I)V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;->mLeftLabel:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/view/View;->setFocusable(Z)V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;->mLeftLabel:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/view/View;->setImportantForAccessibility(I)V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;->mLeftLabel:Landroid/widget/TextView;

    invoke-virtual {p4, v5, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p3, Landroid/widget/TextView;

    invoke-direct {p3, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;->mRightLabel:Landroid/widget/TextView;

    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setTextAppearance(I)V

    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p3, 0x0

    invoke-direct {p2, p5, p5, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iput v2, p2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;->mRightLabel:Landroid/widget/TextView;

    invoke-virtual {p3, v1}, Landroid/view/View;->setFocusable(Z)V

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;->mRightLabel:Landroid/widget/TextView;

    const/4 v1, 0x6

    invoke-virtual {p3, v1}, Landroid/view/View;->setTextAlignment(I)V

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;->mRightLabel:Landroid/widget/TextView;

    invoke-virtual {p3, v4}, Landroid/view/View;->setImportantForAccessibility(I)V

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;->mRightLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;->mOption:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;->convertOptionToRightString(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;->mRightLabel:Landroid/widget/TextView;

    invoke-virtual {p4, p3, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p2, p5, p5, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iput v2, p2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {p4, v4}, Landroid/view/View;->setImportantForAccessibility(I)V

    invoke-virtual {p1, p4, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;

    invoke-virtual {p4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p4
.end method

.method private createOptionIcon(Landroid/widget/LinearLayout;Z)Landroid/view/View;
    .locals 3

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;->mOption:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;

    instance-of v1, v1, Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;

    if-eqz v1, :cond_0

    const v1, 0x7f0804ba

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;->mOption:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;->getDrawableIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;->a(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setMaxWidth(I)V

    invoke-virtual {v0, p2}, Landroid/view/View;->setEnabled(Z)V

    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    const/4 v2, -0x2

    invoke-direct {p2, v2, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070c23

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070c22

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070c13

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    const/16 v1, 0x10

    iput v1, p2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {p1, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;->mLabelView:Landroid/view/View;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;)Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;->mOption:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;->mOptionIcon:Landroid/view/View;

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;->mRowType:I

    return p0
.end method


# virtual methods
.method public getLabelText()Ljava/lang/CharSequence;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;->mLeftLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public isEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;->mIsEnabled:Z

    return p0
.end method

.method public setButtonId(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;->mButton:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setId(I)V

    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;->mOption:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;->mButton:Landroid/view/View;

    check-cast v0, Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;->mOption:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;->b(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;

    iget-object v0, p1, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->mDelegate:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$SectionDelegate;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;->mOption:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;

    invoke-interface {v0, p1, p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$SectionDelegate;->onPaymentOptionChanged(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;)V

    :cond_1
    return-void
.end method

.method public setLeftLabel(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;->setLeftLabel(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setLeftLabel(Ljava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;->mLeftLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;->mRowType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;->mItemLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow$1;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow$1;-><init>(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$OptionRow;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    :cond_0
    return-void
.end method
