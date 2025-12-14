.class public Lcom/sec/sbrowser/spl/wrapper/MajoSeekBar;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sSemSetFluidEnabled:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

.field private static sSemSetMode:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

.field private static sSemSetOverlapPointForDualColor:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

.field private static sSetFluidEnabled:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

.field private static sSetMode:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

.field private static sSetOverlapPointForDualColor:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

.field private static sSetProgressTintList:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

.field private static sSetThumbTintList:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/widget/SeekBar;

    const-string v4, "setOverlapPointForDualColor"

    invoke-direct {v0, v3, v4, v2}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoSeekBar;->sSetOverlapPointForDualColor:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    const-string v2, "semSetOverlapPointForDualColor"

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v4

    invoke-direct {v0, v3, v2, v4}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoSeekBar;->sSemSetOverlapPointForDualColor:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    const-string v2, "setMode"

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v4

    invoke-direct {v0, v3, v2, v4}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoSeekBar;->sSetMode:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    const-string v2, "semSetMode"

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v3, v2, v1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoSeekBar;->sSemSetMode:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    const-class v1, Landroid/content/res/ColorStateList;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v2

    const-string v4, "setThumbTintList"

    invoke-direct {v0, v3, v4, v2}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoSeekBar;->sSetThumbTintList:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    const-string v2, "setProgressTintList"

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v3, v2, v1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoSeekBar;->sSetProgressTintList:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v2

    const-string v4, "setFluidEnabled"

    invoke-direct {v0, v3, v4, v2}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoSeekBar;->sSetFluidEnabled:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    const-string v2, "semSetFluidEnabled"

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v3, v2, v1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoSeekBar;->sSemSetFluidEnabled:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    return-void
.end method

.method public static getCurrentMode(Landroid/widget/SeekBar;)I
    .locals 2
    .annotation build Lcom/sec/sbrowser/spl/test/VisibleForTesting;
    .end annotation

    const-class v0, Landroid/widget/ProgressBar;

    const-string v1, "mCurrentMode"

    invoke-static {p0, v0, v1}, Lcom/sec/sbrowser/spl/util/ReflectField;->getPrivateValue(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static getOverlapPoint(Landroid/widget/SeekBar;)I
    .locals 2
    .annotation build Lcom/sec/sbrowser/spl/test/VisibleForTesting;
    .end annotation

    const-class v0, Landroid/widget/AbsSeekBar;

    const-string v1, "mOverlapPoint"

    invoke-static {p0, v0, v1}, Lcom/sec/sbrowser/spl/util/ReflectField;->getPrivateValue(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static isFluidEnabled(Landroid/widget/SeekBar;)Z
    .locals 5
    .annotation build Lcom/sec/sbrowser/spl/test/VisibleForTesting;
    .end annotation

    const v0, 0xf424e

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/PlatformInfo;->isInGroup(I)Z

    move-result v0

    const-class v1, Landroid/widget/SeekBar;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    const-string v3, "semIsFluidEnabled"

    new-array v4, v2, [Ljava/lang/Class;

    invoke-direct {v0, v1, v3, v4}, Lcom/sec/sbrowser/spl/util/ReflectMethod$B;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    const-string v3, "isFluidEnabled"

    new-array v4, v2, [Ljava/lang/Class;

    invoke-direct {v0, v1, v3, v4}, Lcom/sec/sbrowser/spl/util/ReflectMethod$B;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    :goto_0
    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$B;->invokeWithBaseInstance(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static reflectSucceeded(Ljava/lang/String;)Z
    .locals 1
    .annotation build Lcom/sec/sbrowser/spl/test/VisibleForTesting;
    .end annotation

    const-string v0, "setOverlapPointForDualColor"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/MajoSeekBar;->sSetOverlapPointForDualColor:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_0
    const-string v0, "semSetOverlapPointForDualColor"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/MajoSeekBar;->sSemSetOverlapPointForDualColor:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_1
    const-string v0, "setMode"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/MajoSeekBar;->sSetMode:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_2
    const-string v0, "semSetMode"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/MajoSeekBar;->sSemSetMode:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_3
    const-string v0, "setThumbTintList"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/MajoSeekBar;->sSetThumbTintList:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_4
    const-string v0, "setProgressTintList"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/MajoSeekBar;->sSetProgressTintList:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_5
    const-string v0, "setFluidEnabled"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/MajoSeekBar;->sSetFluidEnabled:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_6
    const-string v0, "semSetFluidEnabled"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/MajoSeekBar;->sSemSetFluidEnabled:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public static setFluidEnabled(Landroid/widget/SeekBar;Z)V
    .locals 1

    const v0, 0xf424e

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/PlatformInfo;->isInGroup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoSeekBar;->sSemSetFluidEnabled:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;->invokeWithBaseInstance(Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoSeekBar;->sSetFluidEnabled:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;->invokeWithBaseInstance(Ljava/lang/Object;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static setMode(Landroid/widget/SeekBar;I)V
    .locals 1

    const v0, 0xf424e

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/PlatformInfo;->isInGroup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoSeekBar;->sSemSetMode:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;->invokeWithBaseInstance(Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoSeekBar;->sSetMode:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;->invokeWithBaseInstance(Ljava/lang/Object;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static setOverlapPointForDualColor(Landroid/widget/SeekBar;I)V
    .locals 1

    const v0, 0xf424e

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/PlatformInfo;->isInGroup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoSeekBar;->sSemSetOverlapPointForDualColor:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;->invokeWithBaseInstance(Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoSeekBar;->sSetOverlapPointForDualColor:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;->invokeWithBaseInstance(Ljava/lang/Object;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static setProgressTintList(Landroid/widget/SeekBar;Landroid/content/res/ColorStateList;)V
    .locals 1

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoSeekBar;->sSetProgressTintList:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;->invokeWithBaseInstance(Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public static setThumbTintList(Landroid/widget/SeekBar;Landroid/content/res/ColorStateList;)V
    .locals 1

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoSeekBar;->sSetThumbTintList:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;->invokeWithBaseInstance(Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method
