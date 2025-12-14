.class Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AdapterDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter$1;ILandroid/view/MenuItem;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter$1;->lambda$onTouch$0(ILandroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter$1;Lt/x0;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter$1;->lambda$onTouch$1(Lt/x0;)V

    return-void
.end method

.method private synthetic lambda$onTouch$0(ILandroid/view/MenuItem;)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter$1;->onMenuItemClick(ILandroid/view/MenuItem;)Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->d(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;)Lcom/sec/android/app/sbrowser/quickaccess/ui/contextmenu/QuickAccessContextMenu;

    move-result-object p0

    invoke-virtual {p0}, Lt/x0;->dismiss()V

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$onTouch$1(Lt/x0;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->h(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;Lcom/sec/android/app/sbrowser/quickaccess/ui/contextmenu/QuickAccessContextMenu;)V

    return-void
.end method


# virtual methods
.method public getColumnCount()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/BaseRecyclerAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/J0;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/GridLayoutManager;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result p0

    return p0
.end method

.method public getEditMode()Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/BaseRecyclerAdapter;->getEditMode()Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    move-result-object p0

    return-object p0
.end method

.method public onClick(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;

    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->l(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;I)Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->o(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->q(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;

    invoke-static {p0, v0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->k(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;I)V

    :goto_0
    return-void
.end method

.method public onKey(IILandroid/view/KeyEvent;)Z
    .locals 0

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;

    invoke-static {p2, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->l(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;I)Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;

    invoke-static {p0, p1, p3}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->n(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onLongClick(Landroidx/recyclerview/widget/h1;)V
    .locals 2

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->g(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->f(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;)Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;->hideGoToTopButtonForLongClickEvent()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->p(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "1114"

    goto :goto_0

    :cond_1
    const-string v0, "1039"

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->m(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->p(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->c(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessToast;->showUnableToEditInSecretModeToast(Landroid/content/Context;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/BaseRecyclerAdapter;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->c(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->canEnterEditMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->c(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessDialog;->showUnableToEditInMultiInstanceDialog(Landroid/content/Context;)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->e(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;)Landroidx/recyclerview/widget/X;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->e(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;)Landroidx/recyclerview/widget/X;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/X;->n(Landroidx/recyclerview/widget/h1;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public onMenuItemClick(ILandroid/view/MenuItem;)Z
    .locals 2
    .param p2    # Landroid/view/MenuItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;

    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->l(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;I)Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p2

    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->renameItem(Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;Landroid/view/View;)V

    goto :goto_0

    :sswitch_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->c(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;)Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->getInstance(Landroid/app/Activity;)Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->c(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;)Landroid/content/Context;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->getUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->openInSecretMode(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->f(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;)Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->f(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;)Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;

    move-result-object p0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;->onOpenInNewWindowRequested(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_3
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->f(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;)Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->f(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;)Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;

    move-result-object p0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;->onOpenInNewTabRequested(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_4
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;

    invoke-static {p0, v0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->k(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;I)V

    goto :goto_0

    :sswitch_5
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->deleteItems(Ljava/util/Collection;)V

    goto :goto_0

    :sswitch_6
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->c(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->getUrl()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/sec/android/app/sbrowser/common/utils/ClipboardUtil$DataType;->TEXT:Lcom/sec/android/app/sbrowser/common/utils/ClipboardUtil$DataType;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/utils/ClipboardUtil;->saveToClipboard(Landroid/content/Context;Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/utils/ClipboardUtil$DataType;)V

    :cond_1
    :goto_0
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0b032a -> :sswitch_6
        0x7f0b033b -> :sswitch_5
        0x7f0b0350 -> :sswitch_4
        0x7f0b0354 -> :sswitch_3
        0x7f0b0355 -> :sswitch_2
        0x7f0b0357 -> :sswitch_1
        0x7f0b0359 -> :sswitch_0
    .end sparse-switch
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;I)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->i(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->j(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;F)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->c(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessActivityUtils;->toActivity(Landroid/content/Context;)Lm/n;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter$1;->getEditMode()Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->NONE:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->d(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;)Lcom/sec/android/app/sbrowser/quickaccess/ui/contextmenu/QuickAccessContextMenu;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->d(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;)Lcom/sec/android/app/sbrowser/quickaccess/ui/contextmenu/QuickAccessContextMenu;

    move-result-object v0

    invoke-virtual {v0}, Lt/x0;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/contextmenu/QuickAccessContextMenu;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->c(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;)Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/sbrowser/quickaccess/ui/contextmenu/QuickAccessContextMenu$TYPE;->QUICKACCESS:Lcom/sec/android/app/sbrowser/quickaccess/ui/contextmenu/QuickAccessContextMenu$TYPE;

    invoke-direct {v1, v2, p1, v3}, Lcom/sec/android/app/sbrowser/quickaccess/ui/contextmenu/QuickAccessContextMenu;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/sec/android/app/sbrowser/quickaccess/ui/contextmenu/QuickAccessContextMenu$TYPE;)V

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->h(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;Lcom/sec/android/app/sbrowser/quickaccess/ui/contextmenu/QuickAccessContextMenu;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->d(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;)Lcom/sec/android/app/sbrowser/quickaccess/ui/contextmenu/QuickAccessContextMenu;

    move-result-object p1

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/f;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p3, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/f;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AdapterDelegate;II)V

    invoke-virtual {p1, v0}, Lt/x0;->setOnMenuItemClickListener(Lt/w0;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->d(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;)Lcom/sec/android/app/sbrowser/quickaccess/ui/contextmenu/QuickAccessContextMenu;

    move-result-object p1

    new-instance p3, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/g;

    const/4 v0, 0x1

    invoke-direct {p3, v0, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/g;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p3}, Lt/x0;->setOnDismissListener(Lt/v0;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->d(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;)Lcom/sec/android/app/sbrowser/quickaccess/ui/contextmenu/QuickAccessContextMenu;

    move-result-object p0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/contextmenu/QuickAccessContextMenu;->show(II)V

    :cond_1
    return-void
.end method
