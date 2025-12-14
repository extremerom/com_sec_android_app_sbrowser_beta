.class Lcom/sec/sbrowser/spl/wrapper/ClipboardDefine;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final FORMAT_BITMAP_ID:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field public static final FORMAT_HTML_FLAGMENT_ID:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field public static final FORMAT_NONE_ID:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field public static final FORMAT_TEXT_ID:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const v0, 0xf424e

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/PlatformInfo;->isInGroup(I)Z

    move-result v0

    const-string v1, "HTML"

    const-string v2, "TEXT"

    const-string v3, "NONE"

    if-eqz v0, :cond_0

    const-string v0, "com.samsung.android.content.clipboard.SemClipboardManager$Type"

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/ReflectBase;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-instance v4, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-direct {v4, v0, v3}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v4, Lcom/sec/sbrowser/spl/wrapper/ClipboardDefine;->FORMAT_NONE_ID:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v3, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-direct {v3, v0, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v3, Lcom/sec/sbrowser/spl/wrapper/ClipboardDefine;->FORMAT_TEXT_ID:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v2, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v3, "IMAGE"

    invoke-direct {v2, v0, v3}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v2, Lcom/sec/sbrowser/spl/wrapper/ClipboardDefine;->FORMAT_BITMAP_ID:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v2, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-direct {v2, v0, v1}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v2, Lcom/sec/sbrowser/spl/wrapper/ClipboardDefine;->FORMAT_HTML_FLAGMENT_ID:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    goto/16 :goto_0

    :cond_0
    sget v0, Lcom/sec/sbrowser/spl/util/PlatformInfo;->SPL_VERSION:I

    const/16 v4, 0x836

    const-string v5, "FORMAT_HTML_FLAGMENT_ID"

    const-string v6, "FORMAT_BITMAP_ID"

    const-string v7, "FORMAT_TEXT_ID"

    const-string v8, "FORMAT_NONE_ID"

    if-gt v0, v4, :cond_1

    const-string v0, "android.sec.clipboard.data.ClipboardDefine"

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/ReflectBase;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-direct {v1, v0, v8}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/ClipboardDefine;->FORMAT_NONE_ID:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-direct {v1, v0, v7}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/ClipboardDefine;->FORMAT_TEXT_ID:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-direct {v1, v0, v6}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/ClipboardDefine;->FORMAT_BITMAP_ID:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-direct {v1, v0, v5}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/ClipboardDefine;->FORMAT_HTML_FLAGMENT_ID:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    goto :goto_0

    :cond_1
    const/16 v4, 0x8fc

    if-ge v0, v4, :cond_2

    const-string v0, "android.sec.clipboard.ClipboardExManager"

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/ReflectBase;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-direct {v1, v0, v8}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/ClipboardDefine;->FORMAT_NONE_ID:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-direct {v1, v0, v7}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/ClipboardDefine;->FORMAT_TEXT_ID:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-direct {v1, v0, v6}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/ClipboardDefine;->FORMAT_BITMAP_ID:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-direct {v1, v0, v5}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/ClipboardDefine;->FORMAT_HTML_FLAGMENT_ID:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    goto :goto_0

    :cond_2
    const-string v0, "android.sec.clipboard.ClipboardExManager$Format"

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/ReflectBase;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-instance v4, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-direct {v4, v0, v3}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v4, Lcom/sec/sbrowser/spl/wrapper/ClipboardDefine;->FORMAT_NONE_ID:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v3, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-direct {v3, v0, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v3, Lcom/sec/sbrowser/spl/wrapper/ClipboardDefine;->FORMAT_TEXT_ID:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v2, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v3, "BITMAP"

    invoke-direct {v2, v0, v3}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v2, Lcom/sec/sbrowser/spl/wrapper/ClipboardDefine;->FORMAT_BITMAP_ID:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v2, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-direct {v2, v0, v1}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v2, Lcom/sec/sbrowser/spl/wrapper/ClipboardDefine;->FORMAT_HTML_FLAGMENT_ID:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    :goto_0
    return-void
.end method
