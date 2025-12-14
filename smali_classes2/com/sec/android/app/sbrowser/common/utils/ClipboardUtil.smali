.class public Lcom/sec/android/app/sbrowser/common/utils/ClipboardUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/common/utils/ClipboardUtil$DataType;,
        Lcom/sec/android/app/sbrowser/common/utils/ClipboardUtil$ClipboardCallback;
    }
.end annotation


# static fields
.field private static sImageSaveListener:Lcom/sec/android/app/sbrowser/common/utils/ShareImageFileUtil$OnImageSaveListener;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static sSemClipboardEventListener:Lcom/sec/sbrowser/spl/wrapper/SemClipboardEventListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/ClipboardUtil;->registerClipboardEventListener()V

    new-instance v0, Lcom/sec/android/app/sbrowser/common/utils/ClipboardUtil$1;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/common/utils/ClipboardUtil$1;-><init>()V

    invoke-static {v0}, Lcom/sec/terrace/TerraceClipboardUtils;->setTerraceClipboardUtils(Lcom/sec/terrace/TerraceClipboardUtils;)V

    return-void
.end method

.method public static bridge synthetic a()Lcom/sec/sbrowser/spl/wrapper/SemClipboardEventListener;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/utils/ClipboardUtil;->sSemClipboardEventListener:Lcom/sec/sbrowser/spl/wrapper/SemClipboardEventListener;

    return-object v0
.end method

