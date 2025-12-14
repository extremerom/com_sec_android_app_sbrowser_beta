.class Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LY2/d0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->createChangeBoundsWithListener()LY2/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar$4;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionCancel(LY2/f0;)V
    .locals 0
    .param p1    # LY2/f0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onTransitionEnd(LY2/f0;)V
    .locals 1
    .param p1    # LY2/f0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar$4;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->l(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;)Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudMaximizedToolbar;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar$4;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->j(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar$4;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->k(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudMaximizedToolbar;->showSpinnerOnOrientationChange(Z)V

    return-void
.end method

.method public onTransitionPause(LY2/f0;)V
    .locals 0
    .param p1    # LY2/f0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onTransitionResume(LY2/f0;)V
    .locals 0
    .param p1    # LY2/f0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onTransitionStart(LY2/f0;)V
    .locals 0
    .param p1    # LY2/f0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar$4;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->l(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;)Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudMaximizedToolbar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudMaximizedToolbar;->hideSpinner()V

    return-void
.end method
