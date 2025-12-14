.class Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarScrollView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarScrollView;->startAutoScrollDelayed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarScrollView;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarScrollView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarScrollView$1;->this$0:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarScrollView$1;->this$0:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarScrollView;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarScrollView;->n(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarScrollView;)Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarScrollView$Direction;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarScrollView$Direction;->NONE:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarScrollView$Direction;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarScrollView$1;->this$0:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarScrollView;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarScrollView;->n(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarScrollView;)Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarScrollView$Direction;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarScrollView$Direction;->DOWNWARD:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarScrollView$Direction;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarScrollView$1;->this$0:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarScrollView;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarScrollView;->o(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarScrollView;)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroidx/core/widget/NestedScrollView;->smoothScrollBy(II)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarScrollView$1;->this$0:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarScrollView;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarScrollView;->n(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarScrollView;)Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarScrollView$Direction;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarScrollView$Direction;->UPWARD:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarScrollView$Direction;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarScrollView$1;->this$0:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarScrollView;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarScrollView;->o(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarScrollView;)I

    move-result v1

    neg-int v1, v1

    invoke-virtual {v0, v2, v1}, Landroidx/core/widget/NestedScrollView;->smoothScrollBy(II)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarScrollView$1;->this$0:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarScrollView;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method
