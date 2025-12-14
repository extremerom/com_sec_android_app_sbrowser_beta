.class Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$ItemGroup$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$ItemGroup;->sortIfNeeded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$ItemGroup;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$ItemGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$ItemGroup$1;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$ItemGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;)I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$ItemGroup$1;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$ItemGroup;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$ItemGroup;->compareItem(Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;

    check-cast p2, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$ItemGroup$1;->compare(Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;)I

    move-result p0

    return p0
.end method
