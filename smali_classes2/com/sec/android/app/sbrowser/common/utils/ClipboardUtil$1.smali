.class Lcom/sec/android/app/sbrowser/common/utils/ClipboardUtil$1;
.super Lcom/sec/terrace/TerraceClipboardUtils;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/common/utils/ClipboardUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/terrace/TerraceClipboardUtils;-><init>()V

    return-void
.end method


# virtual methods
.method public canPaste(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/ClipboardUtil;->b(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public canPasteAsPlainText()Z
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/ClipboardUtil;->canPasteAsPlainText()Z

    move-result p0

    return p0
.end method

.method public canShowSecClipboard(Landroid/content/Context;)Z
    .locals 0

    check-cast p1, Landroid/app/Activity;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/ClipboardUtil;->canClipboard(Landroid/app/Activity;)Z

    move-result p0

    return p0
.end method

.method public clipboardKeycode()I
    .locals 2

    :try_start_0
    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/MajoKeyEvent;->KEYCODE_CLIPBOARD:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "exception : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "ClipboardUtil"

    invoke-static {p0, v0, v1}, Landroidx/recyclerview/widget/P;->B(Lcom/sec/sbrowser/spl/util/FallbackException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public copyToSecClipboard(Landroid/content/Context;Landroid/content/ClipData;)Z
    .locals 0

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/common/utils/ClipboardUtil;->copyToSecClipboard(Landroid/content/Context;Landroid/content/ClipData;)Z

    move-result p0

    return p0
.end method

.method public getPrimaryClipHtml(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/sec/sbrowser/spl/wrapper/SplFeature;->supportClipboardEx()Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    new-instance p0, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;

    invoke-direct {p0, p1}, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager$Format;->HTML:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {v1}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;->hasDataOf(I)Z

    move-result v2
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v2, :cond_1

    :try_start_1
    invoke-virtual {v1}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;->getData(Landroid/content/Context;I)Lcom/sec/sbrowser/spl/wrapper/SdlClipboardData;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/sec/sbrowser/spl/wrapper/ClipboardDataHTMLFragment;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    check-cast v1, Lcom/sec/sbrowser/spl/wrapper/ClipboardDataHTMLFragment;

    invoke-virtual {v1}, Lcom/sec/sbrowser/spl/wrapper/ClipboardDataHTMLFragment;->getHtml()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_0
    :try_start_2
    const-string v1, "ClipboardUtil"

    const-string v2, "getPrimaryClipHtml: IllegalArgumentException on SemTextClipData; return ClipboardDataText instead of ClipboardDataHTMLFragment"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager$Format;->TEXT:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {v1}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;->getData(Landroid/content/Context;I)Lcom/sec/sbrowser/spl/wrapper/SdlClipboardData;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-class v1, Lcom/sec/sbrowser/spl/wrapper/ClipboardDataText;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    check-cast p0, Lcom/sec/sbrowser/spl/wrapper/ClipboardDataText;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/wrapper/ClipboardDataText;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_2 .. :try_end_2} :catch_1

    return-object p0

    :catch_1
    :cond_1
    return-object v0
.end method

.method public getPrimaryClipText(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/sec/sbrowser/spl/wrapper/SplFeature;->supportClipboardEx()Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    new-instance p0, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;

    invoke-direct {p0, p1}, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager$Format;->TEXT:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {v1}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;->hasDataOf(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;->getData(Landroid/content/Context;I)Lcom/sec/sbrowser/spl/wrapper/SdlClipboardData;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-class v1, Lcom/sec/sbrowser/spl/wrapper/ClipboardDataText;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    check-cast p0, Lcom/sec/sbrowser/spl/wrapper/ClipboardDataText;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/wrapper/ClipboardDataText;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_1
    return-object v0
.end method

.method public handleClipboardActionIfRestrictedByKnoxPolicy(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/knox/KnoxPolicy;->getClipboardDisabled()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sget-object p0, Lcom/sec/android/app/sbrowser/common/utils/ClipboardUtil$DataType;->TEXT:Lcom/sec/android/app/sbrowser/common/utils/ClipboardUtil$DataType;

    invoke-static {p1, p2, p0}, Lcom/sec/android/app/sbrowser/common/utils/ClipboardUtil;->saveToClipboard(Landroid/content/Context;Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/utils/ClipboardUtil$DataType;)V

    const/4 p0, 0x1

    return p0
.end method

.method public isSecClipboardShowing(Landroid/content/Context;)Z
    .locals 1

    invoke-static {}, Lcom/sec/sbrowser/spl/wrapper/SplFeature;->supportClipboardEx()Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    new-instance p0, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;

    invoke-direct {p0, p1}, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;->isShowing()Z

    move-result p0
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v0
.end method

.method public unregisterClipboardEventListener()V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;

    invoke-direct {v0, p0}, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/ClipboardUtil;->a()Lcom/sec/sbrowser/spl/wrapper/SemClipboardEventListener;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;->unregisterClipboardEventListener(Lcom/sec/sbrowser/spl/wrapper/SemClipboardEventListener;)V
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "ClipboardUtil"

    const-string v0, "Unregistering Clipboard Event Listener unsuccessful"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
