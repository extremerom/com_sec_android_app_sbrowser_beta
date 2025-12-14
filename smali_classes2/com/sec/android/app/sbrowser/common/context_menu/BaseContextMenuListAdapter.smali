.class public abstract Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuListAdapter;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuListAdapter$Type;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mListener:Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuEventListener;

.field private final mMenuItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field protected final mOnClickListener:Landroid/view/View$OnClickListener;

.field protected final mOnTouchListener:Landroid/view/View$OnTouchListener;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/view/MenuItem;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    sget-object v0, Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuEventListener;->EMPTY:Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuEventListener;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuListAdapter;->mListener:Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuEventListener;

    new-instance v0, LK6/a;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p0}, LK6/a;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuListAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, LK6/j;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, LK6/j;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuListAdapter;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuListAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuListAdapter;->mMenuItems:Ljava/util/List;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuListAdapter;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuListAdapter;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuListAdapter;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuListAdapter;->lambda$new$1(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/MenuItem;

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuListAdapter;->mListener:Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuEventListener;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuEventListener;->onItemClick(Landroid/view/MenuItem;)V

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuListAdapter;->mListener:Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuEventListener;

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuEventListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public getCount()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuListAdapter;->mMenuItems:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuListAdapter;->mMenuItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuListAdapter;->mMenuItems:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const-string v0, "[getItem] position: "

    const-string v1, ", size: "

    invoke-static {p1, v0, v1}, Lt/b;->l(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuListAdapter;->mMenuItems:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BaseContextMenuListAdapter"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public getItemId(I)J
    .locals 2

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuListAdapter;->mMenuItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuListAdapter;->mMenuItems:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/MenuItem;

    invoke-interface {p0}, Landroid/view/MenuItem;->getItemId()I

    move-result p0

    int-to-long p0, p0

    return-wide p0

    :cond_1
    :goto_0
    const-string v0, "[getItemId] position: "

    const-string v1, ", size: "

    invoke-static {p1, v0, v1}, Lt/b;->l(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuListAdapter;->mMenuItems:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BaseContextMenuListAdapter"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public abstract getItemLayoutResource()I
.end method

.method public getItemViewType(I)I
    .locals 3

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MenuItem;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "BaseContextMenuListAdapter"

    const-string p1, "[getItemViewType] item is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    invoke-interface {v0}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v2, "divider"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    add-int/2addr p1, v2

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    return v1

    :cond_2
    return v2
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuListAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuListAdapter;->getItemLayoutResource()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MenuItem;

    if-nez v0, :cond_1

    return-object p2

    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuListAdapter;->getItemViewType(I)I

    move-result p1

    invoke-virtual {p0, v0, p2, p3, p1}, Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuListAdapter;->getViewForDropdownUi(Landroid/view/MenuItem;Landroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public abstract getViewForDropdownUi(Landroid/view/MenuItem;Landroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;
    .param p1    # Landroid/view/MenuItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public setListener(Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuListAdapter;->mListener:Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuEventListener;

    return-void
.end method
