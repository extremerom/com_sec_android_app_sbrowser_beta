.class Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper;->handleExtensionsItemClicked(Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;Landroid/view/View;Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper$Delegate;Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback<",
        "Landroid/view/MenuItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper;

.field final synthetic val$delegate:Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper$Delegate;

.field final synthetic val$selectedItem:Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper;Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper$Delegate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper$1;->val$selectedItem:Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper$1;->val$delegate:Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper$Delegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(Landroid/view/MenuItem;)V
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v0

    const v1, 0x7f0b0348

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper$1;->val$selectedItem:Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;

    invoke-virtual {v0}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->executeAction(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v0

    const v1, 0x7f0b0349

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;

    move-result-object v0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->executeCommand(I)V

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper$1;->val$delegate:Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper$Delegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper$Delegate;->closeOptionsMenu()V

    return-void
.end method

.method public bridge synthetic onCallback(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/view/MenuItem;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper$1;->onCallback(Landroid/view/MenuItem;)V

    return-void
.end method
