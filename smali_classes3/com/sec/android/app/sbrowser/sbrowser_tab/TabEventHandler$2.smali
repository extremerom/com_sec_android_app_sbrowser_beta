.class Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/media/background_play_custom/BackgroundPlayCustomHandler$Delegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler$2;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTerrace()Lcom/sec/terrace/Terrace;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler$2;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->h(Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object p0

    return-object p0
.end method
