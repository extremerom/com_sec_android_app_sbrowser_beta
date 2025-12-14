.class Lcom/sec/android/app/sbrowser/common/utils/ClipboardUtil$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/utils/ShareImageFileUtil$OnImageSaveListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/common/utils/ClipboardUtil;->copyImageToCliboard(Landroid/content/Context;[BZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/utils/ClipboardUtil$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;Ljava/io/File;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/ClipboardUtil$2;->lambda$onImageSaved$0(Landroid/content/Context;Ljava/io/File;)V

    return-void
.end method

.method private static synthetic lambda$onImageSaved$0(Landroid/content/Context;Ljava/io/File;)V
    .locals 1

    const v0, 0xf425c

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/PlatformInfo;->isInGroup(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/sec/sbrowser/spl/wrapper/SplFeature;->supportClipboardEx()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/utils/ClipboardUtil$DataType;->IMAGE:Lcom/sec/android/app/sbrowser/common/utils/ClipboardUtil$DataType;

    invoke-static {p0, p1, v0}, Lcom/sec/android/app/sbrowser/common/utils/ClipboardUtil;->saveToClipboard(Landroid/content/Context;Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/utils/ClipboardUtil$DataType;)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/ShareImageFileUtil;->getUriForShareImageFile(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/utils/ClipboardUtil$DataType;->URI:Lcom/sec/android/app/sbrowser/common/utils/ClipboardUtil$DataType;

    invoke-static {p0, p1, v0}, Lcom/sec/android/app/sbrowser/common/utils/ClipboardUtil;->saveToClipboard(Landroid/content/Context;Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/utils/ClipboardUtil$DataType;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public onImageSaved(Ljava/io/File;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/io/File;->setReadable(ZZ)Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/utils/ClipboardUtil$2;->val$context:Landroid/content/Context;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/utils/a;

    invoke-direct {v0, v1, p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/sec/terrace/base/TerraceThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
