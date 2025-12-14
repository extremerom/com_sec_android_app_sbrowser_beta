.class public Lcom/sec/sbrowser/spl/wrapper/MajoSettings$System;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/sbrowser/spl/wrapper/MajoSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "System"
.end annotation


# static fields
.field public static final ACCESS_CONTROL:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

.field public static final ASSISTANT_MENU:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

.field public static final BLUE_LIGHT_FILTER:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

.field public static final BLUE_LIGHT_FILTER_NIGHT_DIM:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

.field public static final EASY_MODE_INTERNET:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

.field public static final EASY_MODE_SWITCH:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

.field public static final EMERGENCY_MODE:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

.field public static final FINGER_AIR_VIEW_INFORMATION_PREVIEW:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

.field public static final PEN_HOVERING:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

.field public static final PEN_HOVERING_INFORMATION_PREVIEW:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

.field public static final PEN_HOVERING_LIST_SCROLL:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

.field public static final ULTRA_POWERSAVING_MODE:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

.field private static sSemGetIntForUser:Lcom/sec/sbrowser/spl/util/ReflectMethod$I;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const v0, 0xf424e

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/PlatformInfo;->isInGroup(I)Z

    move-result v0

    const-string v1, "SEM_ULTRA_POWERSAVING_MODE"

    const-string v2, "SEM_EMERGENCY_MODE"

    const-class v3, Landroid/provider/Settings$System;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    const-string v4, "SEM_ASSISTANT_MENU"

    invoke-direct {v0, v3, v4}, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoSettings$System;->ASSISTANT_MENU:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    const-string v4, "SEM_EASY_MODE_INTERNET"

    invoke-direct {v0, v3, v4}, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoSettings$System;->EASY_MODE_INTERNET:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    const-string v4, "SEM_EASY_MODE_SWITCH"

    invoke-direct {v0, v3, v4}, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoSettings$System;->EASY_MODE_SWITCH:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    invoke-direct {v0, v3, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoSettings$System;->EMERGENCY_MODE:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    const-string v2, "SEM_PEN_HOVERING"

    invoke-direct {v0, v3, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoSettings$System;->PEN_HOVERING:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    const-string v2, "SEM_PEN_HOVERING_INFORMATION_PREVIEW"

    invoke-direct {v0, v3, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoSettings$System;->PEN_HOVERING_INFORMATION_PREVIEW:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    const-string v2, "SEM_PEN_HOVERING_LIST_SCROLL"

    invoke-direct {v0, v3, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoSettings$System;->PEN_HOVERING_LIST_SCROLL:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    const-string v2, "SEM_ACCESS_CONTROL_ENABLED"

    invoke-direct {v0, v3, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoSettings$System;->ACCESS_CONTROL:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    const v0, 0xf425a

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/PlatformInfo;->isInGroup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    const-string v1, "SEM_MINIMAL_BATTERY_USE"

    invoke-direct {v0, v3, v1}, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoSettings$System;->ULTRA_POWERSAVING_MODE:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    invoke-direct {v0, v3, v1}, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoSettings$System;->ULTRA_POWERSAVING_MODE:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    const-string v4, "ASSISTANT_MENU"

    invoke-direct {v0, v3, v4}, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoSettings$System;->ASSISTANT_MENU:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    const-string v4, "EASY_MODE_INTERNET"

    invoke-direct {v0, v3, v4}, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoSettings$System;->EASY_MODE_INTERNET:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    const-string v4, "EASY_MODE_SWITCH"

    invoke-direct {v0, v3, v4}, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoSettings$System;->EASY_MODE_SWITCH:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    const-string v4, "ACCESS_CONTROL_ENABLED"

    invoke-direct {v0, v3, v4}, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoSettings$System;->ACCESS_CONTROL:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    const v0, 0xf424d

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/PlatformInfo;->isInGroup(I)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    invoke-direct {v0, v3, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoSettings$System;->EMERGENCY_MODE:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    invoke-direct {v0, v3, v1}, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoSettings$System;->ULTRA_POWERSAVING_MODE:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    const-string v1, "EMERGENCY_MODE"

    invoke-direct {v0, v3, v1}, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoSettings$System;->EMERGENCY_MODE:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    const-string v1, "ULTRA_POWERSAVING_MODE"

    invoke-direct {v0, v3, v1}, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoSettings$System;->ULTRA_POWERSAVING_MODE:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    :goto_0
    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    const-string v1, "PEN_HOVERING"

    invoke-direct {v0, v3, v1}, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoSettings$System;->PEN_HOVERING:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    const-string v1, "PEN_HOVERING_INFORMATION_PREVIEW"

    invoke-direct {v0, v3, v1}, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoSettings$System;->PEN_HOVERING_INFORMATION_PREVIEW:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    const-string v1, "PEN_HOVERING_LIST_SCROLL"

    invoke-direct {v0, v3, v1}, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoSettings$System;->PEN_HOVERING_LIST_SCROLL:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    :goto_1
    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    const-string v1, "FINGER_AIR_VIEW_INFORMATION_PREVIEW"

    invoke-direct {v0, v3, v1}, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoSettings$System;->FINGER_AIR_VIEW_INFORMATION_PREVIEW:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    const-string v1, "BLUE_LIGHT_FILTER_NIGHT_DIM"

    invoke-direct {v0, v3, v1}, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoSettings$System;->BLUE_LIGHT_FILTER_NIGHT_DIM:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    const-string v1, "BLUE_LIGHT_FILTER"

    invoke-direct {v0, v3, v1}, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoSettings$System;->BLUE_LIGHT_FILTER:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectMethod$I;

    const-class v1, Ljava/lang/String;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v4, Landroid/content/ContentResolver;

    filled-new-array {v4, v1, v2, v2}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "semGetIntForUser"

    invoke-direct {v0, v3, v2, v1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$I;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoSettings$System;->sSemGetIntForUser:Lcom/sec/sbrowser/spl/util/ReflectMethod$I;

    return-void
.end method

.method public static reflectSucceeded(Ljava/lang/String;)Z
    .locals 1
    .annotation build Lcom/sec/sbrowser/spl/test/VisibleForTesting;
    .end annotation

    const-string v0, "semGetIntForUser"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/MajoSettings$System;->sSemGetIntForUser:Lcom/sec/sbrowser/spl/util/ReflectMethod$I;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static semGetIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I
    .locals 2

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoSettings$System;->sSemGetIntForUser:Lcom/sec/sbrowser/spl/util/ReflectMethod$I;

    sget-object v1, Lcom/sec/sbrowser/spl/util/ReflectBase;->STATIC:Lcom/sec/sbrowser/spl/util/ReflectBase;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p0, p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod$I;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method
