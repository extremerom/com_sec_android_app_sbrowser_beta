.class Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsPrimaryMenu$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarRecyclerAdapter$EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsPrimaryMenu;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;Landroidx/recyclerview/widget/RecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private mTouchPoint:Landroid/graphics/Point;

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsPrimaryMenu;

.field final synthetic val$recyclerAdapter:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarRecyclerAdapter;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsPrimaryMenu;Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarRecyclerAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsPrimaryMenu$1;->this$0:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsPrimaryMenu;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsPrimaryMenu$1;->val$recyclerAdapter:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarRecyclerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeleteClicked(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsPrimaryMenu$1;->this$0:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsPrimaryMenu;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsPrimaryMenu;->access$100(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsPrimaryMenu;I)V

    return-void
.end method

.method public onItemLongClicked(Landroid/view/View;Landroid/view/MenuItem;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsPrimaryMenu$1;->this$0:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsPrimaryMenu;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsPrimaryMenu;->b(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsPrimaryMenu;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsPrimaryMenu$1;->this$0:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsPrimaryMenu;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsPrimaryMenu$1;->mTouchPoint:Landroid/graphics/Point;

    invoke-static {v1, p1, v2, p2, v0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsPrimaryMenu;->access$000(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsPrimaryMenu;Landroid/view/View;Landroid/graphics/Point;Landroid/view/MenuItem;I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsPrimaryMenu$1;->val$recyclerAdapter:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarRecyclerAdapter;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarRecyclerAdapter;->setSelectedItem(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsPrimaryMenu$1;->this$0:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsPrimaryMenu;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/BaseMenuEdit;->onStartEdit(I)V

    :cond_0
    return-void
.end method

.method public onItemTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Landroid/graphics/Point;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    invoke-direct {p1, v0, p2}, Landroid/graphics/Point;-><init>(II)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsPrimaryMenu$1;->mTouchPoint:Landroid/graphics/Point;

    :cond_0
    return-void
.end method
