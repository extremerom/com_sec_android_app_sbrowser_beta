.class public final Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment$setLayoutChangeListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->setLayoutChangeListener(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001JY\u0010\u000e\u001a\u00020\r2\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "com/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment$setLayoutChangeListener$1",
        "Landroid/view/View$OnLayoutChangeListener;",
        "Landroid/view/View;",
        "v",
        "",
        "left",
        "top",
        "right",
        "bottom",
        "oldLeft",
        "oldTop",
        "oldRight",
        "oldBottom",
        "Ldb/r;",
        "onLayoutChange",
        "(Landroid/view/View;IIIIIIII)V",
        "SBrowser_highendBetaGlobal64Release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment$setLayoutChangeListener$1;->this$0:Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment$setLayoutChangeListener$1;->this$0:Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-ne p2, p6, :cond_1

    if-ne p4, p8, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment$setLayoutChangeListener$1;->this$0:Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->access$setLayoutMargin(Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment$setLayoutChangeListener$1;->this$0:Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTabletLayout(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isLandscape()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment$setLayoutChangeListener$1;->this$0:Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->access$setLayoutWidth(Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;)V

    :cond_2
    return-void
.end method
