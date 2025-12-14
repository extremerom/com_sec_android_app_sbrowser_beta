.class Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter;
.super Landroidx/recyclerview/widget/u0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter$SortMode;,
        Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter$DescViewHolder;,
        Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter$ItemViewHolder;,
        Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/u0;"
    }
.end annotation


# instance fields
.field private mCurrentSortMode:I

.field private mItemList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerAppDTO;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter$Listener;

.field private final mNormalTextColorRes:I

.field private final mPrimaryTextColorRes:I


# direct methods
.method public constructor <init>(Ljava/util/concurrent/CopyOnWriteArrayList;)V
    .locals 1
    .param p1    # Ljava/util/concurrent/CopyOnWriteArrayList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerAppDTO;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/recyclerview/widget/u0;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter;->mCurrentSortMode:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter;->mItemList:Ljava/util/concurrent/CopyOnWriteArrayList;

    const p1, 0x7f060e21

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter;->mNormalTextColorRes:I

    const p1, 0x7f06020c

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter;->mPrimaryTextColorRes:I

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerAppDTO;Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerAppDTO;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter;->lambda$sort$0(Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerAppDTO;Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerAppDTO;)I

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerAppDTO;Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerAppDTO;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter;->lambda$sort$1(Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerAppDTO;Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerAppDTO;)I

    move-result p0

    return p0
.end method

