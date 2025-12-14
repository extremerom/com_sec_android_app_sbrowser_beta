.class Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity$FinishActivityOnParentDestroyed;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/TerraceApplicationStatus$TerraceActivityStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FinishActivityOnParentDestroyed"
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity$FinishActivityOnParentDestroyed;->this$0:Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity$FinishActivityOnParentDestroyed;->mActivity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public onActivityStateChange(Landroid/app/Activity;I)V
    .locals 1

    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity$FinishActivityOnParentDestroyed;->mActivity:Landroid/app/Activity;

    if-ne p2, p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity$FinishActivityOnParentDestroyed;->this$0:Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
