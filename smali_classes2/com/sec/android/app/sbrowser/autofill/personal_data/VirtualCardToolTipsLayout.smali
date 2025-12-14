.class public Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardToolTipsLayout;
.super Landroid/widget/PopupWindow;
.source "SourceFile"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mOldState:I

.field private mPopupView:Landroid/view/View;

.field private mVCPreview:Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardPreviewLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardToolTipsLayout;->mOldState:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardToolTipsLayout;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardToolTipsLayout;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardToolTipsLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardToolTipsLayout;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardToolTipsLayout;->mOldState:I

    return p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardToolTipsLayout;)Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardPreviewLayout;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardToolTipsLayout;->mVCPreview:Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardPreviewLayout;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardToolTipsLayout;I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardToolTipsLayout;->mOldState:I

    return-void
.end method

.method public static bridge synthetic e(Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardToolTipsLayout;Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardPreviewLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardToolTipsLayout;->mVCPreview:Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardPreviewLayout;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public showVirtualCardReviewTips(Lcom/sec/terrace/Terrace;FFFLandroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/graphics/drawable/BitmapDrawable;)V
    .locals 14

    move-object v1, p0

    move-object v2, p1

    iget-object v0, v1, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardToolTipsLayout;->mContext:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v3, 0x7f0e0907

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardToolTipsLayout;->mPopupView:Landroid/view/View;

    new-instance v3, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardToolTipsLayout$1;

    invoke-direct {v3, p0, p1}, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardToolTipsLayout$1;-><init>(Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardToolTipsLayout;Lcom/sec/terrace/Terrace;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v0, v1, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardToolTipsLayout;->mPopupView:Landroid/view/View;

    const v3, 0x7f0b0e29

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v3, v1, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardToolTipsLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0716a1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    const/high16 v5, 0x428c0000    # 70.0f

    mul-float/2addr v5, v4

    cmpl-float v5, p3, v5

    const/4 v6, 0x0

    if-lez v5, :cond_0

    int-to-float v3, v3

    sub-float v3, p3, v3

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x2

    invoke-virtual {v0, v6, v4, v6, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_0

    :cond_0
    mul-float v3, p4, v4

    add-float v3, v3, p3

    const v4, 0x7f0807d5

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    const/16 v4, 0x11

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setGravity(I)V

    :goto_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isDarkModeEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget-object v5, v1, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardToolTipsLayout;->mContext:Landroid/content/Context;

    const v7, 0x7f060dc7

    invoke-virtual {v5, v7}, Landroid/content/Context;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iget-object v4, v1, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardToolTipsLayout;->mContext:Landroid/content/Context;

    const v5, 0x7f0601be

    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    const v4, 0x7f1410bf

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, v1, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardToolTipsLayout;->mPopupView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    new-instance v0, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardToolTipsLayout$2;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardToolTipsLayout$2;-><init>(Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardToolTipsLayout;Lcom/sec/terrace/Terrace;)V

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    iget-object v0, v1, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardToolTipsLayout;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->isKeyboardShowing(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardToolTipsLayout;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->forcehideKeyboard(Landroid/app/Activity;)Z

    :cond_2
    move/from16 v0, p2

    float-to-int v0, v0

    float-to-int v3, v3

    move-object/from16 v4, p5

    invoke-virtual {p0, v4, v6, v0, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    iget-object v0, v1, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardToolTipsLayout;->mPopupView:Landroid/view/View;

    const v3, 0x7f0b0e2a

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/widget/LinearLayout;

    new-instance v13, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardToolTipsLayout$3;

    move-object v0, v13

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    move-object/from16 v6, p9

    move-object/from16 v7, p10

    move-object/from16 v8, p11

    move-object/from16 v9, p12

    move/from16 v10, p13

    move-object/from16 v11, p14

    invoke-direct/range {v0 .. v11}, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardToolTipsLayout$3;-><init>(Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardToolTipsLayout;Lcom/sec/terrace/Terrace;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/graphics/drawable/BitmapDrawable;)V

    invoke-virtual {v12, v13}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
