.class Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditBottombar$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/ToolbarItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditBottombar;-><init>(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/ToolbarLayoutDelegate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditBottombar;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditBottombar;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditBottombar$1;->this$0:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditBottombar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeleteItemClick(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditBottombar$1;->this$0:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditBottombar;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditBottombar;->access$100(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditBottombar;I)V

    return-void
.end method

.method public onLongClick(Landroid/view/View;I)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditBottombar$1;->this$0:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditBottombar;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditBottombar;->mBottombarGridLayout:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/ToolbarLayoutDelegate;

    invoke-interface {v0, p2}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuItem;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditBottombar$1;->this$0:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditBottombar;

    invoke-static {v1, p1, v0, p2}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditBottombar;->access$000(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditBottombar;Landroid/view/View;Landroid/view/MenuItem;I)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditBottombar$1;->this$0:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditBottombar;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditBottombar;->mBottombarGridLayout:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/ToolbarLayoutDelegate;

    invoke-interface {p0, p2}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuItem;->setSelectedItem(I)V

    :cond_1
    const/4 p0, 0x1

    return p0
.end method
