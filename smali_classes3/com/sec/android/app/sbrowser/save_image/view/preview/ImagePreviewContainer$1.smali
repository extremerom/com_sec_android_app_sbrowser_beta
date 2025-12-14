.class Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewContainer$1;
.super Lc3/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewContainer;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewContainer;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewContainer$1;->this$0:Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 2

    const/4 v0, 0x2

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewContainer$1;->this$0:Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewContainer;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewContainer;->d(Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewContainer;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewContainer$1;->this$0:Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewContainer;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewContainer;->c(Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewContainer;)Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewContainer$1;->this$0:Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewContainer;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewContainer;->c(Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewContainer;)Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->getState()I

    move-result p1

    if-ne p1, v0, :cond_3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewContainer$1;->this$0:Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewContainer;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewContainer;->f(Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewContainer;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewContainer$1;->this$0:Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewContainer;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewContainer;->e(Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewContainer;I)V

    return-void
.end method
