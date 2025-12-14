.class public abstract Landroidx/compose/ui/platform/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:La0/L0;

.field public static final b:La0/L0;

.field public static final c:La0/L0;

.field public static final d:La0/L0;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Landroidx/compose/ui/platform/g;->b:Landroidx/compose/ui/platform/g;

    sget-object v1, La0/V;->f:La0/V;

    new-instance v2, La0/I;

    invoke-direct {v2, v1, v0}, La0/I;-><init>(La0/A0;Lsb/a;)V

    sget-object v0, Landroidx/compose/ui/platform/g;->c:Landroidx/compose/ui/platform/g;

    new-instance v1, La0/L0;

    invoke-direct {v1, v0}, La0/g0;-><init>(Lsb/a;)V

    sput-object v1, Landroidx/compose/ui/platform/h;->a:La0/L0;

    sget-object v0, Landroidx/compose/ui/platform/g;->d:Landroidx/compose/ui/platform/g;

    new-instance v1, La0/L0;

    invoke-direct {v1, v0}, La0/g0;-><init>(Lsb/a;)V

    sget-object v0, Landroidx/compose/ui/platform/g;->e:Landroidx/compose/ui/platform/g;

    new-instance v1, La0/L0;

    invoke-direct {v1, v0}, La0/g0;-><init>(Lsb/a;)V

    sput-object v1, Landroidx/compose/ui/platform/h;->b:La0/L0;

    sget-object v0, Landroidx/compose/ui/platform/g;->f:Landroidx/compose/ui/platform/g;

    new-instance v1, La0/L0;

    invoke-direct {v1, v0}, La0/g0;-><init>(Lsb/a;)V

    sput-object v1, Landroidx/compose/ui/platform/h;->c:La0/L0;

    sget-object v0, Landroidx/compose/ui/platform/g;->g:Landroidx/compose/ui/platform/g;

    new-instance v1, La0/L0;

    invoke-direct {v1, v0}, La0/g0;-><init>(Lsb/a;)V

    sput-object v1, Landroidx/compose/ui/platform/h;->d:La0/L0;

    return-void
.end method

.method public static final a(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CompositionLocal "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not present"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
