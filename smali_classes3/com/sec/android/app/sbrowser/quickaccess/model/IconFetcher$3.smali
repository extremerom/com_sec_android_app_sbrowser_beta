.class Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$FetchContentCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher;->requestIconToWebContentFetcher(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher;

.field final synthetic val$fallbackIcon:Landroid/graphics/Bitmap;

.field final synthetic val$fallbackIconUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher$3;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher$3;->val$fallbackIcon:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher$3;->val$fallbackIconUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentFetched(Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$ContentType;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    check-cast p3, Landroid/graphics/Bitmap;

    if-nez p3, :cond_0

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher$3;->val$fallbackIcon:Landroid/graphics/Bitmap;

    iget-object p4, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher$3;->val$fallbackIconUrl:Ljava/lang/String;

    :cond_0
    if-eqz p3, :cond_1

    invoke-static {p3}, Lcom/sec/android/app/sbrowser/common/utils/ColorUtils;->getDominantColor(Landroid/graphics/Bitmap;)I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher$3;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher;

    invoke-virtual {p0, p2, p4, p3, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher;->onFetchedFinished(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    return-void
.end method
