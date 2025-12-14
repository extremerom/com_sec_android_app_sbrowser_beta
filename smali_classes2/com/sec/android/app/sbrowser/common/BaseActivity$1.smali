.class Lcom/sec/android/app/sbrowser/common/BaseActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/common/BaseActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/common/BaseActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/common/BaseActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/BaseActivity$1;->this$0:Lcom/sec/android/app/sbrowser/common/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 3
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

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/BaseActivity$1;->this$0:Lcom/sec/android/app/sbrowser/common/BaseActivity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/BaseActivity;->f(Lcom/sec/android/app/sbrowser/common/BaseActivity;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x8f

    goto :goto_0

    :cond_0
    const/16 p0, 0x87

    :goto_0
    invoke-static {p2, p0}, Lf1/y0;->f(Landroid/view/WindowInsets;I)Landroid/graphics/Insets;

    move-result-object p0

    iget v0, p0, Landroid/graphics/Insets;->left:I

    iget v1, p0, Landroid/graphics/Insets;->top:I

    iget v2, p0, Landroid/graphics/Insets;->right:I

    iget p0, p0, Landroid/graphics/Insets;->bottom:I

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {p1, p2}, Landroid/view/View;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method
