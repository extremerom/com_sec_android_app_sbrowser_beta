.class Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/TerraceApplicationStatus$TerraceActivityStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;->getModel(Landroid/app/Activity;)Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager$1;->this$0:Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityStateChange(Landroid/app/Activity;I)V
    .locals 1

    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager$1;->this$0:Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;

    invoke-virtual {p2, p1}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;->onDestroy(Landroid/app/Activity;)V

    invoke-static {p0}, Lcom/sec/terrace/TerraceApplicationStatus;->unregisterActivityStateListener(Lcom/sec/terrace/TerraceApplicationStatus$TerraceActivityStateListener;)V

    :cond_0
    return-void
.end method
