.class Lcom/sec/android/app/sbrowser/main_view/ExtensionHelper$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ContextMenuPopulatorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/main_view/ExtensionHelper;->initTerraceExtensionsManager(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/main_view/ExtensionHelper;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/main_view/ExtensionHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/ExtensionHelper$3;->this$0:Lcom/sec/android/app/sbrowser/main_view/ExtensionHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createContextMenuPopulator(Lcom/sec/terrace/Terrace;)Lcom/sec/terrace/TerraceContextMenuPopulator;
    .locals 1

    new-instance p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabContextMenuPopulator;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabContextMenuPopulator;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-direct {v0, p1}, Lcom/sec/android/app/sbrowser/tab/Tab;-><init>(Lcom/sec/terrace/Terrace;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->setTab(Lcom/sec/android/app/sbrowser/tab/Tab;)V

    sget-object p1, Lcom/sec/android/app/sbrowser/common/listener/context_menu/ContextMenuEventListener;->EMPTY:Lcom/sec/android/app/sbrowser/common/listener/context_menu/ContextMenuEventListener;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->addEventListener(Lcom/sec/android/app/sbrowser/common/listener/context_menu/ContextMenuEventListener;)V

    sget-object p1, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->EMPTY:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->setTabDelegate(Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;)V

    return-object p0
.end method
