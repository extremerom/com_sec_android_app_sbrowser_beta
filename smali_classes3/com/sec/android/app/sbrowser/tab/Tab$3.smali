.class Lcom/sec/android/app/sbrowser/tab/Tab$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/tab/RepostFormWarningDialog$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/tab/Tab;->showRepostFormWarningDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/tab/Tab;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/tab/Tab;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab/Tab$3;->this$0:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab/Tab$3;->this$0:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab/Tab;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab$3;->this$0:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->d(Lcom/sec/android/app/sbrowser/tab/Tab;)Lcom/sec/terrace/Terrace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->cancelPendingReload()V

    return-void
.end method

.method public onContinue()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab/Tab$3;->this$0:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab/Tab;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab$3;->this$0:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->d(Lcom/sec/android/app/sbrowser/tab/Tab;)Lcom/sec/terrace/Terrace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->continuePendingReload()V

    return-void
.end method
