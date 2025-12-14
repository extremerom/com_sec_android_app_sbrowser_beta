.class Lcom/sec/android/app/sbrowser/media/common/FlexModeOrientation$1;
.super Landroid/view/OrientationEventListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/media/common/FlexModeOrientation;->tryOrientationChange()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/media/common/FlexModeOrientation;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/media/common/FlexModeOrientation;Landroid/content/Context;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/common/FlexModeOrientation$1;->this$0:Lcom/sec/android/app/sbrowser/media/common/FlexModeOrientation;

    invoke-direct {p0, p2, p3}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/media/common/FlexModeOrientation;->f()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "tryOrientationChange : orientation "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeUtil;->isHalfOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeUtil;->isHorizontalLayout()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/common/FlexModeOrientation$1;->this$0:Lcom/sec/android/app/sbrowser/media/common/FlexModeOrientation;

    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/media/common/FlexModeOrientation;->d(Lcom/sec/android/app/sbrowser/media/common/FlexModeOrientation;I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/common/FlexModeOrientation$1;->this$0:Lcom/sec/android/app/sbrowser/media/common/FlexModeOrientation;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/media/common/FlexModeOrientation;->e(Lcom/sec/android/app/sbrowser/media/common/FlexModeOrientation;)V

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/common/FlexModeOrientation$1;->this$0:Lcom/sec/android/app/sbrowser/media/common/FlexModeOrientation;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/media/common/FlexModeOrientation;->b(Lcom/sec/android/app/sbrowser/media/common/FlexModeOrientation;)Landroid/view/OrientationEventListener;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/OrientationEventListener;->disable()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/common/FlexModeOrientation$1;->this$0:Lcom/sec/android/app/sbrowser/media/common/FlexModeOrientation;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/common/FlexModeOrientation;->c(Lcom/sec/android/app/sbrowser/media/common/FlexModeOrientation;)V

    return-void
.end method
