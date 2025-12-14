.class Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase$1;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Close tab "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase$1;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SBrowserTabBase"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase$1;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mEventNotifier:Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->notifyCloseTab()V

    return-void
.end method
