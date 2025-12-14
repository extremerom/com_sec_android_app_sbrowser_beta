.class Lcom/sec/android/app/sbrowser/main_view/ExtensionHelper$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionsClipboardCallback;


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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/ExtensionHelper$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/ExtensionHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hideClipboard(Lcom/sec/terrace/Terrace;)V
    .locals 0

    new-instance p0, Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab/Tab;-><init>(Lcom/sec/terrace/Terrace;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->hideClipboard()V

    return-void
.end method

.method public registerClipboardPasteListener(Lcom/sec/terrace/Terrace;)V
    .locals 0

    new-instance p0, Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab/Tab;-><init>(Lcom/sec/terrace/Terrace;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->registerClipboardPasteListener()V

    return-void
.end method

.method public showClipboard(Lcom/sec/terrace/Terrace;)V
    .locals 0

    new-instance p0, Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab/Tab;-><init>(Lcom/sec/terrace/Terrace;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->showClipboard()V

    return-void
.end method

.method public unregisterClipboardPasteListener(Lcom/sec/terrace/Terrace;)V
    .locals 0

    new-instance p0, Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab/Tab;-><init>(Lcom/sec/terrace/Terrace;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->unregisterClipboardPasteListener()V

    return-void
.end method
