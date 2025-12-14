.class public Lcom/sec/sbrowser/spl/wrapper/MajoScreenSharingField;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final SCREEN_SHARING_NOT_SUPPORT:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field public static final SCREEN_SHARING_STATE_PAUSED:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field public static final SCREEN_SHARING_STATE_RESUMED:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field public static final SCREEN_SHARING_SUPPORT_ALL:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field public static final SCREEN_SHARING_SUPPORT_MIRRORING:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const v0, 0xf424e

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/PlatformInfo;->isInGroup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.hardware.display.SemScreenSharingConstants"

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/ReflectBase;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v2, "FEATURE_ALL"

    invoke-direct {v1, v0, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/MajoScreenSharingField;->SCREEN_SHARING_SUPPORT_ALL:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v2, "FEATURE_MIRRORING"

    invoke-direct {v1, v0, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/MajoScreenSharingField;->SCREEN_SHARING_SUPPORT_MIRRORING:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v2, "FEATURE_NOT_SUPPORT"

    invoke-direct {v1, v0, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/MajoScreenSharingField;->SCREEN_SHARING_NOT_SUPPORT:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoWifiDisplayStatus;->SCREEN_SHARING_STATE_RESUMED:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoScreenSharingField;->SCREEN_SHARING_STATE_RESUMED:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoWifiDisplayStatus;->SCREEN_SHARING_STATE_PAUSED:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoScreenSharingField;->SCREEN_SHARING_STATE_PAUSED:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    goto :goto_0

    :cond_0
    const-string v0, "android.hardware.display.ScreenSharingField"

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/ReflectBase;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v2, "SCREEN_SHARING_SUPPORT_ALL"

    invoke-direct {v1, v0, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/MajoScreenSharingField;->SCREEN_SHARING_SUPPORT_ALL:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v2, "SCREEN_SHARING_SUPPORT_MIRRORING"

    invoke-direct {v1, v0, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/MajoScreenSharingField;->SCREEN_SHARING_SUPPORT_MIRRORING:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v2, "SCREEN_SHARING_NOT_SUPPORT"

    invoke-direct {v1, v0, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/MajoScreenSharingField;->SCREEN_SHARING_NOT_SUPPORT:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v2, "SCREEN_SHARING_STATE_RESUMED"

    invoke-direct {v1, v0, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/MajoScreenSharingField;->SCREEN_SHARING_STATE_RESUMED:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v2, "SCREEN_SHARING_STATE_PAUSED"

    invoke-direct {v1, v0, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/MajoScreenSharingField;->SCREEN_SHARING_STATE_PAUSED:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    :goto_0
    return-void
.end method
