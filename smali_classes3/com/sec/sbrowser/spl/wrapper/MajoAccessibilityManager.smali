.class public Lcom/sec/sbrowser/spl/wrapper/MajoAccessibilityManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sAssistantMenuUpdate:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

.field private static sSemUpdateAssistantMenu:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    const-class v1, Landroid/os/Bundle;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/view/accessibility/AccessibilityManager;

    const-string v4, "semUpdateAssitantMenu"

    invoke-direct {v0, v3, v4, v2}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoAccessibilityManager;->sSemUpdateAssistantMenu:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    const-string v2, "assistantMenuUpdate"

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v3, v2, v1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoAccessibilityManager;->sAssistantMenuUpdate:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    return-void
.end method

.method public static assistantMenuUpdate(Landroid/view/accessibility/AccessibilityManager;Landroid/os/Bundle;)V
    .locals 1

    const v0, 0xf424e

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/PlatformInfo;->isInGroup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoAccessibilityManager;->sSemUpdateAssistantMenu:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;->invokeWithBaseInstance(Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoAccessibilityManager;->sAssistantMenuUpdate:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;->invokeWithBaseInstance(Ljava/lang/Object;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static reflectSucceeded(Ljava/lang/String;)Z
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const-string v0, "assistantMenuUpdate"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/MajoAccessibilityManager;->sAssistantMenuUpdate:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_0
    const-string v0, "semUpdateAssitantMenu"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/MajoAccessibilityManager;->sSemUpdateAssistantMenu:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
