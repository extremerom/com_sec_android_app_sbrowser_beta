.class Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh4/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;->updateOgImage()V
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
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;

.field final synthetic val$dominantTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler$3;->this$0:Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler$3;->val$dominantTextView:Landroid/widget/TextView;

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

    const/4 p0, 0x0

    return p0
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

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler$3;->val$dominantTextView:Landroid/widget/TextView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Ljava/lang/Object;Li4/d;LQ3/a;Z)Z
    .locals 0

    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {p0 .. p5}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler$3;->onResourceReady(Landroid/graphics/drawable/Drawable;Ljava/lang/Object;Li4/d;LQ3/a;Z)Z

    move-result p0

    return p0
.end method
