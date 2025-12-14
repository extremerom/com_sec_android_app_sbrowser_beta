.class public Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager$Format;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Format"
.end annotation


# static fields
.field public static final BITMAP:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field public static final HTML:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field public static final NONE:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field public static final TEXT:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/ClipboardDefine;->FORMAT_TEXT_ID:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager$Format;->TEXT:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/ClipboardDefine;->FORMAT_NONE_ID:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager$Format;->NONE:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/ClipboardDefine;->FORMAT_BITMAP_ID:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager$Format;->BITMAP:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/ClipboardDefine;->FORMAT_HTML_FLAGMENT_ID:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager$Format;->HTML:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    return-void
.end method
