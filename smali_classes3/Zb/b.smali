.class public final LZb/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LKb/b;


# static fields
.field public static final a:LZb/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LZb/b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LZb/b;->a:LZb/b;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Map;
    .locals 1

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "No methods should be called on this descriptor. Only its presence matters"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final b()Lhc/c;
    .locals 2

    invoke-static {p0}, Loc/d;->d(LKb/b;)LJb/f;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-static {p0}, LAc/l;->f(LJb/l;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_1

    invoke-static {p0}, Loc/d;->c(LJb/m;)Lhc/c;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public final e()LJb/S;
    .locals 1

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "No methods should be called on this descriptor. Only its presence matters"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getType()Lyc/w;
    .locals 1

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "No methods should be called on this descriptor. Only its presence matters"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "[EnhancedType]"

    return-object p0
.end method
