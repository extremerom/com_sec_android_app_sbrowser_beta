.class Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionFetcher$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr2/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionFetcher;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr2/b;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionFetcher;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionFetcher;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionFetcher$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionFetcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ls2/a;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionFetcher$1;->accept(Ls2/a;)V

    return-void
.end method

.method public accept(Ls2/a;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionFetcher$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionFetcher;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionFetcher;->a(Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionFetcher;)Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionFetcher$OnReceived;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionFetcher$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionFetcher;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionFetcher;->a(Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionFetcher;)Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionFetcher$OnReceived;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionFetcher$OnReceived;->onReceived(Ls2/a;)V

    :cond_0
    return-void
.end method
