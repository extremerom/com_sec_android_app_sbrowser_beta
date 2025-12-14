.class public Lcom/sec/sbrowser/spl/wrapper/SemBlurInfo$Builder;
.super Lcom/sec/sbrowser/spl/util/ReflectBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/sbrowser/spl/wrapper/SemBlurInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field private static sBuild:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

.field private static sBuildConstructor:Lcom/sec/sbrowser/spl/util/ReflectConstructor;

.field private static sSetBackgroundColor:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

.field private static sSetBackgroundCornerRadius:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

.field private static sSetBackgroundCornerRadiusFourParams:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

.field private static sSetColorCurve:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

.field private static sSetColorCurvePreset:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

.field private static sSetRadius:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const-string v0, "android.view.SemBlurInfo$Builder"

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/ReflectBase;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    const-string v3, "build"

    invoke-direct {v1, v0, v3, v2}, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/SemBlurInfo$Builder;->sBuild:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectConstructor;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Lcom/sec/sbrowser/spl/util/ReflectConstructor;-><init>(Ljava/lang/Class;[Ljava/lang/Class;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/SemBlurInfo$Builder;->sBuildConstructor:Lcom/sec/sbrowser/spl/util/ReflectConstructor;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    const-string v3, "setRadius"

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v4

    invoke-direct {v1, v0, v3, v4}, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/SemBlurInfo$Builder;->sSetRadius:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    const-string v3, "setBackgroundColor"

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v4

    invoke-direct {v1, v0, v3, v4}, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/SemBlurInfo$Builder;->sSetBackgroundColor:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    sget-object v8, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    filled-new-array {v8}, [Ljava/lang/Class;

    move-result-object v3

    const-string v4, "setBackgroundCornerRadius"

    invoke-direct {v1, v0, v4, v3}, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/SemBlurInfo$Builder;->sSetBackgroundCornerRadius:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    filled-new-array {v8, v8, v8, v8}, [Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v1, v0, v4, v3}, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/SemBlurInfo$Builder;->sSetBackgroundCornerRadiusFourParams:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    const-string v3, "setColorCurvePreset"

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, v0, v3, v2}, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/SemBlurInfo$Builder;->sSetColorCurvePreset:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    const-string v2, "setColorCurve"

    move-object v3, v8

    move-object v4, v8

    move-object v5, v8

    move-object v6, v8

    move-object v7, v8

    filled-new-array/range {v3 .. v8}, [Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/SemBlurInfo$Builder;->sSetColorCurve:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/SemBlurInfo$Builder;->sBuildConstructor:Lcom/sec/sbrowser/spl/util/ReflectConstructor;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sec/sbrowser/spl/util/ReflectConstructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/sbrowser/spl/util/ReflectBase;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public build()Ljava/lang/Object;
    .locals 2

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/SemBlurInfo$Builder;->sBuild:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public setBackgroundColor(I)V
    .locals 1

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/SemBlurInfo$Builder;->sSetBackgroundColor:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setBackgroundCornerRadius(F)V
    .locals 1

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/SemBlurInfo$Builder;->sSetBackgroundCornerRadius:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setBackgroundCornerRadius(FFFF)V
    .locals 1

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/SemBlurInfo$Builder;->sSetBackgroundCornerRadiusFourParams:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p4

    filled-new-array {p1, p2, p3, p4}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setColorCurve(FFFFFF)V
    .locals 1

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/SemBlurInfo$Builder;->sSetColorCurve:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p4

    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p5

    invoke-static {p6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p6

    filled-new-array/range {p1 .. p6}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setColorCurvePreset(I)V
    .locals 1

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/SemBlurInfo$Builder;->sSetColorCurvePreset:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setRadius(I)V
    .locals 1

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/SemBlurInfo$Builder;->sSetRadius:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
