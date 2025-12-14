.class Lcom/sec/android/app/sbrowser/common/utils/GlideBuilder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh4/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lh4/g;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/common/utils/GlideBuilder;


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

    const-string p2, "onLoadFailed"

    const-string p3, "GlideBuilder"

    invoke-static {p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "Error : "

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, LS3/x;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/common/utils/GlideBuilder$1;->this$0:Lcom/sec/android/app/sbrowser/common/utils/GlideBuilder;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/GlideBuilder;->a(Lcom/sec/android/app/sbrowser/common/utils/GlideBuilder;)Lcom/sec/android/app/sbrowser/common/utils/GlideBuilder$Listener;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/utils/GlideBuilder$1;->this$0:Lcom/sec/android/app/sbrowser/common/utils/GlideBuilder;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/GlideBuilder;->a(Lcom/sec/android/app/sbrowser/common/utils/GlideBuilder;)Lcom/sec/android/app/sbrowser/common/utils/GlideBuilder$Listener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/utils/GlideBuilder$Listener;->onLoadFailed()V

    :cond_1
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

    const-string p2, "GlideBuilder"

    const-string p3, "onResourceReady"

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/common/utils/GlideBuilder$1;->this$0:Lcom/sec/android/app/sbrowser/common/utils/GlideBuilder;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/common/utils/GlideBuilder;->a(Lcom/sec/android/app/sbrowser/common/utils/GlideBuilder;)Lcom/sec/android/app/sbrowser/common/utils/GlideBuilder$Listener;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/utils/GlideBuilder$1;->this$0:Lcom/sec/android/app/sbrowser/common/utils/GlideBuilder;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/GlideBuilder;->a(Lcom/sec/android/app/sbrowser/common/utils/GlideBuilder;)Lcom/sec/android/app/sbrowser/common/utils/GlideBuilder$Listener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/GlideBuilder$Listener;->onResourceReady(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Ljava/lang/Object;Li4/d;LQ3/a;Z)Z
    .locals 0

    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {p0 .. p5}, Lcom/sec/android/app/sbrowser/common/utils/GlideBuilder$1;->onResourceReady(Landroid/graphics/drawable/Drawable;Ljava/lang/Object;Li4/d;LQ3/a;Z)Z

    move-result p0

    return p0
.end method
