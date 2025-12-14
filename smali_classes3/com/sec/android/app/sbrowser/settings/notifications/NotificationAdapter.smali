.class public Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;
.super Landroidx/recyclerview/widget/u0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/u0;"
    }
.end annotation


# instance fields
.field protected mContext:Landroid/content/Context;

.field private mDateSorter:Landroid/webkit/DateSorter;

.field private mHeaderExpandTracker:Landroid/util/SparseIntArray;

.field private mIsShowingActionMode:Z

.field private mItemMap:[I

.field private mListener:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapterListener;

.field private mMarginForActionMode:I

.field private mMarginForNormalMode:I

.field private mNotificationDestroyItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItemUi;",
            ">;"
        }
    .end annotation
.end field

.field private mNotificationItem:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItem;",
            ">;"
        }
    .end annotation
.end field

.field protected mNotificationListView:Landroid/view/View;

.field private mNotificationTransientItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItemUi;",
            ">;"
        }
    .end annotation
.end field

.field private mNumberOfBins:I

.field private mTickboxChecked:Ljava/lang/String;

.field private mTickboxUnChecked:Ljava/lang/String;

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
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/u0;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/webkit/DateSorter;

    invoke-direct {v0, p1}, Landroid/webkit/DateSorter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->mDateSorter:Landroid/webkit/DateSorter;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->mNotificationTransientItems:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->mNotificationDestroyItems:Ljava/util/ArrayList;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f140b91

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->mTickboxChecked:Ljava/lang/String;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f140b90

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->mTickboxUnChecked:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/u0;->setHasStableIds(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070f0f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->mMarginForActionMode:I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070f17

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->mMarginForNormalMode:I

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->mTickboxChecked:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->mTickboxUnChecked:Ljava/lang/String;

    return-object p0
.end method

.method private bindHeaderViewHolder(Landroidx/recyclerview/widget/h1;ILcom/sec/android/app/sbrowser/common/widget/ExpandableViewType;)V
    .locals 2

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/common/widget/ExpandableViewType;->getDataIndex()I

    move-result p3

    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationHeaderViewHolder;

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationHeaderViewHolder;->mSectionTitle:Landroid/widget/TextView;

    invoke-virtual {p0, p3}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->groupPositionToBin(I)I

    move-result p3

    invoke-direct {p0, p3}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->getLabel(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p3, p1, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    const v1, 0x7f08022d

    invoke-virtual {p3, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p1, p1, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->setHeaderIndicatorAnimation(Landroid/view/View;IZ)V

    iget-object p1, v0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationHeaderViewHolder;->mRowView:Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->setGroupHeaderContentDescription(Landroid/view/View;I)V

    return-void
.end method

.method private bindItemViewHolder(Landroidx/recyclerview/widget/h1;ILcom/sec/android/app/sbrowser/common/widget/ExpandableViewType;)V
    .locals 12

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "adapter Position"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotificationAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/common/widget/ExpandableViewType;->getDataIndex()I

    move-result p3

    check-cast p1, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItemViewHolder;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItemViewHolder;->getRowView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "ItemView null"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->getChild(I)Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItem;

    move-result-object v10

    if-nez v10, :cond_1

    const-string p0, "No Item present in position "

    invoke-static {p2, p0, v1}, LV0/c;->s(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItem;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItemViewHolder;->getImageView()Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItem;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItem;->getDescreption()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItem;->getIcon()[B

    move-result-object v3

    const/4 v4, 0x1

    const/4 v11, 0x0

    if-eqz v3, :cond_2

    array-length v2, v3

    invoke-static {v3, v11, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {p1, v11}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItemViewHolder;->setDominantTextVisibility(Z)V

    invoke-virtual {p1, v4}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItemViewHolder;->setImageViewVisibility(Z)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItemViewHolder;->getImageView()Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v11}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItemViewHolder;->setImageViewVisibility(Z)V

    invoke-virtual {p1, v4}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItemViewHolder;->setDominantTextVisibility(Z)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItemViewHolder;->getImageView()Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v6, v5}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItemViewHolder;->setDominantText(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p1, v5}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItemViewHolder;->setTitle(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItemViewHolder;->setDescreption(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->getTitleTextViewWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItemViewHolder;->getTitleView()Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v7, 0x7f0c000e

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItemViewHolder;->getTitleView()Landroid/widget/TextView;

    move-result-object v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v11, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/view/View;->measure(II)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItemViewHolder;->getTitleView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItemViewHolder;->getTitleView()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getLineCount()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItem;->getIsRead()I

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItemViewHolder;->getTitleView()Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f0607fe

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItemViewHolder;->getTitleView()Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f0607fd

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_1
    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItem;->getVisitTime()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItemViewHolder;->setTime(J)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItemViewHolder;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v1, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object p3, p1, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItemViewHolder;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroid/widget/RelativeLayout$LayoutParams;

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->mIsShowingActionMode:Z

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->mMarginForActionMode:I

    goto :goto_2

    :cond_4
    iget v2, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->mMarginForNormalMode:I

    :goto_2
    invoke-virtual {p3, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iget-object v2, p1, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItemViewHolder;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItemViewHolder;->getRowView()Landroid/view/View;

    move-result-object p3

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->isLastChild(I)Z

    move-result v2

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->isFirstChild(I)Z

    move-result p2

    invoke-direct {p0, p1, v2, p2}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->setBackgroundForItems(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItemViewHolder;ZZ)V

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItem;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->mIsShowingActionMode:Z

    if-eqz p1, :cond_5

    invoke-direct {p0, p3, v4}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->setItemSelectedBackgroundHighlight(Landroid/view/View;Z)V

    goto :goto_3

    :cond_5
    invoke-direct {p0, p3, v11}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->setItemSelectedBackgroundHighlight(Landroid/view/View;Z)V

    :goto_3
    new-instance p1, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter$1;

    move-object v2, p1

    move-object v3, p0

    move-object v4, p3

    move-object v7, v0

    move-object v8, v1

    invoke-direct/range {v2 .. v8}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter$1;-><init>(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/widget/CheckBox;)V

    invoke-virtual {v1, p1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->mIsShowingActionMode:Z

    if-eqz p1, :cond_6

    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItem;->isSelected()Z

    move-result p1

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p2

    if-eq p1, p2, :cond_7

    invoke-virtual {v1, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    invoke-virtual {v1}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    goto :goto_4

    :cond_6
    const/16 p1, 0x8

    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1, v11}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_7
    :goto_4
    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->mIsShowingActionMode:Z

    if-eqz p1, :cond_9

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItem;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->mTickboxChecked:Ljava/lang/String;

    goto :goto_5

    :cond_8
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->mTickboxUnChecked:Ljava/lang/String;

    :goto_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_9
    invoke-virtual {v0, v9}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_6
    return-void
.end method

.method private buildMap()V
    .locals 7

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    iput v1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->mNumberOfBins:I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->mNotificationItem:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, -0x1

    :goto_0
    if-ge v1, v2, :cond_3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->mNotificationItem:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->mNotificationItem:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItem;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItem;->getVisitTime()J

    move-result-wide v4

    goto :goto_1

    :cond_0
    const-wide/16 v4, 0x0

    :goto_1
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->mDateSorter:Landroid/webkit/DateSorter;

    invoke-virtual {v6, v4, v5}, Landroid/webkit/DateSorter;->getIndex(J)I

    move-result v4

    if-le v4, v3, :cond_2

    iget v3, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->mNumberOfBins:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->mNumberOfBins:I

    const/4 v3, 0x4

    if-ne v4, v3, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->mNotificationItem:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    aput v2, v0, v4

    goto :goto_2

    :cond_1
    move v3, v4

    :cond_2
    aget v4, v0, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->mItemMap:[I

    return-void
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->setItemSelectedBackgroundHighlight(Landroid/view/View;Z)V

    return-void
.end method

.method private getChangeBounds(Z)LY2/i;
    .locals 3

    new-instance p0, LY2/i;

    invoke-direct {p0}, LY2/i;-><init>()V

    const-wide/16 v0, 0x12c

    invoke-virtual {p0, v0, v1}, LY2/f0;->setDuration(J)LY2/f0;

    if-eqz p1, :cond_0

    new-instance p1, Landroid/view/animation/PathInterpolator;

    const v0, 0x3e2e147b    # 0.17f

    const v1, 0x3dcccccd    # 0.1f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p1, v0, v0, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/InterpolatorUtil;->sineInOut90()Landroid/view/animation/Interpolator;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, LY2/f0;->setInterpolator(Landroid/animation/TimeInterpolator;)LY2/f0;

    return-object p0
.end method

.method private getLabel(I)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->mDateSorter:Landroid/webkit/DateSorter;

    invoke-virtual {p0, p1}, Landroid/webkit/DateSorter;->getLabel(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f14042b

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f140828

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f14082a

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f140829

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getTitleTextViewWidth()I
    .locals 4

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070f3c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070647

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    add-int/2addr v2, v1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f070644

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    add-int/2addr v1, v2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f070648

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    add-int/2addr p0, v1

    sub-int/2addr v0, p0

    return v0
.end method

.method private setBackgroundForItems(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItemViewHolder;ZZ)V
    .locals 3

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItemViewHolder;->getRowView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f060167

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    if-eqz p2, :cond_0

    const/16 p0, 0xf

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/common/view/RoundedViewHolder;->setRoundMode(I)V

    iget-object p0, p1, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItemViewHolder;->mListDivider:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_0
    const v1, 0x7f060bd0

    if-eqz p3, :cond_1

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/common/view/RoundedViewHolder;->setRoundMode(I)V

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItemViewHolder;->mListDivider:Landroid/view/View;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    const/16 p0, 0xc

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/common/view/RoundedViewHolder;->setRoundMode(I)V

    iget-object p0, p1, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItemViewHolder;->mListDivider:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/common/view/RoundedViewHolder;->setRoundMode(I)V

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItemViewHolder;->mListDivider:Landroid/view/View;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_0
    return-void
.end method

.method private setItemSelectedBackgroundHighlight(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    const p0, 0x7f080237

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->mContext:Landroid/content/Context;

    const p2, 0x7f080236

    invoke-virtual {p0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setBackgroundDrawable(Landroid/content/Context;Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public checkExpanded(I)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->mHeaderExpandTracker:Landroid/util/SparseIntArray;

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

.method public getChild(I)Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItem;
    .locals 3

    const/4 v0, 0x0

    if-ltz p1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->mNotificationItem:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->mNumberOfBins:I

    add-int/2addr v1, v2

    if-lt p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->mViewTypes:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->mViewTypes:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/common/widget/ExpandableViewType;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/widget/ExpandableViewType;->getDataIndex()I

    move-result p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->mNotificationItem:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItem;

    return-object p0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public getChildPosition(I)I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->mViewTypes:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->mViewTypes:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/common/widget/ExpandableViewType;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/widget/ExpandableViewType;->getDataIndex()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getChildrenCount(I)I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->mItemMap:[I

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->groupPositionToBin(I)I

    move-result p0

    aget p0, v0, p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getGroupPosition(I)I
    .locals 2

    :goto_0
    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->mViewTypes:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->getViewType(I)Lcom/sec/android/app/sbrowser/common/widget/ExpandableViewType;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->mViewTypes:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/widget/ExpandableViewType;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/widget/ExpandableViewType;->getDataIndex()I

    move-result p0

    return p0

    :cond_0
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public getItemCount()I
    .locals 10

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->mNotificationItem:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->mViewTypes:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    move v0, v1

    move v2, v0

    move v3, v2

    :goto_0
    iget v4, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->mNumberOfBins:I

    if-ge v0, v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->mViewTypes:Landroid/util/SparseArray;

    new-instance v5, Lcom/sec/android/app/sbrowser/common/widget/ExpandableViewType;

    const/4 v6, 0x2

    invoke-direct {v5, v0, v6}, Lcom/sec/android/app/sbrowser/common/widget/ExpandableViewType;-><init>(II)V

    invoke-virtual {v4, v2, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->getChildrenCount(I)I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->mHeaderExpandTracker:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    if-eqz v5, :cond_0

    move v5, v1

    :goto_1
    if-ge v5, v4, :cond_1

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->mViewTypes:Landroid/util/SparseArray;

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

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->getChildPosition(I)I

    move-result p0

    int-to-long p0, p0

    return-wide p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->getChild(I)Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItem;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->getChild(I)Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItem;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItem;->getVisitTime()J

    move-result-wide p0

    return-wide p0

    :cond_1
    int-to-long p0, p1

    return-wide p0
.end method

.method public getItemViewType(I)I
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->getViewType(I)Lcom/sec/android/app/sbrowser/common/widget/ExpandableViewType;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->getViewType(I)Lcom/sec/android/app/sbrowser/common/widget/ExpandableViewType;

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

.method public getListener()Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapterListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->mListener:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapterListener;

    return-object p0
.end method

.method public getNotificationSelectedItemCount()I
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->mNotificationItem:Ljava/util/List;

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->mNotificationItem:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItem;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItem;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public getNumberOfBins()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->mNumberOfBins:I

    return p0
.end method

.method public getTotalNotificationItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->mNotificationItem:Ljava/util/List;

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->mNotificationItem:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getViewType(I)Lcom/sec/android/app/sbrowser/common/widget/ExpandableViewType;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->mViewTypes:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/common/widget/ExpandableViewType;

    return-object p0
.end method

.method public groupPositionToBin(I)I
    .locals 4

    const/4 v0, 0x5

    if-lt p1, v0, :cond_0

    const-string p0, "NotificationAdapter"

    const-string v0, "Group Posiition not proper. Returning groupPosition"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    :cond_0
    iget v1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->mNumberOfBins:I

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
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->mItemMap:[I

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
.end method

.method public initDateSorter()V
    .locals 2

    new-instance v0, Landroid/webkit/DateSorter;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/webkit/DateSorter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->mDateSorter:Landroid/webkit/DateSorter;

    return-void
.end method

.method public isExpanded(I)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->mViewTypes:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->mViewTypes:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/common/widget/ExpandableViewType;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/widget/ExpandableViewType;->getDataIndex()I

    move-result p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->mHeaderExpandTracker:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    move v1, p1

    :cond_0
    return v1
.end method

.method public isFirstChild(I)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->mViewTypes:Landroid/util/SparseArray;

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->mViewTypes:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/common/widget/ExpandableViewType;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/widget/ExpandableViewType;->getType()I

    move-result p0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_0

    return v1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isLastChild(I)Z
    .locals 6

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->getGroupPosition(I)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-gt v3, v0, :cond_1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v3}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->getChildrenCount(I)I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->mHeaderExpandTracker:Landroid/util/SparseIntArray;

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

.method public onBindViewHolder(Landroidx/recyclerview/widget/h1;I)V
    .locals 3
    .param p1    # Landroidx/recyclerview/widget/h1;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->getItemViewType(I)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->mViewTypes:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/widget/ExpandableViewType;

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p2, v1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->bindHeaderViewHolder(Landroidx/recyclerview/widget/h1;ILcom/sec/android/app/sbrowser/common/widget/ExpandableViewType;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, p2, v1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->bindItemViewHolder(Landroidx/recyclerview/widget/h1;ILcom/sec/android/app/sbrowser/common/widget/ExpandableViewType;)V

    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/h1;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->mNotificationListView:Landroid/view/View;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->mNotificationListView:Landroid/view/View;

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p2, v0, :cond_1

    const p2, 0x7f0e052e

    invoke-static {p1, p2, p1, v1}, Landroidx/recyclerview/widget/P;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationHeaderViewHolder;

    invoke-direct {p2, p1, p0}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationHeaderViewHolder;-><init>(Landroid/view/View;Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;)V

    return-object p2

    :cond_1
    const p2, 0x7f0e052f

    invoke-static {p1, p2, p1, v1}, Landroidx/recyclerview/widget/P;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItemViewHolder;

    invoke-direct {p2, p1, p0}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItemViewHolder;-><init>(Landroid/view/View;Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;)V

    return-object p2
.end method

.method public onDestroy()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->mNotificationDestroyItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->mNotificationDestroyItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->mNotificationDestroyItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItemUi;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->unregisterForContextMenu(Landroid/view/View;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->mNotificationDestroyItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->mNotificationItem:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->mNotificationItem:Ljava/util/List;

    :cond_3
    iput-object v1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->mContext:Landroid/content/Context;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->mItemMap:[I

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->mNotificationListView:Landroid/view/View;

    return-void
.end method

.method public onHeaderClick(I)V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->mViewTypes:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/widget/ExpandableViewType;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/widget/ExpandableViewType;->getDataIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->getChildrenCount(I)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->mHeaderExpandTracker:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->mHeaderExpandTracker:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0, v3}, Landroid/util/SparseIntArray;->put(II)V

    add-int/2addr p1, v3

    invoke-virtual {p0, p1, v1}, Landroidx/recyclerview/widget/u0;->notifyItemRangeInserted(II)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->mHeaderExpandTracker:Landroid/util/SparseIntArray;

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    add-int/2addr p1, v3

    invoke-virtual {p0, p1, v1}, Landroidx/recyclerview/widget/u0;->notifyItemRangeRemoved(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public resetHasTransientState()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->mNotificationTransientItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->mNotificationTransientItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItemUi;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setHasTransientState(Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->mNotificationTransientItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
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

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->mViewTypes:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/widget/ExpandableViewType;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/widget/ExpandableViewType;->getDataIndex()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->isExpanded(I)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v2, 0x7f140501

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v2, 0x7f14032c

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const p2, 0x7f0b055e

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/sec/android/app/sbrowser/tooltip/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->groupPositionToBin(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->getLabel(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->getContext()Landroid/content/Context;

    move-result-object p0

    const v1, 0x7f14058d

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setHasTransientState()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->mNotificationTransientItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->mNotificationTransientItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItemUi;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Landroid/view/View;->setHasTransientState(Z)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setHeaderIndicatorAnimation(Landroid/view/View;IZ)V
    .locals 1

    const v0, 0x7f0b055e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->isExpanded(I)Z

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

.method public setListener(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapterListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->mListener:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapterListener;

    return-void
.end method

.method public setNotificationData(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItem;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->mNotificationItem:Ljava/util/List;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->buildMap()V

    new-instance p1, Landroid/util/SparseArray;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->mNotificationItem:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->mNumberOfBins:I

    add-int/2addr v0, v1

    invoke-direct {p1, v0}, Landroid/util/SparseArray;-><init>(I)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->mViewTypes:Landroid/util/SparseArray;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->mHeaderExpandTracker:Landroid/util/SparseIntArray;

    if-nez p1, :cond_0

    new-instance p1, Landroid/util/SparseIntArray;

    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->mNumberOfBins:I

    invoke-direct {p1, v0}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->mHeaderExpandTracker:Landroid/util/SparseIntArray;

    :cond_0
    return-void
.end method

.method public setShowingActionMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->mIsShowingActionMode:Z

    return-void
.end method

.method public startCheckBoxAnimation(Z)V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_0

    const v1, 0x7f010037

    goto :goto_0

    :cond_0
    const v1, 0x7f010035

    :goto_0
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->mNotificationListView:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->mNotificationListView:Landroid/view/View;

    check-cast v2, Landroid/view/ViewGroup;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->getChangeBounds(Z)LY2/i;

    move-result-object v3

    invoke-static {v2, v3}, LY2/j0;->a(Landroid/view/ViewGroup;LY2/f0;)V

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->mNotificationListView:Landroid/view/View;

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0b082d

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    if-eqz v4, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_1
    invoke-virtual {v4, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    invoke-virtual {v4, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method
