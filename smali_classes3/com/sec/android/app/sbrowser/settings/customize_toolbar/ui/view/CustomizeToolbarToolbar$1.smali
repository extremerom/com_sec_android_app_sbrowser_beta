.class Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarToolbar$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarToolbar;->setItemView(Landroid/view/View;Landroid/view/MenuItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarToolbar;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarToolbar;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarToolbar$1;->this$0:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarToolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarToolbar$1;->this$0:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarToolbar;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarToolbar$1;->this$0:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarToolbar;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarToolbar;->b(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarToolbar;)Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/ToolbarItemLongClickListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarToolbar$1;->this$0:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarToolbar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarToolbar;->b(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarToolbar;)Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/ToolbarItemLongClickListener;

    move-result-object p0

    invoke-interface {p0, p1, v0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/ToolbarItemLongClickListener;->onLongClick(Landroid/view/View;I)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
