.class public final synthetic Luc/D;
.super Ltb/p;
.source "SourceFile"


# static fields
.field public static final b:Luc/D;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Luc/D;

    const-string v1, "getOuterClassId()Lorg/jetbrains/kotlin/name/ClassId;"

    const/4 v2, 0x0

    const-class v3, Lhc/b;

    const-string v4, "outerClassId"

    invoke-direct {v0, v3, v4, v1, v2}, Ltb/p;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Luc/D;->b:Luc/D;

    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lhc/b;

    invoke-virtual {p1}, Lhc/b;->e()Lhc/b;

    move-result-object p0

    return-object p0
.end method
