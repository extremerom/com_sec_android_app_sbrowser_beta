.class public Lcom/sec/android/app/sbrowser/context_menu/ContextMenuUiHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mContextMenuUi:Lcom/sec/android/app/sbrowser/context_menu/ContextMenuUi;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Lcom/sec/terrace/TerraceContextMenuParams;Ljava/util/List;Lcom/sec/android/app/sbrowser/tab/Tab;Lcom/sec/android/app/sbrowser/common/listener/context_menu/ContextMenuItemClickListener;Ljava/lang/Runnable;)V
    .locals 9
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

    new-instance v8, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuDropdownUi;

    move-object v0, v8

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuDropdownUi;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/sec/terrace/TerraceContextMenuParams;Ljava/util/List;Lcom/sec/android/app/sbrowser/tab/Tab;Lcom/sec/android/app/sbrowser/common/listener/context_menu/ContextMenuItemClickListener;Ljava/lang/Runnable;)V

    move-object v0, p0

    iput-object v8, v0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuUiHandler;->mContextMenuUi:Lcom/sec/android/app/sbrowser/context_menu/ContextMenuUi;

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuUiHandler;->mContextMenuUi:Lcom/sec/android/app/sbrowser/context_menu/ContextMenuUi;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuUi;->dismiss()V

    return-void
.end method

.method public showContextMenu(FF)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuUiHandler;->mContextMenuUi:Lcom/sec/android/app/sbrowser/context_menu/ContextMenuUi;

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuUi;->showContextMenu(FF)Z

    move-result p0

    return p0
.end method

.method public showContextSubMenu(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/MenuItem;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuUiHandler;->mContextMenuUi:Lcom/sec/android/app/sbrowser/context_menu/ContextMenuUi;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuUi;->showContextSubMenu(Ljava/util/List;)V

    return-void
.end method
