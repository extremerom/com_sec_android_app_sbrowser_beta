.class public abstract LDb/F;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic b:[LAb/u;


# instance fields
.field public final a:LDb/B0;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ltb/p;

    const-class v1, LDb/F;

    const-string v2, "moduleData"

    const-string v3, "getModuleData()Lorg/jetbrains/kotlin/descriptors/runtime/components/RuntimeModuleData;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Ltb/p;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Ltb/x;->a:Ltb/y;

    invoke-virtual {v1, v0}, Ltb/y;->f(Ltb/p;)LAb/r;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [LAb/u;

    aput-object v0, v1, v4

    sput-object v1, LDb/F;->b:[LAb/u;

    return-void
.end method

.method public constructor <init>(LDb/I;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LDb/E;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, LDb/E;-><init>(ILjava/lang/Object;)V

    const/4 p1, 0x0

    invoke-static {p1, v0}, LG5/J;->d(LJb/d;Lsb/a;)LDb/B0;

    move-result-object p1

    iput-object p1, p0, LDb/F;->a:LDb/B0;

    return-void
.end method
