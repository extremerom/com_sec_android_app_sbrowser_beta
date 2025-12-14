.class Lcom/sec/android/app/sbrowser/multi_tab/blurred_background/BlurredBackground$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh4/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/multi_tab/blurred_background/BlurredBackground;->setBlurredBitmap(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lh4/g;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/multi_tab/blurred_background/BlurredBackground;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/multi_tab/blurred_background/BlurredBackground;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/blurred_background/BlurredBackground$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/blurred_background/BlurredBackground;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadFailed(LS3/x;Ljava/lang/Object;Li4/d;Z)Z
    .locals 0
    .param p1    # LS3/x;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LS3/x;",
            "Ljava/lang/Object;",
            "Li4/d;",
            "Z)Z"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/blurred_background/BlurredBackground$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/blurred_background/BlurredBackground;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/blurred_background/BlurredBackground;->a(Lcom/sec/android/app/sbrowser/multi_tab/blurred_background/BlurredBackground;Z)V

    return p1
.end method

.method public onResourceReady(Landroid/graphics/drawable/Drawable;Ljava/lang/Object;Li4/d;LQ3/a;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/lang/Object;",
            "Li4/d;",
            "LQ3/a;",
            "Z)Z"
        }
    .end annotation

    const-string p2, "BlurredBackground"

    const-string p4, "[onResourceReady]"

    invoke-static {p2, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/blurred_background/BlurredBackground$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/blurred_background/BlurredBackground;

    const/4 p2, 0x1

    invoke-static {p0, p2}, Lcom/sec/android/app/sbrowser/multi_tab/blurred_background/BlurredBackground;->a(Lcom/sec/android/app/sbrowser/multi_tab/blurred_background/BlurredBackground;Z)V

    new-instance p0, Lj4/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p3, p1, p0}, Li4/d;->onResourceReady(Ljava/lang/Object;Lj4/c;)V

    return p2
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Ljava/lang/Object;Li4/d;LQ3/a;Z)Z
    .locals 0

    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {p0 .. p5}, Lcom/sec/android/app/sbrowser/multi_tab/blurred_background/BlurredBackground$1;->onResourceReady(Landroid/graphics/drawable/Drawable;Ljava/lang/Object;Li4/d;LQ3/a;Z)Z

    move-result p0

    return p0
.end method
