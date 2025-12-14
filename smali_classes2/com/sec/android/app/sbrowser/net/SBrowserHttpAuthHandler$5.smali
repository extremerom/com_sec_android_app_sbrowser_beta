.class Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthHandler$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthHandler;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthHandler;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthHandler$5;->this$0:Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHidden(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthHandler$5;->this$0:Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthHandler;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthHandler;->a(Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthHandler;)Lcom/sec/terrace/browser/TerraceHttpAuthHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/browser/TerraceHttpAuthHandler;->cancel()V

    return-void
.end method
