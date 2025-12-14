.class public final LUc/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LUc/p;


# static fields
.field public static final a:LUc/s;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LUc/s;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LUc/s;->a:LUc/s;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final b(Ljava/util/List;)LNc/w0;
    .locals 0

    new-instance p0, LUc/r;

    invoke-direct {p0}, LNc/x;-><init>()V

    return-object p0
.end method

.method public final c()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method
