.class Lcom/sec/terrace/content/browser/input/TinThreadedInputConnection;
.super Lorg/chromium/content/browser/input/ThreadedInputConnection;
.source "SourceFile"


# static fields
.field private static sZawgyiCharacterMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Lorg/chromium/content/browser/input/ImeAdapterImpl;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/chromium/content/browser/input/ThreadedInputConnection;-><init>(Landroid/view/View;Lorg/chromium/content/browser/input/ImeAdapterImpl;Landroid/os/Handler;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ZG"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/sec/terrace/content/browser/input/TinThreadedInputConnection;->sZawgyiCharacterMap:Ljava/util/HashMap;

    if-nez p0, :cond_0

    invoke-static {}, Lcom/sec/terrace/content/browser/input/TinThreadedInputConnection;->createZawgyiHashMap()V

    :cond_0
    return-void
.end method

.method public static synthetic access$000(Lcom/sec/terrace/content/browser/input/TinThreadedInputConnection;)Lorg/chromium/content/browser/input/ImeAdapterImpl;
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapterImpl;

    return-object p0
.end method

.method private convertToOriginalUnicodeValues(Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/terrace/content/browser/input/TinThreadedInputConnection;->isBetweenZawgyiRange(I)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/sec/terrace/content/browser/input/TinThreadedInputConnection;->sZawgyiCharacterMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-char v1, v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static createZawgyiHashMap()V
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/terrace/content/browser/input/TinThreadedInputConnection;->sZawgyiCharacterMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xa0

    if-ge v0, v1, :cond_0

    sget-object v1, Lcom/sec/terrace/content/browser/input/TinThreadedInputConnection;->sZawgyiCharacterMap:Ljava/util/HashMap;

    const v2, 0xf100

    add-int/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    add-int/lit16 v3, v0, 0x1000

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private isBetweenZawgyiRange(I)Z
    .locals 0

    const p0, 0xf100

    if-lt p1, p0, :cond_0

    const p0, 0xf19f

    if-gt p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public getTextAfterCursor(II)Ljava/lang/CharSequence;
    .locals 2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->requestAndWaitForTextInputState()Lorg/chromium/content/browser/input/TextInputState;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Lorg/chromium/content/browser/input/TextInputState;->getTextAfterSelection(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-direct {p0, v1}, Lcom/sec/terrace/content/browser/input/TinThreadedInputConnection;->convertToOriginalUnicodeValues(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-super {p0, p1, p2}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getTextBeforeCursor(II)Ljava/lang/CharSequence;
    .locals 2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->requestAndWaitForTextInputState()Lorg/chromium/content/browser/input/TextInputState;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Lorg/chromium/content/browser/input/TextInputState;->getTextBeforeSelection(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-direct {p0, v1}, Lcom/sec/terrace/content/browser/input/TinThreadedInputConnection;->convertToOriginalUnicodeValues(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-super {p0, p1, p2}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    new-instance v0, Lcom/sec/terrace/content/browser/input/TinThreadedInputConnection$1;

    invoke-direct {v0, p0, p1}, Lcom/sec/terrace/content/browser/input/TinThreadedInputConnection$1;-><init>(Lcom/sec/terrace/content/browser/input/TinThreadedInputConnection;Landroid/view/KeyEvent;)V

    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    invoke-super {p0, p1}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method
