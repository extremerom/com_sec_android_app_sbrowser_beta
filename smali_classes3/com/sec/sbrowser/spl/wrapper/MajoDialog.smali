.class public Lcom/sec/sbrowser/spl/wrapper/MajoDialog;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final SEM_ANCHOR_TYPE_TOOLBAR:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field private static sSemSetAnchor:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

.field private static sSemSetAnchorWithType:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    const-class v1, Landroid/view/View;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/app/Dialog;

    const-string v4, "semSetAnchor"

    invoke-direct {v0, v3, v4, v2}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoDialog;->sSemSetAnchor:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v1, v2}, [Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v3, v4, v1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoDialog;->sSemSetAnchorWithType:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v1, "SEM_ANCHOR_TYPE_TOOLBAR"

    invoke-direct {v0, v3, v1}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoDialog;->SEM_ANCHOR_TYPE_TOOLBAR:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    return-void
.end method

.method public static reflectSucceeded(Ljava/lang/String;)Z
    .locals 1
    .annotation build Lcom/sec/sbrowser/spl/test/VisibleForTesting;
    .end annotation

    const-string v0, "semSetAnchor"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/MajoDialog;->sSemSetAnchor:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_0
    const-string v0, "semSetAnchorWithType"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/MajoDialog;->sSemSetAnchorWithType:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static semSetAnchor(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 1

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoDialog;->sSemSetAnchor:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;->invokeWithBaseInstance(Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public static semSetAnchorWithType(Landroid/app/Dialog;Landroid/view/View;I)V
    .locals 1

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoDialog;->sSemSetAnchorWithType:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;->invokeWithBaseInstance(Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method
