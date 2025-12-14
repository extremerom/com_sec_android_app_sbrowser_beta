.class public Lcom/sec/sbrowser/spl/wrapper/MajoMediaPlayer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final MEDIA_INFO_NO_VIDEO:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field public static final MEDIA_INFO_UNSUPPORTED_VIDEO:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const v0, 0xf424e

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/PlatformInfo;->isInGroup(I)Z

    move-result v0

    const-class v1, Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v2, "SEM_MEDIA_INFO_UNSUPPORTED_VIDEO"

    invoke-direct {v0, v1, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoMediaPlayer;->MEDIA_INFO_UNSUPPORTED_VIDEO:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v2, "SEM_MEDIA_INFO_NO_VIDEO"

    invoke-direct {v0, v1, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoMediaPlayer;->MEDIA_INFO_NO_VIDEO:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v2, "MEDIA_INFO_UNSUPPORTED_VIDEO"

    invoke-direct {v0, v1, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoMediaPlayer;->MEDIA_INFO_UNSUPPORTED_VIDEO:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v2, "MEDIA_INFO_NO_VIDEO"

    invoke-direct {v0, v1, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoMediaPlayer;->MEDIA_INFO_NO_VIDEO:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    :goto_0
    return-void
.end method
