.class public Lcom/sec/android/app/sbrowser/settings/PermissionListAdapter;
.super Landroidx/recyclerview/widget/u0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/settings/PermissionListAdapter$DescriptionViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/u0;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mListener:Lcom/sec/android/app/sbrowser/settings/PermissionListAdapterListner;

.field private mMasterSwitchStatus:Z

.field private mOriginList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/settings/WebsiteItem;",
            ">;"
        }
    .end annotation
.end field

.field private mPaddingEnd:I

.field private mPaddingStart:I

.field private mPermissionDescription:Ljava/lang/String;

.field private mPermissionType:I

.field private mWebsiteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/settings/website/Website;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;ILjava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/settings/website/Website;",
            ">;I",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/settings/WebsiteItem;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/recyclerview/widget/u0;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/settings/PermissionListAdapter;->mPaddingStart:I

    iput v0, p0, Lcom/sec/android/app/sbrowser/settings/PermissionListAdapter;->mPaddingEnd:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/PermissionListAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/PermissionListAdapter;->mWebsiteList:Ljava/util/List;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f07172f

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/sec/android/app/sbrowser/settings/PermissionListAdapter;->mPaddingStart:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07172e

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/PermissionListAdapter;->mPaddingEnd:I

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/settings/PermissionListAdapter;->mOriginList:Ljava/util/List;

    iput p3, p0, Lcom/sec/android/app/sbrowser/settings/PermissionListAdapter;->mPermissionType:I

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/settings/PermissionListAdapter;->mPermissionDescription:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(ILjava/lang/String;Landroid/widget/ImageView;Landroid/content/Context;Ljava/util/List;ILandroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;J)V
    .locals 0

    invoke-static/range {p0 .. p10}, Lcom/sec/android/app/sbrowser/settings/PermissionListAdapter;->lambda$loadpermissionicon$1(ILjava/lang/String;Landroid/widget/ImageView;Landroid/content/Context;Ljava/util/List;ILandroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;J)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/settings/PermissionListAdapter;Lcom/sec/android/app/sbrowser/settings/PermissionItemViewHolder;ILandroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/settings/PermissionListAdapter;->lambda$bindItemViewHolder$0(Lcom/sec/android/app/sbrowser/settings/PermissionItemViewHolder;ILandroid/widget/CompoundButton;Z)V

    return-void
.end method

