.class public Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;
.super Landroidx/recyclerview/widget/u0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter$Delegate;,
        Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/u0;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mDelegate:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter$Delegate;

.field private mGroupCount:I

.field private mHeaderExpandTracker:Landroid/util/SparseIntArray;

.field private mHistoryHeaderMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mHistoryItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/terrace/browser/history/TerraceHistoryItem;",
            ">;"
        }
    .end annotation
.end field

.field private mHistoryItemNums:[I

.field mIsGroupSelected:[Z

.field private final mItemEventListener:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryItemViewHolder$OnClickEventListener;

.field private final mListener:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter$Listener;

.field private mNonShareableCount:I

.field private mPreviousDay:J

.field private mPreviousDayVisitedItemsCount:I

.field private mViewTypes:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/sec/android/app/sbrowser/common/widget/ExpandableViewType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter$Delegate;Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter$Listener;)V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/u0;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mHistoryHeaderMap:Ljava/util/HashMap;

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter$1;-><init>(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mItemEventListener:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryItemViewHolder$OnClickEventListener;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mDelegate:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter$Delegate;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mListener:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter$Listener;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/u0;->setHasStableIds(Z)V

    const/16 p1, 0x5c

    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mIsGroupSelected:[Z

    return-void
.end method

.method public static synthetic a(Landroid/widget/TextView;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->lambda$setHoverListener$2(Landroid/widget/TextView;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->lambda$onCreateViewHolder$0(Landroid/view/View;I)V

    return-void
.end method

.method private bindHeaderViewHolder(Landroidx/recyclerview/widget/h1;ILcom/sec/android/app/sbrowser/common/widget/ExpandableViewType;)V
    .locals 4

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/common/widget/ExpandableViewType;->getDataIndex()I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->groupPositionToBin(I)I

    move-result p3

    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryHeaderViewHolder;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryHeaderViewHolder;->getHeaderCheckbox()Landroid/widget/CheckBox;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mDelegate:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter$Delegate;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter$Delegate;->isInActionMode()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    new-instance v2, Lcom/sec/android/app/sbrowser/sites/history/view/b;

    invoke-direct {v2, p0, v1, p3}, Lcom/sec/android/app/sbrowser/sites/history/view/b;-><init>(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;Landroid/widget/CheckBox;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mIsGroupSelected:[Z

    aget-boolean v2, v2, p3

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    invoke-direct {p0, p3}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->getLabel(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryHeaderViewHolder;->mSectionTitle:Landroid/widget/TextView;

    invoke-direct {p0, p3}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->getLabel(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p3, p1, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    const v1, 0x7f08022d

    invoke-virtual {p3, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p1, p1, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    invoke-virtual {p0, p1, p2, v3}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->setHeaderIndicatorAnimation(Landroid/view/View;IZ)V

    iget-object p1, v0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryHeaderViewHolder;->mRowView:Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->setGroupHeaderContentDescription(Landroid/view/View;I)V

    return-void
.end method

.method private bindItemViewHolder(Landroidx/recyclerview/widget/h1;ILcom/sec/android/app/sbrowser/common/widget/ExpandableViewType;)V
    .locals 18

    move-object/from16 v9, p0

    move/from16 v10, p2

    invoke-virtual/range {p3 .. p3}, Lcom/sec/android/app/sbrowser/common/widget/ExpandableViewType;->getDataIndex()I

    move-result v11

    move-object/from16 v12, p1

    check-cast v12, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryItemViewHolder;

    invoke-virtual {v12}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryItemViewHolder;->getRowView()Landroid/view/View;

    move-result-object v13

    const-string v1, "HistoryAdapter"

    if-nez v13, :cond_0

    const-string v0, "ItemView is null"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {v9, v10}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->getChild(I)Lcom/sec/terrace/browser/history/TerraceHistoryItem;

    move-result-object v14

    if-nez v14, :cond_1

    const-string v0, "No Item present in position "

    invoke-static {v10, v0, v1}, LV0/c;->s(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {v14}, Lcom/sec/terrace/browser/history/TerraceHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14}, Lcom/sec/terrace/browser/history/TerraceHistoryItem;->getTitle()Ljava/lang/String;

    move-result-object v8

    const/4 v2, 0x0

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v15}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v0, v2

    :goto_0
    if-nez v0, :cond_2

    move-object v0, v15

    :cond_2
    iget-object v3, v9, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    invoke-virtual {v14}, Lcom/sec/terrace/browser/history/TerraceHistoryItem;->getVisitTime()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v12, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryItemViewHolder;->mHistoryItemTime:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v12, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryItemViewHolder;->mHistoryItemTime:Landroid/widget/TextView;

    iget-object v4, v9, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mDelegate:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter$Delegate;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter$Delegate;->isInActionMode()Z

    move-result v4

    const/16 v7, 0x8

    const/4 v6, 0x0

    if-eqz v4, :cond_3

    move v4, v7

    goto :goto_1

    :cond_3
    move v4, v6

    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, v12, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryItemViewHolder;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v12, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryItemViewHolder;->mUrlText:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->getTitleTextViewWidth()I

    move-result v0

    iget-object v3, v12, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryItemViewHolder;->mTextView:Landroid/widget/TextView;

    iget-object v4, v9, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c000e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v3, v12, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryItemViewHolder;->mTextView:Landroid/widget/TextView;

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v3, v0, v4}, Landroid/view/View;->measure(II)V

    iget-object v0, v12, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryItemViewHolder;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v0, v12, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryItemViewHolder;->mTextView:Landroid/widget/TextView;

    invoke-direct {v9, v0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->setHoverListener(Landroid/widget/TextView;)V

    iget-object v0, v12, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryItemViewHolder;->mUrlText:Landroid/widget/TextView;

    invoke-direct {v9, v0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->setHoverListener(Landroid/widget/TextView;)V

    iget-object v0, v12, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryItemViewHolder;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v14}, Lcom/sec/terrace/browser/history/TerraceHistoryItem;->getBackgroundColor()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_4

    invoke-virtual {v12, v15, v8}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryItemViewHolder;->setDominantText(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryItemViewHolder;->getDominantTextView()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v12}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryItemViewHolder;->getImageView()Landroid/widget/ImageView;

    move-result-object v3

    const/16 v0, 0x40

    iget-object v5, v9, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mHistoryItemList:Ljava/util/List;

    const/16 v16, 0x6

    move-object/from16 v1, p0

    move-object v4, v15

    move-object/from16 v17, v5

    move/from16 v5, v16

    move v6, v0

    move v0, v7

    move-object/from16 v7, v17

    move-object/from16 p1, v13

    move-object v13, v8

    move v8, v11

    invoke-virtual/range {v1 .. v8}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->loadIcon(Landroid/widget/TextView;Landroid/widget/ImageView;Ljava/lang/String;IILjava/util/List;I)V

    goto :goto_2

    :cond_4
    move v0, v7

    move-object/from16 p1, v13

    move-object v13, v8

    invoke-virtual {v14}, Lcom/sec/terrace/browser/history/TerraceHistoryItem;->getBackgroundColor()I

    move-result v3

    if-eq v3, v2, :cond_5

    const-string v2, "IF ELSE :: TITLE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v12, v15, v13}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryItemViewHolder;->setDominantText(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v14}, Lcom/sec/terrace/browser/history/TerraceHistoryItem;->getBackgroundColor()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v12}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryItemViewHolder;->getImageView()Landroid/widget/ImageView;

    move-result-object v3

    invoke-direct {v9, v1, v2, v3}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->setImageDrawable(JLandroid/widget/ImageView;)V

    :cond_5
    :goto_2
    invoke-virtual {v12}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryItemViewHolder;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v9, v10}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->isLastChild(I)Z

    move-result v2

    invoke-virtual {v9, v10}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->isFirstChild(I)Z

    move-result v3

    invoke-direct {v9, v12, v2, v3}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->setBackgroundForItems(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryItemViewHolder;ZZ)V

    iget-object v2, v9, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mHistoryItemList:Ljava/util/List;

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/terrace/browser/history/TerraceHistoryItem;

    invoke-virtual {v2}, Lcom/sec/terrace/browser/history/TerraceHistoryItem;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, v9, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mDelegate:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter$Delegate;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter$Delegate;->isInActionMode()Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    move-object/from16 v3, p1

    invoke-direct {v9, v3, v2}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->setItemSelectedBackgroundHighlight(Landroid/view/View;Z)V

    const/4 v2, 0x0

    goto :goto_3

    :cond_6
    move-object/from16 v3, p1

    const/4 v2, 0x0

    invoke-direct {v9, v3, v2}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->setItemSelectedBackgroundHighlight(Landroid/view/View;Z)V

    :goto_3
    new-instance v4, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter$2;

    invoke-direct {v4, v9, v13, v15, v3}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter$2;-><init>(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V

    invoke-virtual {v1, v4}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v4, v9, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mDelegate:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter$Delegate;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter$Delegate;->isInActionMode()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v14}, Lcom/sec/terrace/browser/history/TerraceHistoryItem;->isSelected()Z

    move-result v0

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    if-eq v0, v2, :cond_8

    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    invoke-virtual {v1}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    goto :goto_4

    :cond_7
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_8
    :goto_4
    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    invoke-direct {v9, v0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->getCheckBoxContentDescription(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, ", "

    invoke-static {v13, v1}, Lt/b;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v15}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->getDomainName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, v9, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mDelegate:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter$Delegate;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter$Delegate;->isInActionMode()Z

    move-result v4

    if-eqz v4, :cond_9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v9, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f140b8f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_9
    invoke-virtual {v3, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;Landroid/widget/CheckBox;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->lambda$bindHeaderViewHolder$1(Landroid/widget/CheckBox;ILandroid/view/View;)V

    return-void
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;)Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter$Delegate;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mDelegate:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter$Delegate;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;)Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter$Listener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mListener:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter$Listener;

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;Z)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->getCheckBoxContentDescription(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getCheckBoxContentDescription(Z)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-eqz p1, :cond_0

    const p1, 0x7f140289

    goto :goto_0

    :cond_0
    const p1, 0x7f14028a

    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getLabel(I)Ljava/lang/String;
    .locals 6

    if-eqz p1, :cond_6

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/4 v1, 0x2

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mHistoryHeaderMap:Ljava/util/HashMap;

    const v2, 0x7f1405d3

    if-eqz v1, :cond_3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mHistoryHeaderMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-eq v3, v0, :cond_2

    const v0, 0x18016

    goto :goto_0

    :cond_2
    const v0, 0x18012

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {p0, v1, v2, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f1405d7

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f1405d6

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f1405d4

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getTitleTextViewWidth()I
    .locals 4

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070f3c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070642

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    add-int/2addr v2, v1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f070646

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    add-int/2addr v1, v2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f070648

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    add-int/2addr p0, v1

    sub-int/2addr v0, p0

    return v0
.end method

.method private getViewType(I)Lcom/sec/android/app/sbrowser/common/widget/ExpandableViewType;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mViewTypes:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/common/widget/ExpandableViewType;

    return-object p0
.end method

.method public static bridge synthetic h(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;JLandroid/widget/ImageView;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->setImageDrawable(JLandroid/widget/ImageView;)V

    return-void
.end method

.method public static bridge synthetic i(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->setItemSelectedBackgroundHighlight(Landroid/view/View;Z)V

    return-void
.end method

.method private synthetic lambda$bindHeaderViewHolder$1(Landroid/widget/CheckBox;ILandroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mListener:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter$Listener;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter$Listener;->updateHeaderCheck(ZI)V

    return-void
.end method

.method private synthetic lambda$onCreateViewHolder$0(Landroid/view/View;I)V
    .locals 1

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->onHeaderClick(I)V

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->setGroupHeaderContentDescription(Landroid/view/View;I)V

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->setHeaderIndicatorAnimation(Landroid/view/View;IZ)V

    return-void
.end method

.method private static synthetic lambda$setHoverListener$2(Landroid/widget/TextView;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return p1

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v0, 0x7

    const/4 v1, 0x0

    if-eq p2, v0, :cond_2

    const/16 v0, 0x9

    if-eq p2, v0, :cond_2

    const/16 v0, 0xa

    if-eq p2, v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Landroid/view/View;->setTooltipText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p2

    if-nez p2, :cond_3

    return p1

    :cond_3
    invoke-virtual {p2}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    if-lez v0, :cond_4

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, v0}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result p2

    if-lez p2, :cond_4

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/view/View;->setTooltipText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v1}, Landroid/view/View;->setTooltipText(Ljava/lang/CharSequence;)V

    :goto_0
    return p1
.end method

.method private setBackgroundForItems(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryItemViewHolder;ZZ)V
    .locals 3

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryItemViewHolder;->getRowView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f060167

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    if-eqz p2, :cond_0

    const/16 p0, 0xf

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/common/view/RoundedViewHolder;->setRoundMode(I)V

    iget-object p0, p1, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryItemViewHolder;->mListDivider:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_0
    const v1, 0x7f060bd0

    if-eqz p3, :cond_1

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/common/view/RoundedViewHolder;->setRoundMode(I)V

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryItemViewHolder;->mListDivider:Landroid/view/View;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    const/16 p0, 0xc

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/common/view/RoundedViewHolder;->setRoundMode(I)V

    iget-object p0, p1, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryItemViewHolder;->mListDivider:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/common/view/RoundedViewHolder;->setRoundMode(I)V

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryItemViewHolder;->mListDivider:Landroid/view/View;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_0
    return-void
.end method

.method private setHoverListener(Landroid/widget/TextView;)V
    .locals 0

    new-instance p0, Lcom/sec/android/app/sbrowser/sites/history/view/a;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sites/history/view/a;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    return-void
.end method

.method private setImageDrawable(JLandroid/widget/ImageView;)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mContext:Landroid/content/Context;

    const p1, 0x7f060bcd

    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    int-to-long p1, p0

    :cond_1
    const p0, 0x7f080324

    invoke-virtual {p3, p0}, Landroid/view/View;->setBackgroundResource(I)V

    long-to-int p0, p1

    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method private setItemSelectedBackgroundHighlight(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mContext:Landroid/content/Context;

    const p2, 0x7f080237

    invoke-virtual {p0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mContext:Landroid/content/Context;

    const p2, 0x7f080236

    invoke-virtual {p0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public checkExpanded(I)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mHeaderExpandTracker:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getAbsoluteChild(I)Lcom/sec/terrace/browser/history/TerraceHistoryItem;
    .locals 1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mHistoryItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mHistoryItemList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/terrace/browser/history/TerraceHistoryItem;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getChild(I)Lcom/sec/terrace/browser/history/TerraceHistoryItem;
    .locals 2

    if-ltz p1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mHistoryItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mGroupCount:I

    add-int/2addr v0, v1

    if-lt p1, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mViewTypes:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mViewTypes:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/common/widget/ExpandableViewType;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/widget/ExpandableViewType;->getDataIndex()I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mHistoryItemList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/terrace/browser/history/TerraceHistoryItem;

    return-object p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getChildPosition(I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->getViewType(I)Lcom/sec/android/app/sbrowser/common/widget/ExpandableViewType;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mViewTypes:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mViewTypes:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/common/widget/ExpandableViewType;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/widget/ExpandableViewType;->getDataIndex()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getChildrenCount(I)I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mHistoryItemNums:[I

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->groupPositionToBin(I)I

    move-result p0

    aget p0, v0, p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getChildrenCountByGroup(I)I
    .locals 1

    if-ltz p1, :cond_1

    const/16 v0, 0x5c

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mHistoryItemNums:[I

    aget p0, p0, p1

    return p0

    :cond_1
    :goto_0
    const/4 p0, -0x1

    return p0
.end method

.method public getCurrentTabInformativeSubTitle()Ljava/lang/String;
    .locals 11

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mDelegate:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter$Delegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter$Delegate;->isSitesSearchViewVisible()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->getGroupCount()I

    move-result v0

    const v2, 0x7f12002a

    const/4 v3, 0x0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v2, v3, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0, v3}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->groupPositionToBin(I)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->getLabel(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->groupPositionToBin(I)I

    move-result v6

    invoke-direct {p0, v6}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->getLabel(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {p0, v7}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->groupPositionToBin(I)I

    move-result v8

    invoke-direct {p0, v8}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->getLabel(I)Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f12002b

    const v10, 0x7f1405d7

    if-ne v0, v5, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1405d6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1405d4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0, v3}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->getChildrenCount(I)I

    move-result v1

    invoke-virtual {p0, v3}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->getChildrenCount(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v9, v1, p0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v2, v3, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0, v3}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->getChildrenCount(I)I

    move-result v1

    invoke-virtual {p0, v3}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->getChildrenCount(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v2, v1, p0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    if-le v0, v5, :cond_a

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0, v3}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->getChildrenCount(I)I

    move-result v1

    invoke-virtual {p0, v3}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->getChildrenCount(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v9, v1, p0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0, v5}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->getChildrenCount(I)I

    move-result v1

    invoke-virtual {p0, v5}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->getChildrenCount(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v9, v1, p0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0, v7}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->getChildrenCount(I)I

    move-result v1

    invoke-virtual {p0, v7}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->getChildrenCount(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v9, v1, p0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8
    iget-wide v2, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mPreviousDay:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_9

    new-instance v0, Ljava/util/Date;

    iget-wide v1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mPreviousDay:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "MM/dd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120029

    iget v3, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mPreviousDayVisitedItemsCount:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v1

    iget p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mPreviousDayVisitedItemsCount:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    return-object v1

    :cond_a
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v2, v3, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentTabInformativeTitle()Ljava/lang/String;
    .locals 9

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mDelegate:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter$Delegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter$Delegate;->isSitesSearchViewVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f140f8f

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mDelegate:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter$Delegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter$Delegate;->isInActionMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->getSelectedItemCount()I

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f1405cf

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const v3, 0x7f120001

    invoke-virtual {p0, v3, v0, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->getGroupCount()I

    move-result v0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->groupPositionToBin(I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->getLabel(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->groupPositionToBin(I)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->getLabel(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f1405ce

    if-eqz v0, :cond_8

    const v6, 0x7f1405d4

    const v7, 0x7f1405d6

    if-ne v0, v3, :cond_3

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    goto/16 :goto_0

    :cond_3
    if-le v0, v3, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const v5, 0x7f12002a

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->getChildrenCount(I)I

    move-result v2

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->getChildrenCount(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v5, v2, p0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->getChildrenCount(I)I

    move-result v2

    invoke-virtual {p0, v3}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->getChildrenCount(I)I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->getChildrenCount(I)I

    move-result v1

    invoke-virtual {p0, v3}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->getChildrenCount(I)I

    move-result p0

    add-int/2addr p0, v1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v5, v4, p0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v5, v1, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8
    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDays(J)J
    .locals 2

    const-wide/32 v0, 0x5265c00

    div-long/2addr p1, v0

    return-wide p1
.end method

.method public getGroupCount()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mGroupCount:I

    return p0
.end method

.method public getGroupPosition(I)I
    .locals 2

    :goto_0
    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mViewTypes:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->getViewType(I)Lcom/sec/android/app/sbrowser/common/widget/ExpandableViewType;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mViewTypes:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/common/widget/ExpandableViewType;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/widget/ExpandableViewType;->getDataIndex()I

    move-result p0

    return p0

    :cond_0
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public getGroupSelectedState(I)Z
    .locals 1

    if-ltz p1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mIsGroupSelected:[Z

    array-length v0, p0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    aget-boolean p0, p0, p1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public getHeaderName(I)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_2

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    const/4 p0, 0x2

    if-eq p1, p0, :cond_0

    const-string p0, "All time"

    return-object p0

    :cond_0
    const-string p0, "Yesterday"

    return-object p0

    :cond_1
    const-string p0, "Today"

    return-object p0

    :cond_2
    const-string p0, "LastHour"

    return-object p0
.end method

.method public getHistoryItemPos(Lcom/sec/terrace/browser/history/TerraceHistoryItem;)I
    .locals 6

    invoke-virtual {p1}, Lcom/sec/terrace/browser/history/TerraceHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mHistoryItemList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mHistoryItemList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/terrace/browser/history/TerraceHistoryItem;

    invoke-virtual {v2}, Lcom/sec/terrace/browser/history/TerraceHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/sec/terrace/browser/history/TerraceHistoryItem;->getVisitTime()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/sec/terrace/browser/history/TerraceHistoryItem;->getVisitTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_1
    return v1
.end method

.method public getItemCount()I
    .locals 10

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mHistoryItemList:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mViewTypes:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    move v0, v1

    move v2, v0

    move v3, v2

    :goto_0
    iget v4, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mGroupCount:I

    if-ge v0, v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mViewTypes:Landroid/util/SparseArray;

    new-instance v5, Lcom/sec/android/app/sbrowser/common/widget/ExpandableViewType;

    const/4 v6, 0x2

    invoke-direct {v5, v0, v6}, Lcom/sec/android/app/sbrowser/common/widget/ExpandableViewType;-><init>(II)V

    invoke-virtual {v4, v2, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->getChildrenCount(I)I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mHeaderExpandTracker:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    if-eqz v5, :cond_0

    move v5, v1

    :goto_1
    if-ge v5, v4, :cond_1

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mViewTypes:Landroid/util/SparseArray;

    new-instance v7, Lcom/sec/android/app/sbrowser/common/widget/ExpandableViewType;

    add-int/lit8 v8, v0, 0x1

    sub-int v8, v2, v8

    add-int/2addr v8, v3

    const/4 v9, 0x1

    invoke-direct {v7, v8, v9}, Lcom/sec/android/app/sbrowser/common/widget/ExpandableViewType;-><init>(II)V

    invoke-virtual {v6, v2, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/2addr v3, v4

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v1, v2

    :cond_3
    return v1
.end method

.method public getItemId(I)J
    .locals 2

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->getChildPosition(I)I

    move-result p0

    int-to-long p0, p0

    return-wide p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->getChild(I)Lcom/sec/terrace/browser/history/TerraceHistoryItem;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->getChild(I)Lcom/sec/terrace/browser/history/TerraceHistoryItem;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/browser/history/TerraceHistoryItem;->getVisitTime()J

    move-result-wide p0

    return-wide p0

    :cond_1
    int-to-long p0, p1

    return-wide p0
.end method

.method public getItemViewType(I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->getViewType(I)Lcom/sec/android/app/sbrowser/common/widget/ExpandableViewType;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->getViewType(I)Lcom/sec/android/app/sbrowser/common/widget/ExpandableViewType;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/widget/ExpandableViewType;->getType()I

    move-result p0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getNonShareableUrlCount()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mNonShareableCount:I

    return p0
.end method

.method public getSelectedItemCount()I
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mHistoryItemList:Ljava/util/List;

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mNonShareableCount:I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mHistoryItemList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/terrace/browser/history/TerraceHistoryItem;

    invoke-virtual {v2}, Lcom/sec/terrace/browser/history/TerraceHistoryItem;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2}, Lcom/sec/terrace/browser/history/TerraceHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->setNonShareableUrl(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    return v0
.end method

.method public getSelectedItemPosition(II)I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v0, p1, :cond_1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->checkExpanded(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->getChildrenCount(I)I

    move-result v2

    add-int/2addr v2, v1

    move v1, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 p1, p1, 0x1

    sub-int/2addr p2, p1

    add-int/2addr p2, v1

    return p2
.end method

.method public getTotalItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mHistoryItemList:Ljava/util/List;

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mHistoryItemList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public groupPositionToBin(I)I
    .locals 4

    if-ltz p1, :cond_6

    const/16 v0, 0x5c

    if-lt p1, v0, :cond_0

    goto :goto_3

    :cond_0
    iget v1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mGroupCount:I

    if-eq v0, v1, :cond_5

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    const/4 v1, -0x1

    move v2, v1

    :goto_0
    if-le p1, v1, :cond_4

    add-int/lit8 v3, v2, 0x1

    if-lt v3, v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mHistoryItemNums:[I

    aget v2, v2, v3

    if-eqz v2, :cond_3

    add-int/lit8 p1, p1, -0x1

    :cond_3
    move v2, v3

    goto :goto_0

    :cond_4
    :goto_1
    return v2

    :cond_5
    :goto_2
    return p1

    :cond_6
    :goto_3
    const-string p0, "HistoryAdapter"

    const-string v0, "Group Posiition not proper. Returning groupPosition"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method public isExpanded(I)Z
    .locals 2

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->getViewType(I)Lcom/sec/android/app/sbrowser/common/widget/ExpandableViewType;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->getViewType(I)Lcom/sec/android/app/sbrowser/common/widget/ExpandableViewType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/widget/ExpandableViewType;->getDataIndex()I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mHeaderExpandTracker:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_1

    move v1, p1

    :cond_1
    return v1
.end method

.method public isFirstChild(I)Z
    .locals 2

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->getViewType(I)Lcom/sec/android/app/sbrowser/common/widget/ExpandableViewType;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mViewTypes:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mViewTypes:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/common/widget/ExpandableViewType;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/widget/ExpandableViewType;->getType()I

    move-result p0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isLastChild(I)Z
    .locals 6

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->getGroupPosition(I)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-gt v3, v0, :cond_1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v3}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->getChildrenCount(I)I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mHeaderExpandTracker:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    if-eqz v5, :cond_0

    add-int/2addr v1, v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-ne v1, p1, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2
.end method

.method public loadIcon(Landroid/widget/TextView;Landroid/widget/ImageView;Ljava/lang/String;IILjava/util/List;I)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TextView;",
            "Landroid/widget/ImageView;",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List<",
            "Lcom/sec/terrace/browser/history/TerraceHistoryItem;",
            ">;I)V"
        }
    .end annotation

    move-object v1, p0

    move-object v4, p2

    move-object/from16 v8, p3

    move/from16 v2, p4

    move/from16 v7, p7

    const/4 v0, 0x7

    filled-new-array {v0}, [I

    move-result-object v9

    if-eqz v8, :cond_5

    if-eqz v4, :cond_5

    if-ltz v7, :cond_5

    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_5

    invoke-interface/range {p6 .. p6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;->getInstance()Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;->getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;->getInstance()Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;->getDominantColorFromMemCache(Ljava/lang/String;)J

    move-result-wide v5

    const-string v10, "dominantColor : "

    const-string v11, "HistoryAdapter"

    invoke-static {v5, v6, v10, v11}, Lt/b;->y(JLjava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v10

    if-nez v10, :cond_4

    const/4 v8, 0x6

    if-ne v2, v8, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    const/16 v8, 0x39

    if-lt v2, v8, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-lt v2, v8, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/16 v0, 0x8

    move-object v10, p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_1
    const-string v2, "dominantColor1 : "

    invoke-static {v5, v6, v2, v11}, Lt/b;->y(JLjava/lang/String;Ljava/lang/String;)V

    const-wide/16 v8, 0x0

    cmp-long v2, v5, v8

    if-nez v2, :cond_2

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;->getByteArrayForBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/utils/ColorUtils;->getDominantColor([B)I

    move-result v2

    const/4 v10, -0x1

    if-eq v2, v10, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;->getInstance()Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;

    move-result-object v5

    int-to-long v10, v2

    invoke-virtual {v5, v3, v0, v10, v11}, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;->addBitmapToCache(Ljava/lang/String;Landroid/graphics/Bitmap;J)V

    move-wide v5, v10

    :cond_2
    cmp-long v0, v5, v8

    if-eqz v0, :cond_3

    const-wide/16 v2, -0x1

    cmp-long v0, v5, v2

    if-eqz v0, :cond_3

    invoke-interface/range {p6 .. p7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/terrace/browser/history/TerraceHistoryItem;

    long-to-int v2, v5

    invoke-virtual {v0, v2}, Lcom/sec/terrace/browser/history/TerraceHistoryItem;->setBackgroundColor(I)V

    :cond_3
    invoke-direct {p0, v5, v6, p2}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->setImageDrawable(JLandroid/widget/ImageView;)V

    goto :goto_0

    :cond_4
    move-object v10, p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v12, "Icon of iconType: "

    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " is not in Cache"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v5, v6, p2}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->setImageDrawable(JLandroid/widget/ImageView;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "Image Not present in cache :: Native call for "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;->getInstance()Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;->getFaviconHelper()Lcom/sec/terrace/browser/favicon/TerraceFaviconHelper;

    move-result-object v11

    new-instance v12, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter$3;

    move-object v0, v12

    move-object v1, p0

    move/from16 v2, p4

    move-object v4, p2

    move-object v5, p1

    move-object/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter$3;-><init>(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;ILjava/lang/String;Landroid/widget/ImageView;Landroid/widget/TextView;Ljava/util/List;I)V

    move/from16 v0, p5

    invoke-virtual {v11, v8, v9, v0, v12}, Lcom/sec/terrace/browser/favicon/TerraceFaviconHelper;->getLargestRawFaviconForUrl(Ljava/lang/String;[IILcom/sec/terrace/browser/favicon/TerraceFaviconHelper$FaviconImageCallback;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/h1;I)V
    .locals 5
    .param p1    # Landroidx/recyclerview/widget/h1;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->getItemViewType(I)I

    move-result v0

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->getViewType(I)Lcom/sec/android/app/sbrowser/common/widget/ExpandableViewType;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mHistoryItemList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ne p2, v2, :cond_0

    const-string v2, "308"

    const-string v4, "3221"

    invoke-static {v2, v4}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-nez v1, :cond_1

    return-void

    :cond_1
    if-eq v0, v3, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, p2, v1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->bindHeaderViewHolder(Landroidx/recyclerview/widget/h1;ILcom/sec/android/app/sbrowser/common/widget/ExpandableViewType;)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1, p2, v1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->bindItemViewHolder(Landroidx/recyclerview/widget/h1;ILcom/sec/android/app/sbrowser/common/widget/ExpandableViewType;)V

    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/h1;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x1

    const v1, 0x7f0e0457

    const/4 v2, 0x0

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    invoke-static {p1, v1, p1, v2}, Landroidx/recyclerview/widget/P;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryItemViewHolder;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mItemEventListener:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryItemViewHolder$OnClickEventListener;

    invoke-direct {p2, p1, p0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryItemViewHolder;-><init>(Landroid/view/View;Lcom/sec/android/app/sbrowser/sites/history/view/HistoryItemViewHolder$OnClickEventListener;)V

    return-object p2

    :cond_0
    const p2, 0x7f0e0456

    invoke-static {p1, p2, p1, v2}, Landroidx/recyclerview/widget/P;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryHeaderViewHolder;

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/history/view/e;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/sites/history/view/e;-><init>(Ljava/lang/Object;)V

    invoke-direct {p2, p1, v0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryHeaderViewHolder;-><init>(Landroid/view/View;Lcom/sec/android/app/sbrowser/sites/history/view/HistoryHeaderViewHolder$OnClickListener;)V

    return-object p2

    :cond_1
    invoke-static {p1, v1, p1, v2}, Landroidx/recyclerview/widget/P;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryItemViewHolder;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mItemEventListener:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryItemViewHolder$OnClickEventListener;

    invoke-direct {p2, p1, p0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryItemViewHolder;-><init>(Landroid/view/View;Lcom/sec/android/app/sbrowser/sites/history/view/HistoryItemViewHolder$OnClickEventListener;)V

    return-object p2
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mHistoryItemList:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mHistoryItemList:Ljava/util/List;

    :cond_0
    iput-object v1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mContext:Landroid/content/Context;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mHistoryItemNums:[I

    return-void
.end method

.method public onHeaderClick(I)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->getViewType(I)Lcom/sec/android/app/sbrowser/common/widget/ExpandableViewType;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/widget/ExpandableViewType;->getDataIndex()I

    move-result v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->groupPositionToBin(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->getHeaderName(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "act"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mHeaderExpandTracker:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "Expand"

    goto :goto_0

    :cond_0
    const-string v2, "Collapsed"

    :goto_0
    const-string v3, "det"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "308"

    const-string v3, "3206"

    invoke-static {v2, v3, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const/16 v1, 0x5c

    if-lt v0, v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->getChildrenCount(I)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mHeaderExpandTracker:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mHeaderExpandTracker:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0, v3}, Landroid/util/SparseIntArray;->put(II)V

    add-int/2addr p1, v3

    invoke-virtual {p0, p1, v1}, Landroidx/recyclerview/widget/u0;->notifyItemRangeInserted(II)V

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mHeaderExpandTracker:Landroid/util/SparseIntArray;

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    add-int/2addr p1, v3

    invoke-virtual {p0, p1, v1}, Landroidx/recyclerview/widget/u0;->notifyItemRangeRemoved(II)V

    :cond_3
    :goto_1
    return-void
.end method

.method public setGroupHeaderContentDescription(Landroid/view/View;I)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->getViewType(I)Lcom/sec/android/app/sbrowser/common/widget/ExpandableViewType;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/widget/ExpandableViewType;->getDataIndex()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->isExpanded(I)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v2, 0x7f140501

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v2, 0x7f14032c

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const p2, 0x7f0b055d

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/sec/android/app/sbrowser/tooltip/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    const-string p2, ", "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->groupPositionToBin(I)I

    move-result p2

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->getLabel(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setGroupSelectedState(IZ)V
    .locals 1

    if-ltz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mIsGroupSelected:[Z

    array-length v0, p0

    if-ge p1, v0, :cond_0

    aput-boolean p2, p0, p1

    :cond_0
    return-void
.end method

.method public setHeaderIndicatorAnimation(Landroid/view/View;IZ)V
    .locals 1

    const v0, 0x7f0b055d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->isExpanded(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/high16 p0, 0x43340000    # 180.0f

    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    if-eqz p3, :cond_1

    const-wide/16 p1, 0xc8

    goto :goto_1

    :cond_1
    const-wide/16 p1, 0x0

    :goto_1
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    :cond_2
    return-void
.end method

.method public setHistoryCount(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mHistoryItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eq v0, p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mHistoryItemList size = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mHistoryItemList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "mTotalAvailableCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HistoryAdapter"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mDelegate:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter$Delegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter$Delegate;->addMoreData()V

    :cond_0
    return-void
.end method

.method public setHistoryData(Ljava/util/List;I[I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/terrace/browser/history/TerraceHistoryItem;",
            ">;I[I)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setHistoryData list size = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HistoryAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mHistoryItemList:Ljava/util/List;

    iput p2, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mGroupCount:I

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mHistoryItemNums:[I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->setPreviousDayVisitedCount()V

    new-instance p1, Landroid/util/SparseArray;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mHistoryItemList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    iget p3, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mGroupCount:I

    add-int/2addr p2, p3

    invoke-direct {p1, p2}, Landroid/util/SparseArray;-><init>(I)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mViewTypes:Landroid/util/SparseArray;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mHeaderExpandTracker:Landroid/util/SparseIntArray;

    if-nez p1, :cond_0

    new-instance p1, Landroid/util/SparseIntArray;

    iget p2, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mGroupCount:I

    invoke-direct {p1, p2}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mHeaderExpandTracker:Landroid/util/SparseIntArray;

    :cond_0
    return-void
.end method

.method public setHistoryHeaderMap(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mHistoryHeaderMap:Ljava/util/HashMap;

    return-void
.end method

.method public setNonShareableUrl(Ljava/lang/String;Z)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mNonShareableCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mNonShareableCount:I

    goto :goto_2

    :cond_0
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->getDomainName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "quickaccess.internet.apps.samsung.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isInternalUrl(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_1
    iget p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mNonShareableCount:I

    if-eqz p2, :cond_2

    add-int/lit8 p1, p1, 0x1

    :goto_0
    iput p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mNonShareableCount:I

    goto :goto_1

    :cond_2
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :goto_1
    iput p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mNonShareableCount:I

    :cond_3
    :goto_2
    return-void
.end method

.method public setPreviousDayVisitedCount()V
    .locals 10

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mHistoryItemNums:[I

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x3

    aget v1, v0, v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v3, v0, v2

    add-int/2addr v1, v3

    const/4 v3, 0x2

    aget v0, v0, v3

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mHistoryItemList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/terrace/browser/history/TerraceHistoryItem;

    invoke-virtual {v0}, Lcom/sec/terrace/browser/history/TerraceHistoryItem;->getVisitTime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mPreviousDay:J

    invoke-virtual {p0, v4, v5}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->getDays(J)J

    move-result-wide v4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mHistoryItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-static {v0, v1, v3, v1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->a(IIII)I

    move-result v6

    move v7, v1

    :goto_0
    if-ge v7, v0, :cond_4

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mHistoryItemList:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/terrace/browser/history/TerraceHistoryItem;

    invoke-virtual {v8}, Lcom/sec/terrace/browser/history/TerraceHistoryItem;->getVisitTime()J

    move-result-wide v8

    invoke-virtual {p0, v8, v9}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->getDays(J)J

    move-result-wide v8

    cmp-long v8, v8, v4

    if-nez v8, :cond_2

    add-int/lit8 v7, v6, 0x1

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mHistoryItemList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_3

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mHistoryItemList:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/terrace/browser/history/TerraceHistoryItem;

    invoke-virtual {v8}, Lcom/sec/terrace/browser/history/TerraceHistoryItem;->getVisitTime()J

    move-result-wide v8

    invoke-virtual {p0, v8, v9}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->getDays(J)J

    move-result-wide v8

    cmp-long v8, v8, v4

    if-gez v8, :cond_3

    goto :goto_1

    :cond_2
    add-int/lit8 v6, v6, -0x1

    move v0, v6

    :cond_3
    invoke-static {v0, v7, v3, v7}, Lcom/sec/android/app/sbrowser/autofill/password/k;->a(IIII)I

    move-result v6

    goto :goto_0

    :cond_4
    :goto_1
    sub-int/2addr v6, v1

    add-int/2addr v6, v2

    iput v6, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mPreviousDayVisitedItemsCount:I

    return-void
.end method
