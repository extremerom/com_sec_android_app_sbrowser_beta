.class Lcom/sec/android/app/sbrowser/toolbar/Toolbar$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/toolbar/Toolbar;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/Toolbar$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/WindowInsets;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Toolbar$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->updateCutOutMarginsVisibility(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/Toolbar$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mToolbarMode:Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->setToolbarHeight()V

    invoke-virtual {p1, p2}, Landroid/view/View;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method
