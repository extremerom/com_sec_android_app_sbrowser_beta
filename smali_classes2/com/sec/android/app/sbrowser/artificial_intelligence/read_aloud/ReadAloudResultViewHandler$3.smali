.class Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw6/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;->setResultViewCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler$3;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/graphics/Rect;)V
    .locals 0
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onAnimationStart(Landroid/graphics/Rect;)V
    .locals 1
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler$3;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;->e(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;)Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudDelegate;

    move-result-object p0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    const/4 v0, 0x1

    invoke-interface {p0, p1, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudDelegate;->updateSplitSize(IZ)V

    return-void
.end method

.method public onAnimationUpdate(Landroid/graphics/Rect;)V
    .locals 1
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler$3;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;->e(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;)Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudDelegate;

    move-result-object p0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    const/4 v0, 0x1

    invoke-interface {p0, p1, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudDelegate;->updateSplitSize(IZ)V

    return-void
.end method
