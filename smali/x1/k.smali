.class public abstract Lx1/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:La0/L0;

.field public static final b:La0/L0;

.field public static final c:La0/I;

.field public static final d:La0/L0;

.field public static final e:La0/L0;

.field public static final f:La0/L0;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Lx1/j;->f:Lx1/j;

    new-instance v1, La0/L0;

    invoke-direct {v1, v0}, La0/g0;-><init>(Lsb/a;)V

    sput-object v1, Lx1/k;->a:La0/L0;

    sget-object v0, Lx1/j;->c:Lx1/j;

    new-instance v1, La0/L0;

    invoke-direct {v1, v0}, La0/g0;-><init>(Lsb/a;)V

    sput-object v1, Lx1/k;->b:La0/L0;

    sget-object v0, Lx1/j;->g:Lx1/j;

    sget-object v1, La0/V;->f:La0/V;

    new-instance v2, La0/I;

    invoke-direct {v2, v1, v0}, La0/I;-><init>(La0/A0;Lsb/a;)V

    sput-object v2, Lx1/k;->c:La0/I;

    sget-object v0, Lx1/j;->d:Lx1/j;

    new-instance v1, La0/L0;

    invoke-direct {v1, v0}, La0/g0;-><init>(Lsb/a;)V

    sput-object v1, Lx1/k;->d:La0/L0;

    sget-object v0, Lx1/j;->b:Lx1/j;

    new-instance v1, La0/L0;

    invoke-direct {v1, v0}, La0/g0;-><init>(Lsb/a;)V

    sput-object v1, Lx1/k;->e:La0/L0;

    sget-object v0, Lx1/j;->e:Lx1/j;

    new-instance v1, La0/L0;

    invoke-direct {v1, v0}, La0/g0;-><init>(Lsb/a;)V

    sput-object v1, Lx1/k;->f:La0/L0;

    return-void
.end method
