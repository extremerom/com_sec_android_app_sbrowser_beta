.class public final synthetic Lcom/sec/android/app/sbrowser/main_view/menu/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil$PromptScreenCallback;
.implements Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController$Callback;


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

    iput v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/j;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/menu/j;->b:Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/menu/j;->f:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/main_view/menu/j;->c:Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/main_view/menu/j;->d:Landroid/view/View;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/main_view/menu/j;->e:Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper$Delegate;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper;Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;Landroid/view/View;Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper$Delegate;Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;I)V
    .locals 0

    iput p6, p0, Lcom/sec/android/app/sbrowser/main_view/menu/j;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/menu/j;->b:Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/menu/j;->c:Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/main_view/menu/j;->d:Landroid/view/View;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/main_view/menu/j;->e:Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper$Delegate;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/main_view/menu/j;->f:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResult(Z)V
    .locals 12

    iget v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/j;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/main_view/menu/j;->c:Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/menu/j;->d:Landroid/view/View;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/main_view/menu/j;->b:Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/main_view/menu/j;->e:Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper$Delegate;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/menu/j;->f:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move v6, p1

    invoke-static/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper;->c(Landroid/view/View;Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper$Delegate;Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper;Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;Z)V

    return-void

    :pswitch_0
    iget-object v10, p0, Lcom/sec/android/app/sbrowser/main_view/menu/j;->c:Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/main_view/menu/j;->d:Landroid/view/View;

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/main_view/menu/j;->b:Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper;

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/main_view/menu/j;->e:Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper$Delegate;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/main_view/menu/j;->f:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move v11, p1

    invoke-static/range {v6 .. v11}, Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper;->b(Landroid/view/View;Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper$Delegate;Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper;Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;Z)V

    return-void

    :pswitch_1
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/main_view/menu/j;->c:Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/main_view/menu/j;->b:Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/menu/j;->f:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/j;->d:Landroid/view/View;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/menu/j;->e:Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper$Delegate;

    move v5, p1

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper;->a(Landroid/view/View;Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper$Delegate;Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper;Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
