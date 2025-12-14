.class public final LY5/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb5/c;


# static fields
.field public static final a:LY5/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LY5/g;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LY5/g;->a:LY5/g;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    instance-of p0, p1, LY5/g;

    return p0
.end method

.method public final hashCode()I
    .locals 0

    const-class p0, LY5/g;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
