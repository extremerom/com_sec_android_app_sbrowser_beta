.class public Lcom/sec/sbrowser/spl/wrapper/SemDesktopModeState;
.super Lcom/sec/sbrowser/spl/util/ReflectBase;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1a
.end annotation


# static fields
.field public static final DISABLED:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field public static final DISABLING:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field public static final DISPLAY_TYPE_DUAL:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field public static final DISPLAY_TYPE_NONE:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field public static final DISPLAY_TYPE_STANDALONE:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field public static final ENABLED:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field public static final ENABLING:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field private static sBaseClass:Ljava/lang/Class;

.field private static sGetDisplayType:Lcom/sec/sbrowser/spl/util/ReflectMethod$I;

.field private static sGetEnabled:Lcom/sec/sbrowser/spl/util/ReflectMethod$I;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "com.samsung.android.desktopmode.SemDesktopModeState"

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/ReflectBase;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/SemDesktopModeState;->sBaseClass:Ljava/lang/Class;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectMethod$I;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    const-string v4, "getEnabled"

    invoke-direct {v1, v0, v4, v3}, Lcom/sec/sbrowser/spl/util/ReflectMethod$I;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/SemDesktopModeState;->sGetEnabled:Lcom/sec/sbrowser/spl/util/ReflectMethod$I;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectMethod$I;

    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/SemDesktopModeState;->sBaseClass:Ljava/lang/Class;

    const-string v3, "getDisplayType"

    new-array v2, v2, [Ljava/lang/Class;

    invoke-direct {v0, v1, v3, v2}, Lcom/sec/sbrowser/spl/util/ReflectMethod$I;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/SemDesktopModeState;->sGetDisplayType:Lcom/sec/sbrowser/spl/util/ReflectMethod$I;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/SemDesktopModeState;->sBaseClass:Ljava/lang/Class;

    const-string v2, "DISABLING"

    invoke-direct {v0, v1, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/SemDesktopModeState;->DISABLING:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/SemDesktopModeState;->sBaseClass:Ljava/lang/Class;

    const-string v2, "DISABLED"

    invoke-direct {v0, v1, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/SemDesktopModeState;->DISABLED:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/SemDesktopModeState;->sBaseClass:Ljava/lang/Class;

    const-string v2, "ENABLING"

    invoke-direct {v0, v1, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/SemDesktopModeState;->ENABLING:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/SemDesktopModeState;->sBaseClass:Ljava/lang/Class;

    const-string v2, "ENABLED"

    invoke-direct {v0, v1, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/SemDesktopModeState;->ENABLED:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/SemDesktopModeState;->sBaseClass:Ljava/lang/Class;

    const-string v2, "DISPLAY_TYPE_NONE"

    invoke-direct {v0, v1, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/SemDesktopModeState;->DISPLAY_TYPE_NONE:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/SemDesktopModeState;->sBaseClass:Ljava/lang/Class;

    const-string v2, "DISPLAY_TYPE_STANDALONE"

    invoke-direct {v0, v1, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/SemDesktopModeState;->DISPLAY_TYPE_STANDALONE:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/SemDesktopModeState;->sBaseClass:Ljava/lang/Class;

    const-string v2, "DISPLAY_TYPE_DUAL"

    invoke-direct {v0, v1, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/SemDesktopModeState;->DISPLAY_TYPE_DUAL:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/sbrowser/spl/util/ReflectBase;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public static exists()Z
    .locals 1

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/SemDesktopModeState;->sBaseClass:Ljava/lang/Class;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public getDisplayType()I
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1b
    .end annotation

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/SemDesktopModeState;->sGetDisplayType:Lcom/sec/sbrowser/spl/util/ReflectMethod$I;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$I;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getEnabled()I
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1b
    .end annotation

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/SemDesktopModeState;->sGetEnabled:Lcom/sec/sbrowser/spl/util/ReflectMethod$I;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$I;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method
