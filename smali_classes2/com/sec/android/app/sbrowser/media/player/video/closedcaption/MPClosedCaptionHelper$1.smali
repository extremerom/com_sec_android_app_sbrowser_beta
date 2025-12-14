.class Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionFetcher$OnReceived;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionHelper;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionHelper$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceived(Ls2/a;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionHelper$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionHelper;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionHelper;->a(Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionHelper;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionHelper$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionHelper;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionHelper;->b(Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionHelper;)V

    return-void
.end method
