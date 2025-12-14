.class public Lcom/sec/sbrowser/spl/wrapper/MajoContext;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CLIPBOARDEX_SERVICE:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

.field public static final DESKTOP_SERVICE:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

.field public static final FINGERPRINT_SERVICE:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

.field public static final PERSONA_SERVICE:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

.field public static final SEM_DISPLAY_SOLUTION_SERVICE:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

.field public static final SEM_EVENT_DELEGATION_SERVICE:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

.field public static final SEM_STATUS_BAR_SERVICE:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const v0, 0xf424e

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/PlatformInfo;->isInGroup(I)Z

    move-result v0

    const-class v1, Landroid/content/Context;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    const-string v2, "SEM_CLIPBOARD_SERVICE"

    invoke-direct {v0, v1, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoContext;->CLIPBOARDEX_SERVICE:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    const-string v2, "SEM_PERSONA_SERVICE"

    invoke-direct {v0, v1, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoContext;->PERSONA_SERVICE:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    const-string v2, "SEM_DESKTOP_MODE_SERVICE"

    invoke-direct {v0, v1, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoContext;->DESKTOP_SERVICE:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    const-string v2, "CLIPBOARDEX_SERVICE"

    invoke-direct {v0, v1, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoContext;->CLIPBOARDEX_SERVICE:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    const-string v2, "PERSONA_SERVICE"

    invoke-direct {v0, v1, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoContext;->PERSONA_SERVICE:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    const-string v2, "DESKTOP_SERVICE"

    invoke-direct {v0, v1, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoContext;->DESKTOP_SERVICE:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    :goto_0
    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    const-string v2, "SEM_DISPLAY_SOLUTION_SERVICE"

    invoke-direct {v0, v1, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoContext;->SEM_DISPLAY_SOLUTION_SERVICE:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    const-string v2, "FINGERPRINT_SERVICE"

    invoke-direct {v0, v1, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoContext;->FINGERPRINT_SERVICE:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    const-string v2, "SEM_STATUS_BAR_SERVICE"

    invoke-direct {v0, v1, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoContext;->SEM_STATUS_BAR_SERVICE:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    const-string v2, "SEM_EVENT_DELEGATION_SERVICE"

    invoke-direct {v0, v1, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoContext;->SEM_EVENT_DELEGATION_SERVICE:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    return-void
.end method
