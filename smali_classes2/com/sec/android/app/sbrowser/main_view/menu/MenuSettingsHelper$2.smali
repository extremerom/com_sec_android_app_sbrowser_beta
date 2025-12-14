.class Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper;->handleExtensionsItemClicked(Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;Landroid/view/View;Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper$Delegate;Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper;

.field final synthetic val$delegate:Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper$Delegate;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper;Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper$Delegate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper$2;->val$delegate:Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper$Delegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper$2;->val$delegate:Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper$Delegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper$Delegate;->closeOptionsMenu()V

    return-void
.end method
