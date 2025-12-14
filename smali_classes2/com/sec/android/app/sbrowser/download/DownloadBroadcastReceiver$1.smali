.class Lcom/sec/android/app/sbrowser/download/DownloadBroadcastReceiver$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/download/DownloadBroadcastReceiver;->launchDownloadHistory()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/app/Activity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/download/DownloadBroadcastReceiver;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/download/DownloadBroadcastReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadBroadcastReceiver$1;->this$0:Lcom/sec/android/app/sbrowser/download/DownloadBroadcastReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/app/Activity;Landroid/app/Activity;)I
    .locals 2

    invoke-static {p1}, Lcom/sec/terrace/TerraceApplicationStatus;->getStateForActivity(Landroid/app/Activity;)I

    move-result p0

    const/4 v0, -0x1

    const/4 v1, 0x3

    if-ne p0, v1, :cond_0

    return v0

    :cond_0
    invoke-static {p2}, Lcom/sec/terrace/TerraceApplicationStatus;->getStateForActivity(Landroid/app/Activity;)I

    move-result p0

    const/4 p2, 0x1

    if-ne p0, v1, :cond_1

    return p2

    :cond_1
    instance-of p0, p1, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryActivity;

    if-eqz p0, :cond_2

    return v0

    :cond_2
    return p2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Landroid/app/Activity;

    check-cast p2, Landroid/app/Activity;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/download/DownloadBroadcastReceiver$1;->compare(Landroid/app/Activity;Landroid/app/Activity;)I

    move-result p0

    return p0
.end method
