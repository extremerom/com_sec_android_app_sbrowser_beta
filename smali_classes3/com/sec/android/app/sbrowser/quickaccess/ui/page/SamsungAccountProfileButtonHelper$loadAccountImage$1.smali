.class public final Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SamsungAccountProfileButtonHelper$loadAccountImage$1;
.super Li4/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SamsungAccountProfileButtonHelper;->loadAccountImage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Li4/b;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001J+\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0012\u0010\u0005\u001a\u000e\u0012\u0008\u0008\u0000\u0012\u0004\u0018\u00010\u0002\u0018\u00010\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0019\u0010\u000b\u001a\u00020\u00062\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\r"
    }
    d2 = {
        "com/sec/android/app/sbrowser/quickaccess/ui/page/SamsungAccountProfileButtonHelper$loadAccountImage$1",
        "Li4/b;",
        "Landroid/graphics/Bitmap;",
        "resource",
        "Lj4/c;",
        "transition",
        "Ldb/r;",
        "onResourceReady",
        "(Landroid/graphics/Bitmap;Lj4/c;)V",
        "Landroid/graphics/drawable/Drawable;",
        "placeholder",
        "onLoadCleared",
        "(Landroid/graphics/drawable/Drawable;)V",
        "SBrowser_highendBetaGlobal64Release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SamsungAccountProfileButtonHelper;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SamsungAccountProfileButtonHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SamsungAccountProfileButtonHelper$loadAccountImage$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SamsungAccountProfileButtonHelper;

    invoke-direct {p0}, Li4/b;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadCleared(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    const-string p0, "SamsungAccountProfileButtonHelper"

    const-string p1, "onLoadCleared"

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onResourceReady(Landroid/graphics/Bitmap;Lj4/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lj4/c;",
            ")V"
        }
    .end annotation

    const-string p2, "resource"

    invoke-static {p1, p2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "SamsungAccountProfileButtonHelper"

    const-string v0, "onResourceReady"

    invoke-static {p2, v0}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SamsungAccountProfileButtonHelper$loadAccountImage$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SamsungAccountProfileButtonHelper;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SamsungAccountProfileButtonHelper;->getButton()Landroid/widget/ImageButton;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SamsungAccountProfileButtonHelper$loadAccountImage$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SamsungAccountProfileButtonHelper;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SamsungAccountProfileButtonHelper;->access$setDefaultIconShowing$p(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SamsungAccountProfileButtonHelper;Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SamsungAccountProfileButtonHelper$loadAccountImage$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SamsungAccountProfileButtonHelper;

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SamsungAccountProfileButtonHelper;->updateIconColor(Z)V

    return-void
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Lj4/c;)V
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SamsungAccountProfileButtonHelper$loadAccountImage$1;->onResourceReady(Landroid/graphics/Bitmap;Lj4/c;)V

    return-void
.end method
