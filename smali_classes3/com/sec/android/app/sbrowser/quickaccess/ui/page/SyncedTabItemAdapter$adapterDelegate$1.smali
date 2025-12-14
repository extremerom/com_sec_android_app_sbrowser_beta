.class public final Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SyncedTabItemAdapter$adapterDelegate$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SyncedTabItemAdapter$SyncedTabAdapterDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SyncedTabItemAdapter;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "com/sec/android/app/sbrowser/quickaccess/ui/page/SyncedTabItemAdapter$adapterDelegate$1",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SyncedTabItemAdapter$SyncedTabAdapterDelegate;",
        "",
        "position",
        "Ldb/r;",
        "onClick",
        "(I)V",
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
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SyncedTabItemAdapter;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SyncedTabItemAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SyncedTabItemAdapter$adapterDelegate$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SyncedTabItemAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(I)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SyncedTabItemAdapter$adapterDelegate$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SyncedTabItemAdapter;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SyncedTabItemAdapter;->access$getSyncedTabList$p(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SyncedTabItemAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabItem;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onClick tab position = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "SyncedTabItemAdapter"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabItem;->getItemType()Lcom/sec/android/app/sbrowser/common/constants/quickaccess/SyncedTabConstants;

    move-result-object p1

    sget-object v1, Lcom/sec/android/app/sbrowser/common/constants/quickaccess/SyncedTabConstants;->HAND_OFF_PROMOTION:Lcom/sec/android/app/sbrowser/common/constants/quickaccess/SyncedTabConstants;

    if-ne p1, v1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SyncedTabItemAdapter$adapterDelegate$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SyncedTabItemAdapter;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SyncedTabItemAdapter;->access$getViewModel$p(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SyncedTabItemAdapter;)Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->getPromotionCallback()Lcom/sec/android/app/sbrowser/quickaccess/model/HandOffPromotionCallback;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/HandOffPromotionCallback;->onItemSelected()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SyncedTabItemAdapter$adapterDelegate$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SyncedTabItemAdapter;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SyncedTabItemAdapter;->access$getListener$p(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SyncedTabItemAdapter;)Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;

    move-result-object p0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabItem;->getUrl()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p0, p1, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;->onItemSelected(Ljava/lang/String;I)V

    :cond_1
    :goto_0
    return-void
.end method
