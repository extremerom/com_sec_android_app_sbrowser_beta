.class public final LNb/c;
.super LJb/k0;
.source "SourceFile"


# static fields
.field public static final c:LNb/c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LNb/c;

    const-string v1, "protected_static"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LJb/k0;-><init>(Ljava/lang/String;Z)V

    sput-object v0, LNb/c;->c:LNb/c;

    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 0

    const-string p0, "protected/*protected static*/"

    return-object p0
.end method

.method public final c()LJb/k0;
    .locals 0

    sget-object p0, LJb/g0;->c:LJb/g0;

    return-object p0
.end method
