.class public abstract Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager$ClipboardEventListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "ClipboardEventListener"
.end annotation


# instance fields
.field private mIClipboardDataPasteEventAdapter:Lcom/sec/sbrowser/spl/wrapper/SdlIClipboardDataPasteEvent;

.field final mProxyInstance:Ljava/lang/Object;

.field final synthetic this$0:Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;


# direct methods
.method public constructor <init>(Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager$ClipboardEventListener;->this$0:Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;->a(Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager$ClipboardEventListener;->mProxyInstance:Ljava/lang/Object;

    return-void

    :cond_0
    invoke-static {p1}, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;->a(Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {p1}, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;->a(Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;)Ljava/lang/Class;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Class;

    move-result-object p1

    invoke-static {v0, p1, p0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager$ClipboardEventListener;->mProxyInstance:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getBaseInstance()Ljava/lang/Object;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager$ClipboardEventListener;->mProxyInstance:Ljava/lang/Object;

    return-object p0
.end method

.method public getIClipboardDataPasteEventAdapter()Lcom/sec/sbrowser/spl/wrapper/SdlIClipboardDataPasteEvent;
    .locals 2

    sget v0, Lcom/sec/sbrowser/spl/util/PlatformInfo;->SPL_VERSION:I

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager$ClipboardEventListener;->mIClipboardDataPasteEventAdapter:Lcom/sec/sbrowser/spl/wrapper/SdlIClipboardDataPasteEvent;

    if-nez v0, :cond_1

    new-instance v0, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager$ClipboardEventListener$1;

    invoke-direct {v0, p0}, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager$ClipboardEventListener$1;-><init>(Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager$ClipboardEventListener;)V

    iput-object v0, p0, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager$ClipboardEventListener;->mIClipboardDataPasteEventAdapter:Lcom/sec/sbrowser/spl/wrapper/SdlIClipboardDataPasteEvent;

    :cond_1
    iget-object p0, p0, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager$ClipboardEventListener;->mIClipboardDataPasteEventAdapter:Lcom/sec/sbrowser/spl/wrapper/SdlIClipboardDataPasteEvent;

    return-object p0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_4

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "onPaste"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    new-instance p1, Lcom/sec/sbrowser/spl/wrapper/SdlClipboardData;

    const/4 p2, 0x0

    aget-object v1, p3, p2

    invoke-direct {p1, v1}, Lcom/sec/sbrowser/spl/wrapper/SdlClipboardData;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/sec/sbrowser/spl/wrapper/SdlClipboardData;->getFomat()I

    move-result p1

    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/ClipboardDefine;->FORMAT_TEXT_ID:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {v1}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne p1, v1, :cond_1

    new-instance p1, Lcom/sec/sbrowser/spl/wrapper/ClipboardDataText;

    aget-object p2, p3, p2

    invoke-direct {p1, p2}, Lcom/sec/sbrowser/spl/wrapper/ClipboardDataText;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager$ClipboardEventListener;->onPaste(Lcom/sec/sbrowser/spl/wrapper/SdlClipboardData;)V

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/ClipboardDefine;->FORMAT_BITMAP_ID:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {v1}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne p1, v1, :cond_2

    new-instance p1, Lcom/sec/sbrowser/spl/wrapper/ClipboardDataBitmap;

    aget-object p2, p3, p2

    invoke-direct {p1, p2}, Lcom/sec/sbrowser/spl/wrapper/ClipboardDataBitmap;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager$ClipboardEventListener;->onPaste(Lcom/sec/sbrowser/spl/wrapper/SdlClipboardData;)V

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/ClipboardDefine;->FORMAT_HTML_FLAGMENT_ID:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {v1}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne p1, v1, :cond_3

    new-instance p1, Lcom/sec/sbrowser/spl/wrapper/ClipboardDataHTMLFragment;

    aget-object p2, p3, p2

    invoke-direct {p1, p2}, Lcom/sec/sbrowser/spl/wrapper/ClipboardDataHTMLFragment;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager$ClipboardEventListener;->onPaste(Lcom/sec/sbrowser/spl/wrapper/SdlClipboardData;)V

    goto :goto_0

    :cond_3
    new-instance p1, Lcom/sec/sbrowser/spl/wrapper/SdlClipboardData;

    aget-object p2, p3, p2

    invoke-direct {p1, p2}, Lcom/sec/sbrowser/spl/wrapper/SdlClipboardData;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager$ClipboardEventListener;->onPaste(Lcom/sec/sbrowser/spl/wrapper/SdlClipboardData;)V

    :cond_4
    :goto_0
    return-object v0
.end method

.method public abstract onPaste(Lcom/sec/sbrowser/spl/wrapper/SdlClipboardData;)V
.end method
