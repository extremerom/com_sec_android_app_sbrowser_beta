.class public Lcom/sec/sbrowser/spl/wrapper/MajoActivityOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final SEM_POP_OVER_ANCHOR_POSITION_HORIZONTAL_CENTER:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field public static final SEM_POP_OVER_ANCHOR_POSITION_HORIZONTAL_LEFT:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field public static final SEM_POP_OVER_ANCHOR_POSITION_HORIZONTAL_RIGHT:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field public static final SEM_POP_OVER_ANCHOR_POSITION_VERTICAL_BOTTOM:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field public static final SEM_POP_OVER_ANCHOR_POSITION_VERTICAL_CENTER:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field public static final SEM_POP_OVER_ANCHOR_POSITION_VERTICAL_TOP:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field private static sSemSetPopOverOptions:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    const-class v1, [I

    const-class v2, [Landroid/graphics/Point;

    filled-new-array {v1, v1, v2, v1}, [Ljava/lang/Class;

    move-result-object v1

    const-class v2, Landroid/app/ActivityOptions;

    const-string v3, "semSetPopOverOptions"

    invoke-direct {v0, v2, v3, v1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoActivityOptions;->sSemSetPopOverOptions:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v1, "SEM_POP_OVER_ANCHOR_POSITION_VERTICAL_TOP"

    invoke-direct {v0, v2, v1}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoActivityOptions;->SEM_POP_OVER_ANCHOR_POSITION_VERTICAL_TOP:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v1, "SEM_POP_OVER_ANCHOR_POSITION_VERTICAL_BOTTOM"

    invoke-direct {v0, v2, v1}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoActivityOptions;->SEM_POP_OVER_ANCHOR_POSITION_VERTICAL_BOTTOM:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v1, "SEM_POP_OVER_ANCHOR_POSITION_VERTICAL_CENTER"

    invoke-direct {v0, v2, v1}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoActivityOptions;->SEM_POP_OVER_ANCHOR_POSITION_VERTICAL_CENTER:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v1, "SEM_POP_OVER_ANCHOR_POSITION_HORIZONTAL_LEFT"

    invoke-direct {v0, v2, v1}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoActivityOptions;->SEM_POP_OVER_ANCHOR_POSITION_HORIZONTAL_LEFT:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v1, "SEM_POP_OVER_ANCHOR_POSITION_HORIZONTAL_RIGHT"

    invoke-direct {v0, v2, v1}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoActivityOptions;->SEM_POP_OVER_ANCHOR_POSITION_HORIZONTAL_RIGHT:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v1, "SEM_POP_OVER_ANCHOR_POSITION_HORIZONTAL_CENTER"

    invoke-direct {v0, v2, v1}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoActivityOptions;->SEM_POP_OVER_ANCHOR_POSITION_HORIZONTAL_CENTER:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    return-void
.end method

.method public static reflectSucceeded(Ljava/lang/String;)Z
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const-string v0, "sSemSetPopOverOptions"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/MajoActivityOptions;->sSemSetPopOverOptions:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static semSetPopOverOptions(Landroid/app/ActivityOptions;[I[I[Landroid/graphics/Point;[I)Landroid/app/ActivityOptions;
    .locals 1

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoActivityOptions;->sSemSetPopOverOptions:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    filled-new-array {p1, p2, p3, p4}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;->invokeWithBaseInstance(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityOptions;

    return-object p0
.end method
