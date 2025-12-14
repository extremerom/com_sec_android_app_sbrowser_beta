.class public Lorg/chromium/ui/base/ClipboardImpl;
.super Lorg/chromium/ui/base/Clipboard;
.source "SourceFile"

# interfaces
.implements Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/ui/base/ClipboardImpl$ClipboardListener;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullUnmarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# static fields
.field private static sListener:Lorg/chromium/ui/base/ClipboardImpl$ClipboardListener;

.field private static sSkipImageMimeTypeCheckForTesting:Ljava/lang/Boolean;


# instance fields
.field private mClipboardManager:Landroid/content/ClipboardManager;

.field private final mContext:Landroid/content/Context;

.field private mImageFileProvider:Lorg/chromium/ui/base/Clipboard$ImageFileProvider;

.field private mPendingCopiedImageMetadata:Lorg/chromium/ui/base/Clipboard$ImageFileProvider$ClipboardFileMetadata;


# direct methods
.method public constructor <init>(Landroid/content/ClipboardManager;)V
    .locals 1

    invoke-direct {p0}, Lorg/chromium/ui/base/Clipboard;-><init>()V

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/ui/base/ClipboardImpl;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lorg/chromium/ui/base/ClipboardImpl;->mClipboardManager:Landroid/content/ClipboardManager;

    invoke-virtual {p1, p0}, Landroid/content/ClipboardManager;->addPrimaryClipChangedListener(Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;)V

    return-void
.end method

