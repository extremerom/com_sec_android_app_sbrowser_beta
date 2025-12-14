.class public final synthetic Lcom/sec/android/app/sbrowser/main_view/menu/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper;

.field public final synthetic c:Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;

.field public final synthetic d:Landroid/view/View;

.field public final synthetic e:Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper$Delegate;

.field public final synthetic f:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper;Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;Landroid/view/View;Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper$Delegate;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/k;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/menu/k;->b:Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/menu/k;->f:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/main_view/menu/k;->c:Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/main_view/menu/k;->d:Landroid/view/View;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/main_view/menu/k;->e:Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper$Delegate;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper;Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;Landroid/view/View;Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper$Delegate;Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/k;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/menu/k;->b:Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/menu/k;->c:Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/main_view/menu/k;->d:Landroid/view/View;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/main_view/menu/k;->e:Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper$Delegate;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/main_view/menu/k;->f:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper;Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;Landroid/view/View;Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper$Delegate;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/k;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/menu/k;->b:Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/menu/k;->c:Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/main_view/menu/k;->f:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/main_view/menu/k;->d:Landroid/view/View;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/main_view/menu/k;->e:Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper$Delegate;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/k;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/k;->c:Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/menu/k;->f:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/menu/k;->b:Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/main_view/menu/k;->d:Landroid/view/View;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/k;->e:Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper$Delegate;

    invoke-static {v2, v1, v0, v3, p0}, Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper;->f(Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper;Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;Landroid/view/View;Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper$Delegate;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/k;->c:Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/menu/k;->d:Landroid/view/View;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/menu/k;->b:Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/main_view/menu/k;->e:Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper$Delegate;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/k;->f:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-static {v2, p0, v0, v1, v3}, Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper;->d(Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper;Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;Landroid/view/View;Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper$Delegate;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/k;->f:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/menu/k;->c:Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/menu/k;->b:Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/main_view/menu/k;->d:Landroid/view/View;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/k;->e:Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper$Delegate;

    invoke-static {v2, v0, v1, v3, p0}, Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper;->e(Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper;Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;Landroid/view/View;Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper$Delegate;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