.method private bindDescriptionViewHolder(Lcom/sec/android/app/sbrowser/settings/PermissionListAdapter$DescriptionViewHolder;I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/PermissionListAdapter;->mPermissionDescription:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/settings/PermissionListAdapter$DescriptionViewHolder;->setSummary(Ljava/lang/String;)V

    return-void
.end method

.method private bindItemViewHolder(Landroidx/recyclerview/widget/h1;I)V
    .locals 16

    move-object/from16 v9, p0

    move/from16 v10, p2

    move-object/from16 v11, p1

    check-cast v11, Lcom/sec/android/app/sbrowser/settings/PermissionItemViewHolder;

    invoke-virtual {v11}, Lcom/sec/android/app/sbrowser/settings/PermissionItemViewHolder;->getRowView()Landroid/view/View;

    move-result-object v12

    const/4 v13, 0x3

    const/4 v0, 0x2

    const/4 v14, 0x0

    const/4 v1, 0x1

    if-ne v10, v1, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/settings/PermissionListAdapter;->getItemCount()I

    move-result v2

    if-ne v2, v0, :cond_0

    const/16 v0, 0xf

    invoke-virtual {v11, v0}, Lcom/sec/android/app/sbrowser/common/view/RoundedViewHolder;->setRoundMode(I)V

    goto :goto_0

    :cond_0
    if-ne v10, v1, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/settings/PermissionListAdapter;->getItemCount()I

    move-result v2

    if-le v2, v0, :cond_1

    invoke-virtual {v11, v13}, Lcom/sec/android/app/sbrowser/common/view/RoundedViewHolder;->setRoundMode(I)V

    goto :goto_0

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/settings/PermissionListAdapter;->getItemCount()I

    move-result v0

    sub-int/2addr v0, v1

    if-ne v10, v0, :cond_2

    const/16 v0, 0xc

    invoke-virtual {v11, v0}, Lcom/sec/android/app/sbrowser/common/view/RoundedViewHolder;->setRoundMode(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {v11, v14}, Lcom/sec/android/app/sbrowser/common/view/RoundedViewHolder;->setRoundMode(I)V

    :goto_0
    iget-object v0, v9, Lcom/sec/android/app/sbrowser/settings/PermissionListAdapter;->mOriginList:Ljava/util/List;

    add-int/lit8 v15, v10, -0x1

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/settings/WebsiteItem;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/WebsiteItem;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/WebsiteItem;->getBackgroundColor()I

    move-result v0

    const/4 v8, -0x1

    if-ne v0, v8, :cond_3

    invoke-virtual {v11}, Lcom/sec/android/app/sbrowser/settings/PermissionItemViewHolder;->getImageView()Landroid/widget/ImageView;

    move-result-object v1

    iget-object v7, v9, Lcom/sec/android/app/sbrowser/settings/PermissionListAdapter;->mContext:Landroid/content/Context;

    iget-object v6, v9, Lcom/sec/android/app/sbrowser/settings/PermissionListAdapter;->mOriginList:Ljava/util/List;

    const/4 v3, 0x6

    const/16 v4, 0x40

    move-object/from16 v0, p0

    move-object v5, v7

    move v14, v8

    move v8, v15

    invoke-virtual/range {v0 .. v8}, Lcom/sec/android/app/sbrowser/settings/PermissionListAdapter;->loadpermissionicon(Landroid/widget/ImageView;Ljava/lang/String;IILandroid/content/Context;Ljava/util/List;Landroid/content/Context;I)V

    goto :goto_1

    :cond_3
    move v14, v8

    :goto_1
    iget-object v0, v11, Lcom/sec/android/app/sbrowser/settings/PermissionItemViewHolder;->mUrl:Landroid/widget/TextView;

    iget-object v1, v9, Lcom/sec/android/app/sbrowser/settings/PermissionListAdapter;->mWebsiteList:Ljava/util/List;

    invoke-interface {v1, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/settings/website/Website;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/settings/website/Website;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v11, Lcom/sec/android/app/sbrowser/settings/PermissionItemViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {v9, v12}, Lcom/sec/android/app/sbrowser/settings/PermissionListAdapter;->setBackgroundResourceForItems(Landroid/view/View;)V

    iget v0, v9, Lcom/sec/android/app/sbrowser/settings/PermissionListAdapter;->mPaddingStart:I

    if-eq v0, v14, :cond_4

    iget-object v1, v11, Lcom/sec/android/app/sbrowser/settings/PermissionItemViewHolder;->mUrl:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    iget-object v3, v11, Lcom/sec/android/app/sbrowser/settings/PermissionItemViewHolder;->mUrl:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingEnd()I

    move-result v3

    iget-object v4, v11, Lcom/sec/android/app/sbrowser/settings/PermissionItemViewHolder;->mUrl:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    iget-object v0, v11, Lcom/sec/android/app/sbrowser/settings/PermissionItemViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingStart()I

    move-result v1

    iget-object v2, v11, Lcom/sec/android/app/sbrowser/settings/PermissionItemViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    iget v3, v9, Lcom/sec/android/app/sbrowser/settings/PermissionListAdapter;->mPaddingEnd:I

    iget-object v4, v11, Lcom/sec/android/app/sbrowser/settings/PermissionItemViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPaddingRelative(IIII)V

    :cond_4
    iget-object v0, v11, Lcom/sec/android/app/sbrowser/settings/PermissionItemViewHolder;->mDivider:Landroid/view/View;

    iget-object v1, v9, Lcom/sec/android/app/sbrowser/settings/PermissionListAdapter;->mWebsiteList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v10, v1, :cond_5

    const/16 v1, 0x8

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v9, Lcom/sec/android/app/sbrowser/settings/PermissionListAdapter;->mWebsiteList:Ljava/util/List;

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/settings/website/Website;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/website/Website;->isPermissionAllowed()Z

    move-result v0

    iget v1, v9, Lcom/sec/android/app/sbrowser/settings/PermissionListAdapter;->mPermissionType:I

    if-ne v1, v13, :cond_6

    xor-int/lit8 v0, v0, 0x1

    :cond_6
    iget-object v1, v11, Lcom/sec/android/app/sbrowser/settings/PermissionItemViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    iget-object v0, v11, Lcom/sec/android/app/sbrowser/settings/PermissionItemViewHolder;->mRowView:Landroid/view/View;

    iget-boolean v1, v9, Lcom/sec/android/app/sbrowser/settings/PermissionListAdapter;->mMasterSwitchStatus:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, v11, Lcom/sec/android/app/sbrowser/settings/PermissionItemViewHolder;->mRowView:Landroid/view/View;

    iget-boolean v1, v9, Lcom/sec/android/app/sbrowser/settings/PermissionListAdapter;->mMasterSwitchStatus:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, v11, Lcom/sec/android/app/sbrowser/settings/PermissionItemViewHolder;->mUrl:Landroid/widget/TextView;

    iget-boolean v1, v9, Lcom/sec/android/app/sbrowser/settings/PermissionListAdapter;->mMasterSwitchStatus:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, v11, Lcom/sec/android/app/sbrowser/settings/PermissionItemViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    iget-boolean v1, v9, Lcom/sec/android/app/sbrowser/settings/PermissionListAdapter;->mMasterSwitchStatus:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-boolean v0, v9, Lcom/sec/android/app/sbrowser/settings/PermissionListAdapter;->mMasterSwitchStatus:Z

    if-eqz v0, :cond_7

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_7
    const/high16 v0, 0x3f000000    # 0.5f

    :goto_3
    iget-object v1, v11, Lcom/sec/android/app/sbrowser/settings/PermissionItemViewHolder;->mRowView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, v11, Lcom/sec/android/app/sbrowser/settings/PermissionItemViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    iget-object v1, v9, Lcom/sec/android/app/sbrowser/settings/PermissionListAdapter;->mWebsiteList:Ljava/util/List;

    invoke-interface {v1, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v9, v11, v15}, Lcom/sec/android/app/sbrowser/settings/PermissionListAdapter;->setContentDescription(Lcom/sec/android/app/sbrowser/settings/PermissionItemViewHolder;I)V

    iget-object v0, v11, Lcom/sec/android/app/sbrowser/settings/PermissionItemViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/s;

    invoke-direct {v1, v9, v11, v10}, Lcom/sec/android/app/sbrowser/settings/s;-><init>(Lcom/sec/android/app/sbrowser/settings/PermissionListAdapter;Lcom/sec/android/app/sbrowser/settings/PermissionItemViewHolder;I)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, v11, Lcom/sec/android/app/sbrowser/settings/PermissionItemViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    return-void
.end method

.method private getDescriptionViewHolder(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/h1;
    .locals 1

    const p0, 0x7f0e0561

    const/4 v0, 0x0

    invoke-static {p1, p0, p1, v0}, Landroidx/recyclerview/widget/P;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    new-instance p1, Lcom/sec/android/app/sbrowser/settings/PermissionListAdapter$DescriptionViewHolder;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/settings/PermissionListAdapter$DescriptionViewHolder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method private getItemViewHolder(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/h1;
    .locals 2

    const v0, 0x7f0e0564

    const/4 v1, 0x0

    invoke-static {p1, v0, p1, v1}, Landroidx/recyclerview/widget/P;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/PermissionItemViewHolder;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/sbrowser/settings/PermissionItemViewHolder;-><init>(Landroid/view/View;Lcom/sec/android/app/sbrowser/settings/PermissionListAdapter;)V

    return-object v0
.end method

.method private synthetic lambda$bindItemViewHolder$0(Lcom/sec/android/app/sbrowser/settings/PermissionItemViewHolder;ILandroid/widget/CompoundButton;Z)V
    .locals 3

    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/settings/website/Website;

    iget v1, p0, Lcom/sec/android/app/sbrowser/settings/PermissionListAdapter;->mPermissionType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    xor-int/lit8 p4, p4, 0x1

    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    const v1, 0x7f140cce

    invoke-virtual {p3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    if-eqz p4, :cond_1

    const-string v1, "On"

    goto :goto_0

    :cond_1
    const-string v1, "Off"

    :goto_0
    const-string v2, "567"

    invoke-static {v2, p3, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p3, 0x1

    if-eqz p4, :cond_2

    move p4, p3

    goto :goto_1

    :cond_2
    const/4 p4, 0x2

    :goto_1
    invoke-virtual {v0, p4}, Lcom/sec/android/app/sbrowser/settings/website/Website;->setPermissionContentSetting(I)V

    sub-int/2addr p2, p3

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/PermissionListAdapter;->setContentDescription(Lcom/sec/android/app/sbrowser/settings/PermissionItemViewHolder;I)V

    return-void
.end method

.method private static lambda$loadpermissionicon$1(ILjava/lang/String;Landroid/widget/ImageView;Landroid/content/Context;Ljava/util/List;ILandroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;J)V
    .locals 2

    if-eqz p8, :cond_3

    invoke-virtual {p8}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p7, :cond_3

    const/4 p6, 0x6

    if-ne p0, p6, :cond_0

    const-string p0, "PermissionAdapter"

    const-string p3, "onFaviconAvailable - adding to Bitmap Cache"

    invoke-static {p0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;->getInstance()Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;

    move-result-object p0

    invoke-virtual {p0, p1, p7, p9, p10}, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;->addBitmapToCache(Ljava/lang/String;Landroid/graphics/Bitmap;J)V

    invoke-virtual {p2, p7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    :cond_0
    const/4 p6, 0x1

    if-ne p0, p6, :cond_4

    const-wide/16 v0, 0x0

    cmp-long p0, p9, v0

    if-nez p0, :cond_2

    invoke-static {p7}, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;->getByteArrayForBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ColorUtils;->getDominantColor([B)I

    move-result p0

    const/4 p9, -0x1

    if-ne p0, p9, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;->getInstance()Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;

    move-result-object p9

    invoke-virtual {p9}, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;->getFaviconHelper()Lcom/sec/terrace/browser/favicon/TerraceFaviconHelper;

    move-result-object p9

    int-to-long v0, p0

    invoke-virtual {p9, p8, v0, v1}, Lcom/sec/terrace/browser/favicon/TerraceFaviconHelper;->updateDominantColor(Ljava/lang/String;J)V

    move-wide p9, v0

    :cond_2
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/high16 p8, 0x3f800000    # 1.0f

    invoke-static {p6, p8, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    const/high16 p8, 0x41a00000    # 20.0f

    invoke-static {p6, p8, p3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p3

    float-to-int p3, p3

    new-instance p6, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p6}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 p8, 0x0

    invoke-virtual {p6, p8}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    long-to-int p8, p9

    invoke-virtual {p6, p8}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {p6, p0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {p6, p3, p3}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    invoke-virtual {p2, p6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;->getInstance()Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;

    move-result-object p0

    invoke-virtual {p0, p1, p7, p9, p10}, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;->addBitmapToCache(Ljava/lang/String;Landroid/graphics/Bitmap;J)V

    if-eqz p4, :cond_4

    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_4

    if-lez p5, :cond_4

    invoke-interface {p4, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/settings/WebsiteItem;

    invoke-virtual {p0, p8}, Lcom/sec/android/app/sbrowser/settings/WebsiteItem;->setBackgroundColor(I)V

    goto :goto_0

    :cond_3
    const p0, 0x7f080548

    invoke-virtual {p6, p0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const p1, 0x7f06098e

    invoke-virtual {p6, p1}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-static {p0, p1}, Lcom/sec/terrace/base/TerraceApiCompatibilityUtils;->setTint(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/PermissionListAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/PermissionListAdapter;->mWebsiteList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public getItemViewType(I)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public getListener()Lcom/sec/android/app/sbrowser/settings/PermissionListAdapterListner;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/PermissionListAdapter;->mListener:Lcom/sec/android/app/sbrowser/settings/PermissionListAdapterListner;

    return-object p0
.end method

.method public loadpermissionicon(Landroid/widget/ImageView;Ljava/lang/String;IILandroid/content/Context;Ljava/util/List;Landroid/content/Context;I)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            "Ljava/lang/String;",
            "II",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/settings/WebsiteItem;",
            ">;",
            "Landroid/content/Context;",
            "I)V"
        }
    .end annotation

    move-object/from16 v3, p1

    move-object/from16 v8, p2

    move/from16 v1, p3

    move/from16 v6, p8

    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v8, :cond_4

    if-eqz v3, :cond_4

    if-ltz v6, :cond_4

    if-ge v6, v0, :cond_4

    if-gtz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "1"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x10

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;->getInstance()Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;->getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;->getInstance()Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;->getDominantColorFromMemCache(Ljava/lang/String;)J

    move-result-wide v9

    const/high16 v5, 0x3f800000    # 1.0f

    const-wide/16 v11, -0x1

    const-wide/16 v13, 0x0

    const/4 v7, 0x6

    const/4 v15, 0x0

    const/4 v0, 0x1

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v16

    if-nez v16, :cond_2

    if-ne v1, v7, :cond_1

    invoke-virtual {v3, v15}, Landroid/widget/ImageView;->setColorFilter(I)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    :cond_1
    cmp-long v4, v9, v13

    if-eqz v4, :cond_4

    cmp-long v4, v9, v11

    if-eqz v4, :cond_4

    if-ne v1, v0, :cond_4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;->getInstance()Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;->getDominantColorFromMemCache(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual/range {p5 .. p5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v0, v5, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    invoke-virtual/range {p5 .. p5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    const/high16 v7, 0x41a00000    # 20.0f

    invoke-static {v0, v7, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    new-instance v5, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v5, v15}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    long-to-int v1, v1

    invoke-virtual {v5, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {v5, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {v5, v0, v0}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v4, p6

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/settings/WebsiteItem;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/settings/WebsiteItem;->setBackgroundColor(I)V

    goto/16 :goto_0

    :cond_2
    move-object/from16 v4, p6

    cmp-long v13, v9, v13

    if-eqz v13, :cond_3

    cmp-long v11, v9, v11

    if-eqz v11, :cond_3

    if-ne v1, v7, :cond_3

    const v7, 0x7f0800d2

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual/range {p5 .. p5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    invoke-static {v0, v5, v7}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    invoke-virtual/range {p5 .. p5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    const/high16 v11, 0x41a00000    # 20.0f

    invoke-static {v0, v11, v7}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    new-instance v7, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v7}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v7, v15}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    long-to-int v9, v9

    invoke-virtual {v7, v9}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {v7, v5}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {v7, v0, v0}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "Image Not present in cache :: Native call for "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "PermissionAdapter"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;->getInstance()Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;->getFaviconHelper()Lcom/sec/terrace/browser/favicon/TerraceFaviconHelper;

    move-result-object v9

    new-instance v10, Lcom/sec/android/app/sbrowser/settings/t;

    move-object v0, v10

    move/from16 v1, p3

    move-object/from16 v3, p1

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p8

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/sbrowser/settings/t;-><init>(ILjava/lang/String;Landroid/widget/ImageView;Landroid/content/Context;Ljava/util/List;ILandroid/content/Context;)V

    const/4 v0, 0x7

    move/from16 v1, p4

    invoke-virtual {v9, v8, v0, v1, v10}, Lcom/sec/terrace/browser/favicon/TerraceFaviconHelper;->getLocalFaviconImageForURL(Ljava/lang/String;IILcom/sec/terrace/browser/favicon/TerraceFaviconHelper$FaviconImageCallback;)Z

    :cond_4
    :goto_0
    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/h1;I)V
    .locals 2
    .param p1    # Landroidx/recyclerview/widget/h1;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/settings/PermissionListAdapter;->getItemViewType(I)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/PermissionListAdapter;->bindItemViewHolder(Landroidx/recyclerview/widget/h1;I)V

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/sec/android/app/sbrowser/settings/PermissionListAdapter$DescriptionViewHolder;

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/PermissionListAdapter;->bindDescriptionViewHolder(Lcom/sec/android/app/sbrowser/settings/PermissionListAdapter$DescriptionViewHolder;I)V

    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/h1;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/PermissionListAdapter;->getItemViewHolder(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/h1;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/PermissionListAdapter;->getDescriptionViewHolder(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/h1;

    move-result-object p0

    return-object p0
.end method

.method public setBackgroundResourceForItems(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/PermissionListAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/PermissionListAdapter;->getContext()Landroid/content/Context;

    move-result-object p0

    const v1, 0x7f080236

    invoke-virtual {p0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-static {v0, p1, p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setBackgroundDrawable(Landroid/content/Context;Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setContentDescription(Lcom/sec/android/app/sbrowser/settings/PermissionItemViewHolder;I)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/sec/android/app/sbrowser/settings/PermissionItemViewHolder;->mUrl:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/PermissionListAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f140dcc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/PermissionListAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/PermissionListAdapter;->mWebsiteList:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/settings/website/Website;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/website/Website;->isPermissionAllowed()Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f1402b0

    goto :goto_0

    :cond_0
    const p0, 0x7f1402af

    :goto_0
    invoke-virtual {v2, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/settings/PermissionItemViewHolder;->mRowView:Landroid/view/View;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setListener(Lcom/sec/android/app/sbrowser/settings/PermissionListAdapterListner;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/PermissionListAdapter;->mListener:Lcom/sec/android/app/sbrowser/settings/PermissionListAdapterListner;

    return-void
.end method

.method public setSwitchStatus(Z)V
    .locals 2

    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/PermissionListAdapter;->mPermissionType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :cond_1
    :goto_0
    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/settings/PermissionListAdapter;->mMasterSwitchStatus:Z

    return-void
.end method
