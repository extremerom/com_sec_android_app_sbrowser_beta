.class public final Ldd/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lad/b;


# static fields
.field public static final a:Ldd/e;

.field public static final b:Ldd/i;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ldd/e;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ldd/e;->a:Ldd/e;

    new-instance v0, Ldd/i;

    sget-object v1, Lbd/b;->b:Lbd/b;

    const-string v2, "kotlin.Int"

    invoke-direct {v0, v2, v1}, Ldd/i;-><init>(Ljava/lang/String;Lbd/c;)V

    sput-object v0, Ldd/e;->b:Ldd/i;

    return-void
.end method


# virtual methods
.method public final deserialize(Lcd/a;)Ljava/lang/Object;
    .locals 0

    const-string p0, "decoder"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcd/a;->b()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public final getDescriptor()Lbd/d;
    .locals 0

    sget-object p0, Ldd/e;->b:Ldd/i;

    return-object p0
.end method