.method public static synthetic a(Lorg/chromium/ui/base/ClipboardImpl;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/ui/base/ClipboardImpl;->lambda$setImage$0(Landroid/net/Uri;)V

    return-void
.end method

.method public static bridge synthetic b(Lorg/chromium/ui/base/ClipboardImpl;)Lorg/chromium/ui/base/Clipboard$ImageFileProvider;
    .locals 0

    iget-object p0, p0, Lorg/chromium/ui/base/ClipboardImpl;->mImageFileProvider:Lorg/chromium/ui/base/Clipboard$ImageFileProvider;

    return-object p0
.end method

.method public static bridge synthetic c(Lorg/chromium/ui/base/ClipboardImpl;Lorg/chromium/ui/base/Clipboard$ImageFileProvider$ClipboardFileMetadata;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/ui/base/ClipboardImpl;->mPendingCopiedImageMetadata:Lorg/chromium/ui/base/Clipboard$ImageFileProvider$ClipboardFileMetadata;

    return-void
.end method

.method public static bridge synthetic d(Lorg/chromium/ui/base/ClipboardImpl;)J
    .locals 2

    invoke-direct {p0}, Lorg/chromium/ui/base/ClipboardImpl;->getImageTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic e(Lorg/chromium/ui/base/ClipboardImpl;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/ui/base/ClipboardImpl;->showToastIfNeeded(I)V

    return-void
.end method

.method private getImageTimestamp()J
    .locals 2

    iget-object p0, p0, Lorg/chromium/ui/base/ClipboardImpl;->mClipboardManager:Landroid/content/ClipboardManager;

    invoke-virtual {p0}, Landroid/content/ClipboardManager;->getPrimaryClipDescription()Landroid/content/ClipDescription;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v0, "image/*"

    invoke-virtual {p0, v0}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/ClipDescription;->getTimestamp()J

    move-result-wide v0

    return-wide v0

    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private grantUriPermission(Landroid/net/Uri;)V
    .locals 0

    return-void
.end method

.method private static hasImageMimeType(Landroid/content/ClipDescription;)Z
    .locals 1

    if-eqz p0, :cond_1

    const-string v0, "image/*"

    invoke-virtual {p0, v0}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Lorg/chromium/ui/base/ClipboardImpl;->sSkipImageMimeTypeCheckForTesting:Ljava/lang/Boolean;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private hasStyleSpan(Landroid/text/Spanned;)Z
    .locals 5

    const-class p0, Landroid/text/style/ParagraphStyle;

    const-class v0, Landroid/text/style/UpdateAppearance;

    const-class v1, Landroid/text/style/CharacterStyle;

    filled-new-array {v1, p0, v0}, [Ljava/lang/Class;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    aget-object v2, p0, v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v4, -0x1

    invoke-interface {p1, v4, v3, v2}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private hasStyledText(Landroid/content/ClipDescription;)Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    invoke-static {p1}, Lorg/chromium/ui/base/b;->C(Landroid/content/ClipDescription;)Z

    move-result p0

    return p0

    :cond_0
    invoke-direct {p0}, Lorg/chromium/ui/base/ClipboardImpl;->hasStyledTextOnPreS()Z

    move-result p0

    return p0
.end method

.method private hasStyledTextOnPreS()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/chromium/ui/base/ClipboardImpl;->mClipboardManager:Landroid/content/ClipboardManager;

    invoke-virtual {v1}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    instance-of v2, v1, Landroid/text/Spanned;

    if-eqz v2, :cond_0

    check-cast v1, Landroid/text/Spanned;

    invoke-direct {p0, v1}, Lorg/chromium/ui/base/ClipboardImpl;->hasStyleSpan(Landroid/text/Spanned;)Z

    move-result p0

    return p0

    :catch_0
    :cond_0
    return v0
.end method

.method private isSecClipboardSupported()Z
    .locals 1

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1f

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$setImage$0(Landroid/net/Uri;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/chromium/ui/base/ClipboardImpl;->setImageUri(Landroid/net/Uri;)V

    return-void
.end method

.method private onPrimaryClipTimestampInvalidated()V
    .locals 2

    iget-object v0, p0, Lorg/chromium/ui/base/ClipboardImpl;->mClipboardManager:Landroid/content/ClipboardManager;

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClipDescription()Landroid/content/ClipDescription;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/content/ClipDescription;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/chromium/ui/base/Clipboard;->notifyPrimaryClipTimestampInvalidated(J)V

    return-void
.end method

.method private revokeUriPermissionForLastSharedImage()V
    .locals 0

    return-void
.end method

.method public static setClipboardListener(Lorg/chromium/ui/base/ClipboardImpl$ClipboardListener;)V
    .locals 0

    sput-object p0, Lorg/chromium/ui/base/ClipboardImpl;->sListener:Lorg/chromium/ui/base/ClipboardImpl$ClipboardListener;

    return-void
.end method

.method private showCopyToClipboardFailureMessage()V
    .locals 2

    iget-object v0, p0, Lorg/chromium/ui/base/ClipboardImpl;->mContext:Landroid/content/Context;

    sget v1, Lorg/chromium/ui/R$string;->copy_to_clipboard_failure_message:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lorg/chromium/ui/base/ClipboardImpl;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/chromium/ui/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lorg/chromium/ui/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/ui/widget/Toast;->show()V

    return-void
.end method

.method private showToastIfNeeded(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x20

    if-le v0, v1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lorg/chromium/ui/base/ClipboardImpl;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/chromium/ui/widget/Toast;->makeText(Landroid/content/Context;II)Lorg/chromium/ui/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/ui/widget/Toast;->show()V

    return-void
.end method


# virtual methods
.method public canCopy()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public canPaste()Z
    .locals 1

    invoke-direct {p0}, Lorg/chromium/ui/base/ClipboardImpl;->isSecClipboardSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/chromium/ui/base/ClipboardImpl;->sListener:Lorg/chromium/ui/base/ClipboardImpl$ClipboardListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/chromium/ui/base/ClipboardImpl$ClipboardListener;->canPaste()Z

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lorg/chromium/ui/base/ClipboardImpl;->mClipboardManager:Landroid/content/ClipboardManager;

    invoke-virtual {p0}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result p0

    return p0
.end method

.method public clear()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/chromium/ui/base/ClipboardImpl;->mClipboardManager:Landroid/content/ClipboardManager;

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->clearPrimaryClip()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/chromium/ui/base/ClipboardImpl;->setPrimaryClipNoException(Landroid/content/ClipData;)Z

    return-void
.end method

.method public clipDataToHtmlText(Landroid/content/ClipData;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p1}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v0

    const-string v1, "text/html"

    invoke-virtual {v0, v1}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p1, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ClipData$Item;->getHtmlText()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p1, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    instance-of v0, p1, Landroid/text/Spanned;

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    check-cast p1, Landroid/text/Spanned;

    invoke-direct {p0, p1}, Lorg/chromium/ui/base/ClipboardImpl;->hasStyleSpan(Landroid/text/Spanned;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {p1, v2}, Landroid/text/Html;->toHtml(Landroid/text/Spanned;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v1
.end method

.method public getCoercedText()Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Lorg/chromium/ui/base/ClipboardImpl;->isSecClipboardSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/chromium/ui/base/ClipboardImpl;->sListener:Lorg/chromium/ui/base/ClipboardImpl$ClipboardListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/chromium/ui/base/ClipboardImpl$ClipboardListener;->getPrimaryClipText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/chromium/ui/base/ClipboardImpl;->mClipboardManager:Landroid/content/ClipboardManager;

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    iget-object p0, p0, Lorg/chromium/ui/base/ClipboardImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getFilenames()[[Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    iget-object p0, p0, Lorg/chromium/ui/base/ClipboardImpl;->mClipboardManager:Landroid/content/ClipboardManager;

    invoke-virtual {p0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object p0

    move v2, v1

    :goto_0
    invoke-virtual {p0}, Landroid/content/ClipData;->getItemCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-virtual {p0, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/chromium/base/ContentUriUtils;->maybeGetDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4}, Ljava/lang/String;-><init>()V

    :cond_0
    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    :cond_2
    new-array p0, v1, [[Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [[Ljava/lang/String;

    return-object p0
.end method

.method public getHTMLText()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lorg/chromium/ui/base/ClipboardImpl;->isSecClipboardSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/chromium/ui/base/ClipboardImpl;->sListener:Lorg/chromium/ui/base/ClipboardImpl$ClipboardListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/chromium/ui/base/ClipboardImpl$ClipboardListener;->getPrimaryClipHtml()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/chromium/ui/base/ClipboardImpl;->mClipboardManager:Landroid/content/ClipboardManager;

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/chromium/ui/base/ClipboardImpl;->clipDataToHtmlText(Landroid/content/ClipData;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getImageUri()Landroid/net/Uri;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object p0, p0, Lorg/chromium/ui/base/ClipboardImpl;->mClipboardManager:Landroid/content/ClipboardManager;

    invoke-virtual {p0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/content/ClipData;->getItemCount()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v1

    invoke-static {v1}, Lorg/chromium/ui/base/ClipboardImpl;->hasImageMimeType(Landroid/content/ClipDescription;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_1
    :goto_0
    return-object v0
.end method

.method public getImageUriString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lorg/chromium/ui/base/ClipboardImpl;->getImageUri()Landroid/net/Uri;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getPng()[B
    .locals 6

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnBackgroundThread()V

    invoke-virtual {p0}, Lorg/chromium/ui/base/ClipboardImpl;->getImageUri()Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "image/png"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const-wide/32 v4, 0x5f5e100

    if-nez v3, :cond_3

    invoke-virtual {p0}, Lorg/chromium/ui/base/ClipboardImpl;->hasImage()Z

    move-result p0

    if-nez p0, :cond_1

    return-object v1

    :cond_1
    :try_start_0
    invoke-static {v2, v0}, Lorg/chromium/base/ApiCompatibilityUtils;->getBitmapByUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object p0

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p0, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p0

    int-to-long v2, p0

    cmp-long p0, v2, v4

    if-lez p0, :cond_2

    return-object v1

    :cond_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v1

    :cond_3
    :try_start_1
    const-string p0, "r"

    invoke-virtual {v2, v0, p0}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    if-eqz p0, :cond_5

    :try_start_2
    invoke-virtual {p0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v2

    cmp-long v0, v2, v4

    if-gtz v0, :cond_5

    invoke-virtual {p0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v2

    long-to-int v0, v2

    new-array v0, v0, [B

    new-instance v2, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {p0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {v2}, Lorg/chromium/base/StreamUtil;->closeQuietly(Ljava/io/Closeable;)V

    return-object v0

    :catchall_0
    move-exception p0

    move-object v1, v2

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_0

    :catchall_2
    move-exception v0

    move-object v2, v1

    :goto_0
    :try_start_5
    invoke-virtual {p0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception p0

    :try_start_6
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_5
    :goto_2
    if-eqz p0, :cond_6

    :try_start_7
    invoke-virtual {p0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_3

    :catchall_4
    move-exception p0

    goto :goto_4

    :catch_1
    move-object v2, v1

    goto :goto_5

    :cond_6
    :goto_3
    invoke-static {v1}, Lorg/chromium/base/StreamUtil;->closeQuietly(Ljava/io/Closeable;)V

    return-object v1

    :goto_4
    invoke-static {v1}, Lorg/chromium/base/StreamUtil;->closeQuietly(Ljava/io/Closeable;)V

    throw p0

    :catch_2
    :goto_5
    invoke-static {v2}, Lorg/chromium/base/StreamUtil;->closeQuietly(Ljava/io/Closeable;)V

    return-object v1
.end method

.method public getUrl()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lorg/chromium/ui/base/ClipboardImpl;->hasUrl()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    if-ge v0, v2, :cond_1

    invoke-virtual {p0}, Lorg/chromium/ui/base/ClipboardImpl;->getCoercedText()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :try_start_0
    iget-object v0, p0, Lorg/chromium/ui/base/ClipboardImpl;->mClipboardManager:Landroid/content/ClipboardManager;

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v2

    const-string v3, "text/x-moz-url"

    invoke-virtual {v2, v3}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lorg/chromium/ui/base/ClipboardImpl;->getCoercedText()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object p0

    invoke-static {p0}, Lj9/a;->n(Landroid/content/ClipData$Item;)Landroid/view/textclassifier/TextLinks;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/view/textclassifier/TextLinks;->getLinks()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0}, Landroid/view/textclassifier/TextLinks;->getLinks()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/textclassifier/TextLinks$TextLink;

    const-string v3, "url"

    invoke-virtual {v2, v3}, Landroid/view/textclassifier/TextLinks$TextLink;->getConfidenceScore(Ljava/lang/String;)F

    move-result v3

    const v4, 0x3f7d70a4    # 0.99f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_4

    invoke-virtual {v2}, Landroid/view/textclassifier/TextLinks$TextLink;->getStart()I

    move-result v0

    invoke-virtual {v2}, Landroid/view/textclassifier/TextLinks$TextLink;->getEnd()I

    move-result v2

    invoke-interface {p0, v0, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0

    :cond_5
    move-object p0, v1

    :goto_0
    if-nez p0, :cond_6

    return-object v1

    :cond_6
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/chromium/components/url_formatter/UrlFormatter;->fixupUrl(Ljava/lang/String;)Lorg/chromium/url/GURL;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/url/GURL;->getSpec()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_7
    :goto_1
    return-object v1
.end method

.method public hasCoercedText()Z
    .locals 2

    iget-object p0, p0, Lorg/chromium/ui/base/ClipboardImpl;->mClipboardManager:Landroid/content/ClipboardManager;

    invoke-virtual {p0}, Landroid/content/ClipboardManager;->getPrimaryClipDescription()Landroid/content/ClipDescription;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "text/plain"

    invoke-virtual {p0, v1}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "text/html"

    invoke-virtual {p0, v1}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "text/x-moz-url"

    invoke-virtual {p0, v1}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public hasFilenames()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object p0, p0, Lorg/chromium/ui/base/ClipboardImpl;->mClipboardManager:Landroid/content/ClipboardManager;

    invoke-virtual {p0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object p0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Landroid/content/ClipData;->getItemCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    :cond_1
    return v0
.end method

.method public hasHTMLOrStyledText()Z
    .locals 3

    iget-object v0, p0, Lorg/chromium/ui/base/ClipboardImpl;->mClipboardManager:Landroid/content/ClipboardManager;

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClipDescription()Landroid/content/ClipDescription;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v2, "text/plain"

    invoke-virtual {v0, v2}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v0}, Lorg/chromium/ui/base/ClipboardImpl;->hasStyledText(Landroid/content/ClipDescription;)Z

    move-result p0

    if-nez p0, :cond_2

    :cond_1
    const-string p0, "text/html"

    invoke-virtual {v0, p0}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public hasImage()Z
    .locals 0

    iget-object p0, p0, Lorg/chromium/ui/base/ClipboardImpl;->mClipboardManager:Landroid/content/ClipboardManager;

    invoke-virtual {p0}, Landroid/content/ClipboardManager;->getPrimaryClipDescription()Landroid/content/ClipDescription;

    move-result-object p0

    invoke-static {p0}, Lorg/chromium/ui/base/ClipboardImpl;->hasImageMimeType(Landroid/content/ClipDescription;)Z

    move-result p0

    return p0
.end method

.method public hasUrl()Z
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_4

    iget-object p0, p0, Lorg/chromium/ui/base/ClipboardImpl;->mClipboardManager:Landroid/content/ClipboardManager;

    invoke-virtual {p0}, Landroid/content/ClipboardManager;->getPrimaryClipDescription()Landroid/content/ClipDescription;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "text/x-moz-url"

    invoke-virtual {p0, v1}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    const-string v1, "text/*"

    invoke-virtual {p0, v1}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p0}, Lj9/a;->a(Landroid/content/ClipDescription;)I

    move-result v1

    const/4 v3, 0x3

    if-eq v1, v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lorg/chromium/ui/base/b;->a(Landroid/content/ClipDescription;)F

    move-result p0

    const v1, 0x3f7d70a4    # 0.99f

    cmpl-float p0, p0, v1

    if-lez p0, :cond_3

    move v0, v2

    :cond_3
    :goto_0
    return v0

    :cond_4
    new-instance v0, Lorg/chromium/url/GURL;

    invoke-virtual {p0}, Lorg/chromium/ui/base/ClipboardImpl;->getCoercedText()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/chromium/url/GURL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/chromium/url/GURL;->isValid()Z

    move-result p0

    return p0
.end method

.method public onPrimaryClipChanged()V
    .locals 1

    const-string v0, "MobileClipboardChanged"

    invoke-static {v0}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/chromium/ui/base/ClipboardImpl;->revokeUriPermissionForLastSharedImage()V

    invoke-virtual {p0}, Lorg/chromium/ui/base/Clipboard;->notifyPrimaryClipChanged()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lorg/chromium/ui/base/ClipboardImpl;->onPrimaryClipTimestampInvalidated()V

    :cond_0
    return-void
.end method

.method public setFilenames([Ljava/lang/String;)V
    .locals 6

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v1

    :goto_0
    array-length v4, p1

    if-ge v2, v4, :cond_2

    :try_start_0
    aget-object v4, p1, v2

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-object v4, v1

    :goto_1
    if-nez v4, :cond_0

    goto :goto_2

    :cond_0
    if-nez v3, :cond_1

    invoke-static {v0, v1, v4}, Landroid/content/ClipData;->newUri(Landroid/content/ContentResolver;Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object v3

    goto :goto_2

    :cond_1
    new-instance v5, Landroid/content/ClipData$Item;

    invoke-direct {v5, v4}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v3, v0, v5}, Landroid/content/ClipData;->addItem(Landroid/content/ContentResolver;Landroid/content/ClipData$Item;)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {p0, v3}, Lorg/chromium/ui/base/ClipboardImpl;->setPrimaryClipNoException(Landroid/content/ClipData;)Z

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lorg/chromium/ui/base/ClipboardImpl;->clear()V

    :goto_3
    return-void
.end method

.method public setHTMLText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "html"

    invoke-static {v0, p2, p1}, Landroid/content/ClipData;->newHtmlText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;)Landroid/content/ClipData;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/chromium/ui/base/ClipboardImpl;->setPrimaryClipNoException(Landroid/content/ClipData;)Z

    return-void
.end method

.method public setImage([BLjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lorg/chromium/ui/base/ClipboardImpl;->mImageFileProvider:Lorg/chromium/ui/base/Clipboard$ImageFileProvider;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/sec/terrace/a;

    const/16 v2, 0xb

    invoke-direct {v1, v2, p0}, Lcom/sec/terrace/a;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, p1, p2, v1}, Lorg/chromium/ui/base/Clipboard$ImageFileProvider;->storeImageAndGenerateUri([BLjava/lang/String;Lorg/chromium/base/Callback;)V

    return-void
.end method

.method public setImageUri(Landroid/net/Uri;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/chromium/ui/base/ClipboardImpl;->setImageUri(Landroid/net/Uri;Z)V

    return-void
.end method

.method public setImageUri(Landroid/net/Uri;Z)V
    .locals 1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lorg/chromium/ui/base/ClipboardImpl;->showCopyToClipboardFailureMessage()V

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lorg/chromium/ui/base/ClipboardImpl;->grantUriPermission(Landroid/net/Uri;)V

    new-instance v0, Lorg/chromium/ui/base/ClipboardImpl$1;

    invoke-direct {v0, p0, p1, p2}, Lorg/chromium/ui/base/ClipboardImpl$1;-><init>(Lorg/chromium/ui/base/ClipboardImpl;Landroid/net/Uri;Z)V

    sget-object p0, Lorg/chromium/base/task/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, p0}, Lorg/chromium/base/task/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;)Lorg/chromium/base/task/AsyncTask;

    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 3

    const-string v0, "password"

    invoke-static {v0, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    const-string v1, "android.content.extra.IS_SENSITIVE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p1}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ClipDescription;->setExtras(Landroid/os/PersistableBundle;)V

    invoke-virtual {p0, p1}, Lorg/chromium/ui/base/ClipboardImpl;->setPrimaryClipNoException(Landroid/content/ClipData;)Z

    return-void
.end method

.method public setPrimaryClipNoException(Landroid/content/ClipData;)Z
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    const-string v1, "google"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/chromium/base/StrictModeContext;->allowAllThreadPolicies()Lorg/chromium/base/StrictModeContext;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    invoke-direct {p0}, Lorg/chromium/ui/base/ClipboardImpl;->isSecClipboardSupported()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    sget-object v1, Lorg/chromium/ui/base/ClipboardImpl;->sListener:Lorg/chromium/ui/base/ClipboardImpl$ClipboardListener;

    if-eqz v1, :cond_2

    invoke-interface {v1, p1}, Lorg/chromium/ui/base/ClipboardImpl$ClipboardListener;->copyToSecClipboard(Landroid/content/ClipData;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    :try_start_2
    invoke-virtual {v0}, Lorg/chromium/base/StrictModeContext;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    return v2

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_2
    :try_start_3
    iget-object v1, p0, Lorg/chromium/ui/base/ClipboardImpl;->mClipboardManager:Landroid/content/ClipboardManager;

    invoke-virtual {v1, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_3

    :try_start_4
    invoke-virtual {v0}, Lorg/chromium/base/StrictModeContext;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :cond_3
    return v2

    :goto_1
    if-eqz v0, :cond_4

    :try_start_5
    invoke-virtual {v0}, Lorg/chromium/base/StrictModeContext;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    :try_start_6
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    throw p1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    invoke-direct {p0}, Lorg/chromium/ui/base/ClipboardImpl;->showCopyToClipboardFailureMessage()V

    const/4 p0, 0x0

    return p0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2

    const-string v0, "text"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lorg/chromium/ui/base/ClipboardImpl;->setText(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public setText(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-static {p1, p2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/chromium/ui/base/ClipboardImpl;->setPrimaryClipNoException(Landroid/content/ClipData;)Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    sget p1, Lorg/chromium/ui/R$string;->copied:I

    invoke-direct {p0, p1}, Lorg/chromium/ui/base/ClipboardImpl;->showToastIfNeeded(I)V

    :cond_0
    return-void
.end method
