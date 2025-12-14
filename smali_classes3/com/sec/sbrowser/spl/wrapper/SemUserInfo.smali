.class public Lcom/sec/sbrowser/spl/wrapper/SemUserInfo;
.super Lcom/sec/sbrowser/spl/util/ReflectBase;
.source "SourceFile"


# static fields
.field public static final FLAG_DIGITAL_LEGACY_MODE:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field private static sHasFlags:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "android.content.pm.SemUserInfo"

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/ReflectBase;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    const-string v3, "hasFlags"

    invoke-direct {v1, v0, v3, v2}, Lcom/sec/sbrowser/spl/util/ReflectMethod$B;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/SemUserInfo;->sHasFlags:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v2, "FLAG_DIGITAL_LEGACY_MODE"

    invoke-direct {v1, v0, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/SemUserInfo;->FLAG_DIGITAL_LEGACY_MODE:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/sbrowser/spl/util/ReflectBase;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public static reflectSucceeded(Ljava/lang/String;)Z
    .locals 1
    .annotation build Lcom/sec/sbrowser/spl/test/VisibleForTesting;
    .end annotation

    const-string v0, "hasFlags"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/SemUserInfo;->sHasFlags:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public hasFlags(I)Z
    .locals 1

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/SemUserInfo;->sHasFlags:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$B;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method
