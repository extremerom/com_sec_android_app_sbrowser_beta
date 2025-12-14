.class Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader$LoadIconCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->initializeInternal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater$2;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIconLoaded(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    if-nez p2, :cond_0

    const-string v0, "onIconLoaded - Null icon for "

    const-string v1, "SixPkgUpdater"

    invoke-static {v0, p1, v1}, Landroidx/recyclerview/widget/P;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater$2;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->e(Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;)Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsFragmentCallback$LoadIconCallback;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsFragmentCallback$LoadIconCallback;->onIconLoaded(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method
