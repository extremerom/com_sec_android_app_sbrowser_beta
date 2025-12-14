.class public final Lm0/h;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# static fields
.field public static final a:Lm0/h;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lm0/h;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ltb/m;-><init>(I)V

    sput-object v0, Lm0/h;->a:Lm0/h;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lm0/k;

    instance-of p0, p1, Lm0/g;

    xor-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
