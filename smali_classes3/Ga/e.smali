.class public final synthetic LGa/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LGa/e;->a:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;

    iput p2, p0, LGa/e;->b:I

    iput p3, p0, LGa/e;->c:I

    iput p4, p0, LGa/e;->d:I

    iput p5, p0, LGa/e;->e:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, LGa/e;->b:I

    iget v1, p0, LGa/e;->c:I

    iget-object v2, p0, LGa/e;->a:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;

    iget v3, p0, LGa/e;->d:I

    iget p0, p0, LGa/e;->e:I

    invoke-static {v2, v0, v1, v3, p0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->a(Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;IIII)V

    return-void
.end method
