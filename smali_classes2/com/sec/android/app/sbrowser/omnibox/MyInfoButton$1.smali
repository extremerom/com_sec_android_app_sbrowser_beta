.class Lcom/sec/android/app/sbrowser/omnibox/MyInfoButton$1;
.super Li4/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/omnibox/MyInfoButton;->loadAccountImage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Li4/b;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/omnibox/MyInfoButton;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/omnibox/MyInfoButton;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/omnibox/MyInfoButton$1;->this$0:Lcom/sec/android/app/sbrowser/omnibox/MyInfoButton;

    invoke-direct {p0}, Li4/b;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadCleared(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string p0, "MyInfoButton"

    const-string p1, "onLoadCleared"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onResourceReady(Landroid/graphics/Bitmap;Lj4/c;)V
    .locals 1
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lj4/c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lj4/c;",
            ")V"
        }
    .end annotation

    const-string p2, "MyInfoButton"

    const-string v0, "onResourceReady"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/omnibox/MyInfoButton$1;->this$0:Lcom/sec/android/app/sbrowser/omnibox/MyInfoButton;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/omnibox/MyInfoButton;->c(Lcom/sec/android/app/sbrowser/omnibox/MyInfoButton;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/omnibox/MyInfoButton$1;->this$0:Lcom/sec/android/app/sbrowser/omnibox/MyInfoButton;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/omnibox/MyInfoButton;->d(Lcom/sec/android/app/sbrowser/omnibox/MyInfoButton;)Landroid/widget/ImageButton;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/MyInfoButton$1;->this$0:Lcom/sec/android/app/sbrowser/omnibox/MyInfoButton;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/MyInfoButton;->updateButtonColor()V

    return-void
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Lj4/c;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lj4/c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/omnibox/MyInfoButton$1;->onResourceReady(Landroid/graphics/Bitmap;Lj4/c;)V

    return-void
.end method
