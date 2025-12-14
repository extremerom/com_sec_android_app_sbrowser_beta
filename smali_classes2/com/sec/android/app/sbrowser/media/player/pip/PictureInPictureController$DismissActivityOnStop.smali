.class Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController$DismissActivityOnStop;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/TerraceApplicationStatus$TerraceActivityStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DismissActivityOnStop"
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController$DismissActivityOnStop;->this$0:Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController$DismissActivityOnStop;->mActivity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public onActivityStateChange(Landroid/app/Activity;I)V
    .locals 1

    const/4 v0, 0x5

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController$DismissActivityOnStop;->mActivity:Landroid/app/Activity;

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController$DismissActivityOnStop;->this$0:Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;->i(Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;Landroid/app/Activity;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController$DismissActivityOnStop;->this$0:Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;->g(Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;)Ljava/util/HashSet;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController$DismissActivityOnStop;->this$0:Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;->h(Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;)V

    :cond_0
    return-void
.end method
