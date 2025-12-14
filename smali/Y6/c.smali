.class public final LY6/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LV6/l;


# static fields
.field public static final a:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, LY6/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, LY6/c;->a:Ljava/util/logging/Logger;

    return-void
.end method


# virtual methods
.method public final a(Lo3/t;)Ljava/lang/Object;
    .locals 0

    new-instance p0, LY6/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LY6/b;->a:Lo3/t;

    return-object p0
.end method

.method public final b()Ljava/lang/Class;
    .locals 0

    const-class p0, LV6/d;

    return-object p0
.end method

.method public final c()Ljava/lang/Class;
    .locals 0

    const-class p0, LV6/d;

    return-object p0
.end method
