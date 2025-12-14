.class public abstract Landroidx/compose/ui/platform/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:La0/L0;

.field public static final b:La0/L0;

.field public static final c:La0/L0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Landroidx/compose/ui/platform/g;->h:Landroidx/compose/ui/platform/g;

    new-instance v1, La0/L0;

    invoke-direct {v1, v0}, La0/g0;-><init>(Lsb/a;)V

    sget-object v0, Landroidx/compose/ui/platform/g;->i:Landroidx/compose/ui/platform/g;

    new-instance v1, La0/L0;

    invoke-direct {v1, v0}, La0/g0;-><init>(Lsb/a;)V

    sget-object v0, Landroidx/compose/ui/platform/g;->j:Landroidx/compose/ui/platform/g;

    new-instance v1, La0/L0;

    invoke-direct {v1, v0}, La0/g0;-><init>(Lsb/a;)V

    sget-object v0, Landroidx/compose/ui/platform/g;->k:Landroidx/compose/ui/platform/g;

    new-instance v1, La0/L0;

    invoke-direct {v1, v0}, La0/g0;-><init>(Lsb/a;)V

    sget-object v0, Landroidx/compose/ui/platform/g;->l:Landroidx/compose/ui/platform/g;

    new-instance v1, La0/L0;

    invoke-direct {v1, v0}, La0/g0;-><init>(Lsb/a;)V

    sput-object v1, Landroidx/compose/ui/platform/k;->a:La0/L0;

    sget-object v0, Landroidx/compose/ui/platform/g;->m:Landroidx/compose/ui/platform/g;

    new-instance v1, La0/L0;

    invoke-direct {v1, v0}, La0/g0;-><init>(Lsb/a;)V

    sget-object v0, Landroidx/compose/ui/platform/g;->o:Landroidx/compose/ui/platform/g;

    new-instance v1, La0/L0;

    invoke-direct {v1, v0}, La0/g0;-><init>(Lsb/a;)V

    sget-object v0, Landroidx/compose/ui/platform/g;->n:Landroidx/compose/ui/platform/g;

    new-instance v1, La0/L0;

    invoke-direct {v1, v0}, La0/g0;-><init>(Lsb/a;)V

    sget-object v0, Landroidx/compose/ui/platform/g;->p:Landroidx/compose/ui/platform/g;

    new-instance v1, La0/L0;

    invoke-direct {v1, v0}, La0/g0;-><init>(Lsb/a;)V

    sget-object v0, Landroidx/compose/ui/platform/g;->q:Landroidx/compose/ui/platform/g;

    new-instance v1, La0/L0;

    invoke-direct {v1, v0}, La0/g0;-><init>(Lsb/a;)V

    sget-object v0, Landroidx/compose/ui/platform/g;->r:Landroidx/compose/ui/platform/g;

    new-instance v1, La0/L0;

    invoke-direct {v1, v0}, La0/g0;-><init>(Lsb/a;)V

    sput-object v1, Landroidx/compose/ui/platform/k;->b:La0/L0;

    sget-object v0, Landroidx/compose/ui/platform/g;->u:Landroidx/compose/ui/platform/g;

    new-instance v1, La0/L0;

    invoke-direct {v1, v0}, La0/g0;-><init>(Lsb/a;)V

    sget-object v0, Landroidx/compose/ui/platform/g;->t:Landroidx/compose/ui/platform/g;

    new-instance v1, La0/L0;

    invoke-direct {v1, v0}, La0/g0;-><init>(Lsb/a;)V

    sget-object v0, Landroidx/compose/ui/platform/g;->v:Landroidx/compose/ui/platform/g;

    new-instance v1, La0/L0;

    invoke-direct {v1, v0}, La0/g0;-><init>(Lsb/a;)V

    sget-object v0, Landroidx/compose/ui/platform/g;->w:Landroidx/compose/ui/platform/g;

    new-instance v1, La0/L0;

    invoke-direct {v1, v0}, La0/g0;-><init>(Lsb/a;)V

    sget-object v0, Landroidx/compose/ui/platform/g;->x:Landroidx/compose/ui/platform/g;

    new-instance v1, La0/L0;

    invoke-direct {v1, v0}, La0/g0;-><init>(Lsb/a;)V

    sput-object v1, Landroidx/compose/ui/platform/k;->c:La0/L0;

    sget-object v0, Landroidx/compose/ui/platform/g;->y:Landroidx/compose/ui/platform/g;

    new-instance v1, La0/L0;

    invoke-direct {v1, v0}, La0/g0;-><init>(Lsb/a;)V

    sget-object v0, Landroidx/compose/ui/platform/g;->s:Landroidx/compose/ui/platform/g;

    new-instance v1, La0/L0;

    invoke-direct {v1, v0}, La0/g0;-><init>(Lsb/a;)V

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
