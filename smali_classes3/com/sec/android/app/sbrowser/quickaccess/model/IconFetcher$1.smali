.class Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher$1;
.super Li4/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher;->requestFetchIconByIconUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
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
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher;

.field final synthetic val$iconUrl:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher$1;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher$1;->val$iconUrl:Ljava/lang/String;

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

    return-void
.end method

.method public onResourceReady(Landroid/graphics/Bitmap;Lj4/c;)V
    .locals 2
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

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/ColorUtils;->getDominantColor(Landroid/graphics/Bitmap;)I

    move-result p2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher;->a(Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher;)Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher$OnIconFetchListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher$1;->val$url:Ljava/lang/String;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher$1;->val$iconUrl:Ljava/lang/String;

    invoke-interface {v0, v1, p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher$OnIconFetchListener;->onFetchFinished(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;I)V

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

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher$1;->onResourceReady(Landroid/graphics/Bitmap;Lj4/c;)V

    return-void
.end method
