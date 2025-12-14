.class Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->showSixFab()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;

.field final synthetic val$item:Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler$1;->val$item:Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->h(Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;)Lm/y;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->h(Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;)Lm/y;

    move-result-object p1

    invoke-virtual {p1}, Lm/y;->dismiss()V

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;->getInstance()Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler$1;->val$item:Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;

    invoke-virtual {p0}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;->executeAction(Ljava/lang/String;)V

    return-void
.end method
