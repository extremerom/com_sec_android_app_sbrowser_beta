.class Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;->createReaderContextMenuPopulator()Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab$3;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab$3;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;->m(Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->getUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isReaderPage()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
