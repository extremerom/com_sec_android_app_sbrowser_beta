.class public Lcom/sec/sbrowser/spl/wrapper/MajoSettings$Global;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/sbrowser/spl/wrapper/MajoSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Global"
.end annotation


# static fields
.field public static final FONT_SIZE:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

.field public static final MULTI_WINDOW_MENU_IN_FULL_SCREEN:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

.field public static final NAVIGATIONBAR_CURRENT_COLOR:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

.field public static final SCROLL_FILTER:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const v0, 0xf424e

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/PlatformInfo;->isInGroup(I)Z

    move-result v0

    const-class v1, Landroid/provider/Settings$Global;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    const-string v2, "SEM_FONT_SIZE"

    invoke-direct {v0, v1, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoSettings$Global;->FONT_SIZE:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    const-string v2, "FONT_SIZE"

    invoke-direct {v0, v1, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoSettings$Global;->FONT_SIZE:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    :goto_0
    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    const-string v2, "SEM_NAVIGATIONBAR_CURRENT_COLOR"

    invoke-direct {v0, v1, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoSettings$Global;->NAVIGATIONBAR_CURRENT_COLOR:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    const-string v2, "SEM_SUPPORT_SCROLL_FILTER"

    invoke-direct {v0, v1, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoSettings$Global;->SCROLL_FILTER:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    const-string v2, "SEM_MULTI_WINDOW_MENU_IN_FULL_SCREEN"

    invoke-direct {v0, v1, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoSettings$Global;->MULTI_WINDOW_MENU_IN_FULL_SCREEN:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    return-void
.end method
