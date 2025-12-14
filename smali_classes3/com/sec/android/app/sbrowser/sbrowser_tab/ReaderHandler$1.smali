.class Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/reader/ReaderDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->createReaderDelegate()Lcom/sec/android/app/sbrowser/reader/ReaderDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler$1;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler$1;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->f(Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->getTitle()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler$1;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->f(Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->getUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isExtractionFailed()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler$1;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->f(Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->isExtractionFailed()Z

    move-result p0

    return p0
.end method

.method public isReaderTabDestroyed()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler$1;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->g(Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;)Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
