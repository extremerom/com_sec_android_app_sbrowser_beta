.class public abstract Lod/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lod/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lod/i;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lod/j;->a:Lod/i;

    return-void
.end method


# virtual methods
.method public a(Lod/q;Lod/C;)V
    .locals 0

    const-string p0, "connection"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "settings"

    invoke-static {p2, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public abstract b(Lod/y;)V
.end method
