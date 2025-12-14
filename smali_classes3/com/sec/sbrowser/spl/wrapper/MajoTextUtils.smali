.class public Lcom/sec/sbrowser/spl/wrapper/MajoTextUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sGetPrefixCharForIndian:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

.field private static sSemGetPrefixCharForSpan:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    const-class v1, Landroid/text/TextPaint;

    const-class v2, Ljava/lang/CharSequence;

    const-class v3, [C

    filled-new-array {v1, v2, v3}, [Ljava/lang/Class;

    move-result-object v4

    const-class v5, Landroid/text/TextUtils;

    const-string v6, "semGetPrefixCharForSpan"

    invoke-direct {v0, v5, v6, v4}, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoTextUtils;->sSemGetPrefixCharForSpan:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    const-string v4, "getPrefixCharForIndian"

    filled-new-array {v1, v2, v3}, [Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v5, v4, v1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoTextUtils;->sGetPrefixCharForIndian:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    return-void
.end method

.method public static getPrefixCharForIndian(Landroid/text/TextPaint;Ljava/lang/CharSequence;[C)[C
    .locals 2

    const v0, 0xf424e

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/PlatformInfo;->isInGroup(I)Z

    move-result v0

    if-nez v0, :cond_1

    const v0, 0xf424d

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/PlatformInfo;->isInGroup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoTextUtils;->sGetPrefixCharForIndian:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    sget-object v1, Lcom/sec/sbrowser/spl/util/ReflectBase;->STATIC:Lcom/sec/sbrowser/spl/util/ReflectBase;

    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [C

    return-object p0

    :cond_1
    :goto_0
    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoTextUtils;->sSemGetPrefixCharForSpan:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    sget-object v1, Lcom/sec/sbrowser/spl/util/ReflectBase;->STATIC:Lcom/sec/sbrowser/spl/util/ReflectBase;

    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [C

    return-object p0
.end method

.method public static reflectSucceeded(Ljava/lang/String;)Z
    .locals 1
    .annotation build Lcom/sec/sbrowser/spl/test/VisibleForTesting;
    .end annotation

    const-string v0, "getPrefixCharForIndian"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/MajoTextUtils;->sGetPrefixCharForIndian:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_0
    const-string v0, "semGetPrefixCharForSpan"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/MajoTextUtils;->sSemGetPrefixCharForSpan:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
