.class Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditAvailableMenu$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarRecyclerAdapter$EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditAvailableMenu;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;Landroidx/viewpager/widget/ViewPager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private mTouchPoint:Landroid/graphics/Point;

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditAvailableMenu;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditAvailableMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditAvailableMenu$1;->this$0:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditAvailableMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeleteClicked(I)V
    .locals 0

    return-void
.end method

.method public onItemLongClicked(Landroid/view/View;Landroid/view/MenuItem;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditAvailableMenu$1;->this$0:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditAvailableMenu;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditAvailableMenu;->b(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditAvailableMenu;)Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPagerAdapter;->getCurrentRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditAvailableMenu$1;->this$0:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditAvailableMenu;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditAvailableMenu;->b(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditAvailableMenu;)Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPagerAdapter;->getMaxItemPerPage()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditAvailableMenu$1;->this$0:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditAvailableMenu;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditAvailableMenu;->c(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditAvailableMenu;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v2

    mul-int/2addr v2, v1

    add-int/2addr v2, v0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditAvailableMenu$1;->this$0:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditAvailableMenu;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditAvailableMenu$1;->mTouchPoint:Landroid/graphics/Point;

    invoke-static {v0, p1, v1, p2, v2}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditAvailableMenu;->access$000(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditAvailableMenu;Landroid/view/View;Landroid/graphics/Point;Landroid/view/MenuItem;I)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditAvailableMenu$1;->this$0:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditAvailableMenu;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditAvailableMenu;->b(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditAvailableMenu;)Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPagerAdapter;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPagerAdapter;->setSelectedItem(I)V

    :cond_1
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditAvailableMenu$1;->mTouchPoint:Landroid/graphics/Point;

    :cond_0
    return-void
.end method
