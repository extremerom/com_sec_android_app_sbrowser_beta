.class public Lcom/sec/sbrowser/spl/wrapper/MajoTypeface;
.super Lcom/sec/sbrowser/spl/util/ReflectBase;
.source "SourceFile"


# static fields
.field private static sSemGetFontPathOfCurrentFontStyle:Lcom/sec/sbrowser/spl/util/ReflectMethod$S;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectMethod$S;

    const-class v1, Landroid/content/Context;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v1, v2}, [Ljava/lang/Class;

    move-result-object v1

    const-class v2, Landroid/graphics/Typeface;

    const-string v3, "semGetFontPathOfCurrentFontStyle"

    invoke-direct {v0, v2, v3, v1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$S;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoTypeface;->sSemGetFontPathOfCurrentFontStyle:Lcom/sec/sbrowser/spl/util/ReflectMethod$S;

    return-void
.end method

.method public static reflectSucceeded(Ljava/lang/String;)Z
    .locals 1
    .annotation build Lcom/sec/sbrowser/spl/test/VisibleForTesting;
    .end annotation

    const-string v0, "semGetFontPathOfCurrentFontStyle"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/MajoTypeface;->sSemGetFontPathOfCurrentFontStyle:Lcom/sec/sbrowser/spl/util/ReflectMethod$S;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static semGetFontPathOfCurrentFontStyle(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoTypeface;->sSemGetFontPathOfCurrentFontStyle:Lcom/sec/sbrowser/spl/util/ReflectMethod$S;

    sget-object v1, Lcom/sec/sbrowser/spl/util/ReflectBase;->STATIC:Lcom/sec/sbrowser/spl/util/ReflectBase;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod$S;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
