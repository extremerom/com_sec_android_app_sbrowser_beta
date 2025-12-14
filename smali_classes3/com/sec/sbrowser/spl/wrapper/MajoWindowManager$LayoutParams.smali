.class public Lcom/sec/sbrowser/spl/wrapper/MajoWindowManager$LayoutParams;
.super Lcom/sec/sbrowser/spl/util/ReflectBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/sbrowser/spl/wrapper/MajoWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# static fields
.field public static final SAMSUNG_FLAG_ENABLE_STATUSBAR_OPEN_BY_NOTIFICATION:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field public static final SAMSUNG_FLAG_OVERRIDE_SYSTEM_UI_POLICY:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field public static final SAMSUNG_FLAG_SOFT_INPUT_ADJUST_RESIZE_FULLSCREEN:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field private static sSamsungFlags:Lcom/sec/sbrowser/spl/util/ReflectField$I;

.field private static sSemAddExtensionFlags:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const v0, 0xf424e

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/PlatformInfo;->isInGroup(I)Z

    move-result v0

    const-string v1, "SAMSUNG_FLAG_ENABLE_STATUSBAR_OPEN_BY_NOTIFICATION"

    const-class v2, Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-direct {v0, v2, v1}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoWindowManager$LayoutParams;->SAMSUNG_FLAG_ENABLE_STATUSBAR_OPEN_BY_NOTIFICATION:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v1, "SEM_EXTENSION_FLAG_OVERRIDE_SYSTEM_UI_POLICY"

    invoke-direct {v0, v2, v1}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoWindowManager$LayoutParams;->SAMSUNG_FLAG_OVERRIDE_SYSTEM_UI_POLICY:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v1, "SEM_EXTENSION_FLAG_RESIZE_FULLSCREEN_WINDOW_ON_SOFT_INPUT"

    invoke-direct {v0, v2, v1}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoWindowManager$LayoutParams;->SAMSUNG_FLAG_SOFT_INPUT_ADJUST_RESIZE_FULLSCREEN:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-direct {v0, v2, v1}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoWindowManager$LayoutParams;->SAMSUNG_FLAG_ENABLE_STATUSBAR_OPEN_BY_NOTIFICATION:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v1, "SAMSUNG_FLAG_OVERRIDE_SYSTEM_UI_POLICY"

    invoke-direct {v0, v2, v1}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoWindowManager$LayoutParams;->SAMSUNG_FLAG_OVERRIDE_SYSTEM_UI_POLICY:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v1, "SAMSUNG_FLAG_SOFT_INPUT_ADJUST_RESIZE_FULLSCREEN"

    invoke-direct {v0, v2, v1}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoWindowManager$LayoutParams;->SAMSUNG_FLAG_SOFT_INPUT_ADJUST_RESIZE_FULLSCREEN:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    :goto_0
    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$I;

    const-string v1, "samsungFlags"

    invoke-direct {v0, v2, v1}, Lcom/sec/sbrowser/spl/util/ReflectField$I;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoWindowManager$LayoutParams;->sSamsungFlags:Lcom/sec/sbrowser/spl/util/ReflectField$I;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v3, "semAddExtensionFlags"

    invoke-direct {v0, v2, v3, v1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoWindowManager$LayoutParams;->sSemAddExtensionFlags:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    return-void
.end method

.method private constructor <init>(Landroid/view/WindowManager$LayoutParams;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/sbrowser/spl/util/ReflectBase;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public static create(Landroid/view/WindowManager$LayoutParams;)Lcom/sec/sbrowser/spl/wrapper/MajoWindowManager$LayoutParams;
    .locals 1

    new-instance v0, Lcom/sec/sbrowser/spl/wrapper/MajoWindowManager$LayoutParams;

    invoke-direct {v0, p0}, Lcom/sec/sbrowser/spl/wrapper/MajoWindowManager$LayoutParams;-><init>(Landroid/view/WindowManager$LayoutParams;)V

    return-object v0
.end method

.method public static reflectSucceeded(Ljava/lang/String;)Z
    .locals 1
    .annotation build Lcom/sec/sbrowser/spl/test/VisibleForTesting;
    .end annotation

    const-string v0, "semAddExtensionFlags"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/MajoWindowManager$LayoutParams;->sSemAddExtensionFlags:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public getBaseInstance()Landroid/view/WindowManager$LayoutParams;
    .locals 0

    iget-object p0, p0, Lcom/sec/sbrowser/spl/util/ReflectBase;->mInstance:Ljava/lang/Object;

    check-cast p0, Landroid/view/WindowManager$LayoutParams;

    return-object p0
.end method

.method public samsungFlags()I
    .locals 1

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoWindowManager$LayoutParams;->sSamsungFlags:Lcom/sec/sbrowser/spl/util/ReflectField$I;

    invoke-virtual {v0, p0}, Lcom/sec/sbrowser/spl/util/ReflectField$I;->get(Lcom/sec/sbrowser/spl/util/ReflectBase;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public setSamsungFlags(I)V
    .locals 1

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoWindowManager$LayoutParams;->sSamsungFlags:Lcom/sec/sbrowser/spl/util/ReflectField$I;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/sec/sbrowser/spl/util/ReflectField$I;->set(Lcom/sec/sbrowser/spl/util/ReflectBase;Ljava/lang/Integer;)V

    return-void
.end method
