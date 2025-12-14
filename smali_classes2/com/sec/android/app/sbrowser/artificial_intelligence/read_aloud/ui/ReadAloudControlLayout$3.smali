.class Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt/X0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->initializeSeekBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout$3;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroidx/appcompat/widget/SeslSeekBar;IZ)V
    .locals 0

    if-eqz p3, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout$3;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->j(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;)Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout$3;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->j(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;)Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarListener;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarListener;->onProgressChanged(I)V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout$3;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->m(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;)Lcom/sec/android/app/sbrowser/common/model/main/SeekbarContainer;

    move-result-object p0

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_1
    return-void
.end method

.method public onStartTrackingTouch(Landroidx/appcompat/widget/SeslSeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroidx/appcompat/widget/SeslSeekBar;)V
    .locals 0

    return-void
.end method
