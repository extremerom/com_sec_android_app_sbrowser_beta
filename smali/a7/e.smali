.class public final La7/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LV6/l;


# static fields
.field public static final a:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, La7/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, La7/e;->a:Ljava/util/logging/Logger;

    return-void
.end method


# virtual methods
.method public final a(Lo3/t;)Ljava/lang/Object;
    .locals 0

    new-instance p0, La7/d;

    invoke-direct {p0, p1}, La7/d;-><init>(Lo3/t;)V

    return-object p0
.end method

.method public final b()Ljava/lang/Class;
    .locals 0

    const-class p0, LV6/i;

    return-object p0
.end method

.method public final c()Ljava/lang/Class;
    .locals 0

    const-class p0, LV6/i;

    return-object p0
.end method
