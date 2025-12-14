.class Lcom/sec/android/app/sbrowser/sbrowser_tab/ContextMenuCallbackRegister;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mDelegate:Lcom/sec/android/app/sbrowser/sbrowser_tab/ContextMenuCallbackDelegate;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/Terrace;Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;Lcom/sec/android/app/sbrowser/sbrowser_tab/ContextMenuCallbackDelegate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ContextMenuCallbackRegister;->mDelegate:Lcom/sec/android/app/sbrowser/sbrowser_tab/ContextMenuCallbackDelegate;

    new-instance p4, Lcom/sec/android/app/sbrowser/sbrowser_tab/ContextMenuCallbackRegister$1;

    invoke-direct {p4, p0, p1, p3}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ContextMenuCallbackRegister$1;-><init>(Lcom/sec/android/app/sbrowser/sbrowser_tab/ContextMenuCallbackRegister;Lcom/sec/terrace/Terrace;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;)V

    invoke-virtual {p2, p4}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->setTab(Lcom/sec/android/app/sbrowser/tab/Tab;)V

    new-instance p1, Lcom/sec/android/app/sbrowser/sbrowser_tab/ContextMenuCallbackRegister$2;

    invoke-direct {p1, p0, p3}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ContextMenuCallbackRegister$2;-><init>(Lcom/sec/android/app/sbrowser/sbrowser_tab/ContextMenuCallbackRegister;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;)V

    invoke-virtual {p2, p1}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->addEventListener(Lcom/sec/android/app/sbrowser/common/listener/context_menu/ContextMenuEventListener;)V

    new-instance p1, Lcom/sec/android/app/sbrowser/sbrowser_tab/ContextMenuCallbackRegister$3;

    invoke-direct {p1, p0, p3}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ContextMenuCallbackRegister$3;-><init>(Lcom/sec/android/app/sbrowser/sbrowser_tab/ContextMenuCallbackRegister;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;)V

    invoke-virtual {p2, p1}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->setTabDelegate(Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/sbrowser_tab/ContextMenuCallbackRegister;)Lcom/sec/android/app/sbrowser/sbrowser_tab/ContextMenuCallbackDelegate;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ContextMenuCallbackRegister;->mDelegate:Lcom/sec/android/app/sbrowser/sbrowser_tab/ContextMenuCallbackDelegate;

    return-object p0
.end method
