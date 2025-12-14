.class public Lcom/sec/terrace/content/browser/input/TinWebSelectDialog;
.super Landroid/app/Dialog;
.source "SourceFile"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDoneButtonEnabled:Z

.field private mDoneInputListener:Landroid/view/View$OnClickListener;

.field private final mElevationValue:F

.field private mListView:Landroid/widget/ListView;

.field private mNextButtonEnabled:Z

.field private mNextInputListener:Landroid/view/View$OnClickListener;

.field private mPrevButtonEnabled:Z

.field private mPrevInputListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    sget v0, Lcom/sec/terrace/R$style;->WebSelectDialogTheme:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/sec/terrace/content/browser/input/TinWebSelectDialog;->mContext:Landroid/content/Context;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/sec/terrace/R$dimen;->webselect_layout_elevation:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/sec/terrace/content/browser/input/TinWebSelectDialog;->mElevationValue:F

    return-void
.end method

.method private setElevation(Landroid/view/View;F)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/view/View;->setElevation(F)V

    return-void
.end method


# virtual methods
.method public onChromeViewSizeChanged()V
    .locals 12

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    sget v2, Lcom/sec/terrace/R$id;->selectContentPanelOut:I

    invoke-virtual {p0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    sget v3, Lcom/sec/terrace/R$id;->webSelectDialog:I

    invoke-virtual {p0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    if-eqz v3, :cond_3

    if-eqz v2, :cond_3

    iget-object v4, p0, Lcom/sec/terrace/content/browser/input/TinWebSelectDialog;->mListView:Landroid/widget/ListView;

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/sec/terrace/R$dimen;->webselect_button_container_height:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x6

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int/2addr v5, v4

    iget-object v4, p0, Lcom/sec/terrace/content/browser/input/TinWebSelectDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    const/4 v6, 0x0

    move v7, v6

    move v8, v7

    :goto_0
    invoke-interface {v4}, Landroid/widget/Adapter;->getCount()I

    move-result v9

    if-ge v7, v9, :cond_0

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/sec/terrace/content/browser/input/TinWebSelectDialog;->mListView:Landroid/widget/ListView;

    invoke-interface {v4, v7, v9, v10}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-virtual {v9, v10, v11}, Landroid/view/View;->measure(II)V

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v8, v9

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/sec/terrace/content/browser/input/TinWebSelectDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/AdapterView;->getCount()I

    move-result v4

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v6, Lcom/sec/terrace/R$dimen;->webselect_list_scroll_padding:I

    invoke-virtual {p0, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    mul-int/2addr v4, p0

    add-int/2addr v4, v8

    new-instance p0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-direct {p0, v6, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget p0, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne p0, v1, :cond_2

    sget p0, Lcom/sec/terrace/R$dimen;->webselect_start_padding_land:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    sget v1, Lcom/sec/terrace/R$dimen;->webselect_top_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sget v2, Lcom/sec/terrace/R$dimen;->webselect_end_padding_land:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sget v4, Lcom/sec/terrace/R$dimen;->webselect_bottom_padding:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {v3, p0, v1, v2, v0}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    if-ne p0, v1, :cond_3

    sget p0, Lcom/sec/terrace/R$dimen;->webselect_start_padding_port:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    sget v1, Lcom/sec/terrace/R$dimen;->webselect_top_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sget v2, Lcom/sec/terrace/R$dimen;->webselect_end_padding_port:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sget v4, Lcom/sec/terrace/R$dimen;->webselect_bottom_padding:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {v3, p0, v1, v2, v0}, Landroid/view/View;->setPadding(IIII)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x51

    invoke-virtual {p1, v0}, Landroid/view/Window;->setGravity(I)V

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget v1, p0, Lcom/sec/terrace/content/browser/input/TinWebSelectDialog;->mElevationValue:F

    invoke-direct {p0, v0, v1}, Lcom/sec/terrace/content/browser/input/TinWebSelectDialog;->setElevation(Landroid/view/View;F)V

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-virtual {p1, v0, v1}, Landroid/view/Window;->setLayout(II)V

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    const v0, 0x3ee66666    # 0.45f

    invoke-virtual {p1, v0}, Landroid/view/Window;->setDimAmount(F)V

    invoke-static {}, Lcom/sec/terrace/TinTerraceInternals;->isWearOs()Z

    move-result p1

    if-eqz p1, :cond_0

    sget p1, Lcom/sec/terrace/R$layout;->webselect_dialog_wearos:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    goto :goto_0

    :cond_0
    sget p1, Lcom/sec/terrace/R$layout;->webselect_dialog:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    :goto_0
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/sec/terrace/content/browser/input/TinWebSelectDialog;->rebuildView(Z)V

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/input/TinWebSelectDialog;->onChromeViewSizeChanged()V

    return-void
.end method

.method public rebuildView(Z)V
    .locals 7

    sget v0, Lcom/sec/terrace/R$id;->WebSelectPrev:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    sget v1, Lcom/sec/terrace/R$id;->WebSelectNext:I

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    sget v2, Lcom/sec/terrace/R$id;->WebSelectDone:I

    invoke-virtual {p0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    if-nez v2, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v3, p0, Lcom/sec/terrace/content/browser/input/TinWebSelectDialog;->mPrevInputListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v3, p0, Lcom/sec/terrace/content/browser/input/TinWebSelectDialog;->mPrevButtonEnabled:Z

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    iget-boolean v3, p0, Lcom/sec/terrace/content/browser/input/TinWebSelectDialog;->mPrevButtonEnabled:Z

    invoke-virtual {v0, v3}, Landroid/view/View;->setFocusable(Z)V

    iget-object v3, p0, Lcom/sec/terrace/content/browser/input/TinWebSelectDialog;->mNextInputListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v3, p0, Lcom/sec/terrace/content/browser/input/TinWebSelectDialog;->mNextButtonEnabled:Z

    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    iget-boolean v3, p0, Lcom/sec/terrace/content/browser/input/TinWebSelectDialog;->mNextButtonEnabled:Z

    invoke-virtual {v1, v3}, Landroid/view/View;->setFocusable(Z)V

    iget-object v3, p0, Lcom/sec/terrace/content/browser/input/TinWebSelectDialog;->mDoneInputListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v3, p0, Lcom/sec/terrace/content/browser/input/TinWebSelectDialog;->mDoneButtonEnabled:Z

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    iget-boolean v3, p0, Lcom/sec/terrace/content/browser/input/TinWebSelectDialog;->mDoneButtonEnabled:Z

    invoke-virtual {v2, v3}, Landroid/view/View;->setFocusable(Z)V

    iget-object v3, p0, Lcom/sec/terrace/content/browser/input/TinWebSelectDialog;->mListView:Landroid/widget/ListView;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_1

    sget v3, Lcom/sec/terrace/R$id;->selectContentPanel:I

    invoke-virtual {p0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/sec/terrace/content/browser/input/TinWebSelectDialog;->mListView:Landroid/widget/ListView;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    invoke-direct {v5, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    if-eqz p1, :cond_2

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {v1, p1}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {v2, p1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_2
    invoke-static {}, Lcom/sec/terrace/TinTerraceInternals;->isWearOs()Z

    move-result p1

    if-eqz p1, :cond_3

    sget p1, Lcom/sec/terrace/R$drawable;->bottom_text_button_bg_selector:I

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {v1, p1}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {v2, p1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p0, p0, Lcom/sec/terrace/content/browser/input/TinWebSelectDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/sec/terrace/R$color;->button_text_color_selector_wearos:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_3
    sget p0, Lcom/sec/terrace/R$drawable;->text_action_btn_material_light_selectpopup:I

    invoke-virtual {v0, p0}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {v1, p0}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_0
    return-void

    :cond_4
    :goto_1
    const-string p0, "TinWebSelectDialog"

    const-string p1, "rebuildView: Invalid Button"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setButtonEnabled(IZ)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const-string p0, "TinWebSelectDialog"

    const-string p1, "setButtonEnabled: Invalid Button"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iput-boolean p2, p0, Lcom/sec/terrace/content/browser/input/TinWebSelectDialog;->mDoneButtonEnabled:Z

    goto :goto_0

    :cond_1
    iput-boolean p2, p0, Lcom/sec/terrace/content/browser/input/TinWebSelectDialog;->mPrevButtonEnabled:Z

    goto :goto_0

    :cond_2
    iput-boolean p2, p0, Lcom/sec/terrace/content/browser/input/TinWebSelectDialog;->mNextButtonEnabled:Z

    :goto_0
    return-void
.end method

.method public setButtonOnClickListener(ILandroid/view/View$OnClickListener;)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const-string p0, "TinWebSelectDialog"

    const-string p1, "setButtonOnClickListener: Invalid Button"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lcom/sec/terrace/content/browser/input/TinWebSelectDialog;->mDoneInputListener:Landroid/view/View$OnClickListener;

    goto :goto_0

    :cond_1
    iput-object p2, p0, Lcom/sec/terrace/content/browser/input/TinWebSelectDialog;->mPrevInputListener:Landroid/view/View$OnClickListener;

    goto :goto_0

    :cond_2
    iput-object p2, p0, Lcom/sec/terrace/content/browser/input/TinWebSelectDialog;->mNextInputListener:Landroid/view/View$OnClickListener;

    :goto_0
    return-void
.end method

.method public setListView(Landroid/widget/ListView;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/terrace/content/browser/input/TinWebSelectDialog;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    sget v0, Lcom/sec/terrace/R$id;->selectContentPanel:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sec/terrace/content/browser/input/TinWebSelectDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iput-object p1, p0, Lcom/sec/terrace/content/browser/input/TinWebSelectDialog;->mListView:Landroid/widget/ListView;

    return-void
.end method

.method public show()V
    .locals 3

    iget-object v0, p0, Lcom/sec/terrace/content/browser/input/TinWebSelectDialog;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    const/16 v2, 0x10

    if-eq v1, v2, :cond_0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_0
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method