.method private bindItemViewHolder(Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter$ItemViewHolder;I)V
    .locals 6

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter;->getDataFromViewIndex(I)Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerAppDTO;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p1, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerAppDTO;->getCount()I

    move-result v3

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerAppDTO;->getCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const v5, 0x7f120030

    invoke-virtual {v2, v5, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerAppDTO;->getAppName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter$ItemViewHolder;->setAppName(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerAppDTO;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter$ItemViewHolder;->setRoundedImage(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerAppDTO;->getBlocked()Z

    move-result v3

    invoke-virtual {p1, v3}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter$ItemViewHolder;->setBlocked(Z)V

    invoke-virtual {p1, v2}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter$ItemViewHolder;->setLaunchingCount(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerAppDTO;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/utils/TimeUtil;->timestampToDateTime(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter$ItemViewHolder;->setLaunchingDate(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter;->isLastChild(I)Z

    move-result v0

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter;->isFirstChild(I)Z

    move-result p2

    invoke-static {v1, p1, v0, p2}, Lcom/sec/android/app/sbrowser/sesl_common/SeslUtil;->setBackgroundForItems(Landroid/content/Context;Lcom/sec/android/app/sbrowser/sesl_common/SeslBaseViewHolder;ZZ)V

    iget p2, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter;->mCurrentSortMode:I

    if-eqz p2, :cond_1

    iget p2, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter;->mNormalTextColorRes:I

    invoke-virtual {v1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter$ItemViewHolder;->setTextColorForCount(I)V

    iget p0, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter;->mPrimaryTextColorRes:I

    invoke-virtual {v1, p0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter$ItemViewHolder;->setTextColorForDate(I)V

    goto :goto_0

    :cond_1
    iget p2, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter;->mPrimaryTextColorRes:I

    invoke-virtual {v1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter$ItemViewHolder;->setTextColorForCount(I)V

    iget p0, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter;->mNormalTextColorRes:I

    invoke-virtual {v1, p0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter$ItemViewHolder;->setTextColorForDate(I)V

    :goto_0
    return-void
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter;I)Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerAppDTO;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter;->getDataFromViewIndex(I)Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerAppDTO;

    move-result-object p0

    return-object p0
.end method

.method private getDataFromViewIndex(I)Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerAppDTO;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter;->mItemList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter;->mItemList:Ljava/util/concurrent/CopyOnWriteArrayList;

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerAppDTO;

    return-object p0
.end method

.method private isFirstChild(I)Z
    .locals 0

    const/4 p0, 0x1

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isLastChild(I)Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter;->getItemCount()I

    move-result p0

    const/4 v0, 0x1

    sub-int/2addr p0, v0

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static synthetic lambda$sort$0(Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerAppDTO;Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerAppDTO;)I
    .locals 2

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerAppDTO;->getCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerAppDTO;->getCount()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerAppDTO;->getAppName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerAppDTO;->getAppName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    :cond_0
    return v0
.end method

.method private static synthetic lambda$sort$1(Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerAppDTO;Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerAppDTO;)I
    .locals 4

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerAppDTO;->getTime()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerAppDTO;->getTime()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerAppDTO;->getAppName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerAppDTO;->getAppName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    :cond_0
    return v0
.end method


# virtual methods
.method public getCurrentSortMode()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter;->mCurrentSortMode:I

    return p0
.end method

.method public getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter;->mItemList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public getItemId(Ljava/lang/String;)I
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter;->mItemList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerAppDTO;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerAppDTO;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerAppDTO;->getAppId()I

    move-result p0

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    if-nez p1, :cond_0

    return-wide v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter;->getDataFromViewIndex(I)Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerAppDTO;

    move-result-object p0

    if-nez p0, :cond_1

    return-wide v0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerAppDTO;->getAppId()I

    move-result p0

    int-to-long p0, p0

    return-wide p0
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

.method public getListener()Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter$Listener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter;->mListener:Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter$Listener;

    return-object p0
.end method

.method public hasDetailHistory()Z
    .locals 7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter;->mItemList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter;->mItemList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerAppDTO;

    iget p0, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter;->mCurrentSortMode:I

    const/4 v2, 0x1

    if-nez p0, :cond_2

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerAppDTO;->getCount()I

    move-result p0

    if-eqz p0, :cond_1

    move v1, v2

    :cond_1
    return v1

    :cond_2
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerAppDTO;->getTime()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long p0, v3, v5

    if-eqz p0, :cond_3

    move v1, v2

    :cond_3
    return v1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/h1;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/h1;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-nez p2, :cond_0

    return-void

    :cond_0
    check-cast p1, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter$ItemViewHolder;

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter;->bindItemViewHolder(Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter$ItemViewHolder;I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/h1;
    .locals 1
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_2

    const p0, 0x7f0e0469

    invoke-static {p1, p0, p1, v0}, Landroidx/recyclerview/widget/P;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    const p1, 0x7f0b0624

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isReplaceSecBrandAsGalaxy()Z

    move-result p2

    if-eqz p2, :cond_0

    const p2, 0x7f140636

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_0
    sget p2, Lcom/sec/sbrowser/spl/util/PlatformInfo;->ONEUI_VERSION:I

    const v0, 0xc350

    if-ge p2, v0, :cond_1

    const p2, 0x7f140635

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    :goto_0
    new-instance p1, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter$DescViewHolder;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter$DescViewHolder;-><init>(Landroid/view/View;)V

    return-object p1

    :cond_2
    const p2, 0x7f0e046b

    invoke-static {p1, p2, p1, v0}, Landroidx/recyclerview/widget/P;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter$ItemViewHolder;

    invoke-direct {p2, p1, p0}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter$ItemViewHolder;-><init>(Landroid/view/View;Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter;)V

    return-object p2
.end method

.method public setListData(Ljava/util/concurrent/CopyOnWriteArrayList;)V
    .locals 0
    .param p1    # Ljava/util/concurrent/CopyOnWriteArrayList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NotifyDataSetChanged"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerAppDTO;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter;->mItemList:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget p1, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter;->mCurrentSortMode:I

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter;->sort(I)V

    return-void
.end method

.method public setListener(Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter$Listener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter;->mListener:Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter$Listener;

    return-void
.end method

.method public sort(I)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NotifyDataSetChanged"
        }
    .end annotation

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter;->mCurrentSortMode:I

    if-nez p1, :cond_0

    new-instance p1, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/a;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/a;-><init>(I)V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/a;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/a;-><init>(I)V

    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter;->mItemList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter;->mItemList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter;->mItemList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->notifyDataSetChanged()V

    return-void
.end method
