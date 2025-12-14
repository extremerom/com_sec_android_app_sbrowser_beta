.class public Lcom/sec/android/app/sbrowser/extensions/SixContextMenuDropdownUi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/extensions/SixContextMenuUi;
.implements Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuEventListener;
.implements Landroid/view/View$OnKeyListener;
.implements Lcom/sec/terrace/TerraceApplicationStatus$TerraceActivityStateListener;


# instance fields
.field private final mAnchorView:Landroid/view/View;

.field private final mContext:Landroid/content/Context;

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

.field private final mOnItemClicked:Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback<",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mOriginalView:Landroid/view/View;

.field private mPopupWindow:Lcom/sec/android/app/sbrowser/extensions/SixContextMenuDropdownPopupWindow;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/View;Ljava/util/List;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Landroid/view/MenuItem;",
            ">;",
            "Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback<",
            "Landroid/view/MenuItem;",
            ">;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixContextMenuDropdownUi;->mAnchorView:Landroid/view/View;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/extensions/SixContextMenuDropdownUi;->mOriginalView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixContextMenuDropdownUi;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/extensions/SixContextMenuDropdownUi;->mMenuItems:Ljava/util/List;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/extensions/SixContextMenuDropdownUi;->mOnItemClicked:Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/extensions/SixContextMenuDropdownUi;->createPopupWindow()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/extensions/SixContextMenuDropdownUi;)Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixContextMenuDropdownUi;->mOnItemClicked:Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/extensions/SixContextMenuDropdownUi;)Lcom/sec/android/app/sbrowser/extensions/SixContextMenuDropdownPopupWindow;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixContextMenuDropdownUi;->mPopupWindow:Lcom/sec/android/app/sbrowser/extensions/SixContextMenuDropdownPopupWindow;

    return-object p0
.end method

.method private createPopupWindow()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixContextMenuDropdownUi;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e01b2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b0305

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f0b030a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixContextMenuDropdownUi;->mListView:Landroid/widget/ListView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extensions/SixContextMenuDropdownUi;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/extensions/SixContextMenuListAdapter;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extensions/SixContextMenuDropdownUi;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/extensions/SixContextMenuDropdownUi;->mMenuItems:Ljava/util/List;

    invoke-direct {v1, v2, v3}, Lcom/sec/android/app/sbrowser/extensions/SixContextMenuListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v1, p0}, Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuListAdapter;->setListener(Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuEventListener;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extensions/SixContextMenuDropdownUi;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixContextMenuDropdownUi;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/extensions/SixContextMenuDropdownPopupWindow;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extensions/SixContextMenuDropdownUi;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/extensions/SixContextMenuDropdownUi;->mListView:Landroid/widget/ListView;

    invoke-direct {v1, v2, v0, v3}, Lcom/sec/android/app/sbrowser/extensions/SixContextMenuDropdownPopupWindow;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/widget/ListView;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixContextMenuDropdownUi;->mPopupWindow:Lcom/sec/android/app/sbrowser/extensions/SixContextMenuDropdownPopupWindow;

    new-instance v2, Lcom/sec/android/app/sbrowser/extensions/SixContextMenuDropdownUi$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/extensions/SixContextMenuDropdownUi$1;-><init>(Lcom/sec/android/app/sbrowser/extensions/SixContextMenuDropdownUi;)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixContextMenuDropdownUi;->mPopupWindow:Lcom/sec/android/app/sbrowser/extensions/SixContextMenuDropdownPopupWindow;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extensions/SixContextMenuDropdownUi;->mContext:Landroid/content/Context;

    const v3, 0x7f08013b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/extensions/SixContextMenuDropdownUi$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/extensions/SixContextMenuDropdownUi$2;-><init>(Lcom/sec/android/app/sbrowser/extensions/SixContextMenuDropdownUi;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/extensions/SixContextMenuDropdownUi$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/extensions/SixContextMenuDropdownUi$3;-><init>(Lcom/sec/android/app/sbrowser/extensions/SixContextMenuDropdownUi;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixContextMenuDropdownUi;->mOriginalView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method


# virtual methods
.method public onActivityStateChange(Landroid/app/Activity;I)V
    .locals 1

    const-string p1, "onActivityStateChange - newState : "

    const-string v0, "SixContextMenuDropdownUi"

    invoke-static {p2, p1, v0}, Lt/b;->x(ILjava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x6

    if-eq p2, p1, :cond_0

    const/4 p1, 0x5

    if-ne p2, p1, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixContextMenuDropdownUi;->mPopupWindow:Lcom/sec/android/app/sbrowser/extensions/SixContextMenuDropdownPopupWindow;

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_1
    return-void
.end method

.method public onItemClick(Landroid/view/MenuItem;)V
    .locals 2
    .param p1    # Landroid/view/MenuItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "SixContextMenuDropdownUi"

    const-string v1, "onItemClick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/android/app/sbrowser/extensions/SixContextMenuDropdownUi$4;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/sbrowser/extensions/SixContextMenuDropdownUi$4;-><init>(Lcom/sec/android/app/sbrowser/extensions/SixContextMenuDropdownUi;Landroid/view/MenuItem;)V

    const-wide/16 p0, 0x64

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-static {p3}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->getMetaState(Landroid/view/KeyEvent;)I

    move-result p1

    or-int/2addr p1, p2

    const/16 p2, 0x42

    if-eq p1, p2, :cond_0

    const/16 p2, 0xa0

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixContextMenuDropdownUi;->mListView:Landroid/widget/ListView;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/MenuItem;

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/extensions/SixContextMenuDropdownUi;->onItemClick(Landroid/view/MenuItem;)V

    return p2

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string p0, "SixContextMenuDropdownUi"

    const-string p1, "onTouch"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public showContextMenu()Z
    .locals 2

    const-string v0, "SixContextMenuDropdownUi"

    const-string v1, "showContextMenu"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixContextMenuDropdownUi;->mPopupWindow:Lcom/sec/android/app/sbrowser/extensions/SixContextMenuDropdownPopupWindow;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixContextMenuDropdownUi;->mAnchorView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/extensions/SixContextMenuDropdownPopupWindow;->show(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixContextMenuDropdownUi;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {p0, v0}, Lcom/sec/terrace/TerraceApplicationStatus;->registerStateListenerForActivity(Lcom/sec/terrace/TerraceApplicationStatus$TerraceActivityStateListener;Landroid/app/Activity;)V

    const/4 p0, 0x1

    return p0
.end method
