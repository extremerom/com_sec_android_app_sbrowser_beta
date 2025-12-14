.class public Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;
.super Landroidx/recyclerview/widget/u0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter$WebsiteInfoPopulator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/u0;"
    }
.end annotation


# instance fields
.field private mAllowBlockGroup:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/settings/website/AllowBlockNotiGroupInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAllowBlockListView:Landroid/view/View;

.field private mChildInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/settings/website/ChildInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mChildItemsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/settings/website/ChildInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContentDescription:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mGroupInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/settings/website/AllowBlockNotiGroupInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupViewContentDescription:Ljava/lang/StringBuilder;

.field private mGroups:[Ljava/lang/String;

.field private mHeaderExpandTracker:Landroid/util/SparseIntArray;

.field private mIsLongPressDragging:Z

.field private mIsShowingActionMode:Z

.field private mListener:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiAdapterListener;

.field private mMasterSwitchStatus:Z

.field private mNoItemViewHeight:I

.field private mPaddingEnd:I

.field private mPaddingStart:I

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

.field private mWebPushGroupList:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/sbrowser/settings/website/AllowBlockNotiGroupInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mWebPushNotiFragment:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;

.field private mWebsiteFetcher:Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher;

.field mWebsiteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/settings/website/Website;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;)V
    .locals 2

    invoke-direct {p0}, Landroidx/recyclerview/widget/u0;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mViewTypes:Landroid/util/SparseArray;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mGroups:[Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mPaddingStart:I

    iput v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mPaddingEnd:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mChildInfoList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mAllowBlockGroup:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mWebPushGroupList:Ljava/util/LinkedHashMap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mIsLongPressDragging:Z

    iput v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mNoItemViewHeight:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mWebPushNotiFragment:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mGroups:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f140839

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mGroups:[Ljava/lang/String;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f14083a

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x1

    aput-object p2, p1, v1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07172f

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mPaddingStart:I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07172e

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mPaddingEnd:I

    new-instance p1, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher;

    new-instance p2, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter$WebsiteInfoPopulator;

    invoke-direct {p2, p0, v0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter$WebsiteInfoPopulator;-><init>(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;I)V

    invoke-direct {p1, p2}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher;-><init>(Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoCallback;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mWebsiteFetcher:Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f140289

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mTickboxChecked:Ljava/lang/String;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f14028a

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mTickboxUnChecked:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->lambda$bindItemViewHolder$2(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method private addGroup(Ljava/lang/String;Lcom/sec/android/app/sbrowser/settings/website/Website;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mWebPushGroupList:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/settings/website/AllowBlockNotiGroupInfo;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/website/AllowBlockNotiGroupInfo;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/settings/website/AllowBlockNotiGroupInfo;-><init>()V

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/settings/website/AllowBlockNotiGroupInfo;->setName(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mWebPushGroupList:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mAllowBlockGroup:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/website/AllowBlockNotiGroupInfo;->getList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mChildItemsList:Ljava/util/List;

    new-instance p1, Lcom/sec/android/app/sbrowser/settings/website/ChildInfo;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/settings/website/Website;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/settings/website/Website;->isPermissionAllowed()Z

    move-result v2

    invoke-direct {p1, p2, v1, v2}, Lcom/sec/android/app/sbrowser/settings/website/ChildInfo;-><init>(Lcom/sec/android/app/sbrowser/settings/website/Website;Ljava/lang/String;Z)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mChildItemsList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mChildItemsList:Ljava/util/List;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/settings/website/AllowBlockNotiGroupInfo;->setListItems(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->lambda$bindItemViewHolder$1()V

    return-void
.end method

.method private bindAllowBlockViewHolder(Landroidx/recyclerview/widget/h1;)V
    .locals 1

    check-cast p1, Lcom/sec/android/app/sbrowser/settings/website/AllowBlockSwitchViewHolder;

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mIsShowingActionMode:Z

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mMasterSwitchStatus:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/settings/website/AllowBlockSwitchViewHolder;->setBlockNoisyNotificationSwitchStatus(Z)V

    return-void
.end method

.method private bindHeaderViewHolder(Landroidx/recyclerview/widget/h1;ILcom/sec/android/app/sbrowser/common/widget/ExpandableViewType;)V
    .locals 1

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/common/widget/ExpandableViewType;->getDataIndex()I

    move-result p3

    check-cast p1, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiHeaderViewHolder;

    invoke-virtual {p0, p3}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/sec/android/app/sbrowser/settings/website/AllowBlockNotiGroupInfo;

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/settings/website/AllowBlockNotiGroupInfo;->getName()Ljava/lang/String;

    move-result-object p3

    iget-object v0, p1, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiHeaderViewHolder;->mSectionTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p3, p1, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    const v0, 0x7f08022d

    invoke-virtual {p3, v0}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p3, p1, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p0, p3, p2, v0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->setHeaderIndicatorAnimation(Landroid/view/View;IZ)V

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiHeaderViewHolder;->mRowView:Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->setGroupHeaderContentDescription(Landroid/view/View;I)V

    return-void
.end method

.method private bindItemViewHolder(Landroidx/recyclerview/widget/h1;ILcom/sec/android/app/sbrowser/common/widget/ExpandableViewType;)V
    .locals 6

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/common/widget/ExpandableViewType;->getDataIndex()I

    move-result p3

    check-cast p1, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiItemViewHolder;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mChildInfoList:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/settings/website/ChildInfo;

    iget v1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mPaddingStart:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v2, p1, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiItemViewHolder;->mUrl:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    iget-object v4, p1, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiItemViewHolder;->mUrl:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingEnd()I

    move-result v4

    iget-object v5, p1, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiItemViewHolder;->mUrl:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    iget-object v1, p1, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiItemViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingStart()I

    move-result v2

    iget-object v3, p1, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiItemViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    iget v4, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mPaddingEnd:I

    iget-object v5, p1, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiItemViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/View;->setPaddingRelative(IIII)V

    :cond_0
    iget-object v1, p1, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiItemViewHolder;->mCheck:Landroid/widget/CheckBox;

    new-instance v2, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/a;

    const/4 v3, 0x2

    invoke-direct {v2, v3, p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v1, p1, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiItemViewHolder;->mUrl:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/website/ChildInfo;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->isLastChild(I)Z

    move-result v1

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->isFirstChild(I)Z

    move-result p2

    invoke-direct {p0, p1, v1, p2}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->setBackgroundForItems(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiItemViewHolder;ZZ)V

    iget-object p2, p1, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiItemViewHolder;->mRowView:Landroid/view/View;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/website/ChildInfo;->getIsSelected()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mIsShowingActionMode:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    invoke-direct {p0, p2, v1}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->setItemSelectedBackgroundHighlight(Landroid/view/View;Z)V

    iget-object p2, p1, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiItemViewHolder;->mRowView:Landroid/view/View;

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mMasterSwitchStatus:Z

    invoke-virtual {p2, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object p2, p1, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiItemViewHolder;->mRowView:Landroid/view/View;

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mMasterSwitchStatus:Z

    invoke-virtual {p2, v1}, Landroid/view/View;->setClickable(Z)V

    iget-object p2, p1, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiItemViewHolder;->mUrl:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mMasterSwitchStatus:Z

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object p2, p1, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiItemViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mMasterSwitchStatus:Z

    invoke-virtual {p2, v1}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/website/ChildInfo;->getWebsite()Lcom/sec/android/app/sbrowser/settings/website/Website;

    move-result-object p2

    iput-object p2, p1, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiItemViewHolder;->mWebSite:Lcom/sec/android/app/sbrowser/settings/website/Website;

    iget-object v1, p1, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiItemViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object p2, p1, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiItemViewHolder;->mCheck:Landroid/widget/CheckBox;

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    const/16 v1, 0x8

    if-eq p2, v1, :cond_2

    iget-boolean p2, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mIsLongPressDragging:Z

    if-eqz p2, :cond_3

    :cond_2
    iget-object p2, p1, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiItemViewHolder;->mCheck:Landroid/widget/CheckBox;

    invoke-virtual {p2}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    :cond_3
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mChildInfoList:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/android/app/sbrowser/settings/website/ChildInfo;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/settings/website/ChildInfo;->getIsSelected()Z

    move-result p2

    iget-boolean p3, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mIsShowingActionMode:Z

    if-eqz p3, :cond_5

    iget-object p3, p1, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiItemViewHolder;->mCheck:Landroid/widget/CheckBox;

    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p3, p1, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiItemViewHolder;->mCheck:Landroid/widget/CheckBox;

    invoke-virtual {p3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p3

    if-eq p2, p3, :cond_4

    iget-object p3, p1, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiItemViewHolder;->mCheck:Landroid/widget/CheckBox;

    invoke-virtual {p3, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object p2, p1, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiItemViewHolder;->mCheck:Landroid/widget/CheckBox;

    invoke-virtual {p2}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    :cond_4
    iget-object p2, p1, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiItemViewHolder;->mCheck:Landroid/widget/CheckBox;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/view/View;->setTranslationX(F)V

    iget-object p2, p1, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiItemViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_5
    iget-object p3, p1, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiItemViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p3, p1, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiItemViewHolder;->mCheck:Landroid/widget/CheckBox;

    invoke-virtual {p3, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object p2, p1, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiItemViewHolder;->mCheck:Landroid/widget/CheckBox;

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    iget-object p2, p1, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiItemViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object p2, p1, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiItemViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/website/ChildInfo;->getIsChecked()Z

    move-result p3

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    iget-object p2, p1, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiItemViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    new-instance p3, Lcom/sec/android/app/sbrowser/settings/website/d;

    const/4 v3, 0x1

    invoke-direct {p3, v3, p0}, Lcom/sec/android/app/sbrowser/settings/website/d;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p2, p3}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object p2, p1, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiItemViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p2, v2}, Landroid/view/View;->setFocusable(Z)V

    iget-object p2, p1, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiItemViewHolder;->mCheck:Landroid/widget/CheckBox;

    invoke-virtual {p2, v2}, Landroid/view/View;->setFocusable(Z)V

    iget-object p2, p1, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiItemViewHolder;->mCheck:Landroid/widget/CheckBox;

    invoke-virtual {p2, v2}, Landroid/view/View;->setClickable(Z)V

    iget-object p2, p1, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiItemViewHolder;->mCheck:Landroid/widget/CheckBox;

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-eq p2, v1, :cond_6

    iget-boolean p2, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mIsLongPressDragging:Z

    if-eqz p2, :cond_7

    :cond_6
    iget-object p2, p1, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiItemViewHolder;->mCheck:Landroid/widget/CheckBox;

    invoke-virtual {p2}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    :cond_7
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p1, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiItemViewHolder;->mUrl:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mContentDescription:Ljava/lang/String;

    iget-boolean p2, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mIsShowingActionMode:Z

    const-string p3, ", "

    if-eqz p2, :cond_9

    iget-object p2, p1, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiItemViewHolder;->mCheck:Landroid/widget/CheckBox;

    invoke-virtual {p2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p2

    if-eqz p2, :cond_8

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mTickboxChecked:Ljava/lang/String;

    goto :goto_2

    :cond_8
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mTickboxUnChecked:Ljava/lang/String;

    :goto_2
    iget-object p1, p1, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiItemViewHolder;->mRowView:Landroid/view/View;

    invoke-static {p2, p3}, Lt/b;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mContentDescription:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_9
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f140dcc

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/website/ChildInfo;->getWebsite()Lcom/sec/android/app/sbrowser/settings/website/Website;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/website/Website;->isPermissionAllowed()Z

    move-result v0

    if-eqz v0, :cond_a

    const v0, 0x7f1402b0

    goto :goto_3

    :cond_a
    const v0, 0x7f1402af

    :goto_3
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiItemViewHolder;->mRowView:Landroid/view/View;

    invoke-static {v0, p3}, Lt/b;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mContentDescription:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_4
    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiItemViewHolder;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->lambda$bindItemViewHolder$0(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiItemViewHolder;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mContext:Landroid/content/Context;

    return-object p0
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

.method private synthetic lambda$bindItemViewHolder$0(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiItemViewHolder;Landroid/widget/CompoundButton;Z)V
    .locals 0

    iget-object p2, p1, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiItemViewHolder;->mRowView:Landroid/view/View;

    invoke-direct {p0, p2, p3}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->setItemSelectedBackgroundHighlight(Landroid/view/View;Z)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p1, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiItemViewHolder;->mUrl:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mContentDescription:Ljava/lang/String;

    iget-boolean p3, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mIsShowingActionMode:Z

    if-eqz p3, :cond_1

    iget-object p2, p1, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiItemViewHolder;->mCheck:Landroid/widget/CheckBox;

    invoke-virtual {p2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mTickboxChecked:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mTickboxUnChecked:Ljava/lang/String;

    :goto_0
    iget-object p1, p1, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiItemViewHolder;->mRowView:Landroid/view/View;

    const-string p3, ", "

    invoke-static {p2, p3}, Lt/b;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mContentDescription:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " , "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->getContext()Landroid/content/Context;

    move-result-object p0

    const p3, 0x7f140b8f

    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    iget-object p0, p1, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiItemViewHolder;->mRowView:Landroid/view/View;

    invoke-virtual {p0, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method private synthetic lambda$bindItemViewHolder$1()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mWebsiteFetcher:Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher;->fetchPushNotificationPreferences()V

    return-void
.end method

.method private synthetic lambda$bindItemViewHolder$2(Landroid/widget/CompoundButton;Z)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/settings/website/Website;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p2, :cond_0

    const-string v1, "On"

    goto :goto_0

    :cond_0
    const-string v1, "Off"

    :goto_0
    const-string v2, "det"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_1

    const-string v1, "Allowed"

    goto :goto_1

    :cond_1
    const-string v1, "Blocked"

    :goto_1
    const-string v2, "cat"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "556"

    const-string v2, "5194"

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    if-eqz p2, :cond_2

    const/4 p2, 0x1

    goto :goto_2

    :cond_2
    const/4 p2, 0x2

    :goto_2
    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/settings/website/Website;->setPermissionContentSetting(I)V

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, Lcom/sec/android/app/sbrowser/settings/website/e;

    const/4 v0, 0x3

    invoke-direct {p2, v0, p0}, Lcom/sec/android/app/sbrowser/settings/website/e;-><init>(ILjava/lang/Object;)V

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private loadData(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/settings/website/Website;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/settings/website/Website;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/website/Website;->isPermissionAllowed()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mGroups:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->addGroup(Ljava/lang/String;Lcom/sec/android/app/sbrowser/settings/website/Website;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mGroups:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->addGroup(Ljava/lang/String;Lcom/sec/android/app/sbrowser/settings/website/Website;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private resetList()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mGroupInfo:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mChildInfoList:Ljava/util/List;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mAllowBlockGroup:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mWebPushGroupList:Ljava/util/LinkedHashMap;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mAllowBlockGroup:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mWebPushGroupList:Ljava/util/LinkedHashMap;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mChildItemsList:Ljava/util/List;

    return-void
.end method

.method private setBackgroundForItems(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiItemViewHolder;ZZ)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    if-eqz p2, :cond_0

    const/16 p0, 0xf

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/common/view/RoundedViewHolder;->setRoundMode(I)V

    iget-object p0, p1, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiItemViewHolder;->mDivider:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_0
    const v1, 0x7f060bd0

    if-eqz p3, :cond_1

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/common/view/RoundedViewHolder;->setRoundMode(I)V

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiItemViewHolder;->mDivider:Landroid/view/View;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    const/16 p0, 0xc

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/common/view/RoundedViewHolder;->setRoundMode(I)V

    iget-object p0, p1, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiItemViewHolder;->mDivider:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/common/view/RoundedViewHolder;->setRoundMode(I)V

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiItemViewHolder;->mDivider:Landroid/view/View;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_0
    return-void
.end method

.method private setItemSelectedBackgroundHighlight(Landroid/view/View;Z)V
    .locals 1

    if-eqz p2, :cond_0

    const p0, 0x7f080237

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f080236

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-static {p2, p1, p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setBackgroundDrawable(Landroid/content/Context;Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public checkExpanded(I)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mHeaderExpandTracker:Landroid/util/SparseIntArray;

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

.method public expandGroup(I)V
    .locals 4

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->getHeaderPosition(I)I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->getChildrenCount(I)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mHeaderExpandTracker:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mHeaderExpandTracker:Landroid/util/SparseIntArray;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseIntArray;->put(II)V

    add-int/2addr v0, v3

    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/u0;->notifyItemRangeInserted(II)V

    :cond_0
    return-void
.end method

.method public getChild(I)Lcom/sec/android/app/sbrowser/settings/website/ChildInfo;
    .locals 3

    const/4 v0, 0x0

    if-ltz p1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mChildInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->getGroupCount()I

    move-result v2

    add-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x1

    if-lt p1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mViewTypes:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mViewTypes:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/common/widget/ExpandableViewType;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/widget/ExpandableViewType;->getDataIndex()I

    move-result p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mChildInfoList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/settings/website/ChildInfo;

    return-object p0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public getChildInfoList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/settings/website/ChildInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mChildInfoList:Ljava/util/List;

    return-object p0
.end method

.method public getChildPosition(I)I
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->getViewType(I)Lcom/sec/android/app/sbrowser/common/widget/ExpandableViewType;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mViewTypes:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/common/widget/ExpandableViewType;

    if-eqz p0, :cond_0

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

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mGroupInfo:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mGroupInfo:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/settings/website/AllowBlockNotiGroupInfo;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/website/AllowBlockNotiGroupInfo;->getList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mGroupInfo:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getGroupCount()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mGroupInfo:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public getGroupPosition(I)I
    .locals 2

    :goto_0
    if-ltz p1, :cond_1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mViewTypes:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mViewTypes:Landroid/util/SparseArray;

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

.method public getHeaderPosition(I)I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mViewTypes:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mViewTypes:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mViewTypes:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/common/widget/ExpandableViewType;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/widget/ExpandableViewType;->getType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    move v0, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public getItemCount()I
    .locals 11

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mChildInfoList:Ljava/util/List;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mViewTypes:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->getGroupCount()I

    move-result v0

    const/4 v2, 0x0

    move v4, v1

    move v3, v2

    move v5, v3

    :goto_0
    if-ge v3, v0, :cond_3

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mViewTypes:Landroid/util/SparseArray;

    new-instance v7, Lcom/sec/android/app/sbrowser/common/widget/ExpandableViewType;

    const/4 v8, 0x2

    invoke-direct {v7, v3, v8}, Lcom/sec/android/app/sbrowser/common/widget/ExpandableViewType;-><init>(II)V

    invoke-virtual {v6, v4, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0, v3}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->getChildrenCount(I)I

    move-result v6

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mHeaderExpandTracker:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v7

    if-eqz v7, :cond_0

    move v7, v2

    :goto_1
    if-ge v7, v6, :cond_1

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mViewTypes:Landroid/util/SparseArray;

    new-instance v9, Lcom/sec/android/app/sbrowser/common/widget/ExpandableViewType;

    add-int/lit8 v10, v3, 0x2

    sub-int v10, v4, v10

    add-int/2addr v10, v5

    invoke-direct {v9, v10, v1}, Lcom/sec/android/app/sbrowser/common/widget/ExpandableViewType;-><init>(II)V

    invoke-virtual {v8, v4, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    add-int/2addr v5, v6

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    move v4, v1

    :cond_3
    if-ne v4, v1, :cond_4

    add-int/lit8 v4, v4, 0x1

    :cond_4
    return v4
.end method

.method public getItemViewType(I)I
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mWebsiteList:Ljava/util/List;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x3

    return p0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mViewTypes:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mViewTypes:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/common/widget/ExpandableViewType;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/widget/ExpandableViewType;->getType()I

    move-result p0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_2

    return p1

    :cond_2
    return v0
.end method

.method public getListener()Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiAdapterListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mListener:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiAdapterListener;

    return-object p0
.end method

.method public getNotificationSelectedItemCount()I
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mChildInfoList:Ljava/util/List;

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mChildInfoList:Ljava/util/List;

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

    check-cast v1, Lcom/sec/android/app/sbrowser/settings/website/ChildInfo;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/settings/website/ChildInfo;->getIsSelected()Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public getTotalNotificationItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mWebsiteList:Ljava/util/List;

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mWebsiteList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getViewType(I)Lcom/sec/android/app/sbrowser/common/widget/ExpandableViewType;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mViewTypes:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/common/widget/ExpandableViewType;

    return-object p0
.end method

.method public isExpanded(I)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->getViewType(I)Lcom/sec/android/app/sbrowser/common/widget/ExpandableViewType;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mViewTypes:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/common/widget/ExpandableViewType;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/widget/ExpandableViewType;->getDataIndex()I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mHeaderExpandTracker:Landroid/util/SparseIntArray;

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

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mViewTypes:Landroid/util/SparseArray;

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mViewTypes:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/common/widget/ExpandableViewType;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/widget/ExpandableViewType;->getType()I

    move-result p0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isLastChild(I)Z
    .locals 6

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->getGroupPosition(I)I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-gt v2, v0, :cond_1

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->getChildrenCount(I)I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mHeaderExpandTracker:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    if-eqz v5, :cond_0

    add-int/2addr v3, v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-ne v3, p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/h1;I)V
    .locals 4
    .param p1    # Landroidx/recyclerview/widget/h1;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->getItemViewType(I)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mViewTypes:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/widget/ExpandableViewType;

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->bindAllowBlockViewHolder(Landroidx/recyclerview/widget/h1;)V

    return-void

    :cond_0
    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    iget v2, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mNoItemViewHeight:I

    if-lez v2, :cond_1

    iget-object v2, p1, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mNoItemViewHeight:I

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v3, p1, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    if-eqz v1, :cond_3

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    invoke-direct {p0, p1, p2, v1}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->bindItemViewHolder(Landroidx/recyclerview/widget/h1;ILcom/sec/android/app/sbrowser/common/widget/ExpandableViewType;)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    invoke-direct {p0, p1, p2, v1}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->bindHeaderViewHolder(Landroidx/recyclerview/widget/h1;ILcom/sec/android/app/sbrowser/common/widget/ExpandableViewType;)V

    :cond_3
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

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mAllowBlockListView:Landroid/view/View;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mAllowBlockListView:Landroid/view/View;

    :cond_0
    const/4 v0, 0x0

    if-nez p2, :cond_1

    const p2, 0x7f0e0025

    invoke-static {p1, p2, p1, v0}, Landroidx/recyclerview/widget/P;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/sec/android/app/sbrowser/settings/website/AllowBlockSwitchViewHolder;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mWebPushNotiFragment:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;

    invoke-direct {p2, p1, p0}, Lcom/sec/android/app/sbrowser/settings/website/AllowBlockSwitchViewHolder;-><init>(Landroid/view/View;Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;)V

    return-object p2

    :cond_1
    const/4 v1, 0x3

    if-ne p2, v1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0e0024

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    new-instance p2, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter$1;

    invoke-direct {p2, p0, p1}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter$1;-><init>(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;Landroid/view/View;)V

    return-object p2

    :cond_2
    const/4 v1, 0x2

    if-ne p2, v1, :cond_3

    const p2, 0x7f0e0023

    invoke-static {p1, p2, p1, v0}, Landroidx/recyclerview/widget/P;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiHeaderViewHolder;

    invoke-direct {p2, p1, p0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiHeaderViewHolder;-><init>(Landroid/view/View;Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;)V

    return-object p2

    :cond_3
    const p2, 0x7f0e0022

    invoke-static {p1, p2, p1, v0}, Landroidx/recyclerview/widget/P;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiItemViewHolder;

    invoke-direct {p2, p1, p0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiItemViewHolder;-><init>(Landroid/view/View;Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;)V

    return-object p2
.end method

.method public onDestroy()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->resetList()V

    return-void
.end method

.method public onHeaderClick(I)V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mViewTypes:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/widget/ExpandableViewType;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/widget/ExpandableViewType;->getDataIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->getChildrenCount(I)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mHeaderExpandTracker:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mHeaderExpandTracker:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0, v3}, Landroid/util/SparseIntArray;->put(II)V

    add-int/2addr p1, v3

    invoke-virtual {p0, p1, v1}, Landroidx/recyclerview/widget/u0;->notifyItemRangeInserted(II)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mHeaderExpandTracker:Landroid/util/SparseIntArray;

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    add-int/2addr p1, v3

    invoke-virtual {p0, p1, v1}, Landroidx/recyclerview/widget/u0;->notifyItemRangeRemoved(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setAllowedBlockedList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/settings/website/Website;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mWebsiteList:Ljava/util/List;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->resetList()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mWebsiteList:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->loadData(Ljava/util/List;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mAllowBlockGroup:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mGroupInfo:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mChildInfoList:Ljava/util/List;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mWebPushGroupList:Ljava/util/LinkedHashMap;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mGroups:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/settings/website/AllowBlockNotiGroupInfo;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mChildInfoList:Ljava/util/List;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/website/AllowBlockNotiGroupInfo;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mWebPushGroupList:Ljava/util/LinkedHashMap;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mGroups:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/settings/website/AllowBlockNotiGroupInfo;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mChildInfoList:Ljava/util/List;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/website/AllowBlockNotiGroupInfo;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mHeaderExpandTracker:Landroid/util/SparseIntArray;

    if-nez p1, :cond_2

    new-instance p1, Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->getGroupCount()I

    move-result v0

    invoke-direct {p1, v0}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mHeaderExpandTracker:Landroid/util/SparseIntArray;

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->getGroupCount()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->getItemCount()I

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->expandGroup(I)V

    :cond_3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->notifyDataSetChanged()V

    return-void
.end method

.method public setGroupHeaderContentDescription(Landroid/view/View;I)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mGroupViewContentDescription:Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->getViewType(I)Lcom/sec/android/app/sbrowser/common/widget/ExpandableViewType;

    move-result-object v0

    const-string v1, " "

    if-eqz v0, :cond_4

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->getViewType(I)Lcom/sec/android/app/sbrowser/common/widget/ExpandableViewType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/widget/ExpandableViewType;->getDataIndex()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mContext:Landroid/content/Context;

    const v4, 0x7f140340

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    invoke-virtual {v3, v5}, Ljava/lang/String;->codePointAt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v7

    if-nez v7, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    move-result v6

    add-int/2addr v5, v6

    goto :goto_0

    :cond_1
    :goto_1
    if-le v4, v5, :cond_3

    invoke-static {v3, v4}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    move-result v6

    sub-int/2addr v4, v6

    goto :goto_1

    :cond_3
    :goto_2
    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/settings/website/AllowBlockNotiGroupInfo;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mGroupViewContentDescription:Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/website/AllowBlockNotiGroupInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const v5, 0x7f14058d

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->isExpanded(I)Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mGroupViewContentDescription:Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f141082

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_5
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mGroupViewContentDescription:Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f14107c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    const p2, 0x7f0b055e

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mGroupViewContentDescription:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/sec/android/app/sbrowser/tooltip/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mGroupViewContentDescription:Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mGroupViewContentDescription:Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1402b1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mGroupViewContentDescription:Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

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

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->isExpanded(I)Z

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

.method public setListener(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiAdapterListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mListener:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiAdapterListener;

    return-void
.end method

.method public setNoItemViewHeight(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mNoItemViewHeight:I

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/u0;->notifyItemChanged(I)V

    return-void
.end method

.method public setShowingActionMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mIsShowingActionMode:Z

    return-void
.end method

.method public setSwitchStatus(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mMasterSwitchStatus:Z

    return-void
.end method

.method public sortWebsiteList(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/settings/website/Website;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/settings/website/Website;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/settings/website/Website;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/settings/website/Website;->isPermissionAllowed()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/settings/website/Website;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/website/Website;->isPermissionAllowed()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return-object p0
.end method

.method public startCheckBoxAnimation(Z)V
    .locals 7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_0

    const v1, 0x7f010037

    goto :goto_0

    :cond_0
    const v1, 0x7f010035

    :goto_0
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mAllowBlockListView:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mAllowBlockListView:Landroid/view/View;

    check-cast v2, Landroid/view/ViewGroup;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->getChangeBounds(Z)LY2/i;

    move-result-object v3

    invoke-static {v2, v3}, LY2/j0;->a(Landroid/view/ViewGroup;LY2/f0;)V

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mAllowBlockListView:Landroid/view/View;

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0b0234

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    const v6, 0x7f0b0c31

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/widget/SwitchCompat;

    if-eqz v5, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    const/4 v6, 0x4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_1
    invoke-virtual {v5, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    invoke-virtual {v5, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method
