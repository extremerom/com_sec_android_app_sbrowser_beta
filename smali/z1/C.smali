.class public abstract Lz1/C;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:La0/I;

.field public static final b:La0/I;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Lz1/B;->b:Lz1/B;

    sget-object v1, La0/V;->f:La0/V;

    new-instance v2, La0/I;

    invoke-direct {v2, v1, v0}, La0/I;-><init>(La0/A0;Lsb/a;)V

    sput-object v2, Lz1/C;->a:La0/I;

    sget-object v0, Lz1/B;->c:Lz1/B;

    new-instance v2, La0/I;

    invoke-direct {v2, v1, v0}, La0/I;-><init>(La0/A0;Lsb/a;)V

    sput-object v2, Lz1/C;->b:La0/I;

    return-void
.end method
