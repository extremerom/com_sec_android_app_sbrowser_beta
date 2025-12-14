.class public Lcom/sec/android/app/sbrowser/context_menu/ContextMenuDropdownUi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/context_menu/ContextMenuUi;
.implements Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuEventListener;
.implements Landroid/view/View$OnKeyListener;
.implements Lcom/sec/terrace/TerraceApplicationStatus$TerraceActivityStateListener;


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mItemClickListener:Lcom/sec/android/app/sbrowser/common/listener/context_menu/ContextMenuItemClickListener;

.field private mListView:Landroid/widget/ListView;

.field private mMenuItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private final mOnMenuClosed:Ljava/lang/Runnable;

.field private final mOriginalView:Landroid/view/View;

.field private mOriginalX:I

.field private mOriginalY:I

.field private final mParams:Lcom/sec/terrace/TerraceContextMenuParams;

.field private mPopupWindow:Lcom/sec/android/app/sbrowser/context_menu/ContextMenuDropdownPopupWindow;

.field private final mScreenTouchPoint:Landroid/graphics/Point;

.field private final mTab:Lcom/sec/android/app/sbrowser/tab/Tab;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Lcom/sec/terrace/TerraceContextMenuParams;Ljava/util/List;Lcom/sec/android/app/sbrowser/tab/Tab;Lcom/sec/android/app/sbrowser/common/listener/context_menu/ContextMenuItemClickListener;Ljava/lang/Runnable;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/sec/terrace/TerraceContextMenuParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/view/View;",
            "Lcom/sec/terrace/TerraceContextMenuParams;",
            "Ljava/util/List<",
            "Landroid/view/MenuItem;",
            ">;",
            "Lcom/sec/android/app/sbrowser/tab/Tab;",
            "Lcom/sec/android/app/sbrowser/common/listener/context_menu/ContextMenuItemClickListener;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuDropdownUi;->mScreenTouchPoint:Landroid/graphics/Point;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuDropdownUi;->mOriginalView:Landroid/view/View;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuDropdownUi;->mActivity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuDropdownUi;->mParams:Lcom/sec/terrace/TerraceContextMenuParams;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuDropdownUi;->mMenuItems:Ljava/util/List;

    iput-object p6, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuDropdownUi;->mItemClickListener:Lcom/sec/android/app/sbrowser/common/listener/context_menu/ContextMenuItemClickListener;

    iput-object p7, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuDropdownUi;->mOnMenuClosed:Ljava/lang/Runnable;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuDropdownUi;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuDropdownUi;->createPopupWindow()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/context_menu/ContextMenuDropdownUi;Landroid/view/MenuItem;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuDropdownUi;->lambda$onItemClick$3(Landroid/view/MenuItem;I)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/context_menu/ContextMenuDropdownUi;Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuDropdownUi;->lambda$createPopupWindow$2(Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/context_menu/ContextMenuDropdownUi;Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuDropdownUi;->lambda$createPopupWindow$1(Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method private createPopupWindow()V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuDropdownUi;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0e01b2

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b0305

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuDropdownUi;->mParams:Lcom/sec/terrace/TerraceContextMenuParams;

    invoke-virtual {v2}, Lcom/sec/terrace/TerraceContextMenuParams;->getLinkUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->getUnicodeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuDropdownUi;->mParams:Lcom/sec/terrace/TerraceContextMenuParams;

    invoke-virtual {v3}, Lcom/sec/terrace/TerraceContextMenuParams;->isSelectedText()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuDropdownUi;->mParams:Lcom/sec/terrace/TerraceContextMenuParams;

    invoke-virtual {v3}, Lcom/sec/terrace/TerraceContextMenuParams;->isEditable()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x1f4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    new-instance v1, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuListAdapter;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuDropdownUi;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuDropdownUi;->mMenuItems:Ljava/util/List;

    invoke-direct {v1, v2, v3}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v1, p0}, Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuListAdapter;->setListener(Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuEventListener;)V

    const v2, 0x7f0b030a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuDropdownUi;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuDropdownUi;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuDropdownPopupWindow;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuDropdownUi;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuDropdownUi;->mListView:Landroid/widget/ListView;

    invoke-direct {v1, v2, v0, v3}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuDropdownPopupWindow;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/widget/ListView;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuDropdownUi;->mPopupWindow:Lcom/sec/android/app/sbrowser/context_menu/ContextMenuDropdownPopupWindow;

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/a;

    const/4 v2, 0x1

    invoke-direct {v0, v2, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuDropdownUi;->mActivity:Landroid/app/Activity;

    const v1, 0x7f08013b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuDropdownUi;->mPopupWindow:Lcom/sec/android/app/sbrowser/context_menu/ContextMenuDropdownPopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/context_menu/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/sbrowser/context_menu/a;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuDropdownUi;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuDropdownUi;->mOriginalView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuDropdownUi;->mOriginalView:Landroid/view/View;

    new-instance v1, LK6/b;

    const/4 v2, 0x3

    invoke-direct {v1, v2, p0}, LK6/b;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/context_menu/ContextMenuDropdownUi;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuDropdownUi;->lambda$createPopupWindow$0()V

    return-void
.end method

.method private synthetic lambda$createPopupWindow$0()V
    .locals 2

    const-string v0, "ContextMenuDropdownUi"

    const-string v1, "[onDismiss]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuDropdownUi;->mOnMenuClosed:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    invoke-static {p0}, Lcom/sec/terrace/TerraceApplicationStatus;->unregisterActivityStateListener(Lcom/sec/terrace/TerraceApplicationStatus$TerraceActivityStateListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuDropdownUi;->mOriginalView:Landroid/view/View;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuDropdownUi;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method private synthetic lambda$createPopupWindow$1(Landroid/view/View;IIIIIIII)V
    .locals 0

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, p2, p3, p4, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2, p6, p7, p8, p9}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuDropdownUi;->mPopupWindow:Lcom/sec/android/app/sbrowser/context_menu/ContextMenuDropdownPopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuDropdownUi;->mPopupWindow:Lcom/sec/android/app/sbrowser/context_menu/ContextMenuDropdownPopupWindow;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuDropdownUi;->mOriginalView:Landroid/view/View;

    iget p3, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuDropdownUi;->mOriginalX:I

    iget p4, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuDropdownUi;->mOriginalY:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuDropdownUi;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->isExtensionTerrace()Z

    move-result p0

    invoke-virtual {p1, p2, p3, p4, p0}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuDropdownPopupWindow;->show(Landroid/view/View;IIZ)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$createPopupWindow$2(Landroid/view/View;Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuDropdownUi;->dismiss()V

    return-void
.end method

.method private synthetic lambda$onItemClick$3(Landroid/view/MenuItem;I)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuDropdownUi;->dismiss()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuDropdownUi;->mItemClickListener:Lcom/sec/android/app/sbrowser/common/listener/context_menu/ContextMenuItemClickListener;

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/listener/context_menu/ContextMenuItemClickListener;->onItemClick(Landroid/view/MenuItem;I)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuDropdownUi;->mPopupWindow:Lcom/sec/android/app/sbrowser/context_menu/ContextMenuDropdownPopupWindow;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "ContextMenuDropdownUi"

    const-string v1, "[dismiss]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuDropdownUi;->mPopupWindow:Lcom/sec/android/app/sbrowser/context_menu/ContextMenuDropdownPopupWindow;

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public onActivityStateChange(Landroid/app/Activity;I)V
    .locals 1

    const-string p1, "[onActivityStateChange] newState : "

    const-string v0, "ContextMenuDropdownUi"

    invoke-static {p2, p1, v0}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x6

    if-eq p2, p1, :cond_0

    const/4 p1, 0x5

    if-ne p2, p1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuDropdownUi;->dismiss()V

    :cond_1
    return-void
.end method

.method public onItemClick(Landroid/view/MenuItem;)V
    .locals 4
    .param p1    # Landroid/view/MenuItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuDropdownUi;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuDropdownUi;->mScreenTouchPoint:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v0, v2, v1}, Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil;->getGridAreaDirection(Landroid/content/Context;II)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[onItemClick] gridAreaDirection : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ContextMenuDropdownUi"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f0b0343

    if-eq v1, v2, :cond_4

    const v2, 0x7f0b031b

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    const v2, 0x7f0b0328

    if-eq v1, v2, :cond_3

    const v2, 0x7f0b0315

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const v2, 0x7f0b0314

    if-eq v1, v2, :cond_2

    const v2, 0x7f0b0327

    if-ne v1, v2, :cond_5

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuDropdownUi;->mItemClickListener:Lcom/sec/android/app/sbrowser/common/listener/context_menu/ContextMenuItemClickListener;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/listener/context_menu/ContextMenuItemClickListener;->onReadyToDetectBarcode()V

    goto :goto_2

    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuDropdownUi;->mItemClickListener:Lcom/sec/android/app/sbrowser/common/listener/context_menu/ContextMenuItemClickListener;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/listener/context_menu/ContextMenuItemClickListener;->onReadyToClipSubject()V

    goto :goto_2

    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuDropdownUi;->mItemClickListener:Lcom/sec/android/app/sbrowser/common/listener/context_menu/ContextMenuItemClickListener;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/listener/context_menu/ContextMenuItemClickListener;->onReadyToExtractText()V

    :cond_5
    :goto_2
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, LB2/a;

    const/4 v3, 0x4

    invoke-direct {v2, p0, p1, v0, v3}, LB2/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    const-wide/16 p0, 0x64

    invoke-virtual {v1, v2, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 8

    invoke-static {p3}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->getMetaState(Landroid/view/KeyEvent;)I

    move-result v0

    or-int/2addr v0, p2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_4

    const/16 v1, 0x13

    const-string v4, "divider"

    if-eq v0, v1, :cond_2

    const/16 v1, 0x14

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuDropdownUi;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v0

    add-int/2addr v0, v2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuDropdownUi;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    invoke-interface {p0, v0}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/MenuItem;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1, p2, p3}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    :cond_1
    return v3

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuDropdownUi;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v0

    sub-int/2addr v0, v2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuDropdownUi;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    invoke-interface {p0, v0}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/MenuItem;

    if-eqz p0, :cond_3

    invoke-interface {p0}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {p1, p2, p3}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    :cond_3
    return v3

    :cond_4
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-ne p1, v2, :cond_8

    const/16 p1, 0x42

    if-eq p2, p1, :cond_5

    const/16 p1, 0xa0

    if-eq p2, p1, :cond_5

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuDropdownUi;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getSelectedView()Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_6

    return v3

    :cond_6
    const/4 p2, 0x2

    new-array p2, p2, [I

    invoke-virtual {p1, p2}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuDropdownUi;->mScreenTouchPoint:Landroid/graphics/Point;

    aget v0, p2, v3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-double v4, v1

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    double-to-int v1, v4

    add-int/2addr v0, v1

    iput v0, p3, Landroid/graphics/Point;->x:I

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuDropdownUi;->mScreenTouchPoint:Landroid/graphics/Point;

    aget p2, p2, v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-double v0, p1

    div-double/2addr v0, v6

    double-to-int p1, v0

    add-int/2addr p2, p1

    iput p2, p3, Landroid/graphics/Point;->y:I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuDropdownUi;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/MenuItem;

    if-nez p1, :cond_7

    return v3

    :cond_7
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuDropdownUi;->onItemClick(Landroid/view/MenuItem;)V

    return v2

    :cond_8
    :goto_0
    return v3
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuDropdownUi;->mScreenTouchPoint:Landroid/graphics/Point;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Point;->set(II)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public showContextMenu(FF)Z
    .locals 3

    float-to-int p1, p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuDropdownUi;->mOriginalX:I

    float-to-int p1, p2

    iput p1, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuDropdownUi;->mOriginalY:I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "[showContextMenu] at ("

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuDropdownUi;->mOriginalX:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuDropdownUi;->mOriginalY:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ContextMenuDropdownUi"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuDropdownUi;->mPopupWindow:Lcom/sec/android/app/sbrowser/context_menu/ContextMenuDropdownPopupWindow;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuDropdownUi;->mOriginalView:Landroid/view/View;

    iget v0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuDropdownUi;->mOriginalX:I

    iget v1, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuDropdownUi;->mOriginalY:I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuDropdownUi;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/tab/Tab;->isExtensionTerrace()Z

    move-result v2

    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuDropdownPopupWindow;->show(Landroid/view/View;IIZ)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuDropdownUi;->mActivity:Landroid/app/Activity;

    invoke-static {p0, p1}, Lcom/sec/terrace/TerraceApplicationStatus;->registerStateListenerForActivity(Lcom/sec/terrace/TerraceApplicationStatus$TerraceActivityStateListener;Landroid/app/Activity;)V

    const/4 p0, 0x1

    return p0
.end method

.method public showContextSubMenu(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/MenuItem;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[showContextSubMenu] itemSize : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContextMenuDropdownUi"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuDropdownUi;->dismiss()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuDropdownUi;->mMenuItems:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    iput-object p1, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuDropdownUi;->mMenuItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuDropdownUi;->createPopupWindow()V

    iget p1, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuDropdownUi;->mOriginalX:I

    int-to-float p1, p1

    iget v0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuDropdownUi;->mOriginalY:I

    int-to-float v0, v0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuDropdownUi;->showContextMenu(FF)Z

    return-void
.end method
