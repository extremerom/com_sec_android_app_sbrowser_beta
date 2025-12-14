.class Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper$Delegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->setActivity(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$2;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSelectedItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$2;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->getSelectedItemCount()I

    move-result p0

    return p0
.end method

.method public isSelectAll()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$2;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->isSelectAll()Z

    move-result p0

    return p0
.end method
