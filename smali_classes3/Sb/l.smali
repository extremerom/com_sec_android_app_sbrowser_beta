.class public final LSb/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LSb/l;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LSb/l;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LSb/l;->a:LSb/l;

    return-void
.end method

.method public static final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)LSb/D;
    .locals 1

    sget-object v0, LSb/H;->a:Ljava/util/ArrayList;

    new-instance v0, LSb/D;

    invoke-static {p1}, Lhc/f;->f(Ljava/lang/String;)Lhc/f;

    move-result-object p1

    invoke-direct {v0, p0, p1, p2, p3}, LSb/D;-><init>(Ljava/lang/String;Lhc/f;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