.method public static bridge synthetic b(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ClipboardUtil;->canPasteInternal(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private static bitmapToByteArray(Landroid/graphics/Bitmap;)[B
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x28

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sec/sbrowser/spl/wrapper/SdlClipboardData;)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ClipboardUtil;->getPasteText(Lcom/sec/sbrowser/spl/wrapper/SdlClipboardData;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static canClipboard(Landroid/app/Activity;)Z
    .locals 5

    const-string v0, "ClipboardUtil"

    invoke-static {}, Lcom/sec/sbrowser/spl/wrapper/SplFeature;->supportClipboardEx()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemSettings;->isEmergencyMode()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemSettings;->isUltraPowerSavingMode()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_1

    return v2

    :cond_1
    const v3, 0xf425c

    :try_start_0
    invoke-static {v3}, Lcom/sec/sbrowser/spl/util/PlatformInfo;->isInGroup(I)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_5

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/utils/ClipboardUtil;->isSamsungKeyboard(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string p0, "Clipboard option not shown as samsung keyboard is not default"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ClipboardUtil;->canShowSoftKeyboard(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "Clipboard option not shown as soft keyboard is not visible"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_3
    const-string p0, "clipboard"

    invoke-virtual {v1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/ClipboardManager;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result p0

    if-eqz p0, :cond_4

    return v4

    :cond_4
    const-string p0, "Clipboard option not shown as there is no primary clip"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_5
    new-instance p0, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;

    invoke-direct {p0, v1}, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;->getCount()I

    move-result p0
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez p0, :cond_6

    move v2, v4

    :cond_6
    return v2

    :catch_0
    const-string p0, "Clipboard is not shown"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_0
    return v2
.end method

.method public static canPaste()Z
    .locals 1

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/ClipboardUtil;->canPasteInternal(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static canPasteAsPlainText()Z
    .locals 5

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/sec/sbrowser/spl/wrapper/SplFeature;->supportClipboardEx()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_3

    const-string v2, "clipboard"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v2

    invoke-virtual {v0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, "text/plain"

    invoke-virtual {v2, v1}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    instance-of v1, v0, Landroid/text/Spanned;

    if-eqz v1, :cond_2

    check-cast v0, Landroid/text/Spanned;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/ClipboardUtil;->hasStyleSpan(Landroid/text/Spanned;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v3

    :cond_2
    const-string v0, "text/html"

    invoke-virtual {v2, v0}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_3
    :try_start_0
    new-instance v2, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;

    invoke-direct {v2, v0}, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;-><init>(Landroid/content/Context;)V

    sget-object v4, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager$Format;->HTML:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {v4}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;->hasDataOf(I)Z

    move-result v4

    if-eqz v4, :cond_4

    return v3

    :cond_4
    sget-object v4, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager$Format;->TEXT:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {v4}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v0, v4}, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;->getData(Landroid/content/Context;I)Lcom/sec/sbrowser/spl/wrapper/SdlClipboardData;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v4, Lcom/sec/sbrowser/spl/wrapper/ClipboardDataText;

    invoke-virtual {v2, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    check-cast v0, Lcom/sec/sbrowser/spl/wrapper/ClipboardDataText;

    invoke-virtual {v0}, Lcom/sec/sbrowser/spl/wrapper/ClipboardDataText;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v2, v0, Landroid/text/Spanned;

    if-eqz v2, :cond_5

    check-cast v0, Landroid/text/Spanned;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/ClipboardUtil;->hasStyleSpan(Landroid/text/Spanned;)Z

    move-result v0
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_5

    move v1, v3

    :cond_5
    return v1

    :catch_0
    const-string v0, "ClipboardUtil"

    const-string v2, "Paste as plain text is not shown"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private static canPasteInternal(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lcom/sec/sbrowser/spl/wrapper/SplFeature;->supportClipboardEx()Z

    move-result v1

    const-string v2, "ClipboardUtil"

    if-nez v1, :cond_1

    const-string v0, "not support ClipboardEx"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "clipboard"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/ClipboardManager;

    invoke-virtual {p0}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result p0

    return p0

    :cond_1
    :try_start_0
    new-instance v1, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;

    invoke-direct {v1, p0}, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;-><init>(Landroid/content/Context;)V

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager$Format;->TEXT:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;->hasDataOf(I)Z

    move-result p0
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const-string p0, "Paste is not shown"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private static canShowSoftKeyboard(Landroid/content/Context;)Z
    .locals 3

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/ActivityUtil;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->isAccessoryKeyboardConnected(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "show_ime_with_hard_keyboard"

    const/4 v2, 0x0

    invoke-static {p0, v0, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :cond_2
    :goto_0
    return v1
.end method

.method public static copyBitmapImageToCliboard(Landroid/content/Context;Landroid/graphics/Bitmap;)V
    .locals 8

    const-string v0, "ClipboardUtil"

    const-string v1, "CopyImage::createNewFile failed because "

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p0, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    invoke-static {v4}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    if-eqz p1, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    invoke-static {v4}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/ClipboardUtil;->bitmapToByteArray(Landroid/graphics/Bitmap;)[B

    move-result-object p1

    if-eqz p1, :cond_8

    array-length v4, p1

    if-gtz v4, :cond_2

    goto/16 :goto_9

    :cond_2
    const v4, 0xf424e

    invoke-static {v4}, Lcom/sec/sbrowser/spl/util/PlatformInfo;->isInGroup(I)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v0, "bmp"

    invoke-static {p0, p1, v3, v0}, Lcom/sec/android/app/sbrowser/common/utils/ClipboardUtil;->copyImageToCliboard(Landroid/content/Context;[BZLjava/lang/String;)V

    goto/16 :goto_6

    :cond_3
    move-object v4, p0

    check-cast v4, Landroid/app/Activity;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "/copyImage.bmp"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    :try_start_0
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z

    move-result v7

    if-nez v7, :cond_4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " already exists"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catchall_0
    move-exception p0

    goto/16 :goto_7

    :catch_0
    move-exception p0

    goto :goto_4

    :catch_1
    move-exception p0

    goto :goto_5

    :cond_4
    :goto_2
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_5

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Not exists"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    return-void

    :catchall_1
    move-exception p0

    move-object v5, v1

    goto :goto_7

    :catch_3
    move-exception p0

    move-object v5, v1

    goto :goto_4

    :catch_4
    move-exception p0

    move-object v5, v1

    goto :goto_5

    :cond_5
    :try_start_3
    invoke-virtual {v6, v2, v3}, Ljava/io/File;->setReadable(ZZ)Z

    sget-object p1, Lcom/sec/android/app/sbrowser/common/utils/ClipboardUtil$DataType;->IMAGE:Lcom/sec/android/app/sbrowser/common/utils/ClipboardUtil$DataType;

    invoke-static {p0, v4, p1}, Lcom/sec/android/app/sbrowser/common/utils/ClipboardUtil;->saveToClipboard(Landroid/content/Context;Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/utils/ClipboardUtil$DataType;)V
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    goto :goto_6

    :catch_5
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_6

    :goto_4
    :try_start_5
    const-string p1, "IOException in copyImage"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v5, :cond_6

    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_6

    :goto_5
    :try_start_7
    const-string p1, "MalformedURLException Exception in copyImage"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v5, :cond_6

    :try_start_8
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    :cond_6
    :goto_6
    return-void

    :goto_7
    if-eqz v5, :cond_7

    :try_start_9
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_8

    :catch_6
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_7
    :goto_8
    throw p0

    :cond_8
    :goto_9
    return-void
.end method

.method public static copyImageToCliboard(Landroid/content/Context;[BZLjava/lang/String;)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    invoke-static {v2}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    if-eqz p1, :cond_1

    move v0, v1

    :cond_1
    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    invoke-static {}, Lcom/sec/sbrowser/spl/wrapper/SplFeature;->supportClipboardEx()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0xf424e

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/PlatformInfo;->isInGroup(I)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "bmp"

    invoke-static {p3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string p0, "ClipboardUtil"

    const-string p1, "This platform version supports only bitmap file"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    new-instance v5, Lcom/sec/android/app/sbrowser/common/utils/ClipboardUtil$2;

    invoke-direct {v5, p0}, Lcom/sec/android/app/sbrowser/common/utils/ClipboardUtil$2;-><init>(Landroid/content/Context;)V

    sget-object v0, Lcom/sec/android/app/sbrowser/common/utils/ClipboardUtil;->sImageSaveListener:Lcom/sec/android/app/sbrowser/common/utils/ShareImageFileUtil$OnImageSaveListener;

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/ShareImageFileUtil$OnImageSaveListener;->onImageSaved(Ljava/io/File;)V

    :cond_3
    const-string v1, "copyImage"

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/common/utils/ShareImageFileUtil;->saveImage(Landroid/content/Context;Ljava/lang/String;[BZLjava/lang/String;Lcom/sec/android/app/sbrowser/common/utils/ShareImageFileUtil$OnImageSaveListener;)V

    return-void
.end method

.method public static copyToSecClipboard(Landroid/content/Context;Landroid/content/ClipData;)Z
    .locals 7
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const-string v0, "ClipboardUtil"

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-static {v3}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    if-eqz p1, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    invoke-static {v3}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    invoke-static {}, Lcom/sec/sbrowser/spl/wrapper/SplFeature;->supportClipboardEx()Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    :try_start_0
    new-instance v3, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;

    invoke-direct {v3, p0}, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_2

    sget-object v4, Lcom/sec/android/app/sbrowser/common/utils/ClipboardUtil$DataType;->TEXT:Lcom/sec/android/app/sbrowser/common/utils/ClipboardUtil$DataType;

    invoke-virtual {p1}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/ClipDescription;->getMimeType(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "text/html"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    sget-object v4, Lcom/sec/android/app/sbrowser/common/utils/ClipboardUtil$DataType;->HTML_FRAGMENT:Lcom/sec/android/app/sbrowser/common/utils/ClipboardUtil$DataType;

    invoke-virtual {p1, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getHtmlText()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_3
    invoke-virtual {p1, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_2
    sget-object v5, Lcom/sec/android/app/sbrowser/common/utils/ClipboardUtil$5;->$SwitchMap$com$sec$android$app$sbrowser$common$utils$ClipboardUtil$DataType:[I

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v4, v5, v4

    if-eq v4, v1, :cond_5

    const/4 v5, 0x2

    if-eq v4, v5, :cond_4

    return v2

    :cond_4
    :try_start_1
    new-instance v4, Lcom/sec/sbrowser/spl/wrapper/ClipboardDataText;

    invoke-direct {v4}, Lcom/sec/sbrowser/spl/wrapper/ClipboardDataText;-><init>()V

    invoke-virtual {v4, p1}, Lcom/sec/sbrowser/spl/wrapper/ClipboardDataText;->setText(Ljava/lang/CharSequence;)Z

    invoke-virtual {v3, p0, v4}, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;->setData(Landroid/content/Context;Lcom/sec/sbrowser/spl/wrapper/SdlClipboardData;)Z

    move-result p0

    if-nez p0, :cond_6

    const-string p0, "clipExManager.setData - clipText returned false."

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return v2

    :cond_5
    :try_start_2
    new-instance v4, Lcom/sec/sbrowser/spl/wrapper/ClipboardDataHTMLFragment;

    invoke-direct {v4}, Lcom/sec/sbrowser/spl/wrapper/ClipboardDataHTMLFragment;-><init>()V

    invoke-virtual {v4, p1}, Lcom/sec/sbrowser/spl/wrapper/ClipboardDataHTMLFragment;->setHTMLFragment(Ljava/lang/CharSequence;)Z

    invoke-virtual {v3, p0, v4}, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;->setData(Landroid/content/Context;Lcom/sec/sbrowser/spl/wrapper/SdlClipboardData;)Z

    move-result p0

    if-nez p0, :cond_6

    const-string p0, "clipExManager.setData - clipHtml returned false."

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_2 .. :try_end_2} :catch_1

    return v2

    :cond_6
    return v1

    :catch_1
    return v2

    :catch_2
    const-string p0, "ClipboardExManager doesn\'t exist"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public static dismissClipboardDialog()V
    .locals 2

    invoke-static {}, Lcom/sec/sbrowser/spl/wrapper/SplFeature;->supportClipboardEx()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0xf425c

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/PlatformInfo;->isInGroup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v1, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;

    invoke-direct {v1, v0}, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;->dismissUIDataDialog()V
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    :goto_0
    return-void
.end method

.method private static getClipboardEventListener(Lcom/sec/android/app/sbrowser/common/utils/ClipboardUtil$ClipboardCallback;Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;)Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager$ClipboardEventListener;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/common/utils/ClipboardUtil$3;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/sbrowser/common/utils/ClipboardUtil$3;-><init>(Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;Lcom/sec/android/app/sbrowser/common/utils/ClipboardUtil$ClipboardCallback;)V

    return-object v0
.end method

.method private static getPasteText(Lcom/sec/sbrowser/spl/wrapper/SdlClipboardData;)Ljava/lang/CharSequence;
    .locals 4

    const-string v0, "ClipboardUtil"

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/wrapper/SdlClipboardData;->getFomat()I

    move-result v2

    sget-object v3, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager$Format;->TEXT:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {v3}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v2, v3, :cond_0

    check-cast p0, Lcom/sec/sbrowser/spl/wrapper/ClipboardDataText;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/wrapper/ClipboardDataText;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/wrapper/SdlClipboardData;->getFomat()I

    move-result v2

    sget-object v3, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager$Format;->HTML:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {v3}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v2, v3, :cond_1

    check-cast p0, Lcom/sec/sbrowser/spl/wrapper/ClipboardDataHTMLFragment;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/wrapper/ClipboardDataHTMLFragment;->getText()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/wrapper/SdlClipboardData;->getFomat()I

    move-result p0

    sget-object v2, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager$Format;->BITMAP:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne p0, v2, :cond_2

    const-string p0, "Data format is FORMAT_BITMAP_ID"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string p0, "Data format isn\'t not useful type"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    const-string p0, "Clipboard is not shown"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method private static getSemClipboardEventListener()Lcom/sec/sbrowser/spl/wrapper/SemClipboardEventListener;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/common/utils/ClipboardUtil$4;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/common/utils/ClipboardUtil$4;-><init>()V

    return-object v0
.end method

.method private static hasStyleSpan(Landroid/text/Spanned;)Z
    .locals 6

    const-class v0, Landroid/text/style/ParagraphStyle;

    const-class v1, Landroid/text/style/UpdateAppearance;

    const-class v2, Landroid/text/style/CharacterStyle;

    filled-new-array {v2, v0, v1}, [Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x3

    if-ge v2, v3, :cond_1

    aget-object v3, v0, v2

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/4 v5, -0x1

    invoke-interface {p0, v5, v4, v3}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v3

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge v3, v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static isSamsungKeyboard(Landroid/content/Context;)Z
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "default_input_method"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.samsung.android.honeyboard/.service.HoneyBoardService"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isShowing()Z
    .locals 3

    invoke-static {}, Lcom/sec/sbrowser/spl/wrapper/SplFeature;->supportClipboardEx()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    new-instance v2, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;

    invoke-direct {v2, v0}, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;->isShowing()Z

    move-result v0
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    return v1
.end method

.method private static registerClipboardEventListener()V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;

    invoke-direct {v1, v0}, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/ClipboardUtil;->getSemClipboardEventListener()Lcom/sec/sbrowser/spl/wrapper/SemClipboardEventListener;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/utils/ClipboardUtil;->sSemClipboardEventListener:Lcom/sec/sbrowser/spl/wrapper/SemClipboardEventListener;

    invoke-virtual {v1, v0}, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;->registerClipboardEventListener(Lcom/sec/sbrowser/spl/wrapper/SemClipboardEventListener;)V
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "ClipboardUtil"

    const-string v1, "Registering Clipboard Event Listener unsuccessful"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static registerClipboardPasteListener(Lcom/sec/android/app/sbrowser/common/utils/ClipboardUtil$ClipboardCallback;)V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;

    invoke-direct {v1, v0}, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;-><init>(Landroid/content/Context;)V

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager$Format;->TEXT:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {v0}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v2, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager$Format;->HTML:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    or-int/2addr v0, v2

    invoke-static {p0, v1}, Lcom/sec/android/app/sbrowser/common/utils/ClipboardUtil;->getClipboardEventListener(Lcom/sec/android/app/sbrowser/common/utils/ClipboardUtil$ClipboardCallback;Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;)Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager$ClipboardEventListener;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;->registerClipboardPasteListener(ILcom/sec/sbrowser/spl/wrapper/ClipboardExManager$ClipboardEventListener;)V
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "ClipboardUtil"

    const-string v0, "Registering Paste Listener unsuccessful"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static saveToClipboard(Landroid/content/Context;Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/utils/ClipboardUtil$DataType;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    invoke-static {v2}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    if-eqz p1, :cond_1

    move v0, v1

    :cond_1
    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    const-string v0, "ClipboardUtil"

    if-nez p0, :cond_2

    const-string p0, "saveToClipboard : null application context"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x20

    if-gt v2, v3, :cond_6

    invoke-static {}, Lcom/sec/sbrowser/spl/wrapper/SplFeature;->supportClipboardEx()Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object v2, Lcom/sec/android/app/sbrowser/common/utils/ClipboardUtil$DataType;->URI:Lcom/sec/android/app/sbrowser/common/utils/ClipboardUtil$DataType;

    if-eq p2, v2, :cond_6

    :try_start_0
    new-instance v2, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;

    invoke-direct {v2, p0}, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_3

    sget-object v3, Lcom/sec/android/app/sbrowser/common/utils/ClipboardUtil$5;->$SwitchMap$com$sec$android$app$sbrowser$common$utils$ClipboardUtil$DataType:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v3, p2

    if-eq p2, v1, :cond_5

    const/4 v1, 0x2

    if-eq p2, v1, :cond_4

    const/4 v1, 0x3

    if-eq p2, v1, :cond_3

    goto/16 :goto_2

    :cond_3
    :try_start_1
    new-instance p2, Lcom/sec/sbrowser/spl/wrapper/ClipboardDataBitmap;

    invoke-direct {p2}, Lcom/sec/sbrowser/spl/wrapper/ClipboardDataBitmap;-><init>()V

    invoke-virtual {p2, p1}, Lcom/sec/sbrowser/spl/wrapper/ClipboardDataBitmap;->setBitmapPath(Ljava/lang/String;)Z

    invoke-virtual {v2, p0, p2}, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;->setData(Landroid/content/Context;Lcom/sec/sbrowser/spl/wrapper/SdlClipboardData;)Z

    move-result p0

    if-nez p0, :cond_9

    const-string p0, "clipExManager.setData clipBmp returned false."

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_4
    :try_start_2
    new-instance p2, Lcom/sec/sbrowser/spl/wrapper/ClipboardDataText;

    invoke-direct {p2}, Lcom/sec/sbrowser/spl/wrapper/ClipboardDataText;-><init>()V

    invoke-virtual {p2, p1}, Lcom/sec/sbrowser/spl/wrapper/ClipboardDataText;->setText(Ljava/lang/CharSequence;)Z

    invoke-virtual {v2, p0, p2}, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;->setData(Landroid/content/Context;Lcom/sec/sbrowser/spl/wrapper/SdlClipboardData;)Z

    move-result p0

    if-nez p0, :cond_9

    const-string p0, "clipExManager.setData - clipText returned false."

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    :try_start_3
    new-instance p2, Lcom/sec/sbrowser/spl/wrapper/ClipboardDataHTMLFragment;

    invoke-direct {p2}, Lcom/sec/sbrowser/spl/wrapper/ClipboardDataHTMLFragment;-><init>()V

    invoke-virtual {p2, p1}, Lcom/sec/sbrowser/spl/wrapper/ClipboardDataHTMLFragment;->setHTMLFragment(Ljava/lang/CharSequence;)Z

    invoke-virtual {v2, p0, p2}, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;->setData(Landroid/content/Context;Lcom/sec/sbrowser/spl/wrapper/SdlClipboardData;)Z

    move-result p0

    if-nez p0, :cond_9

    const-string p0, "clipExManager.setData - clipHtml returned false."

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_3
    const-string p0, "ClipboardExManager doesn\'t exist"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6
    const-string v1, "not support ClipboardEx"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "clipboard"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    if-nez v0, :cond_7

    return-void

    :cond_7
    sget-object v1, Lcom/sec/android/app/sbrowser/common/utils/ClipboardUtil$DataType;->URI:Lcom/sec/android/app/sbrowser/common/utils/ClipboardUtil$DataType;

    if-ne p2, v1, :cond_8

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p2, "image"

    invoke-static {p0, p2, p1}, Landroid/content/ClipData;->newUri(Landroid/content/ContentResolver;Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object p0

    goto :goto_1

    :cond_8
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f1400cf

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p0

    :goto_1
    invoke-virtual {v0, p0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    :cond_9
    :goto_2
    return-void
.end method

.method public static setOnImageSaveListener(Lcom/sec/android/app/sbrowser/common/utils/ShareImageFileUtil$OnImageSaveListener;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    sput-object p0, Lcom/sec/android/app/sbrowser/common/utils/ClipboardUtil;->sImageSaveListener:Lcom/sec/android/app/sbrowser/common/utils/ShareImageFileUtil$OnImageSaveListener;

    return-void
.end method

.method public static showClipboardDialog(Lcom/sec/android/app/sbrowser/common/utils/ClipboardUtil$ClipboardCallback;Landroid/view/View;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const v1, 0xf425c

    :try_start_0
    invoke-static {v1}, Lcom/sec/sbrowser/spl/util/PlatformInfo;->isInGroup(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/common/utils/ClipboardUtil;->showClipboardUsingInputMethodManager(Landroid/content/Context;Landroid/view/View;)V

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;

    invoke-direct {v1, v0}, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;-><init>(Landroid/content/Context;)V

    sget-object v2, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager$Format;->TEXT:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v3, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager$Format;->HTML:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {v3}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    or-int/2addr v2, v3

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/ClipboardUtil;->isSamsungKeyboard(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/ClipboardUtil;->canShowSoftKeyboard(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {p0, v1}, Lcom/sec/android/app/sbrowser/common/utils/ClipboardUtil;->getClipboardEventListener(Lcom/sec/android/app/sbrowser/common/utils/ClipboardUtil$ClipboardCallback;Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;)Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager$ClipboardEventListener;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;->updateFilter(ILcom/sec/sbrowser/spl/wrapper/ClipboardExManager$ClipboardEventListener;)V

    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/common/utils/ClipboardUtil;->showClipboardUsingInputMethodManager(Landroid/content/Context;Landroid/view/View;)V

    return-void

    :cond_3
    invoke-static {p0, v1}, Lcom/sec/android/app/sbrowser/common/utils/ClipboardUtil;->getClipboardEventListener(Lcom/sec/android/app/sbrowser/common/utils/ClipboardUtil$ClipboardCallback;Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;)Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager$ClipboardEventListener;

    move-result-object p0

    invoke-virtual {v1, v0, v2, p0}, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;->showDialog(Landroid/content/Context;ILcom/sec/sbrowser/spl/wrapper/ClipboardExManager$ClipboardEventListener;)Z
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Show Clipboard has failed due to exception: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "ClipboardUtil"

    invoke-static {p0, p1, v0}, Landroidx/recyclerview/widget/P;->q(Lcom/sec/sbrowser/spl/util/FallbackException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private static showClipboardUsingInputMethodManager(Landroid/content/Context;Landroid/view/View;)V
    .locals 3

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "board"

    const-string v2, "clipboard"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.samsung.android.honeyboard.action.SHOW_BOARD"

    invoke-virtual {p0, p1, v1, v0}, Landroid/view/inputmethod/InputMethodManager;->sendAppPrivateCommand(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method

.method public static unregisterClipboardPasteListener()V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;

    invoke-direct {v1, v0}, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;->unregisterClipboardPasteListener()V
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "ClipboardUtil"

    const-string v1, "Unregistering Paste Listener unsuccessful"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
