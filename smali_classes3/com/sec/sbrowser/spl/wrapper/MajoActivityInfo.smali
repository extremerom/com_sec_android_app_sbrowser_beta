.class public Lcom/sec/sbrowser/spl/wrapper/MajoActivityInfo;
.super Lcom/sec/sbrowser/spl/util/ReflectBase;
.source "SourceFile"


# static fields
.field private static sGetPipSupport:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "android.content.pm.ActivityInfo"

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/ReflectBase;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    const-string v3, "supportsPictureInPicture"

    invoke-direct {v1, v0, v3, v2}, Lcom/sec/sbrowser/spl/util/ReflectMethod$B;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/MajoActivityInfo;->sGetPipSupport:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/sbrowser/spl/util/ReflectBase;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public static getActivityInfo(Ljava/lang/Object;)Lcom/sec/sbrowser/spl/wrapper/MajoActivityInfo;
    .locals 1

    new-instance v0, Lcom/sec/sbrowser/spl/wrapper/MajoActivityInfo;

    invoke-direct {v0, p0}, Lcom/sec/sbrowser/spl/wrapper/MajoActivityInfo;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public supportsPictureInPicture()Ljava/lang/Boolean;
    .locals 2

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoActivityInfo;->sGetPipSupport:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$B;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
