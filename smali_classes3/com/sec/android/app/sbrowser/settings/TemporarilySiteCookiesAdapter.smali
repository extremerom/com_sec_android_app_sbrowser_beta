.class public Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;
.super Landroidx/recyclerview/widget/u0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter$ItemGroup;,
        Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter$DescriptionViewHolder;,
        Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter$Temporarilyallowtype;,
        Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter$TemporaryAllowItemViewType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/u0;"
    }
.end annotation


# instance fields
.field private mCheckStates:[Z

.field private final mContext:Landroid/content/Context;

.field private mGroupCount:I

.field private mGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter$ItemGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mIsActionMode:Z

.field private mListener:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapterListner;

.field private mSize:I

.field private final mWebsiteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/settings/website/Website;",
            ">;"
        }
    .end annotation
.end field

.field private mWebsiteListView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/settings/website/Website;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/recyclerview/widget/u0;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;->mIsActionMode:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;->mGroups:Ljava/util/List;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;->mWebsiteList:Ljava/util/List;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/u0;->setHasStableIds(Z)V

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;->loadItems(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic a(ILjava/lang/String;Landroid/widget/ImageView;Landroid/content/Context;Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;J)V
    .locals 0

    invoke-static/range {p0 .. p8}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;->lambda$loadpermissionicon$0(ILjava/lang/String;Landroid/widget/ImageView;Landroid/content/Context;Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;J)V

    return-void
.end method

.method private bindDescriptionViewHolder(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter$DescriptionViewHolder;I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;->mContext:Landroid/content/Context;

    const p2, 0x7f141048

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter$DescriptionViewHolder;->setSummary(Ljava/lang/String;)V

    return-void
.end method

.method private bindViewHolderItemType(Landroidx/recyclerview/widget/h1;Landroid/util/Pair;I)V
    .locals 13
    .param p1    # Landroidx/recyclerview/widget/h1;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/h1;",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/sbrowser/settings/website/Website;",
            ">;I)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p2

    move/from16 v2, p3

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;->getItemViewType(I)I

    move-result v3

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v4}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;->getItem(I)Landroid/util/Pair;

    move-result-object v7

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {p0, v4}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;->getItem(I)Landroid/util/Pair;

    move-result-object v8

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;->getItem(I)Landroid/util/Pair;

    move-result-object v4

    iget-boolean v5, v0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;->mIsActionMode:Z

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz v5, :cond_0

    if-eqz v4, :cond_0

    iget-object v6, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v6, :cond_0

    iget-object v6, v0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;->mCheckStates:[Z

    aget-boolean v6, v6, v2

    if-eqz v6, :cond_0

    move v11, v10

    goto :goto_0

    :cond_0
    move v11, v9

    :goto_0
    if-ne v3, v10, :cond_8

    move-object v12, p1

    check-cast v12, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesViewHolder;

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;->mCheckStates:[Z

    aget-boolean v2, v3, v2

    invoke-virtual {v12, p2, v5, v2}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesViewHolder;->bindDomainViewHolder(Landroid/util/Pair;ZZ)V

    if-eqz v4, :cond_1

    invoke-virtual {v12}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesViewHolder;->getImageView()Landroid/widget/ImageView;

    move-result-object v1

    const/16 v5, 0x40

    iget-object v6, v0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;->mContext:Landroid/content/Context;

    const/4 v3, 0x6

    move-object v0, p0

    move-object v2, v4

    move v4, v5

    move-object v5, v6

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;->loadpermissionicon(Landroid/widget/ImageView;Landroid/util/Pair;IILandroid/content/Context;Landroid/content/Context;)V

    :cond_1
    if-eqz v7, :cond_2

    iget-object v0, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-nez v0, :cond_3

    :cond_2
    if-eqz v8, :cond_7

    iget-object v0, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    if-eqz v7, :cond_6

    iget-object v0, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    if-eqz v8, :cond_5

    iget-object v0, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-nez v0, :cond_5

    invoke-virtual {v12, v9, v11}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesViewHolder;->setItemBackground(IZ)V

    goto :goto_3

    :cond_5
    const/4 v0, 0x3

    invoke-virtual {v12, v0, v11}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesViewHolder;->setItemBackground(IZ)V

    goto :goto_3

    :cond_6
    :goto_1
    invoke-virtual {v12, v10, v11}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesViewHolder;->setItemBackground(IZ)V

    goto :goto_3

    :cond_7
    :goto_2
    const/4 v0, 0x2

    invoke-virtual {v12, v0, v11}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesViewHolder;->setItemBackground(IZ)V

    goto :goto_3

    :cond_8
    if-nez v3, :cond_9

    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteHeaderViewHolder;

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteHeaderViewHolder;->bindHeaderViewHolder(Landroid/util/Pair;)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v9}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteHeaderViewHolder;->setItemBackground(IZ)V

    :cond_9
    :goto_3
    return-void
.end method

.method private getGroupAt(I)Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Pair<",
            "Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter$ItemGroup;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-gez p1, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;->mGroups:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter$ItemGroup;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter$ItemGroup;->size()I

    move-result v2

    if-lt p1, v2, :cond_1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter$ItemGroup;->size()I

    move-result v1

    sub-int/2addr p1, v1

    goto :goto_0

    :cond_1
    new-instance p0, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_2
    return-object v0
.end method

.method private static lambda$loadpermissionicon$0(ILjava/lang/String;Landroid/widget/ImageView;Landroid/content/Context;Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;J)V
    .locals 2

    if-eqz p6, :cond_3

    invoke-virtual {p6}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p5, :cond_3

    const/4 p4, 0x6

    if-ne p0, p4, :cond_0

    const-string p0, "TemporarilySiteCookiesAdapter"

    const-string p3, "onFaviconAvailable - adding to Bitmap Cache"

    invoke-static {p0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;->getInstance()Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;

    move-result-object p0

    invoke-virtual {p0, p1, p5, p7, p8}, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;->addBitmapToCache(Ljava/lang/String;Landroid/graphics/Bitmap;J)V

    invoke-virtual {p2, p5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_0
    const/4 p4, 0x1

    if-ne p0, p4, :cond_4

    const-wide/16 v0, 0x0

    cmp-long p0, p7, v0

    if-nez p0, :cond_2

    invoke-static {p5}, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;->getByteArrayForBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ColorUtils;->getDominantColor([B)I

    move-result p0

    const/4 p7, -0x1

    if-ne p0, p7, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;->getInstance()Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;

    move-result-object p7

    invoke-virtual {p7}, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;->getFaviconHelper()Lcom/sec/terrace/browser/favicon/TerraceFaviconHelper;

    move-result-object p7

    int-to-long v0, p0

    invoke-virtual {p7, p6, v0, v1}, Lcom/sec/terrace/browser/favicon/TerraceFaviconHelper;->updateDominantColor(Ljava/lang/String;J)V

    move-wide p7, v0

    :cond_2
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/high16 p6, 0x3f800000    # 1.0f

    invoke-static {p4, p6, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    const/high16 p6, 0x41a00000    # 20.0f

    invoke-static {p4, p6, p3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p3

    float-to-int p3, p3

    new-instance p4, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p4}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 p6, 0x0

    invoke-virtual {p4, p6}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    long-to-int p6, p7

    invoke-virtual {p4, p6}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {p4, p0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {p4, p3, p3}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    invoke-virtual {p2, p4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;->getInstance()Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;

    move-result-object p0

    invoke-virtual {p0, p1, p5, p7, p8}, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;->addBitmapToCache(Ljava/lang/String;Landroid/graphics/Bitmap;J)V

    goto :goto_0

    :cond_3
    const p0, 0x7f080548

    invoke-virtual {p4, p0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const p1, 0x7f06098e

    invoke-virtual {p4, p1}, Landroid/content/Context;->getColor(I)I

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

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getDaysCount(J)J
    .locals 2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    sub-long/2addr p1, v0

    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide p0

    const-wide/16 v0, 0x1

    add-long/2addr p0, v0

    return-wide p0
.end method

.method public getItem(I)Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/sbrowser/settings/website/Website;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;->getGroupAt(I)Landroid/util/Pair;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p1, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter$ItemGroup;

    new-instance v0, Landroid/util/Pair;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter$ItemGroup;->getHeadername()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter$ItemGroup;->getItemAt(I)Lcom/sec/android/app/sbrowser/settings/website/Website;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getItemCount()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;->mSize:I

    return p0
.end method

.method public getItemId(I)J
    .locals 3

    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;->mSize:I

    const-wide/16 v1, 0x0

    if-lt p1, v0, :cond_0

    return-wide v1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;->getItem(I)Landroid/util/Pair;

    move-result-object p1

    if-nez p1, :cond_1

    return-wide v1

    :cond_1
    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-nez v0, :cond_2

    iget-object p0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    int-to-long p0, p0

    const-wide v0, -0x100000000L

    add-long/2addr p0, v0

    return-wide p0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    int-to-long p0, p0

    return-wide p0
.end method

.method public getItemViewType(I)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x3

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;->getItem(I)Landroid/util/Pair;

    move-result-object p0

    if-eqz p0, :cond_2

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method public getListener()Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapterListner;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;->mListener:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapterListner;

    return-object p0
.end method

.method public getmGroupCount()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;->mGroupCount:I

    return p0
.end method

.method public isHeader(I)Ljava/lang/Boolean;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;->getItem(I)Landroid/util/Pair;

    move-result-object p0

    if-eqz p0, :cond_1

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-nez p0, :cond_0

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_0
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_1
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public loadItems(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/settings/website/Website;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;->mGroups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;->mSize:I

    iput v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;->mGroupCount:I

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/settings/website/Website;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/website/Website;->getExpirytime()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;->getDaysCount(J)J

    move-result-wide v2

    const-wide/16 v4, 0x1e

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;->mSize:I

    if-nez v2, :cond_2

    new-instance v2, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter$ItemGroup;

    const-string v3, "Description_Header"

    invoke-direct {v2, v3}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter$ItemGroup;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;->mGroups:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v2, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;->mGroupCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;->mGroupCount:I

    iget v2, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;->mSize:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;->mSize:I

    :cond_2
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/website/Website;->getmEmbedder()Lcom/sec/android/app/sbrowser/settings/website/WebsiteAddress;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/website/Website;->getmEmbedder()Lcom/sec/android/app/sbrowser/settings/website/WebsiteAddress;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteAddress;->getTitle()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;->mGroups:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter$ItemGroup;

    if-eqz v4, :cond_4

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter$ItemGroup;->a(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter$ItemGroup;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v4, v0}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter$ItemGroup;->addItem(Lcom/sec/android/app/sbrowser/settings/website/Website;)V

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget v4, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;->mSize:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;->mSize:I

    goto :goto_1

    :cond_5
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter$ItemGroup;

    invoke-direct {v1, v2}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter$ItemGroup;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter$ItemGroup;->addItem(Lcom/sec/android/app/sbrowser/settings/website/Website;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;->mGroups:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;->mGroupCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;->mGroupCount:I

    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;->mSize:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;->mSize:I

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->notifyDataSetChanged()V

    return-void
.end method

.method public loadpermissionicon(Landroid/widget/ImageView;Landroid/util/Pair;IILandroid/content/Context;Landroid/content/Context;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/sbrowser/settings/website/Website;",
            ">;II",
            "Landroid/content/Context;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    move-object/from16 v3, p1

    move/from16 v1, p3

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/sec/android/app/sbrowser/settings/website/Website;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/website/Website;->getAddress()Lcom/sec/android/app/sbrowser/settings/website/WebsiteAddress;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteAddress;->getOrigin()Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v6, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    if-eqz v6, :cond_5

    if-nez v3, :cond_1

    goto/16 :goto_2

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "1"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x10

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;->getInstance()Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;->getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;->getInstance()Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;->getDominantColorFromMemCache(Ljava/lang/String;)J

    move-result-wide v7

    const/high16 v0, 0x41a00000    # 20.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const-wide/16 v9, -0x1

    const-wide/16 v11, 0x0

    const/4 v13, 0x6

    const/4 v14, 0x0

    const/4 v15, 0x1

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v16

    if-nez v16, :cond_3

    if-ne v1, v13, :cond_2

    invoke-virtual {v3, v14}, Landroid/widget/ImageView;->setColorFilter(I)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_2

    :cond_2
    cmp-long v4, v7, v11

    if-eqz v4, :cond_5

    cmp-long v4, v7, v9

    if-eqz v4, :cond_5

    if-ne v1, v15, :cond_5

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;->getInstance()Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;->getDominantColorFromMemCache(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual/range {p5 .. p5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v15, v5, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    invoke-virtual/range {p5 .. p5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-static {v15, v0, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    new-instance v5, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v5, v14}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    long-to-int v1, v1

    invoke-virtual {v5, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {v5, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {v5, v0, v0}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_3
    cmp-long v4, v7, v11

    if-eqz v4, :cond_4

    cmp-long v4, v7, v9

    if-eqz v4, :cond_4

    if-ne v1, v13, :cond_4

    const v4, 0x7f0800d2

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual/range {p5 .. p5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v15, v5, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    invoke-virtual/range {p5 .. p5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-static {v15, v0, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    new-instance v5, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v5, v14}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    long-to-int v7, v7

    invoke-virtual {v5, v7}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {v5, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {v5, v0, v0}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Image Not present in cache :: Native call for "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "TemporarilySiteCookiesAdapter"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;->getInstance()Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;->getFaviconHelper()Lcom/sec/terrace/browser/favicon/TerraceFaviconHelper;

    move-result-object v7

    new-instance v8, Lcom/sec/android/app/sbrowser/settings/P;

    move-object v0, v8

    move/from16 v1, p3

    move-object/from16 v3, p1

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/settings/P;-><init>(ILjava/lang/String;Landroid/widget/ImageView;Landroid/content/Context;Landroid/content/Context;)V

    const/4 v0, 0x7

    move/from16 v1, p4

    invoke-virtual {v7, v6, v0, v1, v8}, Lcom/sec/terrace/browser/favicon/TerraceFaviconHelper;->getLocalFaviconImageForURL(Ljava/lang/String;IILcom/sec/terrace/browser/favicon/TerraceFaviconHelper$FaviconImageCallback;)Z

    :cond_5
    :goto_2
    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/h1;I)V
    .locals 2
    .param p1    # Landroidx/recyclerview/widget/h1;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;->getItem(I)Landroid/util/Pair;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;->bindViewHolderItemType(Landroidx/recyclerview/widget/h1;Landroid/util/Pair;I)V

    goto :goto_0

    :cond_0
    check-cast p1, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter$DescriptionViewHolder;

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;->bindDescriptionViewHolder(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter$DescriptionViewHolder;I)V

    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/h1;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter$Temporarilyallowtype;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;->mWebsiteListView:Landroid/view/View;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;->mWebsiteListView:Landroid/view/View;

    :cond_0
    const/4 v0, 0x0

    if-eqz p2, :cond_3

    const/4 v1, 0x1

    if-eq p2, v1, :cond_2

    const/4 v1, 0x3

    if-eq p2, v1, :cond_1

    const p2, 0x7f0e0495

    invoke-static {p1, p2, p1, v0}, Landroidx/recyclerview/widget/P;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesViewHolder;

    invoke-direct {p2, p1, p0}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesViewHolder;-><init>(Landroid/view/View;Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;)V

    return-object p2

    :cond_1
    const p0, 0x7f0e0561

    invoke-static {p1, p0, p1, v0}, Landroidx/recyclerview/widget/P;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    new-instance p1, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter$DescriptionViewHolder;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter$DescriptionViewHolder;-><init>(Landroid/view/View;)V

    return-object p1

    :cond_2
    const p2, 0x7f0e08e8

    invoke-static {p1, p2, p1, v0}, Landroidx/recyclerview/widget/P;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesViewHolder;

    invoke-direct {p2, p1, p0}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesViewHolder;-><init>(Landroid/view/View;Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;)V

    return-object p2

    :cond_3
    const p2, 0x7f0e08e7

    invoke-static {p1, p2, p1, v0}, Landroidx/recyclerview/widget/P;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteHeaderViewHolder;

    invoke-direct {p2, p1, p0}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteHeaderViewHolder;-><init>(Landroid/view/View;Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;)V

    return-object p2
.end method

.method public setBottombarFocus()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;->mListener:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapterListner;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapterListner;->setBottombarFocus()V

    return-void
.end method

.method public setIsActionMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;->mIsActionMode:Z

    return-void
.end method

.method public setListener(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapterListner;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;->mListener:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapterListner;

    return-void
.end method

.method public setSelectedItemBackgroundHighlight(Landroid/view/View;Z)V
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
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f080236

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-static {p2, p1, p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setBackgroundDrawable(Landroid/content/Context;Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setmCheckStates([Z)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;->mCheckStates:[Z

    return-void
.end method
