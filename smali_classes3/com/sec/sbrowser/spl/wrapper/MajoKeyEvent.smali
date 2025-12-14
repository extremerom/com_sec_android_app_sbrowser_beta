.class public Lcom/sec/sbrowser/spl/wrapper/MajoKeyEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final KEYCODE_APPLICATION:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field public static final KEYCODE_APPSELECT:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field public static final KEYCODE_CLIPBOARD:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field public static final KEYCODE_EMAIL:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field public static final KEYCODE_QPANEL_ON_OFF:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field public static final KEYCODE_SIP_ON_OFF:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field public static final KEYCODE_USER:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field public static final KEYCODE_VOICESEARCH:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const v0, 0xf424e

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/PlatformInfo;->isInGroup(I)Z

    move-result v0

    const-class v1, Landroid/view/KeyEvent;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v2, "SEM_KEYCODE_APPLICATION"

    invoke-direct {v0, v1, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoKeyEvent;->KEYCODE_APPLICATION:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v2, "SEM_KEYCODE_QPANEL_ON_OFF"

    invoke-direct {v0, v1, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoKeyEvent;->KEYCODE_QPANEL_ON_OFF:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v2, "SEM_KEYCODE_SIP_ON_OFF"

    invoke-direct {v0, v1, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoKeyEvent;->KEYCODE_SIP_ON_OFF:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v2, "SEM_KEYCODE_VOICE_SEARCH"

    invoke-direct {v0, v1, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoKeyEvent;->KEYCODE_VOICESEARCH:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v2, "SEM_KEYCODE_EMAIL"

    invoke-direct {v0, v1, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoKeyEvent;->KEYCODE_EMAIL:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v2, "SEM_KEYCODE_CLIPBOARD"

    invoke-direct {v0, v1, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoKeyEvent;->KEYCODE_CLIPBOARD:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v2, "SEM_KEYCODE_USER"

    invoke-direct {v0, v1, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoKeyEvent;->KEYCODE_USER:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v2, "KEYCODE_APPLICATION"

    invoke-direct {v0, v1, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoKeyEvent;->KEYCODE_APPLICATION:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v2, "KEYCODE_QPANEL_ON_OFF"

    invoke-direct {v0, v1, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoKeyEvent;->KEYCODE_QPANEL_ON_OFF:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v2, "KEYCODE_SIP_ON_OFF"

    invoke-direct {v0, v1, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoKeyEvent;->KEYCODE_SIP_ON_OFF:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v2, "KEYCODE_VOICESEARCH"

    invoke-direct {v0, v1, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoKeyEvent;->KEYCODE_VOICESEARCH:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v2, "KEYCODE_EMAIL"

    invoke-direct {v0, v1, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoKeyEvent;->KEYCODE_EMAIL:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v2, "KEYCODE_CLIPBOARD"

    invoke-direct {v0, v1, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoKeyEvent;->KEYCODE_CLIPBOARD:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v2, "KEYCODE_USER"

    invoke-direct {v0, v1, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoKeyEvent;->KEYCODE_USER:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    :goto_0
    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v2, "KEYCODE_APPSELECT"

    invoke-direct {v0, v1, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoKeyEvent;->KEYCODE_APPSELECT:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    return-void
.end method
